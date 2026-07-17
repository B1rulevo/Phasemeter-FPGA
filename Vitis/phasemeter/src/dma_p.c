/******************************************************************************
 * dma.c
 *
 * Реализация функций для работы с AXI DMA (S2MM, simple mode) и прерываниями.
 * Предполагается, что аппаратная часть настроена: AXI DMA с включённым S2MM,
 * соединённый с AXI-Stream периферией (напр., наш AXI_Capture_Controller),
 * и прерывание S2MM (IntrOut) подключено к GIC.
 *****************************************************************************/

#include "dma_p.h"
#include "xaxidma.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xparameters.h"
#include <xil_types.h>
#include <xstatus.h>

// #include "main.h"

/* Настройте эти макросы под вашу платформу (см. таблицу ниже) */
#ifndef DMA_S2MM_INT_ID
    #ifdef XPAR_FABRIC_AXI_DMA_0_INTR
        #define DMA_S2MM_INT_ID XPAR_FABRIC_AXI_DMA_0_INTR
    #else
        #error "DMA interrupt ID not found"
    #endif
#endif

#ifndef INTC_DEVICE_ID
  /* Обычно используется единый GIC (SCUGIC_SINGLE_DEVICE_ID), либо XPAR_PS7_SCUGIC_0_DEVICE_ID */
  #ifdef XPAR_SCUGIC_SINGLE_DEVICE_ID
    #define INTC_DEVICE_ID XPAR_SCUGIC_SINGLE_DEVICE_ID
  #else
    #warning "Interrupt Controller ID not defined. Set INTC_DEVICE_ID."
    #define INTC_DEVICE_ID 0
  #endif
#endif

#define DMA_RESET_TIMEOUT   10000U

#define GIC_SPI_OFFSET      32U
#define DMA_GIC_INTR_ID     (XPAR_FABRIC_AXI_DMA_0_INTR + GIC_SPI_OFFSET)

/* Инстансы драйверов */
static XAxiDma   AxiDma;
static XScuGic   GicInst;

volatile dma_state_t dma_state = DMA_IDLE;

/**
 * Инициализирует AXI DMA и настраивает прерывание S2MM.
 * Проверяет, что ядро DMA в simple-mode (не Scatter-Gather).
 * Регистрирует обработчик dma_irq_handler() в GIC.
 */
int dma_init(void)
{
    XAxiDma_Config *Config;
    XScuGic_Config *GicConfig;
    int Status;

    /* Получить конфигурацию DMA */
    Config = XAxiDma_LookupConfig(DMA_INSTANCE);
    if (Config == NULL) {
        xil_printf("AXI DMA lookup failed\r\n");
        dma_state = DMA_ERROR;
        return XST_FAILURE;
    }

    /* Инициализация DMA */
    Status = XAxiDma_CfgInitialize(&AxiDma, Config);
    if (Status != XST_SUCCESS) {
        xil_printf("AXI DMA init failed\r\n");
        dma_state = DMA_ERROR;
        return XST_FAILURE;
    }

    /* Проверить, что DMA в Simple Mode */
    if (XAxiDma_HasSg(&AxiDma)) {
        xil_printf("DMA configured in SG mode\r\n");
        dma_state = DMA_ERROR;
        return XST_FAILURE;
    }

    /* Сброс DMA */
    XAxiDma_Reset(&AxiDma);

    while (!XAxiDma_ResetIsDone(&AxiDma));

    /* Очистить все возможные прерывания */
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

    XAxiDma_IntrAckIrq(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

    /* Разрешить IOC и ERROR */
    XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK, XAXIDMA_DEVICE_TO_DMA);

    /* Инициализация GIC */
    GicConfig = XScuGic_LookupConfig(XPAR_XSCUGIC_0_BASEADDR);
    if (GicConfig == NULL) {
        xil_printf("GIC lookup failed\r\n");
        dma_state = DMA_ERROR;
        return XST_FAILURE;
    }

    Status = XScuGic_CfgInitialize(&GicInst, GicConfig, GicConfig->CpuBaseAddress);
    
    if (Status != XST_SUCCESS) {
        xil_printf("GIC init failed\r\n");
        dma_state = DMA_ERROR;
        return XST_FAILURE;
    }

    /* Подключить обработчик DMA */
    Status = XScuGic_Connect(&GicInst, DMA_GIC_INTR_ID, (Xil_InterruptHandler)dma_irq_handler, &AxiDma);

    if (Status != XST_SUCCESS) {
        xil_printf("DMA IRQ connect failed\r\n");
        dma_state = DMA_ERROR;
        return XST_FAILURE;
    }    

    XScuGic_SetPriorityTriggerType(&GicInst, DMA_GIC_INTR_ID, 0xA0, 0x1);

    XScuGic_Enable(&GicInst, DMA_GIC_INTR_ID);

    /* Подключить обработчик GIC к процессору */
    Xil_ExceptionInit();

    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &GicInst);

    Xil_ExceptionEnable();

    xil_printf("DMA initialized\r\n");

    dma_state = DMA_IDLE;

    return XST_SUCCESS;
}

/**
 * Запустить передачу данных с PL в DDR.
 * Очищает кэш для буфера, сбрасывает флаги и вызывает SimpleTransfer.
 * Возвращает XST_SUCCESS или код ошибки из драйвера.
 */
int dma_start(uint32_t *buffer, uint32_t length_words)
{
    if (dma_state != DMA_IDLE) {
        xil_printf("DMA is not ready for start!\r\n");
        return XST_FAILURE;
    }

    dma_state = DMA_BUSY;

    /* Сброс кэша перед записью в память DMA */
    Xil_DCacheFlushRange((UINTPTR)buffer, length_words * sizeof(uint32_t));

    /* Запустить простую передачу (S2MM) */
    int status = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)buffer,
                                        length_words * sizeof(uint32_t),
                                        XAXIDMA_DEVICE_TO_DMA);
    if (status != XST_SUCCESS) {
        xil_printf("XAxiDma_SimpleTransfer error: %d\r\n", status);
        return status;
    }
    return XST_SUCCESS;
}

/**
 * Ожидание завершения передачи (polling).
 * Блокируется до тех пор, пока DMA занят. Обновляет флаг ошибки.
 * Возвращает XST_SUCCESS, либо XST_FAILURE при ошибке DMA.
 */
int dma_wait(void)
{
    int timeout = 10000000;

    while (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA))
    {
        if (--timeout == 0)
        {
            xil_printf("TIMEOUT\r\n");
            return XST_FAILURE;
        }
    }
    return XST_SUCCESS;
}

/**
 * Обработчик прерывания DMA (для канала S2MM).
 * Вызывается GIC, когда генератор прерывания AXI DMA (S2MM) активен.
 * Проверяет флаги прерывания, устанавливает DmaDone или DmaError и выполняет сброс при ошибке.
 */
void dma_irq_handler(void *Callback)
{
    /* Получить и подтвердить флаги прерывания (S2MM канал) */
    u32 IrqStatus = XAxiDma_IntrGetIrq(&AxiDma, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrAckIrq(&AxiDma, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

    /* Если нет активных флагов, ничего не делать */
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
        return;
    }

    /* Ошибка DMA (internal/slave/decode) */
    if (IrqStatus & XAXIDMA_IRQ_ERROR_MASK) {
        xil_printf("DMA error interrupt (0x%08x)\r\n", IrqStatus);
        /* Попытка сброса DMA */
        XAxiDma_Reset(&AxiDma);
        int timeout = DMA_RESET_TIMEOUT;
        while (timeout--) {
            if (XAxiDma_ResetIsDone(&AxiDma)) break;
        }
        dma_state = DMA_ERROR;
        return;
    }

    /* Завершение передачи (IOC — interrupt on complete) */
    if (IrqStatus & XAXIDMA_IRQ_IOC_MASK) {
        xil_printf("DMA IOC interrupt\r\n");
        dma_state = DMA_DONE;
    }
}

/* Сбросить флаги DMA */
void dma_clear_flags(void)
{
    dma_state = DMA_IDLE;
}

/* Проверка флага завершения */
int dma_get_state(void)
{
    return dma_state;
}

/* Программный сброс DMA (Simple mode) */
int dma_reset(void)
{
    XAxiDma_Reset(&AxiDma);
    int timeout = DMA_RESET_TIMEOUT;
    while (timeout--) {
        if (XAxiDma_ResetIsDone(&AxiDma)) {
            return XST_SUCCESS;
        }
    }
    xil_printf("DMA reset timeout\r\n");
    dma_state = DMA_IDLE;
    return XST_FAILURE;
}

void dma_test(void)
{
    u32 en0 = XScuGic_DistReadReg(&GicInst, XSCUGIC_ENABLE_SET_OFFSET);
    u32 pend0 = XScuGic_DistReadReg(&GicInst, XSCUGIC_PENDING_SET_OFFSET);

    xil_printf("EN0   = %08X\r\n", en0);
    xil_printf("PEND0 = %08X\r\n", pend0);
}

void dma_handle_data(uint32_t *dma_buffer, uint32_t len)
{
    if (dma_state != DMA_DONE) {
        xil_printf("DMA is not ready for handling data!\r\n");
        return;        
    }

    Xil_DCacheInvalidateRange((UINTPTR) dma_buffer, len);

    // Вывести первые 16 слов результата
    xil_printf("Data[0..16]: ");
    for (int i = 0; i < 16; i++)
        xil_printf("%08X ", dma_buffer[i + 65565]);
    xil_printf("\r\n");

    dma_state = DMA_IDLE;
}