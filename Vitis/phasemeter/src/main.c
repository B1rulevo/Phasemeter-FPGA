#include "sleep.h"
#include "xil_printf.h"

#include "main.h"
#include "my_gpio.h"
#include "dma_p.h"
//#include "tcp_server.h"

#include <stdint.h>

uint32_t *const dma_buffer = DMA_BUFFER_ADDR;

int main(void)
{
    dma_init();
    initGPIO();
    //tcp_server_init();

    offLED();

    while (1) {

        if (dma_get_state() == DMA_IDLE) {
            offLED();
            dma_start(dma_buffer, CAPTURE_LENGTH);
            pulseSoftTrig();
            xil_printf("Software triggered!\r\n");
        }

        if (dma_get_state() == DMA_DONE) {
            dma_handle_data(dma_buffer, CAPTURE_LENGTH * sizeof(uint32_t));
            onLED();
        }

        //tcp_server_handle();
    }

    return 0;
}