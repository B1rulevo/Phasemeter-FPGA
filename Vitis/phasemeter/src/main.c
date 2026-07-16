#include "xparameters.h"
#include "sleep.h"
#include "xil_printf.h"
#include "xil_cache.h"

#include "main.h"
#include "led.h"
#include "dma_p.h"
#include "soft_trig.h"
#include "tcp_server.h"

#include <stdint.h>

uint32_t Buffer[CAPTURE_LENGTH] __attribute__((aligned(64)));  // или выделить динамически

int main(void)
{
    initLed();
    initSoftTrig();

    onLED();
    sleep(3);

    xil_printf("DMA S2MM Example\r\n");

    if (dma_init() != XST_SUCCESS) {
        xil_printf("DMA init failed\r\n");
        return XST_FAILURE;
    } else {
        xil_printf("DMA sucessfully inited!\r\n");
    }



    
    usleep(1000);      // 1 мс

    while (1) {
        // Начать новую передачу
        dma_clear_flags();
        if (dma_start(Buffer, CAPTURE_LENGTH) != XST_SUCCESS) {
            xil_printf("DMA start failed\r\n");
            break;
        } else {
            // xil_printf("DMA started!\r\n");
        }

        // Сгенерировать программный триггер для начала потока
        pulseSoftTrig();
        xil_printf("Software triggered!\r\n");

        // Ожидать завершения DMA (polling)
        if (dma_wait() != XST_SUCCESS) {
            xil_printf("DMA transfer error\r\n");
            break;
        } else {
            // xil_printf("DMA finished!\r\n");
        }

        // dma_test();

        // dma_irq_handler(NULL);

        // Инвалидация кэша перед чтением результатов
        Xil_DCacheInvalidateRange((UINTPTR)Buffer, CAPTURE_LENGTH * sizeof(uint32_t));

        // Вывести первые 16 слов результата
        xil_printf("Data[0..256]: ");
        for (int i = 0; i < 16; i++)
            xil_printf("%08X ", Buffer[i + 65565]);
        xil_printf("\r\n");

        // Пример ожидания с использованием флага (если используются IRQ):
        
        // while (!dma_is_done()) {
        //     // Здесь можно делать что-то ещё или просто ждать
        // }
        
        
        //Небольшая задержка между захватами (опционально)
        sleep(2);
    }

    return 0;
}