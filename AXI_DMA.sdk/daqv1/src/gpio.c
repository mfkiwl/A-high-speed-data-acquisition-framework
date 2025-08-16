#include "gpio.h"

XGpioPs Gpio;  // GPIO instance

void Gpio_Init(void) {
    XGpioPs_Config *ConfigPtr;

    // Initialize GPIO driver
    ConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
    XGpioPs_CfgInitialize(&Gpio, ConfigPtr, ConfigPtr->BaseAddr);

    XGpioPs_SetDirectionPin(&Gpio,EMIO_START_PIN , 1);  // 1 = output
    XGpioPs_SetOutputEnablePin(&Gpio, EMIO_START_PIN, 1);  // Enable output
    XGpioPs_WritePin(&Gpio, EMIO_START_PIN, 0);  // Initialize LOW

    XGpioPs_SetDirectionPin(&Gpio,EMIO_END_PIN , 1);  // 1 = output
    XGpioPs_SetOutputEnablePin(&Gpio, EMIO_END_PIN, 1);  // Enable output
    XGpioPs_WritePin(&Gpio, EMIO_END_PIN, 0);  // Initialize LOW

}
