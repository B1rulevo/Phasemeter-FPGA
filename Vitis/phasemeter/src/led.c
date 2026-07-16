#include "led.h"

#include "xgpiops.h"
#include "sleep.h"

static XGpioPs psGpioInstancePtr;
XGpioPs_Config* GpioConfigPtr;
u8 pinState = LED_OFF;

void initLed(void)
{
	int xStatus;

    GpioConfigPtr = XGpioPs_LookupConfig(XPAR_XSLCR_0_DEVICE_ID); //XPAR_XGPIOPS_0_DEVICE_ID

    /*
	if(GpioConfigPtr == NULL)
		return XST_FAILURE;
    */

	xStatus = XGpioPs_CfgInitialize(&psGpioInstancePtr,GpioConfigPtr, GpioConfigPtr->BaseAddr);

	if(XST_SUCCESS != xStatus)
		print(" PS GPIO INIT FAILED \n\r");

	XGpioPs_SetDirectionPin(&psGpioInstancePtr, LED_PIN,1);
    XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, LED_PIN,1);
}

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

