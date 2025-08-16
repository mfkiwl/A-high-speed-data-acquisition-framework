/*
 * uart.c
 *



 *
 *  Created on: 2025Äê8ÔÂ15ÈÕ
 *      Author: wangshuo
 */

#include "uart.h"


XUartPs Uart_Ps;
XUartPs_Config *Config;

void uart_initial(void){


	// Initialize UART
	    Config = XUartPs_LookupConfig(UART_DEVICE_ID);
	    // if (!Config) return XST_FAILURE;
	    XUartPs_CfgInitialize(&Uart_Ps, Config, Config->BaseAddress);
	    // if (Status != XST_SUCCESS) return XST_FAILURE;
	    // Disable interrupts, use polling
	    XUartPs_SetOperMode(&Uart_Ps, XUARTPS_OPER_MODE_NORMAL);
	    XUartPs_SetRecvTimeout(&Uart_Ps, 8);  // optional


}
