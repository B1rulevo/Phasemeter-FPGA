#ifndef __SOFT_TRIG_H
#define __SOFT_TRIG_H

#define HARDWARE_TRIG   0
#define SOFTWARE_TRIG   1

#define TRIG_TYPE_GPIO_PIN  54
#define TRIG_PULS_GPIO_PIN  55

void initSoftTrig(void);
void pulseSoftTrig(void);

#endif /*__SOFT_TRIG_H*/