#include "sleep.h"
#include "xil_printf.h"

#include "main.h"
#include "my_gpio.h"
#include "dma_p.h"
#include "tcp_server.h"

#include <stdint.h>

PhasemeterState_t deviceState = STATE_DISCONNECTED;

int main(void)
{
    dma_init();
    initGPIO();
    tcp_server_init();
    dma_irq_reconnect();

    offLED();

    while (1) {

        if (dma_get_state() == DMA_IDLE) {
            offLED();
            dma_start();
            pulseSoftTrig();
            // xil_printf("Software triggered!\r\n");
        }

        if (dma_get_state() == DMA_DONE) {
            deviceState = STATE_DATARDY;
            dma_handle_data();
            onLED();
        }

        tcp_server_handle();
    }

    return 0;
}