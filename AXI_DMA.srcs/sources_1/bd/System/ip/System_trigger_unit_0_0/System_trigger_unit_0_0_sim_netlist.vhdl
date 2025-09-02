-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Aug 23 00:29:50 2025
-- Host        : LAPTOP-85RG0KL6 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Xilinx/projects/axi_2_dma/AXI_DMA/AXI_DMA.srcs/sources_1/bd/System/ip/System_trigger_unit_0_0/System_trigger_unit_0_0_sim_netlist.vhdl
-- Design      : System_trigger_unit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity System_trigger_unit_0_0_trigger_unit is
  port (
    trig_condition : out STD_LOGIC;
    sample_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    hardtrigger : in STD_LOGIC;
    adc : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of System_trigger_unit_0_0_trigger_unit : entity is "trigger_unit";
end System_trigger_unit_0_0_trigger_unit;

architecture STRUCTURE of System_trigger_unit_0_0_trigger_unit is
  signal local_reg2 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \local_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \local_reg[23]_i_10_n_0\ : STD_LOGIC;
  signal \local_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \local_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \local_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \local_reg[23]_i_6_n_0\ : STD_LOGIC;
  signal \local_reg[23]_i_7_n_0\ : STD_LOGIC;
  signal \local_reg[23]_i_8_n_0\ : STD_LOGIC;
  signal \local_reg[23]_i_9_n_0\ : STD_LOGIC;
  signal \local_reg_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \local_reg_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \local_reg_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \local_reg_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \local_reg_reg[23]_i_2_n_1\ : STD_LOGIC;
  signal \local_reg_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \local_reg_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \local_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal p_3_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal switching : STD_LOGIC;
  signal switching_i_1_n_0 : STD_LOGIC;
  signal sync_hardtrig1 : STD_LOGIC;
  signal sync_hardtrig2 : STD_LOGIC;
  signal sync_hardtrig3 : STD_LOGIC;
  signal sync_reg1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal sync_reg2 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \threshold_trig1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \threshold_trig1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \threshold_trig1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \threshold_trig1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \threshold_trig1_carry__0_n_0\ : STD_LOGIC;
  signal \threshold_trig1_carry__0_n_1\ : STD_LOGIC;
  signal \threshold_trig1_carry__0_n_2\ : STD_LOGIC;
  signal \threshold_trig1_carry__0_n_3\ : STD_LOGIC;
  signal threshold_trig1_carry_i_1_n_0 : STD_LOGIC;
  signal threshold_trig1_carry_i_2_n_0 : STD_LOGIC;
  signal threshold_trig1_carry_i_3_n_0 : STD_LOGIC;
  signal threshold_trig1_carry_i_4_n_0 : STD_LOGIC;
  signal threshold_trig1_carry_n_0 : STD_LOGIC;
  signal threshold_trig1_carry_n_1 : STD_LOGIC;
  signal threshold_trig1_carry_n_2 : STD_LOGIC;
  signal threshold_trig1_carry_n_3 : STD_LOGIC;
  signal threshold_trig_i_1_n_0 : STD_LOGIC;
  signal threshold_trig_i_2_n_0 : STD_LOGIC;
  signal threshold_trig_i_3_n_0 : STD_LOGIC;
  signal threshold_trig_i_4_n_0 : STD_LOGIC;
  signal threshold_trig_reg_n_0 : STD_LOGIC;
  signal \^trig_condition\ : STD_LOGIC;
  signal trig_condition1 : STD_LOGIC;
  signal trig_condition14_in : STD_LOGIC;
  signal \trig_condition1__7_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry__0_n_1\ : STD_LOGIC;
  signal \trig_condition1__7_carry__0_n_2\ : STD_LOGIC;
  signal \trig_condition1__7_carry__0_n_3\ : STD_LOGIC;
  signal \trig_condition1__7_carry_i_1_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry_i_2_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry_i_3_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry_i_4_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry_i_5_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry_i_6_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry_i_7_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry_i_8_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry_n_0\ : STD_LOGIC;
  signal \trig_condition1__7_carry_n_1\ : STD_LOGIC;
  signal \trig_condition1__7_carry_n_2\ : STD_LOGIC;
  signal \trig_condition1__7_carry_n_3\ : STD_LOGIC;
  signal \trig_condition1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \trig_condition1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \trig_condition1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \trig_condition1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \trig_condition1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \trig_condition1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \trig_condition1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \trig_condition1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \trig_condition1_carry__0_n_1\ : STD_LOGIC;
  signal \trig_condition1_carry__0_n_2\ : STD_LOGIC;
  signal \trig_condition1_carry__0_n_3\ : STD_LOGIC;
  signal trig_condition1_carry_i_1_n_0 : STD_LOGIC;
  signal trig_condition1_carry_i_2_n_0 : STD_LOGIC;
  signal trig_condition1_carry_i_3_n_0 : STD_LOGIC;
  signal trig_condition1_carry_i_4_n_0 : STD_LOGIC;
  signal trig_condition1_carry_i_5_n_0 : STD_LOGIC;
  signal trig_condition1_carry_i_6_n_0 : STD_LOGIC;
  signal trig_condition1_carry_i_7_n_0 : STD_LOGIC;
  signal trig_condition1_carry_i_8_n_0 : STD_LOGIC;
  signal trig_condition1_carry_n_0 : STD_LOGIC;
  signal trig_condition1_carry_n_1 : STD_LOGIC;
  signal trig_condition1_carry_n_2 : STD_LOGIC;
  signal trig_condition1_carry_n_3 : STD_LOGIC;
  signal trig_condition_i_1_n_0 : STD_LOGIC;
  signal trig_condition_i_2_n_0 : STD_LOGIC;
  signal trig_condition_i_3_n_0 : STD_LOGIC;
  signal trig_condition_i_4_n_0 : STD_LOGIC;
  signal trig_condition_i_5_n_0 : STD_LOGIC;
  signal trig_condition_i_6_n_0 : STD_LOGIC;
  signal \NLW_local_reg_reg[23]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_local_reg_reg[23]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_threshold_trig1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_threshold_trig1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_trig_condition1__7_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_trig_condition1__7_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_trig_condition1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_trig_condition1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of trig_condition_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of trig_condition_i_6 : label is "soft_lutpair0";
begin
  trig_condition <= \^trig_condition\;
\local_reg2[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => \local_reg2[23]_i_1_n_0\
    );
\local_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[0]\,
      Q => local_reg2(0),
      R => '0'
    );
\local_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[10]\,
      Q => local_reg2(10),
      R => '0'
    );
\local_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[11]\,
      Q => local_reg2(11),
      R => '0'
    );
\local_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[12]\,
      Q => local_reg2(12),
      R => '0'
    );
\local_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[13]\,
      Q => local_reg2(13),
      R => '0'
    );
\local_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[14]\,
      Q => local_reg2(14),
      R => '0'
    );
\local_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[15]\,
      Q => local_reg2(15),
      R => '0'
    );
\local_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => p_3_in(0),
      Q => local_reg2(16),
      R => '0'
    );
\local_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => p_3_in(1),
      Q => local_reg2(17),
      R => '0'
    );
\local_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => p_3_in(2),
      Q => local_reg2(18),
      R => '0'
    );
\local_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => p_0_in0,
      Q => local_reg2(19),
      R => '0'
    );
\local_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[1]\,
      Q => local_reg2(1),
      R => '0'
    );
\local_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[20]\,
      Q => local_reg2(20),
      R => '0'
    );
\local_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[21]\,
      Q => local_reg2(21),
      R => '0'
    );
\local_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[22]\,
      Q => local_reg2(22),
      R => '0'
    );
\local_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[23]\,
      Q => local_reg2(23),
      R => '0'
    );
\local_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[2]\,
      Q => local_reg2(2),
      R => '0'
    );
\local_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[3]\,
      Q => local_reg2(3),
      R => '0'
    );
\local_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[4]\,
      Q => local_reg2(4),
      R => '0'
    );
\local_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[5]\,
      Q => local_reg2(5),
      R => '0'
    );
\local_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[6]\,
      Q => local_reg2(6),
      R => '0'
    );
\local_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[7]\,
      Q => local_reg2(7),
      R => '0'
    );
\local_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[8]\,
      Q => local_reg2(8),
      R => '0'
    );
\local_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \local_reg2[23]_i_1_n_0\,
      D => \local_reg_reg_n_0_[9]\,
      Q => local_reg2(9),
      R => '0'
    );
\local_reg[23]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sync_reg1(0),
      I1 => sync_reg2(0),
      I2 => sync_reg2(2),
      I3 => sync_reg1(2),
      I4 => sync_reg2(1),
      I5 => sync_reg1(1),
      O => \local_reg[23]_i_10_n_0\
    );
\local_reg[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sync_reg1(21),
      I1 => sync_reg2(21),
      I2 => sync_reg2(23),
      I3 => sync_reg1(23),
      I4 => sync_reg2(22),
      I5 => sync_reg1(22),
      O => \local_reg[23]_i_3_n_0\
    );
\local_reg[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sync_reg1(18),
      I1 => sync_reg2(18),
      I2 => sync_reg2(20),
      I3 => sync_reg1(20),
      I4 => sync_reg2(19),
      I5 => sync_reg1(19),
      O => \local_reg[23]_i_4_n_0\
    );
\local_reg[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sync_reg1(15),
      I1 => sync_reg2(15),
      I2 => sync_reg2(17),
      I3 => sync_reg1(17),
      I4 => sync_reg2(16),
      I5 => sync_reg1(16),
      O => \local_reg[23]_i_5_n_0\
    );
\local_reg[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sync_reg1(12),
      I1 => sync_reg2(12),
      I2 => sync_reg2(14),
      I3 => sync_reg1(14),
      I4 => sync_reg2(13),
      I5 => sync_reg1(13),
      O => \local_reg[23]_i_6_n_0\
    );
\local_reg[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sync_reg1(9),
      I1 => sync_reg2(9),
      I2 => sync_reg2(11),
      I3 => sync_reg1(11),
      I4 => sync_reg2(10),
      I5 => sync_reg1(10),
      O => \local_reg[23]_i_7_n_0\
    );
\local_reg[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sync_reg1(6),
      I1 => sync_reg2(6),
      I2 => sync_reg2(8),
      I3 => sync_reg1(8),
      I4 => sync_reg2(7),
      I5 => sync_reg1(7),
      O => \local_reg[23]_i_8_n_0\
    );
\local_reg[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sync_reg1(3),
      I1 => sync_reg2(3),
      I2 => sync_reg2(5),
      I3 => sync_reg1(5),
      I4 => sync_reg2(4),
      I5 => sync_reg1(4),
      O => \local_reg[23]_i_9_n_0\
    );
\local_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(0),
      Q => \local_reg_reg_n_0_[0]\
    );
\local_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(10),
      Q => \local_reg_reg_n_0_[10]\
    );
\local_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(11),
      Q => \local_reg_reg_n_0_[11]\
    );
\local_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(12),
      Q => \local_reg_reg_n_0_[12]\
    );
\local_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(13),
      Q => \local_reg_reg_n_0_[13]\
    );
\local_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(14),
      Q => \local_reg_reg_n_0_[14]\
    );
\local_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(15),
      Q => \local_reg_reg_n_0_[15]\
    );
\local_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(16),
      Q => p_3_in(0)
    );
\local_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(17),
      Q => p_3_in(1)
    );
\local_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(18),
      Q => p_3_in(2)
    );
\local_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(19),
      Q => p_0_in0
    );
\local_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(1),
      Q => \local_reg_reg_n_0_[1]\
    );
\local_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(20),
      Q => \local_reg_reg_n_0_[20]\
    );
\local_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(21),
      Q => \local_reg_reg_n_0_[21]\
    );
\local_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(22),
      Q => \local_reg_reg_n_0_[22]\
    );
\local_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(23),
      Q => \local_reg_reg_n_0_[23]\
    );
\local_reg_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \local_reg_reg[23]_i_2_n_0\,
      CO(3) => p_0_in,
      CO(2) => \local_reg_reg[23]_i_1_n_1\,
      CO(1) => \local_reg_reg[23]_i_1_n_2\,
      CO(0) => \local_reg_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_local_reg_reg[23]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \local_reg[23]_i_3_n_0\,
      S(2) => \local_reg[23]_i_4_n_0\,
      S(1) => \local_reg[23]_i_5_n_0\,
      S(0) => \local_reg[23]_i_6_n_0\
    );
\local_reg_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \local_reg_reg[23]_i_2_n_0\,
      CO(2) => \local_reg_reg[23]_i_2_n_1\,
      CO(1) => \local_reg_reg[23]_i_2_n_2\,
      CO(0) => \local_reg_reg[23]_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_local_reg_reg[23]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \local_reg[23]_i_7_n_0\,
      S(2) => \local_reg[23]_i_8_n_0\,
      S(1) => \local_reg[23]_i_9_n_0\,
      S(0) => \local_reg[23]_i_10_n_0\
    );
\local_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(2),
      Q => \local_reg_reg_n_0_[2]\
    );
\local_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(3),
      Q => \local_reg_reg_n_0_[3]\
    );
\local_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(4),
      Q => \local_reg_reg_n_0_[4]\
    );
\local_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(5),
      Q => \local_reg_reg_n_0_[5]\
    );
\local_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(6),
      Q => \local_reg_reg_n_0_[6]\
    );
\local_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(7),
      Q => \local_reg_reg_n_0_[7]\
    );
\local_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(8),
      Q => \local_reg_reg_n_0_[8]\
    );
\local_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => p_0_in,
      CLR => reset,
      D => sync_reg2(9),
      Q => \local_reg_reg_n_0_[9]\
    );
switching_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => sync_hardtrig3,
      I1 => sync_hardtrig2,
      I2 => \^trig_condition\,
      I3 => switching,
      O => switching_i_1_n_0
    );
switching_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => switching_i_1_n_0,
      Q => switching
    );
sync_hardtrig1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => hardtrigger,
      Q => sync_hardtrig1
    );
sync_hardtrig2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_hardtrig1,
      Q => sync_hardtrig2
    );
sync_hardtrig3_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_hardtrig2,
      Q => sync_hardtrig3
    );
\sync_reg1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(0),
      Q => sync_reg1(0)
    );
\sync_reg1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(10),
      Q => sync_reg1(10)
    );
\sync_reg1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(11),
      Q => sync_reg1(11)
    );
\sync_reg1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(12),
      Q => sync_reg1(12)
    );
\sync_reg1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(13),
      Q => sync_reg1(13)
    );
\sync_reg1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(14),
      Q => sync_reg1(14)
    );
\sync_reg1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(15),
      Q => sync_reg1(15)
    );
\sync_reg1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(16),
      Q => sync_reg1(16)
    );
\sync_reg1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(17),
      Q => sync_reg1(17)
    );
\sync_reg1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(18),
      Q => sync_reg1(18)
    );
\sync_reg1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(19),
      Q => sync_reg1(19)
    );
\sync_reg1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(1),
      Q => sync_reg1(1)
    );
\sync_reg1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(20),
      Q => sync_reg1(20)
    );
\sync_reg1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(21),
      Q => sync_reg1(21)
    );
\sync_reg1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(22),
      Q => sync_reg1(22)
    );
\sync_reg1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(23),
      Q => sync_reg1(23)
    );
\sync_reg1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(2),
      Q => sync_reg1(2)
    );
\sync_reg1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(3),
      Q => sync_reg1(3)
    );
\sync_reg1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(4),
      Q => sync_reg1(4)
    );
\sync_reg1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(5),
      Q => sync_reg1(5)
    );
\sync_reg1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(6),
      Q => sync_reg1(6)
    );
\sync_reg1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(7),
      Q => sync_reg1(7)
    );
\sync_reg1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(8),
      Q => sync_reg1(8)
    );
\sync_reg1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sample_in(9),
      Q => sync_reg1(9)
    );
\sync_reg2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(0),
      Q => sync_reg2(0)
    );
\sync_reg2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(10),
      Q => sync_reg2(10)
    );
\sync_reg2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(11),
      Q => sync_reg2(11)
    );
\sync_reg2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(12),
      Q => sync_reg2(12)
    );
\sync_reg2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(13),
      Q => sync_reg2(13)
    );
\sync_reg2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(14),
      Q => sync_reg2(14)
    );
\sync_reg2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(15),
      Q => sync_reg2(15)
    );
\sync_reg2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(16),
      Q => sync_reg2(16)
    );
\sync_reg2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(17),
      Q => sync_reg2(17)
    );
\sync_reg2_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(18),
      Q => sync_reg2(18)
    );
\sync_reg2_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(19),
      Q => sync_reg2(19)
    );
\sync_reg2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(1),
      Q => sync_reg2(1)
    );
\sync_reg2_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(20),
      Q => sync_reg2(20)
    );
\sync_reg2_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(21),
      Q => sync_reg2(21)
    );
\sync_reg2_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(22),
      Q => sync_reg2(22)
    );
\sync_reg2_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(23),
      Q => sync_reg2(23)
    );
\sync_reg2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(2),
      Q => sync_reg2(2)
    );
\sync_reg2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(3),
      Q => sync_reg2(3)
    );
\sync_reg2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(4),
      Q => sync_reg2(4)
    );
\sync_reg2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(5),
      Q => sync_reg2(5)
    );
\sync_reg2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(6),
      Q => sync_reg2(6)
    );
\sync_reg2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(7),
      Q => sync_reg2(7)
    );
\sync_reg2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(8),
      Q => sync_reg2(8)
    );
\sync_reg2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sync_reg1(9),
      Q => sync_reg2(9)
    );
threshold_trig1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => threshold_trig1_carry_n_0,
      CO(2) => threshold_trig1_carry_n_1,
      CO(1) => threshold_trig1_carry_n_2,
      CO(0) => threshold_trig1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_threshold_trig1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => threshold_trig1_carry_i_1_n_0,
      S(2) => threshold_trig1_carry_i_2_n_0,
      S(1) => threshold_trig1_carry_i_3_n_0,
      S(0) => threshold_trig1_carry_i_4_n_0
    );
\threshold_trig1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => threshold_trig1_carry_n_0,
      CO(3) => \threshold_trig1_carry__0_n_0\,
      CO(2) => \threshold_trig1_carry__0_n_1\,
      CO(1) => \threshold_trig1_carry__0_n_2\,
      CO(0) => \threshold_trig1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_threshold_trig1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \threshold_trig1_carry__0_i_1_n_0\,
      S(2) => \threshold_trig1_carry__0_i_2_n_0\,
      S(1) => \threshold_trig1_carry__0_i_3_n_0\,
      S(0) => \threshold_trig1_carry__0_i_4_n_0\
    );
\threshold_trig1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[23]\,
      I1 => local_reg2(23),
      I2 => \local_reg_reg_n_0_[22]\,
      I3 => local_reg2(22),
      I4 => local_reg2(21),
      I5 => \local_reg_reg_n_0_[21]\,
      O => \threshold_trig1_carry__0_i_1_n_0\
    );
\threshold_trig1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[20]\,
      I1 => local_reg2(20),
      I2 => p_0_in0,
      I3 => local_reg2(19),
      I4 => local_reg2(18),
      I5 => p_3_in(2),
      O => \threshold_trig1_carry__0_i_2_n_0\
    );
\threshold_trig1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_3_in(1),
      I1 => local_reg2(17),
      I2 => p_3_in(0),
      I3 => local_reg2(16),
      I4 => local_reg2(15),
      I5 => \local_reg_reg_n_0_[15]\,
      O => \threshold_trig1_carry__0_i_3_n_0\
    );
\threshold_trig1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[14]\,
      I1 => local_reg2(14),
      I2 => \local_reg_reg_n_0_[13]\,
      I3 => local_reg2(13),
      I4 => local_reg2(12),
      I5 => \local_reg_reg_n_0_[12]\,
      O => \threshold_trig1_carry__0_i_4_n_0\
    );
threshold_trig1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[11]\,
      I1 => local_reg2(11),
      I2 => \local_reg_reg_n_0_[10]\,
      I3 => local_reg2(10),
      I4 => local_reg2(9),
      I5 => \local_reg_reg_n_0_[9]\,
      O => threshold_trig1_carry_i_1_n_0
    );
threshold_trig1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[8]\,
      I1 => local_reg2(8),
      I2 => \local_reg_reg_n_0_[7]\,
      I3 => local_reg2(7),
      I4 => local_reg2(6),
      I5 => \local_reg_reg_n_0_[6]\,
      O => threshold_trig1_carry_i_2_n_0
    );
threshold_trig1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[5]\,
      I1 => local_reg2(5),
      I2 => \local_reg_reg_n_0_[4]\,
      I3 => local_reg2(4),
      I4 => local_reg2(3),
      I5 => \local_reg_reg_n_0_[3]\,
      O => threshold_trig1_carry_i_3_n_0
    );
threshold_trig1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[2]\,
      I1 => local_reg2(2),
      I2 => \local_reg_reg_n_0_[1]\,
      I3 => local_reg2(1),
      I4 => local_reg2(0),
      I5 => \local_reg_reg_n_0_[0]\,
      O => threshold_trig1_carry_i_4_n_0
    );
threshold_trig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFA0000FFC8"
    )
        port map (
      I0 => threshold_trig_i_2_n_0,
      I1 => \threshold_trig1_carry__0_n_0\,
      I2 => threshold_trig_i_3_n_0,
      I3 => threshold_trig_i_4_n_0,
      I4 => reset,
      I5 => threshold_trig_reg_n_0,
      O => threshold_trig_i_1_n_0
    );
threshold_trig_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \local_reg_reg_n_0_[20]\,
      I1 => \local_reg_reg_n_0_[21]\,
      I2 => \local_reg_reg_n_0_[23]\,
      I3 => \local_reg_reg_n_0_[22]\,
      I4 => p_0_in0,
      I5 => p_3_in(2),
      O => threshold_trig_i_2_n_0
    );
threshold_trig_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_3_in(0),
      I1 => p_3_in(1),
      O => threshold_trig_i_3_n_0
    );
threshold_trig_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FC545400FCFCFC"
    )
        port map (
      I0 => p_3_in(0),
      I1 => \threshold_trig1_carry__0_n_0\,
      I2 => threshold_trig_reg_n_0,
      I3 => trig_condition1,
      I4 => p_3_in(1),
      I5 => trig_condition14_in,
      O => threshold_trig_i_4_n_0
    );
threshold_trig_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => threshold_trig_i_1_n_0,
      Q => threshold_trig_reg_n_0
    );
\trig_condition1__7_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \trig_condition1__7_carry_n_0\,
      CO(2) => \trig_condition1__7_carry_n_1\,
      CO(1) => \trig_condition1__7_carry_n_2\,
      CO(0) => \trig_condition1__7_carry_n_3\,
      CYINIT => '0',
      DI(3) => \trig_condition1__7_carry_i_1_n_0\,
      DI(2) => \trig_condition1__7_carry_i_2_n_0\,
      DI(1) => \trig_condition1__7_carry_i_3_n_0\,
      DI(0) => \trig_condition1__7_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_trig_condition1__7_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \trig_condition1__7_carry_i_5_n_0\,
      S(2) => \trig_condition1__7_carry_i_6_n_0\,
      S(1) => \trig_condition1__7_carry_i_7_n_0\,
      S(0) => \trig_condition1__7_carry_i_8_n_0\
    );
\trig_condition1__7_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \trig_condition1__7_carry_n_0\,
      CO(3) => trig_condition1,
      CO(2) => \trig_condition1__7_carry__0_n_1\,
      CO(1) => \trig_condition1__7_carry__0_n_2\,
      CO(0) => \trig_condition1__7_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \trig_condition1__7_carry__0_i_1_n_0\,
      DI(2) => \trig_condition1__7_carry__0_i_2_n_0\,
      DI(1) => \trig_condition1__7_carry__0_i_3_n_0\,
      DI(0) => \trig_condition1__7_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_trig_condition1__7_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \trig_condition1__7_carry__0_i_5_n_0\,
      S(2) => \trig_condition1__7_carry__0_i_6_n_0\,
      S(1) => \trig_condition1__7_carry__0_i_7_n_0\,
      S(0) => \trig_condition1__7_carry__0_i_8_n_0\
    );
\trig_condition1__7_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \local_reg_reg_n_0_[14]\,
      I1 => adc(14),
      I2 => \local_reg_reg_n_0_[15]\,
      I3 => adc(15),
      O => \trig_condition1__7_carry__0_i_1_n_0\
    );
\trig_condition1__7_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \local_reg_reg_n_0_[12]\,
      I1 => adc(12),
      I2 => \local_reg_reg_n_0_[13]\,
      I3 => adc(13),
      O => \trig_condition1__7_carry__0_i_2_n_0\
    );
\trig_condition1__7_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \local_reg_reg_n_0_[10]\,
      I1 => adc(10),
      I2 => \local_reg_reg_n_0_[11]\,
      I3 => adc(11),
      O => \trig_condition1__7_carry__0_i_3_n_0\
    );
\trig_condition1__7_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \local_reg_reg_n_0_[8]\,
      I1 => adc(8),
      I2 => \local_reg_reg_n_0_[9]\,
      I3 => adc(9),
      O => \trig_condition1__7_carry__0_i_4_n_0\
    );
\trig_condition1__7_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[14]\,
      I1 => adc(14),
      I2 => \local_reg_reg_n_0_[15]\,
      I3 => adc(15),
      O => \trig_condition1__7_carry__0_i_5_n_0\
    );
\trig_condition1__7_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[12]\,
      I1 => adc(12),
      I2 => \local_reg_reg_n_0_[13]\,
      I3 => adc(13),
      O => \trig_condition1__7_carry__0_i_6_n_0\
    );
\trig_condition1__7_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[10]\,
      I1 => adc(10),
      I2 => \local_reg_reg_n_0_[11]\,
      I3 => adc(11),
      O => \trig_condition1__7_carry__0_i_7_n_0\
    );
\trig_condition1__7_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[8]\,
      I1 => adc(8),
      I2 => \local_reg_reg_n_0_[9]\,
      I3 => adc(9),
      O => \trig_condition1__7_carry__0_i_8_n_0\
    );
\trig_condition1__7_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \local_reg_reg_n_0_[6]\,
      I1 => adc(6),
      I2 => \local_reg_reg_n_0_[7]\,
      I3 => adc(7),
      O => \trig_condition1__7_carry_i_1_n_0\
    );
\trig_condition1__7_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \local_reg_reg_n_0_[4]\,
      I1 => adc(4),
      I2 => \local_reg_reg_n_0_[5]\,
      I3 => adc(5),
      O => \trig_condition1__7_carry_i_2_n_0\
    );
\trig_condition1__7_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \local_reg_reg_n_0_[2]\,
      I1 => adc(2),
      I2 => \local_reg_reg_n_0_[3]\,
      I3 => adc(3),
      O => \trig_condition1__7_carry_i_3_n_0\
    );
\trig_condition1__7_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \local_reg_reg_n_0_[0]\,
      I1 => adc(0),
      I2 => \local_reg_reg_n_0_[1]\,
      I3 => adc(1),
      O => \trig_condition1__7_carry_i_4_n_0\
    );
\trig_condition1__7_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[6]\,
      I1 => adc(6),
      I2 => \local_reg_reg_n_0_[7]\,
      I3 => adc(7),
      O => \trig_condition1__7_carry_i_5_n_0\
    );
\trig_condition1__7_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[4]\,
      I1 => adc(4),
      I2 => \local_reg_reg_n_0_[5]\,
      I3 => adc(5),
      O => \trig_condition1__7_carry_i_6_n_0\
    );
\trig_condition1__7_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[2]\,
      I1 => adc(2),
      I2 => \local_reg_reg_n_0_[3]\,
      I3 => adc(3),
      O => \trig_condition1__7_carry_i_7_n_0\
    );
\trig_condition1__7_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[0]\,
      I1 => adc(0),
      I2 => \local_reg_reg_n_0_[1]\,
      I3 => adc(1),
      O => \trig_condition1__7_carry_i_8_n_0\
    );
trig_condition1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => trig_condition1_carry_n_0,
      CO(2) => trig_condition1_carry_n_1,
      CO(1) => trig_condition1_carry_n_2,
      CO(0) => trig_condition1_carry_n_3,
      CYINIT => '0',
      DI(3) => trig_condition1_carry_i_1_n_0,
      DI(2) => trig_condition1_carry_i_2_n_0,
      DI(1) => trig_condition1_carry_i_3_n_0,
      DI(0) => trig_condition1_carry_i_4_n_0,
      O(3 downto 0) => NLW_trig_condition1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => trig_condition1_carry_i_5_n_0,
      S(2) => trig_condition1_carry_i_6_n_0,
      S(1) => trig_condition1_carry_i_7_n_0,
      S(0) => trig_condition1_carry_i_8_n_0
    );
\trig_condition1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => trig_condition1_carry_n_0,
      CO(3) => trig_condition14_in,
      CO(2) => \trig_condition1_carry__0_n_1\,
      CO(1) => \trig_condition1_carry__0_n_2\,
      CO(0) => \trig_condition1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \trig_condition1_carry__0_i_1_n_0\,
      DI(2) => \trig_condition1_carry__0_i_2_n_0\,
      DI(1) => \trig_condition1_carry__0_i_3_n_0\,
      DI(0) => \trig_condition1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_trig_condition1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \trig_condition1_carry__0_i_5_n_0\,
      S(2) => \trig_condition1_carry__0_i_6_n_0\,
      S(1) => \trig_condition1_carry__0_i_7_n_0\,
      S(0) => \trig_condition1_carry__0_i_8_n_0\
    );
\trig_condition1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => adc(14),
      I1 => \local_reg_reg_n_0_[14]\,
      I2 => adc(15),
      I3 => \local_reg_reg_n_0_[15]\,
      O => \trig_condition1_carry__0_i_1_n_0\
    );
\trig_condition1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => adc(12),
      I1 => \local_reg_reg_n_0_[12]\,
      I2 => adc(13),
      I3 => \local_reg_reg_n_0_[13]\,
      O => \trig_condition1_carry__0_i_2_n_0\
    );
\trig_condition1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => adc(10),
      I1 => \local_reg_reg_n_0_[10]\,
      I2 => adc(11),
      I3 => \local_reg_reg_n_0_[11]\,
      O => \trig_condition1_carry__0_i_3_n_0\
    );
\trig_condition1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => adc(8),
      I1 => \local_reg_reg_n_0_[8]\,
      I2 => adc(9),
      I3 => \local_reg_reg_n_0_[9]\,
      O => \trig_condition1_carry__0_i_4_n_0\
    );
\trig_condition1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[14]\,
      I1 => adc(14),
      I2 => \local_reg_reg_n_0_[15]\,
      I3 => adc(15),
      O => \trig_condition1_carry__0_i_5_n_0\
    );
\trig_condition1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[12]\,
      I1 => adc(12),
      I2 => \local_reg_reg_n_0_[13]\,
      I3 => adc(13),
      O => \trig_condition1_carry__0_i_6_n_0\
    );
\trig_condition1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[10]\,
      I1 => adc(10),
      I2 => \local_reg_reg_n_0_[11]\,
      I3 => adc(11),
      O => \trig_condition1_carry__0_i_7_n_0\
    );
\trig_condition1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[8]\,
      I1 => adc(8),
      I2 => \local_reg_reg_n_0_[9]\,
      I3 => adc(9),
      O => \trig_condition1_carry__0_i_8_n_0\
    );
trig_condition1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => adc(6),
      I1 => \local_reg_reg_n_0_[6]\,
      I2 => adc(7),
      I3 => \local_reg_reg_n_0_[7]\,
      O => trig_condition1_carry_i_1_n_0
    );
trig_condition1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => adc(4),
      I1 => \local_reg_reg_n_0_[4]\,
      I2 => adc(5),
      I3 => \local_reg_reg_n_0_[5]\,
      O => trig_condition1_carry_i_2_n_0
    );
trig_condition1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => adc(2),
      I1 => \local_reg_reg_n_0_[2]\,
      I2 => adc(3),
      I3 => \local_reg_reg_n_0_[3]\,
      O => trig_condition1_carry_i_3_n_0
    );
trig_condition1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => adc(0),
      I1 => \local_reg_reg_n_0_[0]\,
      I2 => adc(1),
      I3 => \local_reg_reg_n_0_[1]\,
      O => trig_condition1_carry_i_4_n_0
    );
trig_condition1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[6]\,
      I1 => adc(6),
      I2 => \local_reg_reg_n_0_[7]\,
      I3 => adc(7),
      O => trig_condition1_carry_i_5_n_0
    );
trig_condition1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[4]\,
      I1 => adc(4),
      I2 => \local_reg_reg_n_0_[5]\,
      I3 => adc(5),
      O => trig_condition1_carry_i_6_n_0
    );
trig_condition1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[2]\,
      I1 => adc(2),
      I2 => \local_reg_reg_n_0_[3]\,
      I3 => adc(3),
      O => trig_condition1_carry_i_7_n_0
    );
trig_condition1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \local_reg_reg_n_0_[0]\,
      I1 => adc(0),
      I2 => \local_reg_reg_n_0_[1]\,
      I3 => adc(1),
      O => trig_condition1_carry_i_8_n_0
    );
trig_condition_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F04FFFF0F040000"
    )
        port map (
      I0 => p_3_in(2),
      I1 => trig_condition_i_2_n_0,
      I2 => trig_condition_i_3_n_0,
      I3 => trig_condition_i_4_n_0,
      I4 => trig_condition_i_5_n_0,
      I5 => \^trig_condition\,
      O => trig_condition_i_1_n_0
    );
trig_condition_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEE00E0E00000"
    )
        port map (
      I0 => \threshold_trig1_carry__0_n_0\,
      I1 => threshold_trig_reg_n_0,
      I2 => trig_condition1,
      I3 => trig_condition14_in,
      I4 => p_3_in(1),
      I5 => p_3_in(0),
      O => trig_condition_i_2_n_0
    );
trig_condition_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in0,
      I1 => \local_reg_reg_n_0_[22]\,
      I2 => \local_reg_reg_n_0_[23]\,
      I3 => \local_reg_reg_n_0_[21]\,
      I4 => \local_reg_reg_n_0_[20]\,
      O => trig_condition_i_3_n_0
    );
trig_condition_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => p_3_in(0),
      I1 => switching,
      I2 => p_3_in(1),
      I3 => p_3_in(2),
      O => trig_condition_i_4_n_0
    );
trig_condition_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEAEFEAAAAA"
    )
        port map (
      I0 => trig_condition_i_6_n_0,
      I1 => trig_condition1,
      I2 => p_3_in(1),
      I3 => trig_condition14_in,
      I4 => \threshold_trig1_carry__0_n_0\,
      I5 => threshold_trig_reg_n_0,
      O => trig_condition_i_5_n_0
    );
trig_condition_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => threshold_trig_i_2_n_0,
      I1 => p_3_in(1),
      I2 => p_3_in(0),
      O => trig_condition_i_6_n_0
    );
trig_condition_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => trig_condition_i_1_n_0,
      Q => \^trig_condition\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity System_trigger_unit_0_0 is
  port (
    clk : in STD_LOGIC;
    adc : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    sample_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    hardtrigger : in STD_LOGIC;
    trig_condition : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of System_trigger_unit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of System_trigger_unit_0_0 : entity is "System_trigger_unit_0_0,trigger_unit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of System_trigger_unit_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of System_trigger_unit_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of System_trigger_unit_0_0 : entity is "trigger_unit,Vivado 2018.3";
end System_trigger_unit_0_0;

architecture STRUCTURE of System_trigger_unit_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 5000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.System_trigger_unit_0_0_trigger_unit
     port map (
      adc(15 downto 0) => adc(15 downto 0),
      clk => clk,
      hardtrigger => hardtrigger,
      reset => reset,
      sample_in(23 downto 0) => sample_in(23 downto 0),
      trig_condition => trig_condition
    );
end STRUCTURE;
