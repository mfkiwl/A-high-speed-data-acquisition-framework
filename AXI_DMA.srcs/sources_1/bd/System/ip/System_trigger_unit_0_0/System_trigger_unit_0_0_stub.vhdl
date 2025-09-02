-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Aug 23 00:29:50 2025
-- Host        : LAPTOP-85RG0KL6 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Xilinx/projects/axi_2_dma/AXI_DMA/AXI_DMA.srcs/sources_1/bd/System/ip/System_trigger_unit_0_0/System_trigger_unit_0_0_stub.vhdl
-- Design      : System_trigger_unit_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity System_trigger_unit_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    adc : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    sample_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    hardtrigger : in STD_LOGIC;
    trig_condition : out STD_LOGIC
  );

end System_trigger_unit_0_0;

architecture stub of System_trigger_unit_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,adc[15:0],reset,sample_in[23:0],hardtrigger,trig_condition";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "trigger_unit,Vivado 2018.3";
begin
end;
