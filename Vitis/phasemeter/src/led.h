#ifndef __LED_H
#define __LED_H

#define LED_PIN 10

#define LED_ON      0
#define LED_OFF     1

void initLed(void);
void toggleLED(void);
void offLED(void);
void onLED(void);

#endif /*__LED_H*/