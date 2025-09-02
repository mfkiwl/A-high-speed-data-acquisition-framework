/*
 * clk_wiz.c
 *
 *  Created on: 2025年8月1日
 *      Author: wangshuo
 */
#include "xclk_wiz.h"
#include "clk_wiz.h"
#include "xparameters.h"

#define CLK_WIZ_IN_FREQ 50  //时钟IP核输入5Mhz

XClk_Wiz clk_wiz_inst;       //时钟IP核驱动实例

//时钟IP核动态重配置
//参数1:时钟IP核的器件ID
//参数2:时钟IP核输出的时钟0频率 单位：MHz
//参数3:时钟IP核输出的时钟1频率 单位：MHz
void clk_wiz_cfg(u32 clk_device_id, double freq0)
{
	double div_factor = 0;
	u32 div_factor_int = 0;
	u32 dviv_factor_frac = 0;
	u32 clk_divide = 0;
	u32 status = 0;

	//初始化XCLK_Wiz
	XClk_Wiz_Config *clk_cfg_ptr;
	clk_cfg_ptr = XClk_Wiz_LookupConfig(clk_device_id);
	XClk_Wiz_CfgInitialize(&clk_wiz_inst,clk_cfg_ptr,clk_cfg_ptr->BaseAddr);

	//配置输入时钟倍频/分频系数（多个时钟输出就只用配置一次，后面都用这一个标准进行分配输出）
	XClk_Wiz_WriteReg(clk_cfg_ptr->BaseAddr,CLK_CFG0_OFFSET,0x00000a01);  //10倍频，1分频（输出频率不能超过(CLK_WIZ_IN_FREQ*10/1)MHz）

	//配置输出时钟0频率

	         div_factor 		= CLK_WIZ_IN_FREQ * 10 / freq0;
			div_factor_int 		= (u32)div_factor;								  //（取整）分频系数整数部分
			dviv_factor_frac 	= (u32)((div_factor - div_factor_int) * 1000 /8); //（取整）分频系数小数部分的8分之一（针对mmcm）
			clk_divide 			= div_factor_int | (dviv_factor_frac<<8);
			// xil_printf("div_factor_0: %d.%d\n", div_factor_int,dviv_factor_frac*8); // 打印设置的分频系数
			//配置分频系数
			XClk_Wiz_WriteReg(clk_cfg_ptr->BaseAddr,CLK_CFG2_OFFSET,clk_divide);




	/*//配置输出时钟0频率
	if(freq1 <= 0){
		//计算分频系数
		div_factor 			= CLK_WIZ_IN_FREQ * 10 / freq1;
		div_factor_int 		= (u32)div_factor;
		dviv_factor_frac	= (u32)((div_factor - div_factor_int) * 1000 /8);
		clk_divide 			= div_factor_int | (dviv_factor_frac<<8);
		xil_printf("div_factor_1: %d.%d\n", div_factor_int,dviv_factor_frac*8); // 打印设置的分频系数
		//配置分频系数
		XClk_Wiz_WriteReg(clk_cfg_ptr->BaseAddr,CLK_CFG7_OFFSET,clk_divide);
	}
    */
	// 调试（可选）：打印当前寄存器值
	/*xil_printf("After config:\n");
	xil_printf("CLK_CFG0: 0x%08X\n", XClk_Wiz_ReadReg(clk_cfg_ptr->BaseAddr, CLK_CFG0_OFFSET));
	xil_printf("CLK_CFG2: 0x%08X\n", XClk_Wiz_ReadReg(clk_cfg_ptr->BaseAddr, CLK_CFG2_OFFSET));
	xil_printf("CLK_CFG5: 0x%08X\n", XClk_Wiz_ReadReg(clk_cfg_ptr->BaseAddr, CLK_CFG5_OFFSET));
	xil_printf("CLK_CFG7: 0x%08X\n", XClk_Wiz_ReadReg(clk_cfg_ptr->BaseAddr, CLK_CFG7_OFFSET));*/

	//加载重配置的参数
	XClk_Wiz_WriteReg(clk_cfg_ptr->BaseAddr,CLK_CFG23_OFFSET,0x00000003);
	//获取时钟IP核的状态，判断是否重配置完成
	while(1){
		status = XClk_Wiz_ReadReg(clk_cfg_ptr->BaseAddr,CLK_SR_OFFSET);
		if(status&0x00000001)    //Bit0 Locked信号
			return ;
	}
}

