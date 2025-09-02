/*
 * clk_wiz.h
 *
 *  Created on: 2025Äê8ÔÂ1ÈÕ
 *      Author: wangshuo
 */

#ifndef SRC_CLK_WIZ_H_
#define SRC_CLK_WIZ_H_




#include "xil_types.h"

#define CLK_SR_OFFSET    0x04    //Status Register

//clk_out0
#define CLK_CFG0_OFFSET  0x200   //Clock Configuration Register 0
#define CLK_CFG2_OFFSET  0x208   //Clock Configuration Register 2

//clk_out1
#define CLK_CFG5_OFFSET  0x214   //Clock Configuration Register 5
#define CLK_CFG7_OFFSET  0x222   //Clock Configuration Register 7

#define CLK_CFG23_OFFSET 0x25C   //Clock Configuration Register 23

#define CLK_WIZ_ID      XPAR_CLK_WIZ_0_DEVICE_ID

void clk_wiz_cfg(u32 clk_device_id, double freq0);




#endif /* SRC_CLK_WIZ_H_ */
