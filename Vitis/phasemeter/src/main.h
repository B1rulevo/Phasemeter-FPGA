#ifndef __MAIN_H
#define __MAIN_H

typedef enum {
    STATE_DISCONNECTED = 0,
    STATE_IDLE,
    STATE_WAITINGTRIG,
    STATE_ACQUISITION,
    STATE_DATARDY,
    STATE_DATATRANS,
    STATE_ERROR,
} PhasemeterState_t;

#endif /*__MAIN_H*/