/*
 * clk_wiz.c
 *
 *  Created on: 2025��8��1��
 *      Author: wangshuo
 */
#include "xclk_wiz.h"
#include "clk_wiz.h"
#include "xparameters.h"

#define CLK_WIZ_IN_FREQ 50  //ʱ��IP������5Mhz

XClk_Wiz clk_wiz_inst;       //ʱ��IP������ʵ��

//ʱ��IP�˶�̬������
//����1:ʱ��IP�˵�����ID
//����2:ʱ��IP�������ʱ��0Ƶ�� ��λ��MHz
//����3:ʱ��IP�������ʱ��1Ƶ�� ��λ��MHz
void clk_wiz_cfg(u32 clk_device_id, double freq0)
{
	double div_factor = 0;
	u32 div_factor_int = 0;
	u32 dviv_factor_frac = 0;
	u32 clk_divide = 0;
	u32 status = 0;

	//��ʼ��XCLK_Wiz
	XClk_Wiz_Config *clk_cfg_ptr;
	clk_cfg_ptr = XClk_Wiz_LookupConfig(clk_device_id);
	XClk_Wiz_CfgInitialize(&clk_wiz_inst,clk_cfg_ptr,clk_cfg_ptr->BaseAddr);

	//��������ʱ�ӱ�Ƶ/��Ƶϵ�������ʱ�������ֻ������һ�Σ����涼����һ����׼���з��������
	XClk_Wiz_WriteReg(clk_cfg_ptr->BaseAddr,CLK_CFG0_OFFSET,0x00000a01);  //10��Ƶ��1��Ƶ�����Ƶ�ʲ��ܳ���(CLK_WIZ_IN_FREQ*10/1)MHz��

	//�������ʱ��0Ƶ��

	         div_factor 		= CLK_WIZ_IN_FREQ * 10 / freq0;
			div_factor_int 		= (u32)div_factor;								  //��ȡ������Ƶϵ����������
			dviv_factor_frac 	= (u32)((div_factor - div_factor_int) * 1000 /8); //��ȡ������Ƶϵ��С�����ֵ�8��֮һ�����mmcm��
			clk_divide 			= div_factor_int | (dviv_factor_frac<<8);
			// xil_printf("div_factor_0: %d.%d\n", div_factor_int,dviv_factor_frac*8); // ��ӡ���õķ�Ƶϵ��
			//���÷�Ƶϵ��
			XClk_Wiz_WriteReg(clk_cfg_ptr->BaseAddr,CLK_CFG2_OFFSET,clk_divide);




	/*//�������ʱ��0Ƶ��
	if(freq1 <= 0){
		//�����Ƶϵ��
		div_factor 			= CLK_WIZ_IN_FREQ * 10 / freq1;
		div_factor_int 		= (u32)div_factor;
		dviv_factor_frac	= (u32)((div_factor - div_factor_int) * 1000 /8);
		clk_divide 			= div_factor_int | (dviv_factor_frac<<8);
		xil_printf("div_factor_1: %d.%d\n", div_factor_int,dviv_factor_frac*8); // ��ӡ���õķ�Ƶϵ��
		//���÷�Ƶϵ��
		XClk_Wiz_WriteReg(clk_cfg_ptr->BaseAddr,CLK_CFG7_OFFSET,clk_divide);
	}
    */
	// ���ԣ���ѡ������ӡ��ǰ�Ĵ���ֵ
	/*xil_printf("After config:\n");
	xil_printf("CLK_CFG0: 0x%08X\n", XClk_Wiz_ReadReg(clk_cfg_ptr->BaseAddr, CLK_CFG0_OFFSET));
	xil_printf("CLK_CFG2: 0x%08X\n", XClk_Wiz_ReadReg(clk_cfg_ptr->BaseAddr, CLK_CFG2_OFFSET));
	xil_printf("CLK_CFG5: 0x%08X\n", XClk_Wiz_ReadReg(clk_cfg_ptr->BaseAddr, CLK_CFG5_OFFSET));
	xil_printf("CLK_CFG7: 0x%08X\n", XClk_Wiz_ReadReg(clk_cfg_ptr->BaseAddr, CLK_CFG7_OFFSET));*/

	//���������õĲ���
	XClk_Wiz_WriteReg(clk_cfg_ptr->BaseAddr,CLK_CFG23_OFFSET,0x00000003);
	//��ȡʱ��IP�˵�״̬���ж��Ƿ����������
	while(1){
		status = XClk_Wiz_ReadReg(clk_cfg_ptr->BaseAddr,CLK_SR_OFFSET);
		if(status&0x00000001)    //Bit0 Locked�ź�
			return ;
	}
}

