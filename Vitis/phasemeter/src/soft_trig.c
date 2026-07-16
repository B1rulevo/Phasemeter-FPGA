#include "soft_trig.h"

#include "xparameters.h"
#include "xgpiops.h"
#include "xil_printf.h"
#include "sleep.h"

XGpioPs Gpio;

void initSoftTrig(void)
{
    XGpioPs_Config *Cfg;

    xil_printf("Software Trigger Test\r\n");

    Cfg = XGpioPs_LookupConfig(0); //XPAR_XGPIOPS_0_DEVICE_ID

    if (Cfg == NULL) {
        xil_printf("GPIO config error\r\n");
        return;
    }

    XGpioPs_CfgInitialize(&Gpio, Cfg, Cfg->BaseAddr);

    // GPIO как выходы
    XGpioPs_SetDirectionPin(&Gpio, TRIG_TYPE_GPIO_PIN, 1);
    XGpioPs_SetOutputEnablePin(&Gpio, TRIG_TYPE_GPIO_PIN, 1);

    XGpioPs_SetDirectionPin(&Gpio, TRIG_PULS_GPIO_PIN, 1);
    XGpioPs_SetOutputEnablePin(&Gpio, TRIG_PULS_GPIO_PIN, 1);

    // Выбираем software trigger
    XGpioPs_WritePin(&Gpio, TRIG_TYPE_GPIO_PIN, SOFTWARE_TRIG);

    // Триггер пока неактивен
    XGpioPs_WritePin(&Gpio, TRIG_PULS_GPIO_PIN, 0);

    sleep(1);
}

void pulseSoftTrig(void)
{
    XGpioPs_WritePin(&Gpio, TRIG_PULS_GPIO_PIN, 1);

    usleep(1000);      // 1 мс

    XGpioPs_WritePin(&Gpio, TRIG_PULS_GPIO_PIN, 0);
}