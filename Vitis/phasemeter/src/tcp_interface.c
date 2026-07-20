#include "tcp_interface.h"
#include "tcp_server.h"

#include "dma_p.h"

#include <xil_printf.h>

static uint32_t rxPacketNum = 0;
static uint32_t txPacketNum = 0;

static uint32_t packetErr = 0;

static void packetHandleAcquisition(tcp_packet_t *packet)
{
   switch (packet->cmd) {
        case CMD_START:
            xil_printf("CMD_START received!\r\n", packet->cmd);
            break;

        case CMD_SOFTTRIG:
            xil_printf("CMD_SOFTTRIG received!\r\n", packet->cmd);
            break;

        default:
            xil_printf("Unknown command %d\r\n", packet->cmd);
            break;
    }
}

static void packetHandleSettings(tcp_packet_t *packet)
{
   switch (packet->cmd) {
        case CMD_SETTSET:
            xil_printf("CMD_SETTSET received!\r\n", packet->cmd);
            break;

        case CMD_SETTREAD:
            xil_printf("CMD_SETTREAD received!\r\n", packet->cmd);
            break;

        default:
            xil_printf("Unknown command %d\r\n", packet->cmd);
            break;
    }
}

static void packetHandleTransition(tcp_packet_t *packet)
{
   switch (packet->cmd) {
        case CMD_TRANS_START:
            xil_printf("CMD_TRANS_START received!\r\n", packet->cmd);
            break;

        case CMD_TRANS_LEN:
            xil_printf("CMD_TRANS_LEN received!\r\n", packet->cmd);
            break;

        case CMD_TRANS_FINISH:
            xil_printf("CMD_TRANS_FINISH received!\r\n", packet->cmd);
            break;

        default:
            xil_printf("Unknown command %d\r\n", packet->cmd);
            break;
    }
}

void packetHandle(uint8_t *dataPtr, uint32_t len)
{
    tcp_packet_t *packet;

    if (len < sizeof(tcp_packet_t)) {
        xil_printf("Error: invalid packet size len = %d!\r\n", len);
        return;
    }

    packet = (tcp_packet_t *)dataPtr;
    if (rxPacketNum++ != packet->num) {
        xil_printf("Warning: wrong packet number, expected/received [%d/%d] !\r\n", rxPacketNum-1, packet->num);
    }

    switch (packet->cmd) {
        case CMD_START:
        case CMD_SOFTTRIG:
            packetHandleAcquisition(packet);
            break;

        case CMD_SETTSET:
        case CMD_SETTREAD:
            packetHandleSettings(packet);
            break;

        case CMD_TRANS_START:
        case CMD_TRANS_LEN:
        case CMD_TRANS_FINISH:
            packetHandleTransition(packet);
            break;

        default:
            xil_printf("Unknown command %d\r\n", packet->cmd);
            break;
    }
}
