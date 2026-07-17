#ifndef __MY_GPIO_H
#define __MY_GPIO_H

#define HARDWARE_TRIG   0
#define SOFTWARE_TRIG   1

#define TRIG_TYPE_GPIO_PIN  54
#define TRIG_PULS_GPIO_PIN  55

#define LED_PIN 10

#define LED_ON      0
#define LED_OFF     1

void initGPIO(void);

/* Software trigger functions */
void pulseSoftTrig(void);

/* LED functions */
void toggleLED(void);
void offLED(void);
void onLED(void);

#endif /*__MY_GPIO_H*/