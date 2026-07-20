#ifndef __TCP_INTERFACE_H
#define __TCP_INTERFACE_H

#include <stdint.h>

typedef struct {
    uint32_t cmd;
    uint32_t state;
    uint32_t num;
    uint32_t len;
    uint32_t err;
    uint32_t data[];
} tcp_packet_t;

typedef enum {
    CMD_START = 0,
    CMD_SOFTTRIG,
    CMD_SETTSET,
    CMD_SETTREAD,
    CMD_TRANS_START,
    CMD_TRANS_LEN,
    CMD_TRANS_FINISH,
} tcp_cmd_t;

void packetHandle(uint8_t *dataPtr, uint32_t len);

#endif /*__TCP_INTERFACE_H*/