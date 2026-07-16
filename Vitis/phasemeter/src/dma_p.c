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

// #include "main.h"

/* Настройте эти макросы под вашу платформу (см. таблицу ниже) */
#ifndef DMA_DEV_ID
  #ifdef XPAR_AXIDMA_0_DEVICE_ID
    #define DMA_DEV_ID       XPAR_AXIDMA_0_DEVICE_ID
  #else
    #warning "DMA device ID not defined. Set DMA_DEV_ID macro accordingly."
    #define DMA_DEV_ID       0
  #endif
#endif

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

/* Флаги состояния */
static volatile int DmaDone  = 0;
static volatile int DmaError = 0;

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
    Config = XAxiDma_LookupConfig(DMA_DEV_ID);
    if (Config == NULL) {
        xil_printf("AXI DMA lookup failed\r\n");
        return XST_FAILURE;
    }

    /* Инициализация DMA */
    Status = XAxiDma_CfgInitialize(&AxiDma, Config);
    if (Status != XST_SUCCESS) {
        xil_printf("AXI DMA init failed\r\n");
        return XST_FAILURE;
    }

    /* Проверить, что DMA в Simple Mode */
    if (XAxiDma_HasSg(&AxiDma)) {
        xil_printf("DMA configured in SG mode\r\n");
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
        return XST_FAILURE;
    }

    Status = XScuGic_CfgInitialize(&GicInst, GicConfig, GicConfig->CpuBaseAddress);
    
    if (Status != XST_SUCCESS) {
        xil_printf("GIC init failed\r\n");
        return XST_FAILURE;
    }

    /* Подключить обработчик DMA */
    Status = XScuGic_Connect(&GicInst, DMA_GIC_INTR_ID, (Xil_InterruptHandler)dma_irq_handler, &AxiDma);

    if (Status != XST_SUCCESS) {
        xil_printf("DMA IRQ connect failed\r\n");
        return XST_FAILURE;
    }    

    xil_printf("Handler = %08X\r\n",
    (UINTPTR)GicInst.Config->HandlerTable[DMA_GIC_INTR_ID].Handler);

    xil_printf("dma_irq_handler = %08X\r\n",
    (UINTPTR)dma_irq_handler);

    XScuGic_SetPriorityTriggerType(&GicInst, DMA_GIC_INTR_ID, 0xA0, 0x1);

    XScuGic_Enable(&GicInst, DMA_GIC_INTR_ID);

    /* Подключить обработчик GIC к процессору */
    Xil_ExceptionInit();

    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &GicInst);

    Xil_ExceptionEnable();

    xil_printf("DMA initialized\r\n");

    u32 cpsr;
    asm volatile ("mrs %0, cpsr" : "=r"(cpsr));
    xil_printf("CPSR = %08X\r\n", cpsr);

    return XST_SUCCESS;
}

/**
 * Запустить передачу данных с PL в DDR.
 * Очищает кэш для буфера, сбрасывает флаги и вызывает SimpleTransfer.
 * Возвращает XST_SUCCESS или код ошибки из драйвера.
 */
int dma_start(uint32_t *buffer, uint32_t length_words)
{
    /* Сброс кэша перед записью в память DMA */
    Xil_DCacheFlushRange((UINTPTR)buffer, length_words * sizeof(uint32_t));

    /* Сбросить флаги состояния */
    dma_clear_flags();

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

            u32 sr = XAxiDma_ReadReg(
                AxiDma.RegBase,
                XAXIDMA_RX_OFFSET + XAXIDMA_SR_OFFSET);

            xil_printf("S2MM_DMASR = %08X\r\n", sr);

            return XST_FAILURE;
        }
    }
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
        DmaError = 1;
        /* Попытка сброса DMA */
        XAxiDma_Reset(&AxiDma);
        int timeout = DMA_RESET_TIMEOUT;
        while (timeout--) {
            if (XAxiDma_ResetIsDone(&AxiDma)) break;
        }
        return;
    }

    /* Завершение передачи (IOC — interrupt on complete) */
    if (IrqStatus & XAXIDMA_IRQ_IOC_MASK) {
        xil_printf("DMA IOC interrupt\r\n");
        DmaDone = 1;
    }
}

/* Сбросить флаги DMA */
void dma_clear_flags(void)
{
    DmaDone  = 0;
    DmaError = 0;
}

/* Проверка флага завершения */
int dma_is_done(void)
{
    return DmaDone;
}

/* Проверка флага ошибки */
int dma_has_error(void)
{
    return DmaError;
}

/* Проверка занятости DMA */
int dma_is_busy(void)
{
    return XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA);
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
    return XST_FAILURE;
}

void dma_test(void)
{
    u32 en0 = XScuGic_DistReadReg(&GicInst, XSCUGIC_ENABLE_SET_OFFSET);
    u32 pend0 = XScuGic_DistReadReg(&GicInst, XSCUGIC_PENDING_SET_OFFSET);

    xil_printf("EN0   = %08X\r\n", en0);
    xil_printf("PEND0 = %08X\r\n", pend0);
}