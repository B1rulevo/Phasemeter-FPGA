#include "my_gpio.h"

#include "xparameters.h"
#include "xgpiops.h"
#include "xil_printf.h"
#include "sleep.h"

XGpioPs Gpio;

static XGpioPs psGpioInstancePtr;
XGpioPs_Config* GpioConfigPtr;
u8 pinState = LED_OFF;

void initGPIO(void)
{
	int xStatus;

    GpioConfigPtr = XGpioPs_LookupConfig(XPAR_XSLCR_0_DEVICE_ID); //XPAR_XGPIOPS_0_DEVICE_ID

	if(GpioConfigPtr == NULL) {
        xil_printf("Error with GPIO config!\r\n");
		return;
    }

	xStatus = XGpioPs_CfgInitialize(&psGpioInstancePtr,GpioConfigPtr, GpioConfigPtr->BaseAddr);

	if(XST_SUCCESS != xStatus) {
		xil_printf("PS GPIO init failed!\r\n");
        return;
    }

    /* LED configuration*/
	XGpioPs_SetDirectionPin(&psGpioInstancePtr, LED_PIN,1);
    XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, LED_PIN,1);

    /* Software trigger configuration */
    XGpioPs_SetDirectionPin(&psGpioInstancePtr, TRIG_TYPE_GPIO_PIN, 1);      /* GPIO as output*/
    XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, TRIG_TYPE_GPIO_PIN, 1);    /* GPIO as output*/

    XGpioPs_SetDirectionPin(&psGpioInstancePtr, TRIG_PULS_GPIO_PIN, 1);
    XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, TRIG_PULS_GPIO_PIN, 1);

    XGpioPs_WritePin(&psGpioInstancePtr, TRIG_TYPE_GPIO_PIN, SOFTWARE_TRIG);     /* Set software trigger */
    XGpioPs_WritePin(&psGpioInstancePtr, TRIG_PULS_GPIO_PIN, 0);                 /* Trigger is inactive */

    xil_printf("GPIO configured!\r\n");
}

/* Software trigger functions */
void pulseSoftTrig(void)
{
    XGpioPs_WritePin(&psGpioInstancePtr, TRIG_PULS_GPIO_PIN, 1);

    usleep(1000);      // 1 мс

    XGpioPs_WritePin(&psGpioInstancePtr, TRIG_PULS_GPIO_PIN, 0);
}

/* LED functions */
void toggleLED(void)
{
    if (pinState) {
        XGpioPs_WritePin(&psGpioInstancePtr, LED_PIN, 0);
        pinState = 0;
    } else {
        XGpioPs_WritePin(&psGpioInstancePtr, LED_PIN, 1);
        pinState = 1;
    }
}

void offLED(void)
{
    XGpioPs_WritePin(&psGpioInstancePtr, LED_PIN, LED_OFF);
    pinState = LED_OFF;
}

void onLED(void)
{
    XGpioPs_WritePin(&psGpioInstancePtr, LED_PIN, LED_ON);
    pinState = LED_ON;
}

