// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Aug 23 00:29:50 2025
// Host        : LAPTOP-85RG0KL6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Xilinx/projects/axi_2_dma/AXI_DMA/AXI_DMA.srcs/sources_1/bd/System/ip/System_trigger_unit_0_0/System_trigger_unit_0_0_stub.v
// Design      : System_trigger_unit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "trigger_unit,Vivado 2018.3" *)
module System_trigger_unit_0_0(clk, adc, reset, sample_in, hardtrigger, 
  trig_condition)
/* synthesis syn_black_box black_box_pad_pin="clk,adc[15:0],reset,sample_in[23:0],hardtrigger,trig_condition" */;
  input clk;
  input [15:0]adc;
  input reset;
  input [23:0]sample_in;
  input hardtrigger;
  output trig_condition;
endmodule
