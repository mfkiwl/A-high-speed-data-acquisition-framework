// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Aug 23 00:29:50 2025
// Host        : LAPTOP-85RG0KL6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Xilinx/projects/axi_2_dma/AXI_DMA/AXI_DMA.srcs/sources_1/bd/System/ip/System_trigger_unit_0_0/System_trigger_unit_0_0_sim_netlist.v
// Design      : System_trigger_unit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "System_trigger_unit_0_0,trigger_unit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "trigger_unit,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module System_trigger_unit_0_0
   (clk,
    adc,
    reset,
    sample_in,
    hardtrigger,
    trig_condition);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 5000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input [15:0]adc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  input [23:0]sample_in;
  input hardtrigger;
  output trig_condition;

  wire [15:0]adc;
  wire clk;
  wire hardtrigger;
  wire reset;
  wire [23:0]sample_in;
  wire trig_condition;

  System_trigger_unit_0_0_trigger_unit inst
       (.adc(adc),
        .clk(clk),
        .hardtrigger(hardtrigger),
        .reset(reset),
        .sample_in(sample_in),
        .trig_condition(trig_condition));
endmodule

(* ORIG_REF_NAME = "trigger_unit" *) 
module System_trigger_unit_0_0_trigger_unit
   (trig_condition,
    sample_in,
    clk,
    reset,
    hardtrigger,
    adc);
  output trig_condition;
  input [23:0]sample_in;
  input clk;
  input reset;
  input hardtrigger;
  input [15:0]adc;

  wire [15:0]adc;
  wire clk;
  wire hardtrigger;
  wire [23:0]local_reg2;
  wire \local_reg2[23]_i_1_n_0 ;
  wire \local_reg[23]_i_10_n_0 ;
  wire \local_reg[23]_i_3_n_0 ;
  wire \local_reg[23]_i_4_n_0 ;
  wire \local_reg[23]_i_5_n_0 ;
  wire \local_reg[23]_i_6_n_0 ;
  wire \local_reg[23]_i_7_n_0 ;
  wire \local_reg[23]_i_8_n_0 ;
  wire \local_reg[23]_i_9_n_0 ;
  wire \local_reg_reg[23]_i_1_n_1 ;
  wire \local_reg_reg[23]_i_1_n_2 ;
  wire \local_reg_reg[23]_i_1_n_3 ;
  wire \local_reg_reg[23]_i_2_n_0 ;
  wire \local_reg_reg[23]_i_2_n_1 ;
  wire \local_reg_reg[23]_i_2_n_2 ;
  wire \local_reg_reg[23]_i_2_n_3 ;
  wire \local_reg_reg_n_0_[0] ;
  wire \local_reg_reg_n_0_[10] ;
  wire \local_reg_reg_n_0_[11] ;
  wire \local_reg_reg_n_0_[12] ;
  wire \local_reg_reg_n_0_[13] ;
  wire \local_reg_reg_n_0_[14] ;
  wire \local_reg_reg_n_0_[15] ;
  wire \local_reg_reg_n_0_[1] ;
  wire \local_reg_reg_n_0_[20] ;
  wire \local_reg_reg_n_0_[21] ;
  wire \local_reg_reg_n_0_[22] ;
  wire \local_reg_reg_n_0_[23] ;
  wire \local_reg_reg_n_0_[2] ;
  wire \local_reg_reg_n_0_[3] ;
  wire \local_reg_reg_n_0_[4] ;
  wire \local_reg_reg_n_0_[5] ;
  wire \local_reg_reg_n_0_[6] ;
  wire \local_reg_reg_n_0_[7] ;
  wire \local_reg_reg_n_0_[8] ;
  wire \local_reg_reg_n_0_[9] ;
  wire p_0_in;
  wire p_0_in0;
  wire [2:0]p_3_in;
  wire reset;
  wire [23:0]sample_in;
  wire switching;
  wire switching_i_1_n_0;
  wire sync_hardtrig1;
  wire sync_hardtrig2;
  wire sync_hardtrig3;
  wire [23:0]sync_reg1;
  wire [23:0]sync_reg2;
  wire threshold_trig1_carry__0_i_1_n_0;
  wire threshold_trig1_carry__0_i_2_n_0;
  wire threshold_trig1_carry__0_i_3_n_0;
  wire threshold_trig1_carry__0_i_4_n_0;
  wire threshold_trig1_carry__0_n_0;
  wire threshold_trig1_carry__0_n_1;
  wire threshold_trig1_carry__0_n_2;
  wire threshold_trig1_carry__0_n_3;
  wire threshold_trig1_carry_i_1_n_0;
  wire threshold_trig1_carry_i_2_n_0;
  wire threshold_trig1_carry_i_3_n_0;
  wire threshold_trig1_carry_i_4_n_0;
  wire threshold_trig1_carry_n_0;
  wire threshold_trig1_carry_n_1;
  wire threshold_trig1_carry_n_2;
  wire threshold_trig1_carry_n_3;
  wire threshold_trig_i_1_n_0;
  wire threshold_trig_i_2_n_0;
  wire threshold_trig_i_3_n_0;
  wire threshold_trig_i_4_n_0;
  wire threshold_trig_reg_n_0;
  wire trig_condition;
  wire trig_condition1;
  wire trig_condition14_in;
  wire trig_condition1__7_carry__0_i_1_n_0;
  wire trig_condition1__7_carry__0_i_2_n_0;
  wire trig_condition1__7_carry__0_i_3_n_0;
  wire trig_condition1__7_carry__0_i_4_n_0;
  wire trig_condition1__7_carry__0_i_5_n_0;
  wire trig_condition1__7_carry__0_i_6_n_0;
  wire trig_condition1__7_carry__0_i_7_n_0;
  wire trig_condition1__7_carry__0_i_8_n_0;
  wire trig_condition1__7_carry__0_n_1;
  wire trig_condition1__7_carry__0_n_2;
  wire trig_condition1__7_carry__0_n_3;
  wire trig_condition1__7_carry_i_1_n_0;
  wire trig_condition1__7_carry_i_2_n_0;
  wire trig_condition1__7_carry_i_3_n_0;
  wire trig_condition1__7_carry_i_4_n_0;
  wire trig_condition1__7_carry_i_5_n_0;
  wire trig_condition1__7_carry_i_6_n_0;
  wire trig_condition1__7_carry_i_7_n_0;
  wire trig_condition1__7_carry_i_8_n_0;
  wire trig_condition1__7_carry_n_0;
  wire trig_condition1__7_carry_n_1;
  wire trig_condition1__7_carry_n_2;
  wire trig_condition1__7_carry_n_3;
  wire trig_condition1_carry__0_i_1_n_0;
  wire trig_condition1_carry__0_i_2_n_0;
  wire trig_condition1_carry__0_i_3_n_0;
  wire trig_condition1_carry__0_i_4_n_0;
  wire trig_condition1_carry__0_i_5_n_0;
  wire trig_condition1_carry__0_i_6_n_0;
  wire trig_condition1_carry__0_i_7_n_0;
  wire trig_condition1_carry__0_i_8_n_0;
  wire trig_condition1_carry__0_n_1;
  wire trig_condition1_carry__0_n_2;
  wire trig_condition1_carry__0_n_3;
  wire trig_condition1_carry_i_1_n_0;
  wire trig_condition1_carry_i_2_n_0;
  wire trig_condition1_carry_i_3_n_0;
  wire trig_condition1_carry_i_4_n_0;
  wire trig_condition1_carry_i_5_n_0;
  wire trig_condition1_carry_i_6_n_0;
  wire trig_condition1_carry_i_7_n_0;
  wire trig_condition1_carry_i_8_n_0;
  wire trig_condition1_carry_n_0;
  wire trig_condition1_carry_n_1;
  wire trig_condition1_carry_n_2;
  wire trig_condition1_carry_n_3;
  wire trig_condition_i_1_n_0;
  wire trig_condition_i_2_n_0;
  wire trig_condition_i_3_n_0;
  wire trig_condition_i_4_n_0;
  wire trig_condition_i_5_n_0;
  wire trig_condition_i_6_n_0;
  wire [3:0]\NLW_local_reg_reg[23]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_local_reg_reg[23]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_threshold_trig1_carry_O_UNCONNECTED;
  wire [3:0]NLW_threshold_trig1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_trig_condition1__7_carry_O_UNCONNECTED;
  wire [3:0]NLW_trig_condition1__7_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_trig_condition1_carry_O_UNCONNECTED;
  wire [3:0]NLW_trig_condition1_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \local_reg2[23]_i_1 
       (.I0(reset),
        .O(\local_reg2[23]_i_1_n_0 ));
  FDRE \local_reg2_reg[0] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[0] ),
        .Q(local_reg2[0]),
        .R(1'b0));
  FDRE \local_reg2_reg[10] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[10] ),
        .Q(local_reg2[10]),
        .R(1'b0));
  FDRE \local_reg2_reg[11] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[11] ),
        .Q(local_reg2[11]),
        .R(1'b0));
  FDRE \local_reg2_reg[12] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[12] ),
        .Q(local_reg2[12]),
        .R(1'b0));
  FDRE \local_reg2_reg[13] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[13] ),
        .Q(local_reg2[13]),
        .R(1'b0));
  FDRE \local_reg2_reg[14] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[14] ),
        .Q(local_reg2[14]),
        .R(1'b0));
  FDRE \local_reg2_reg[15] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[15] ),
        .Q(local_reg2[15]),
        .R(1'b0));
  FDRE \local_reg2_reg[16] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(p_3_in[0]),
        .Q(local_reg2[16]),
        .R(1'b0));
  FDRE \local_reg2_reg[17] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(p_3_in[1]),
        .Q(local_reg2[17]),
        .R(1'b0));
  FDRE \local_reg2_reg[18] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(p_3_in[2]),
        .Q(local_reg2[18]),
        .R(1'b0));
  FDRE \local_reg2_reg[19] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(p_0_in0),
        .Q(local_reg2[19]),
        .R(1'b0));
  FDRE \local_reg2_reg[1] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[1] ),
        .Q(local_reg2[1]),
        .R(1'b0));
  FDRE \local_reg2_reg[20] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[20] ),
        .Q(local_reg2[20]),
        .R(1'b0));
  FDRE \local_reg2_reg[21] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[21] ),
        .Q(local_reg2[21]),
        .R(1'b0));
  FDRE \local_reg2_reg[22] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[22] ),
        .Q(local_reg2[22]),
        .R(1'b0));
  FDRE \local_reg2_reg[23] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[23] ),
        .Q(local_reg2[23]),
        .R(1'b0));
  FDRE \local_reg2_reg[2] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[2] ),
        .Q(local_reg2[2]),
        .R(1'b0));
  FDRE \local_reg2_reg[3] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[3] ),
        .Q(local_reg2[3]),
        .R(1'b0));
  FDRE \local_reg2_reg[4] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[4] ),
        .Q(local_reg2[4]),
        .R(1'b0));
  FDRE \local_reg2_reg[5] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[5] ),
        .Q(local_reg2[5]),
        .R(1'b0));
  FDRE \local_reg2_reg[6] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[6] ),
        .Q(local_reg2[6]),
        .R(1'b0));
  FDRE \local_reg2_reg[7] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[7] ),
        .Q(local_reg2[7]),
        .R(1'b0));
  FDRE \local_reg2_reg[8] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[8] ),
        .Q(local_reg2[8]),
        .R(1'b0));
  FDRE \local_reg2_reg[9] 
       (.C(clk),
        .CE(\local_reg2[23]_i_1_n_0 ),
        .D(\local_reg_reg_n_0_[9] ),
        .Q(local_reg2[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \local_reg[23]_i_10 
       (.I0(sync_reg1[0]),
        .I1(sync_reg2[0]),
        .I2(sync_reg2[2]),
        .I3(sync_reg1[2]),
        .I4(sync_reg2[1]),
        .I5(sync_reg1[1]),
        .O(\local_reg[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \local_reg[23]_i_3 
       (.I0(sync_reg1[21]),
        .I1(sync_reg2[21]),
        .I2(sync_reg2[23]),
        .I3(sync_reg1[23]),
        .I4(sync_reg2[22]),
        .I5(sync_reg1[22]),
        .O(\local_reg[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \local_reg[23]_i_4 
       (.I0(sync_reg1[18]),
        .I1(sync_reg2[18]),
        .I2(sync_reg2[20]),
        .I3(sync_reg1[20]),
        .I4(sync_reg2[19]),
        .I5(sync_reg1[19]),
        .O(\local_reg[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \local_reg[23]_i_5 
       (.I0(sync_reg1[15]),
        .I1(sync_reg2[15]),
        .I2(sync_reg2[17]),
        .I3(sync_reg1[17]),
        .I4(sync_reg2[16]),
        .I5(sync_reg1[16]),
        .O(\local_reg[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \local_reg[23]_i_6 
       (.I0(sync_reg1[12]),
        .I1(sync_reg2[12]),
        .I2(sync_reg2[14]),
        .I3(sync_reg1[14]),
        .I4(sync_reg2[13]),
        .I5(sync_reg1[13]),
        .O(\local_reg[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \local_reg[23]_i_7 
       (.I0(sync_reg1[9]),
        .I1(sync_reg2[9]),
        .I2(sync_reg2[11]),
        .I3(sync_reg1[11]),
        .I4(sync_reg2[10]),
        .I5(sync_reg1[10]),
        .O(\local_reg[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \local_reg[23]_i_8 
       (.I0(sync_reg1[6]),
        .I1(sync_reg2[6]),
        .I2(sync_reg2[8]),
        .I3(sync_reg1[8]),
        .I4(sync_reg2[7]),
        .I5(sync_reg1[7]),
        .O(\local_reg[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \local_reg[23]_i_9 
       (.I0(sync_reg1[3]),
        .I1(sync_reg2[3]),
        .I2(sync_reg2[5]),
        .I3(sync_reg1[5]),
        .I4(sync_reg2[4]),
        .I5(sync_reg1[4]),
        .O(\local_reg[23]_i_9_n_0 ));
  FDCE \local_reg_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[0]),
        .Q(\local_reg_reg_n_0_[0] ));
  FDCE \local_reg_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[10]),
        .Q(\local_reg_reg_n_0_[10] ));
  FDCE \local_reg_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[11]),
        .Q(\local_reg_reg_n_0_[11] ));
  FDCE \local_reg_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[12]),
        .Q(\local_reg_reg_n_0_[12] ));
  FDCE \local_reg_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[13]),
        .Q(\local_reg_reg_n_0_[13] ));
  FDCE \local_reg_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[14]),
        .Q(\local_reg_reg_n_0_[14] ));
  FDCE \local_reg_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[15]),
        .Q(\local_reg_reg_n_0_[15] ));
  FDCE \local_reg_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[16]),
        .Q(p_3_in[0]));
  FDCE \local_reg_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[17]),
        .Q(p_3_in[1]));
  FDCE \local_reg_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[18]),
        .Q(p_3_in[2]));
  FDCE \local_reg_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[19]),
        .Q(p_0_in0));
  FDCE \local_reg_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[1]),
        .Q(\local_reg_reg_n_0_[1] ));
  FDCE \local_reg_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[20]),
        .Q(\local_reg_reg_n_0_[20] ));
  FDCE \local_reg_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[21]),
        .Q(\local_reg_reg_n_0_[21] ));
  FDCE \local_reg_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[22]),
        .Q(\local_reg_reg_n_0_[22] ));
  FDCE \local_reg_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[23]),
        .Q(\local_reg_reg_n_0_[23] ));
  CARRY4 \local_reg_reg[23]_i_1 
       (.CI(\local_reg_reg[23]_i_2_n_0 ),
        .CO({p_0_in,\local_reg_reg[23]_i_1_n_1 ,\local_reg_reg[23]_i_1_n_2 ,\local_reg_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_local_reg_reg[23]_i_1_O_UNCONNECTED [3:0]),
        .S({\local_reg[23]_i_3_n_0 ,\local_reg[23]_i_4_n_0 ,\local_reg[23]_i_5_n_0 ,\local_reg[23]_i_6_n_0 }));
  CARRY4 \local_reg_reg[23]_i_2 
       (.CI(1'b0),
        .CO({\local_reg_reg[23]_i_2_n_0 ,\local_reg_reg[23]_i_2_n_1 ,\local_reg_reg[23]_i_2_n_2 ,\local_reg_reg[23]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_local_reg_reg[23]_i_2_O_UNCONNECTED [3:0]),
        .S({\local_reg[23]_i_7_n_0 ,\local_reg[23]_i_8_n_0 ,\local_reg[23]_i_9_n_0 ,\local_reg[23]_i_10_n_0 }));
  FDCE \local_reg_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[2]),
        .Q(\local_reg_reg_n_0_[2] ));
  FDCE \local_reg_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[3]),
        .Q(\local_reg_reg_n_0_[3] ));
  FDCE \local_reg_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[4]),
        .Q(\local_reg_reg_n_0_[4] ));
  FDCE \local_reg_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[5]),
        .Q(\local_reg_reg_n_0_[5] ));
  FDCE \local_reg_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[6]),
        .Q(\local_reg_reg_n_0_[6] ));
  FDCE \local_reg_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[7]),
        .Q(\local_reg_reg_n_0_[7] ));
  FDCE \local_reg_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[8]),
        .Q(\local_reg_reg_n_0_[8] ));
  FDCE \local_reg_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(reset),
        .D(sync_reg2[9]),
        .Q(\local_reg_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'h4F44)) 
    switching_i_1
       (.I0(sync_hardtrig3),
        .I1(sync_hardtrig2),
        .I2(trig_condition),
        .I3(switching),
        .O(switching_i_1_n_0));
  FDCE switching_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(switching_i_1_n_0),
        .Q(switching));
  FDCE sync_hardtrig1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(hardtrigger),
        .Q(sync_hardtrig1));
  FDCE sync_hardtrig2_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_hardtrig1),
        .Q(sync_hardtrig2));
  FDCE sync_hardtrig3_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_hardtrig2),
        .Q(sync_hardtrig3));
  FDCE \sync_reg1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[0]),
        .Q(sync_reg1[0]));
  FDCE \sync_reg1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[10]),
        .Q(sync_reg1[10]));
  FDCE \sync_reg1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[11]),
        .Q(sync_reg1[11]));
  FDCE \sync_reg1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[12]),
        .Q(sync_reg1[12]));
  FDCE \sync_reg1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[13]),
        .Q(sync_reg1[13]));
  FDCE \sync_reg1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[14]),
        .Q(sync_reg1[14]));
  FDCE \sync_reg1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[15]),
        .Q(sync_reg1[15]));
  FDCE \sync_reg1_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[16]),
        .Q(sync_reg1[16]));
  FDCE \sync_reg1_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[17]),
        .Q(sync_reg1[17]));
  FDCE \sync_reg1_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[18]),
        .Q(sync_reg1[18]));
  FDCE \sync_reg1_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[19]),
        .Q(sync_reg1[19]));
  FDCE \sync_reg1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[1]),
        .Q(sync_reg1[1]));
  FDCE \sync_reg1_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[20]),
        .Q(sync_reg1[20]));
  FDCE \sync_reg1_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[21]),
        .Q(sync_reg1[21]));
  FDCE \sync_reg1_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[22]),
        .Q(sync_reg1[22]));
  FDCE \sync_reg1_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[23]),
        .Q(sync_reg1[23]));
  FDCE \sync_reg1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[2]),
        .Q(sync_reg1[2]));
  FDCE \sync_reg1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[3]),
        .Q(sync_reg1[3]));
  FDCE \sync_reg1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[4]),
        .Q(sync_reg1[4]));
  FDCE \sync_reg1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[5]),
        .Q(sync_reg1[5]));
  FDCE \sync_reg1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[6]),
        .Q(sync_reg1[6]));
  FDCE \sync_reg1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[7]),
        .Q(sync_reg1[7]));
  FDCE \sync_reg1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[8]),
        .Q(sync_reg1[8]));
  FDCE \sync_reg1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sample_in[9]),
        .Q(sync_reg1[9]));
  FDCE \sync_reg2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[0]),
        .Q(sync_reg2[0]));
  FDCE \sync_reg2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[10]),
        .Q(sync_reg2[10]));
  FDCE \sync_reg2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[11]),
        .Q(sync_reg2[11]));
  FDCE \sync_reg2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[12]),
        .Q(sync_reg2[12]));
  FDCE \sync_reg2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[13]),
        .Q(sync_reg2[13]));
  FDCE \sync_reg2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[14]),
        .Q(sync_reg2[14]));
  FDCE \sync_reg2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[15]),
        .Q(sync_reg2[15]));
  FDCE \sync_reg2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[16]),
        .Q(sync_reg2[16]));
  FDCE \sync_reg2_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[17]),
        .Q(sync_reg2[17]));
  FDCE \sync_reg2_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[18]),
        .Q(sync_reg2[18]));
  FDCE \sync_reg2_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[19]),
        .Q(sync_reg2[19]));
  FDCE \sync_reg2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[1]),
        .Q(sync_reg2[1]));
  FDCE \sync_reg2_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[20]),
        .Q(sync_reg2[20]));
  FDCE \sync_reg2_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[21]),
        .Q(sync_reg2[21]));
  FDCE \sync_reg2_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[22]),
        .Q(sync_reg2[22]));
  FDCE \sync_reg2_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[23]),
        .Q(sync_reg2[23]));
  FDCE \sync_reg2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[2]),
        .Q(sync_reg2[2]));
  FDCE \sync_reg2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[3]),
        .Q(sync_reg2[3]));
  FDCE \sync_reg2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[4]),
        .Q(sync_reg2[4]));
  FDCE \sync_reg2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[5]),
        .Q(sync_reg2[5]));
  FDCE \sync_reg2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[6]),
        .Q(sync_reg2[6]));
  FDCE \sync_reg2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[7]),
        .Q(sync_reg2[7]));
  FDCE \sync_reg2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[8]),
        .Q(sync_reg2[8]));
  FDCE \sync_reg2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sync_reg1[9]),
        .Q(sync_reg2[9]));
  CARRY4 threshold_trig1_carry
       (.CI(1'b0),
        .CO({threshold_trig1_carry_n_0,threshold_trig1_carry_n_1,threshold_trig1_carry_n_2,threshold_trig1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_threshold_trig1_carry_O_UNCONNECTED[3:0]),
        .S({threshold_trig1_carry_i_1_n_0,threshold_trig1_carry_i_2_n_0,threshold_trig1_carry_i_3_n_0,threshold_trig1_carry_i_4_n_0}));
  CARRY4 threshold_trig1_carry__0
       (.CI(threshold_trig1_carry_n_0),
        .CO({threshold_trig1_carry__0_n_0,threshold_trig1_carry__0_n_1,threshold_trig1_carry__0_n_2,threshold_trig1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_threshold_trig1_carry__0_O_UNCONNECTED[3:0]),
        .S({threshold_trig1_carry__0_i_1_n_0,threshold_trig1_carry__0_i_2_n_0,threshold_trig1_carry__0_i_3_n_0,threshold_trig1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    threshold_trig1_carry__0_i_1
       (.I0(\local_reg_reg_n_0_[23] ),
        .I1(local_reg2[23]),
        .I2(\local_reg_reg_n_0_[22] ),
        .I3(local_reg2[22]),
        .I4(local_reg2[21]),
        .I5(\local_reg_reg_n_0_[21] ),
        .O(threshold_trig1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    threshold_trig1_carry__0_i_2
       (.I0(\local_reg_reg_n_0_[20] ),
        .I1(local_reg2[20]),
        .I2(p_0_in0),
        .I3(local_reg2[19]),
        .I4(local_reg2[18]),
        .I5(p_3_in[2]),
        .O(threshold_trig1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    threshold_trig1_carry__0_i_3
       (.I0(p_3_in[1]),
        .I1(local_reg2[17]),
        .I2(p_3_in[0]),
        .I3(local_reg2[16]),
        .I4(local_reg2[15]),
        .I5(\local_reg_reg_n_0_[15] ),
        .O(threshold_trig1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    threshold_trig1_carry__0_i_4
       (.I0(\local_reg_reg_n_0_[14] ),
        .I1(local_reg2[14]),
        .I2(\local_reg_reg_n_0_[13] ),
        .I3(local_reg2[13]),
        .I4(local_reg2[12]),
        .I5(\local_reg_reg_n_0_[12] ),
        .O(threshold_trig1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    threshold_trig1_carry_i_1
       (.I0(\local_reg_reg_n_0_[11] ),
        .I1(local_reg2[11]),
        .I2(\local_reg_reg_n_0_[10] ),
        .I3(local_reg2[10]),
        .I4(local_reg2[9]),
        .I5(\local_reg_reg_n_0_[9] ),
        .O(threshold_trig1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    threshold_trig1_carry_i_2
       (.I0(\local_reg_reg_n_0_[8] ),
        .I1(local_reg2[8]),
        .I2(\local_reg_reg_n_0_[7] ),
        .I3(local_reg2[7]),
        .I4(local_reg2[6]),
        .I5(\local_reg_reg_n_0_[6] ),
        .O(threshold_trig1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    threshold_trig1_carry_i_3
       (.I0(\local_reg_reg_n_0_[5] ),
        .I1(local_reg2[5]),
        .I2(\local_reg_reg_n_0_[4] ),
        .I3(local_reg2[4]),
        .I4(local_reg2[3]),
        .I5(\local_reg_reg_n_0_[3] ),
        .O(threshold_trig1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    threshold_trig1_carry_i_4
       (.I0(\local_reg_reg_n_0_[2] ),
        .I1(local_reg2[2]),
        .I2(\local_reg_reg_n_0_[1] ),
        .I3(local_reg2[1]),
        .I4(local_reg2[0]),
        .I5(\local_reg_reg_n_0_[0] ),
        .O(threshold_trig1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFA0000FFC8)) 
    threshold_trig_i_1
       (.I0(threshold_trig_i_2_n_0),
        .I1(threshold_trig1_carry__0_n_0),
        .I2(threshold_trig_i_3_n_0),
        .I3(threshold_trig_i_4_n_0),
        .I4(reset),
        .I5(threshold_trig_reg_n_0),
        .O(threshold_trig_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    threshold_trig_i_2
       (.I0(\local_reg_reg_n_0_[20] ),
        .I1(\local_reg_reg_n_0_[21] ),
        .I2(\local_reg_reg_n_0_[23] ),
        .I3(\local_reg_reg_n_0_[22] ),
        .I4(p_0_in0),
        .I5(p_3_in[2]),
        .O(threshold_trig_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    threshold_trig_i_3
       (.I0(p_3_in[0]),
        .I1(p_3_in[1]),
        .O(threshold_trig_i_3_n_0));
  LUT6 #(
    .INIT(64'h00FC545400FCFCFC)) 
    threshold_trig_i_4
       (.I0(p_3_in[0]),
        .I1(threshold_trig1_carry__0_n_0),
        .I2(threshold_trig_reg_n_0),
        .I3(trig_condition1),
        .I4(p_3_in[1]),
        .I5(trig_condition14_in),
        .O(threshold_trig_i_4_n_0));
  FDCE threshold_trig_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(threshold_trig_i_1_n_0),
        .Q(threshold_trig_reg_n_0));
  CARRY4 trig_condition1__7_carry
       (.CI(1'b0),
        .CO({trig_condition1__7_carry_n_0,trig_condition1__7_carry_n_1,trig_condition1__7_carry_n_2,trig_condition1__7_carry_n_3}),
        .CYINIT(1'b0),
        .DI({trig_condition1__7_carry_i_1_n_0,trig_condition1__7_carry_i_2_n_0,trig_condition1__7_carry_i_3_n_0,trig_condition1__7_carry_i_4_n_0}),
        .O(NLW_trig_condition1__7_carry_O_UNCONNECTED[3:0]),
        .S({trig_condition1__7_carry_i_5_n_0,trig_condition1__7_carry_i_6_n_0,trig_condition1__7_carry_i_7_n_0,trig_condition1__7_carry_i_8_n_0}));
  CARRY4 trig_condition1__7_carry__0
       (.CI(trig_condition1__7_carry_n_0),
        .CO({trig_condition1,trig_condition1__7_carry__0_n_1,trig_condition1__7_carry__0_n_2,trig_condition1__7_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({trig_condition1__7_carry__0_i_1_n_0,trig_condition1__7_carry__0_i_2_n_0,trig_condition1__7_carry__0_i_3_n_0,trig_condition1__7_carry__0_i_4_n_0}),
        .O(NLW_trig_condition1__7_carry__0_O_UNCONNECTED[3:0]),
        .S({trig_condition1__7_carry__0_i_5_n_0,trig_condition1__7_carry__0_i_6_n_0,trig_condition1__7_carry__0_i_7_n_0,trig_condition1__7_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1__7_carry__0_i_1
       (.I0(\local_reg_reg_n_0_[14] ),
        .I1(adc[14]),
        .I2(\local_reg_reg_n_0_[15] ),
        .I3(adc[15]),
        .O(trig_condition1__7_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1__7_carry__0_i_2
       (.I0(\local_reg_reg_n_0_[12] ),
        .I1(adc[12]),
        .I2(\local_reg_reg_n_0_[13] ),
        .I3(adc[13]),
        .O(trig_condition1__7_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1__7_carry__0_i_3
       (.I0(\local_reg_reg_n_0_[10] ),
        .I1(adc[10]),
        .I2(\local_reg_reg_n_0_[11] ),
        .I3(adc[11]),
        .O(trig_condition1__7_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1__7_carry__0_i_4
       (.I0(\local_reg_reg_n_0_[8] ),
        .I1(adc[8]),
        .I2(\local_reg_reg_n_0_[9] ),
        .I3(adc[9]),
        .O(trig_condition1__7_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1__7_carry__0_i_5
       (.I0(\local_reg_reg_n_0_[14] ),
        .I1(adc[14]),
        .I2(\local_reg_reg_n_0_[15] ),
        .I3(adc[15]),
        .O(trig_condition1__7_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1__7_carry__0_i_6
       (.I0(\local_reg_reg_n_0_[12] ),
        .I1(adc[12]),
        .I2(\local_reg_reg_n_0_[13] ),
        .I3(adc[13]),
        .O(trig_condition1__7_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1__7_carry__0_i_7
       (.I0(\local_reg_reg_n_0_[10] ),
        .I1(adc[10]),
        .I2(\local_reg_reg_n_0_[11] ),
        .I3(adc[11]),
        .O(trig_condition1__7_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1__7_carry__0_i_8
       (.I0(\local_reg_reg_n_0_[8] ),
        .I1(adc[8]),
        .I2(\local_reg_reg_n_0_[9] ),
        .I3(adc[9]),
        .O(trig_condition1__7_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1__7_carry_i_1
       (.I0(\local_reg_reg_n_0_[6] ),
        .I1(adc[6]),
        .I2(\local_reg_reg_n_0_[7] ),
        .I3(adc[7]),
        .O(trig_condition1__7_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1__7_carry_i_2
       (.I0(\local_reg_reg_n_0_[4] ),
        .I1(adc[4]),
        .I2(\local_reg_reg_n_0_[5] ),
        .I3(adc[5]),
        .O(trig_condition1__7_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1__7_carry_i_3
       (.I0(\local_reg_reg_n_0_[2] ),
        .I1(adc[2]),
        .I2(\local_reg_reg_n_0_[3] ),
        .I3(adc[3]),
        .O(trig_condition1__7_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1__7_carry_i_4
       (.I0(\local_reg_reg_n_0_[0] ),
        .I1(adc[0]),
        .I2(\local_reg_reg_n_0_[1] ),
        .I3(adc[1]),
        .O(trig_condition1__7_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1__7_carry_i_5
       (.I0(\local_reg_reg_n_0_[6] ),
        .I1(adc[6]),
        .I2(\local_reg_reg_n_0_[7] ),
        .I3(adc[7]),
        .O(trig_condition1__7_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1__7_carry_i_6
       (.I0(\local_reg_reg_n_0_[4] ),
        .I1(adc[4]),
        .I2(\local_reg_reg_n_0_[5] ),
        .I3(adc[5]),
        .O(trig_condition1__7_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1__7_carry_i_7
       (.I0(\local_reg_reg_n_0_[2] ),
        .I1(adc[2]),
        .I2(\local_reg_reg_n_0_[3] ),
        .I3(adc[3]),
        .O(trig_condition1__7_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1__7_carry_i_8
       (.I0(\local_reg_reg_n_0_[0] ),
        .I1(adc[0]),
        .I2(\local_reg_reg_n_0_[1] ),
        .I3(adc[1]),
        .O(trig_condition1__7_carry_i_8_n_0));
  CARRY4 trig_condition1_carry
       (.CI(1'b0),
        .CO({trig_condition1_carry_n_0,trig_condition1_carry_n_1,trig_condition1_carry_n_2,trig_condition1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({trig_condition1_carry_i_1_n_0,trig_condition1_carry_i_2_n_0,trig_condition1_carry_i_3_n_0,trig_condition1_carry_i_4_n_0}),
        .O(NLW_trig_condition1_carry_O_UNCONNECTED[3:0]),
        .S({trig_condition1_carry_i_5_n_0,trig_condition1_carry_i_6_n_0,trig_condition1_carry_i_7_n_0,trig_condition1_carry_i_8_n_0}));
  CARRY4 trig_condition1_carry__0
       (.CI(trig_condition1_carry_n_0),
        .CO({trig_condition14_in,trig_condition1_carry__0_n_1,trig_condition1_carry__0_n_2,trig_condition1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({trig_condition1_carry__0_i_1_n_0,trig_condition1_carry__0_i_2_n_0,trig_condition1_carry__0_i_3_n_0,trig_condition1_carry__0_i_4_n_0}),
        .O(NLW_trig_condition1_carry__0_O_UNCONNECTED[3:0]),
        .S({trig_condition1_carry__0_i_5_n_0,trig_condition1_carry__0_i_6_n_0,trig_condition1_carry__0_i_7_n_0,trig_condition1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1_carry__0_i_1
       (.I0(adc[14]),
        .I1(\local_reg_reg_n_0_[14] ),
        .I2(adc[15]),
        .I3(\local_reg_reg_n_0_[15] ),
        .O(trig_condition1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1_carry__0_i_2
       (.I0(adc[12]),
        .I1(\local_reg_reg_n_0_[12] ),
        .I2(adc[13]),
        .I3(\local_reg_reg_n_0_[13] ),
        .O(trig_condition1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1_carry__0_i_3
       (.I0(adc[10]),
        .I1(\local_reg_reg_n_0_[10] ),
        .I2(adc[11]),
        .I3(\local_reg_reg_n_0_[11] ),
        .O(trig_condition1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1_carry__0_i_4
       (.I0(adc[8]),
        .I1(\local_reg_reg_n_0_[8] ),
        .I2(adc[9]),
        .I3(\local_reg_reg_n_0_[9] ),
        .O(trig_condition1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1_carry__0_i_5
       (.I0(\local_reg_reg_n_0_[14] ),
        .I1(adc[14]),
        .I2(\local_reg_reg_n_0_[15] ),
        .I3(adc[15]),
        .O(trig_condition1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1_carry__0_i_6
       (.I0(\local_reg_reg_n_0_[12] ),
        .I1(adc[12]),
        .I2(\local_reg_reg_n_0_[13] ),
        .I3(adc[13]),
        .O(trig_condition1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1_carry__0_i_7
       (.I0(\local_reg_reg_n_0_[10] ),
        .I1(adc[10]),
        .I2(\local_reg_reg_n_0_[11] ),
        .I3(adc[11]),
        .O(trig_condition1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1_carry__0_i_8
       (.I0(\local_reg_reg_n_0_[8] ),
        .I1(adc[8]),
        .I2(\local_reg_reg_n_0_[9] ),
        .I3(adc[9]),
        .O(trig_condition1_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1_carry_i_1
       (.I0(adc[6]),
        .I1(\local_reg_reg_n_0_[6] ),
        .I2(adc[7]),
        .I3(\local_reg_reg_n_0_[7] ),
        .O(trig_condition1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1_carry_i_2
       (.I0(adc[4]),
        .I1(\local_reg_reg_n_0_[4] ),
        .I2(adc[5]),
        .I3(\local_reg_reg_n_0_[5] ),
        .O(trig_condition1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1_carry_i_3
       (.I0(adc[2]),
        .I1(\local_reg_reg_n_0_[2] ),
        .I2(adc[3]),
        .I3(\local_reg_reg_n_0_[3] ),
        .O(trig_condition1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    trig_condition1_carry_i_4
       (.I0(adc[0]),
        .I1(\local_reg_reg_n_0_[0] ),
        .I2(adc[1]),
        .I3(\local_reg_reg_n_0_[1] ),
        .O(trig_condition1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1_carry_i_5
       (.I0(\local_reg_reg_n_0_[6] ),
        .I1(adc[6]),
        .I2(\local_reg_reg_n_0_[7] ),
        .I3(adc[7]),
        .O(trig_condition1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1_carry_i_6
       (.I0(\local_reg_reg_n_0_[4] ),
        .I1(adc[4]),
        .I2(\local_reg_reg_n_0_[5] ),
        .I3(adc[5]),
        .O(trig_condition1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1_carry_i_7
       (.I0(\local_reg_reg_n_0_[2] ),
        .I1(adc[2]),
        .I2(\local_reg_reg_n_0_[3] ),
        .I3(adc[3]),
        .O(trig_condition1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    trig_condition1_carry_i_8
       (.I0(\local_reg_reg_n_0_[0] ),
        .I1(adc[0]),
        .I2(\local_reg_reg_n_0_[1] ),
        .I3(adc[1]),
        .O(trig_condition1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0F04FFFF0F040000)) 
    trig_condition_i_1
       (.I0(p_3_in[2]),
        .I1(trig_condition_i_2_n_0),
        .I2(trig_condition_i_3_n_0),
        .I3(trig_condition_i_4_n_0),
        .I4(trig_condition_i_5_n_0),
        .I5(trig_condition),
        .O(trig_condition_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFEE00E0E00000)) 
    trig_condition_i_2
       (.I0(threshold_trig1_carry__0_n_0),
        .I1(threshold_trig_reg_n_0),
        .I2(trig_condition1),
        .I3(trig_condition14_in),
        .I4(p_3_in[1]),
        .I5(p_3_in[0]),
        .O(trig_condition_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    trig_condition_i_3
       (.I0(p_0_in0),
        .I1(\local_reg_reg_n_0_[22] ),
        .I2(\local_reg_reg_n_0_[23] ),
        .I3(\local_reg_reg_n_0_[21] ),
        .I4(\local_reg_reg_n_0_[20] ),
        .O(trig_condition_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    trig_condition_i_4
       (.I0(p_3_in[0]),
        .I1(switching),
        .I2(p_3_in[1]),
        .I3(p_3_in[2]),
        .O(trig_condition_i_4_n_0));
  LUT6 #(
    .INIT(64'hEFEAEFEAEFEAAAAA)) 
    trig_condition_i_5
       (.I0(trig_condition_i_6_n_0),
        .I1(trig_condition1),
        .I2(p_3_in[1]),
        .I3(trig_condition14_in),
        .I4(threshold_trig1_carry__0_n_0),
        .I5(threshold_trig_reg_n_0),
        .O(trig_condition_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    trig_condition_i_6
       (.I0(threshold_trig_i_2_n_0),
        .I1(p_3_in[1]),
        .I2(p_3_in[0]),
        .O(trig_condition_i_6_n_0));
  FDCE trig_condition_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(trig_condition_i_1_n_0),
        .Q(trig_condition));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
