#include "gpio.h"

XGpioPs Gpio;  // GPIO instance

void Gpio_Init(void) {
    XGpioPs_Config *ConfigPtr;
    int i;

    /* Initialize the GPIO driver */
    ConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
    if (ConfigPtr == NULL) {
        xil_printf("ERROR: GPIO config lookup failed\r\n");
        return;
    }

    int Status = XGpioPs_CfgInitialize(&Gpio, ConfigPtr, ConfigPtr->BaseAddr);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: GPIO init failed\r\n");
        return;
    }

    /* Configure entire Bank 0 (32 pins) as outputs */
    for (i = EMIO_START_PIN; i < EMIO_START_PIN + 32; i++) {
        XGpioPs_SetDirectionPin(&Gpio, i, 1);  // 1 = output
        XGpioPs_SetOutputEnablePin(&Gpio, i, 1);  // Enable output
        XGpioPs_WritePin(&Gpio, i, 0);  // Initialize LOW
    }

    /* Configure single pin in Bank 1 */
    XGpioPs_SetDirectionPin(&Gpio, BANK1_START_PIN, 1);  // 1 = output
    XGpioPs_SetOutputEnablePin(&Gpio, BANK1_START_PIN, 1);  // Enable output
    XGpioPs_WritePin(&Gpio, BANK1_START_PIN, 0);  // Initialize LOW



}
