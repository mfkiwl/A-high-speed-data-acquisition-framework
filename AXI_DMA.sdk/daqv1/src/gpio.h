/*
 * gpio.h
 *
 *  Created on: 2025Äê8ÔÂ14ÈÕ
 *      Author: wangshuo
 */

#ifndef SRC_GPIO_H_
#define SRC_GPIO_H_


#include "xgpiops.h"

#define GPIO_DEVICE_ID  	XPAR_XGPIOPS_0_DEVICE_ID  // the gpio device
#define EMIO_START_PIN  54   // this bit is control the write enable signal
#define EMIO_END_PIN  55   // this bit reset the input fifo



void Gpio_Init(void);      // initial the gpio


#endif /* SRC_GPIO_H_ */
