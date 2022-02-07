-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Sun Feb  6 11:12:21 2022
-- Host        : PC running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hardware_temp2pwm_0_0_sim_netlist.vhdl
-- Design      : hardware_temp2pwm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_temp2pwm is
  port (
    pwm : out STD_LOGIC_VECTOR ( 7 downto 0 );
    temp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rdy : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_temp2pwm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_temp2pwm is
  signal A : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \pwm[0]_i_1_n_0\ : STD_LOGIC;
  signal \pwm[1]_i_1_n_0\ : STD_LOGIC;
  signal \pwm[2]_i_1_n_0\ : STD_LOGIC;
  signal \pwm[3]_i_1_n_0\ : STD_LOGIC;
  signal \pwm[3]_i_2_n_0\ : STD_LOGIC;
  signal \pwm[4]_i_1_n_0\ : STD_LOGIC;
  signal \pwm[5]_i_1_n_0\ : STD_LOGIC;
  signal \pwm[6]_i_1_n_0\ : STD_LOGIC;
  signal \pwm[6]_i_2_n_0\ : STD_LOGIC;
  signal \pwm[7]_i_1_n_0\ : STD_LOGIC;
  signal \pwm[7]_i_2_n_0\ : STD_LOGIC;
  signal \pwm[7]_i_3_n_0\ : STD_LOGIC;
  signal \pwm[7]_i_4_n_0\ : STD_LOGIC;
  signal \pwm[7]_i_5_n_0\ : STD_LOGIC;
  signal \pwm[7]_i_6_n_0\ : STD_LOGIC;
  signal pwm_on4_carry_i_10_n_0 : STD_LOGIC;
  signal pwm_on4_carry_i_11_n_0 : STD_LOGIC;
  signal pwm_on4_carry_i_12_n_0 : STD_LOGIC;
  signal pwm_on4_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_on4_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_on4_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_on4_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_on4_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_on4_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_on4_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_on4_carry_i_8_n_0 : STD_LOGIC;
  signal pwm_on4_carry_i_9_n_0 : STD_LOGIC;
  signal pwm_on4_carry_n_1 : STD_LOGIC;
  signal pwm_on4_carry_n_2 : STD_LOGIC;
  signal pwm_on4_carry_n_3 : STD_LOGIC;
  signal pwm_on4_carry_n_4 : STD_LOGIC;
  signal pwm_on4_carry_n_5 : STD_LOGIC;
  signal pwm_on4_carry_n_6 : STD_LOGIC;
  signal pwm_on4_carry_n_7 : STD_LOGIC;
  signal pwm_on5_n_100 : STD_LOGIC;
  signal pwm_on5_n_101 : STD_LOGIC;
  signal pwm_on5_n_102 : STD_LOGIC;
  signal pwm_on5_n_103 : STD_LOGIC;
  signal pwm_on5_n_104 : STD_LOGIC;
  signal pwm_on5_n_105 : STD_LOGIC;
  signal pwm_on5_n_90 : STD_LOGIC;
  signal pwm_on5_n_91 : STD_LOGIC;
  signal pwm_on5_n_92 : STD_LOGIC;
  signal pwm_on5_n_93 : STD_LOGIC;
  signal pwm_on5_n_94 : STD_LOGIC;
  signal pwm_on5_n_95 : STD_LOGIC;
  signal pwm_on5_n_96 : STD_LOGIC;
  signal pwm_on5_n_97 : STD_LOGIC;
  signal pwm_on5_n_98 : STD_LOGIC;
  signal pwm_on5_n_99 : STD_LOGIC;
  signal pwm_on7 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \pwm_on7_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pwm_on7_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pwm_on7_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pwm_on7_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pwm_on7_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pwm_on7_carry__0_n_5\ : STD_LOGIC;
  signal \pwm_on7_carry__0_n_6\ : STD_LOGIC;
  signal \pwm_on7_carry__0_n_7\ : STD_LOGIC;
  signal pwm_on7_carry_i_10_n_0 : STD_LOGIC;
  signal pwm_on7_carry_i_11_n_0 : STD_LOGIC;
  signal pwm_on7_carry_i_12_n_0 : STD_LOGIC;
  signal pwm_on7_carry_i_13_n_0 : STD_LOGIC;
  signal pwm_on7_carry_i_14_n_0 : STD_LOGIC;
  signal pwm_on7_carry_i_15_n_0 : STD_LOGIC;
  signal pwm_on7_carry_i_16_n_0 : STD_LOGIC;
  signal pwm_on7_carry_i_17_n_0 : STD_LOGIC;
  signal pwm_on7_carry_i_18_n_0 : STD_LOGIC;
  signal pwm_on7_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_on7_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_on7_carry_i_8_n_0 : STD_LOGIC;
  signal pwm_on7_carry_i_9_n_0 : STD_LOGIC;
  signal pwm_on7_carry_n_0 : STD_LOGIC;
  signal pwm_on7_carry_n_1 : STD_LOGIC;
  signal pwm_on7_carry_n_2 : STD_LOGIC;
  signal pwm_on7_carry_n_3 : STD_LOGIC;
  signal pwm_on7_carry_n_4 : STD_LOGIC;
  signal pwm_on7_carry_n_5 : STD_LOGIC;
  signal pwm_on7_carry_n_6 : STD_LOGIC;
  signal pwm_on7_carry_n_7 : STD_LOGIC;
  signal \pwm_on8__108_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry__0_n_13\ : STD_LOGIC;
  signal \pwm_on8__108_carry__0_n_14\ : STD_LOGIC;
  signal \pwm_on8__108_carry__0_n_15\ : STD_LOGIC;
  signal \pwm_on8__108_carry__0_n_6\ : STD_LOGIC;
  signal \pwm_on8__108_carry__0_n_7\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_10_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_11_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_12_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_13_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_14_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_15_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_1_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_2_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_3_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_4_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_5_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_6_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_7_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_8_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_i_9_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_0\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_1\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_10\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_11\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_12\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_13\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_14\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_15\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_2\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_3\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_4\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_5\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_6\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_7\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_8\ : STD_LOGIC;
  signal \pwm_on8__108_carry_n_9\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_n_3\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_n_4\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_n_5\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_n_6\ : STD_LOGIC;
  signal \pwm_on8__138_carry__0_n_7\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_10_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_11_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_12_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_13_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_14_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_15_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_16_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_1_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_2_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_3_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_4_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_5_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_6_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_7_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_8_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_i_9_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_n_0\ : STD_LOGIC;
  signal \pwm_on8__138_carry_n_1\ : STD_LOGIC;
  signal \pwm_on8__138_carry_n_2\ : STD_LOGIC;
  signal \pwm_on8__138_carry_n_3\ : STD_LOGIC;
  signal \pwm_on8__138_carry_n_4\ : STD_LOGIC;
  signal \pwm_on8__138_carry_n_5\ : STD_LOGIC;
  signal \pwm_on8__138_carry_n_6\ : STD_LOGIC;
  signal \pwm_on8__138_carry_n_7\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_20_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_21_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_22_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_23_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_24_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_n_1\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_n_2\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_n_3\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_n_4\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_n_5\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_n_6\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_n_7\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_n_8\ : STD_LOGIC;
  signal \pwm_on8__52_carry__0_n_9\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_17_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_1\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_10\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_11\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_12\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_13\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_14\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_15\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_2\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_3\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_4\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_5\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_6\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_7\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_8\ : STD_LOGIC;
  signal \pwm_on8__52_carry__1_n_9\ : STD_LOGIC;
  signal \pwm_on8__52_carry_i_1_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry_i_2_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry_i_3_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry_i_4_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry_i_5_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry_i_6_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry_i_7_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry_i_8_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry_i_9_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry_n_0\ : STD_LOGIC;
  signal \pwm_on8__52_carry_n_1\ : STD_LOGIC;
  signal \pwm_on8__52_carry_n_2\ : STD_LOGIC;
  signal \pwm_on8__52_carry_n_3\ : STD_LOGIC;
  signal \pwm_on8__52_carry_n_4\ : STD_LOGIC;
  signal \pwm_on8__52_carry_n_5\ : STD_LOGIC;
  signal \pwm_on8__52_carry_n_6\ : STD_LOGIC;
  signal \pwm_on8__52_carry_n_7\ : STD_LOGIC;
  signal \pwm_on8_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwm_on8_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_on8_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pwm_on8_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pwm_on8_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pwm_on8_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pwm_on8_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pwm_on8_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_0\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_1\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_10\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_11\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_12\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_13\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_14\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_15\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_2\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_3\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_4\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_5\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_6\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_7\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_8\ : STD_LOGIC;
  signal \pwm_on8_carry__0_n_9\ : STD_LOGIC;
  signal \pwm_on8_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pwm_on8_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pwm_on8_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pwm_on8_carry__1_n_13\ : STD_LOGIC;
  signal \pwm_on8_carry__1_n_14\ : STD_LOGIC;
  signal \pwm_on8_carry__1_n_15\ : STD_LOGIC;
  signal \pwm_on8_carry__1_n_4\ : STD_LOGIC;
  signal \pwm_on8_carry__1_n_6\ : STD_LOGIC;
  signal \pwm_on8_carry__1_n_7\ : STD_LOGIC;
  signal pwm_on8_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_on8_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_on8_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_on8_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_on8_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_on8_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_on8_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_on8_carry_n_0 : STD_LOGIC;
  signal pwm_on8_carry_n_1 : STD_LOGIC;
  signal pwm_on8_carry_n_10 : STD_LOGIC;
  signal pwm_on8_carry_n_11 : STD_LOGIC;
  signal pwm_on8_carry_n_12 : STD_LOGIC;
  signal pwm_on8_carry_n_13 : STD_LOGIC;
  signal pwm_on8_carry_n_2 : STD_LOGIC;
  signal pwm_on8_carry_n_3 : STD_LOGIC;
  signal pwm_on8_carry_n_4 : STD_LOGIC;
  signal pwm_on8_carry_n_5 : STD_LOGIC;
  signal pwm_on8_carry_n_6 : STD_LOGIC;
  signal pwm_on8_carry_n_7 : STD_LOGIC;
  signal pwm_on8_carry_n_8 : STD_LOGIC;
  signal pwm_on8_carry_n_9 : STD_LOGIC;
  signal pwm_on_i_1_n_0 : STD_LOGIC;
  signal pwm_on_reg_n_0 : STD_LOGIC;
  signal NLW_pwm_on4_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_pwm_on4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_pwm_on5_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_pwm_on5_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_pwm_on5_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_pwm_on5_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_pwm_on5_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_pwm_on5_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_pwm_on5_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_pwm_on5_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_pwm_on5_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pwm_on5_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_pwm_on5_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_pwm_on5_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_pwm_on7_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_pwm_on7_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_pwm_on8__108_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_pwm_on8__108_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_pwm_on8__138_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_pwm_on8__138_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_pwm_on8__138_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_pwm_on8__52_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_pwm_on8__52_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_pwm_on8__52_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_pwm_on8_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_pwm_on8_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_pwm_on8_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pwm[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pwm[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm[6]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pwm[7]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pwm[7]_i_3\ : label is "soft_lutpair1";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of pwm_on4_carry : label is 11;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of pwm_on5 : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of pwm_on5 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of pwm_on7_carry : label is 35;
  attribute ADDER_THRESHOLD of \pwm_on7_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of pwm_on7_carry_i_15 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of pwm_on7_carry_i_17 : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD of \pwm_on8__108_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \pwm_on8__108_carry__0\ : label is 35;
  attribute HLUTNM : string;
  attribute HLUTNM of \pwm_on8__108_carry_i_11\ : label is "lutpair2";
  attribute HLUTNM of \pwm_on8__108_carry_i_12\ : label is "lutpair1";
  attribute HLUTNM of \pwm_on8__108_carry_i_13\ : label is "lutpair0";
  attribute HLUTNM of \pwm_on8__108_carry_i_3\ : label is "lutpair2";
  attribute HLUTNM of \pwm_on8__108_carry_i_4\ : label is "lutpair1";
  attribute HLUTNM of \pwm_on8__108_carry_i_5\ : label is "lutpair0";
  attribute ADDER_THRESHOLD of \pwm_on8__138_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \pwm_on8__138_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \pwm_on8__52_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \pwm_on8__52_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \pwm_on8__52_carry__0_i_17\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pwm_on8__52_carry__0_i_18\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pwm_on8__52_carry__0_i_19\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pwm_on8__52_carry__0_i_20\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pwm_on8__52_carry__0_i_21\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pwm_on8__52_carry__0_i_22\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pwm_on8__52_carry__0_i_23\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pwm_on8__52_carry__0_i_24\ : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD of \pwm_on8__52_carry__1\ : label is 35;
begin
\pwm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55550451"
    )
        port map (
      I0 => pwm_on4_carry_n_1,
      I1 => pwm_on7(7),
      I2 => \pwm[7]_i_6_n_0\,
      I3 => pwm_on7(8),
      I4 => \pwm[7]_i_5_n_0\,
      O => \pwm[0]_i_1_n_0\
    );
\pwm[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \pwm[0]_i_1_n_0\,
      I1 => pwm_on7(1),
      I2 => pwm_on4_carry_n_1,
      O => \pwm[1]_i_1_n_0\
    );
\pwm[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABBA"
    )
        port map (
      I0 => \pwm[0]_i_1_n_0\,
      I1 => pwm_on4_carry_n_1,
      I2 => pwm_on7(1),
      I3 => pwm_on7(2),
      O => \pwm[2]_i_1_n_0\
    );
\pwm[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41115555"
    )
        port map (
      I0 => pwm_on4_carry_n_1,
      I1 => pwm_on7(3),
      I2 => pwm_on7(2),
      I3 => pwm_on7(1),
      I4 => \pwm[3]_i_2_n_0\,
      O => \pwm[3]_i_1_n_0\
    );
\pwm[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4144"
    )
        port map (
      I0 => \pwm[7]_i_5_n_0\,
      I1 => pwm_on7(8),
      I2 => \pwm[7]_i_6_n_0\,
      I3 => pwm_on7(7),
      O => \pwm[3]_i_2_n_0\
    );
\pwm[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABBBBBEEE"
    )
        port map (
      I0 => \pwm[0]_i_1_n_0\,
      I1 => pwm_on7(4),
      I2 => pwm_on7(1),
      I3 => pwm_on7(2),
      I4 => pwm_on7(3),
      I5 => pwm_on4_carry_n_1,
      O => \pwm[4]_i_1_n_0\
    );
\pwm[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEB"
    )
        port map (
      I0 => \pwm[0]_i_1_n_0\,
      I1 => pwm_on7(5),
      I2 => \pwm[7]_i_3_n_0\,
      I3 => pwm_on4_carry_n_1,
      O => \pwm[5]_i_1_n_0\
    );
\pwm[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EB00FF00FF00EB"
    )
        port map (
      I0 => \pwm[7]_i_5_n_0\,
      I1 => pwm_on7(8),
      I2 => pwm_on7(7),
      I3 => pwm_on4_carry_n_1,
      I4 => pwm_on7(6),
      I5 => \pwm[6]_i_2_n_0\,
      O => \pwm[6]_i_1_n_0\
    );
\pwm[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01115555"
    )
        port map (
      I0 => pwm_on7(5),
      I1 => pwm_on7(3),
      I2 => pwm_on7(2),
      I3 => pwm_on7(1),
      I4 => pwm_on7(4),
      O => \pwm[6]_i_2_n_0\
    );
\pwm[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555DFFD"
    )
        port map (
      I0 => pwm_on_reg_n_0,
      I1 => pwm_on4_carry_n_1,
      I2 => \pwm[7]_i_3_n_0\,
      I3 => pwm_on7(5),
      I4 => \pwm[0]_i_1_n_0\,
      I5 => \pwm[7]_i_4_n_0\,
      O => \pwm[7]_i_1_n_0\
    );
\pwm[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FBEF"
    )
        port map (
      I0 => \pwm[7]_i_5_n_0\,
      I1 => pwm_on7(8),
      I2 => pwm_on7(7),
      I3 => \pwm[7]_i_6_n_0\,
      I4 => pwm_on4_carry_n_1,
      O => \pwm[7]_i_2_n_0\
    );
\pwm[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => pwm_on7(4),
      I1 => pwm_on7(1),
      I2 => pwm_on7(2),
      I3 => pwm_on7(3),
      O => \pwm[7]_i_3_n_0\
    );
\pwm[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0F0F060F"
    )
        port map (
      I0 => \pwm[6]_i_2_n_0\,
      I1 => pwm_on7(6),
      I2 => pwm_on4_carry_n_1,
      I3 => pwm_on7(7),
      I4 => pwm_on7(8),
      I5 => \pwm[7]_i_5_n_0\,
      O => \pwm[7]_i_4_n_0\
    );
\pwm[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pwm_on7(11),
      I1 => pwm_on7(10),
      I2 => pwm_on7(12),
      I3 => pwm_on7(9),
      O => \pwm[7]_i_5_n_0\
    );
\pwm[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000557F"
    )
        port map (
      I0 => pwm_on7(4),
      I1 => pwm_on7(1),
      I2 => pwm_on7(2),
      I3 => pwm_on7(3),
      I4 => pwm_on7(5),
      I5 => pwm_on7(6),
      O => \pwm[7]_i_6_n_0\
    );
pwm_on4_carry: unisim.vcomponents.CARRY8
     port map (
      CI => pwm_on4_carry_i_1_n_0,
      CI_TOP => '0',
      CO(7) => NLW_pwm_on4_carry_CO_UNCONNECTED(7),
      CO(6) => pwm_on4_carry_n_1,
      CO(5) => pwm_on4_carry_n_2,
      CO(4) => pwm_on4_carry_n_3,
      CO(3) => pwm_on4_carry_n_4,
      CO(2) => pwm_on4_carry_n_5,
      CO(1) => pwm_on4_carry_n_6,
      CO(0) => pwm_on4_carry_n_7,
      DI(7) => '0',
      DI(6) => pwm_on5_n_90,
      DI(5) => '0',
      DI(4) => pwm_on4_carry_i_2_n_0,
      DI(3) => pwm_on4_carry_i_3_n_0,
      DI(2) => pwm_on4_carry_i_4_n_0,
      DI(1) => '0',
      DI(0) => pwm_on4_carry_i_5_n_0,
      O(7 downto 0) => NLW_pwm_on4_carry_O_UNCONNECTED(7 downto 0),
      S(7) => '0',
      S(6) => pwm_on4_carry_i_6_n_0,
      S(5) => pwm_on4_carry_i_7_n_0,
      S(4) => pwm_on4_carry_i_8_n_0,
      S(3) => pwm_on4_carry_i_9_n_0,
      S(2) => pwm_on4_carry_i_10_n_0,
      S(1) => pwm_on4_carry_i_11_n_0,
      S(0) => pwm_on4_carry_i_12_n_0
    );
pwm_on4_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_on5_n_105,
      I1 => pwm_on5_n_104,
      O => pwm_on4_carry_i_1_n_0
    );
pwm_on4_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pwm_on5_n_98,
      I1 => pwm_on5_n_99,
      O => pwm_on4_carry_i_10_n_0
    );
pwm_on4_carry_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_on5_n_100,
      I1 => pwm_on5_n_101,
      O => pwm_on4_carry_i_11_n_0
    );
pwm_on4_carry_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwm_on5_n_103,
      I1 => pwm_on5_n_102,
      O => pwm_on4_carry_i_12_n_0
    );
pwm_on4_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_on5_n_94,
      O => pwm_on4_carry_i_2_n_0
    );
pwm_on4_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_on5_n_97,
      I1 => pwm_on5_n_96,
      O => pwm_on4_carry_i_3_n_0
    );
pwm_on4_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => pwm_on5_n_99,
      I1 => pwm_on5_n_98,
      O => pwm_on4_carry_i_4_n_0
    );
pwm_on4_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_on5_n_103,
      I1 => pwm_on5_n_102,
      O => pwm_on4_carry_i_5_n_0
    );
pwm_on4_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_on5_n_91,
      I1 => pwm_on5_n_90,
      O => pwm_on4_carry_i_6_n_0
    );
pwm_on4_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_on5_n_93,
      I1 => pwm_on5_n_92,
      O => pwm_on4_carry_i_7_n_0
    );
pwm_on4_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwm_on5_n_94,
      I1 => pwm_on5_n_95,
      O => pwm_on4_carry_i_8_n_0
    );
pwm_on4_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwm_on5_n_97,
      I1 => pwm_on5_n_96,
      O => pwm_on4_carry_i_9_n_0
    );
pwm_on5: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 10) => B"00000000000000000000",
      A(9 downto 0) => temp(9 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_pwm_on5_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000110010",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_pwm_on5_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111001001010001001",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_pwm_on5_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_pwm_on5_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_pwm_on5_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_pwm_on5_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_pwm_on5_P_UNCONNECTED(47 downto 16),
      P(15) => pwm_on5_n_90,
      P(14) => pwm_on5_n_91,
      P(13) => pwm_on5_n_92,
      P(12) => pwm_on5_n_93,
      P(11) => pwm_on5_n_94,
      P(10) => pwm_on5_n_95,
      P(9) => pwm_on5_n_96,
      P(8) => pwm_on5_n_97,
      P(7) => pwm_on5_n_98,
      P(6) => pwm_on5_n_99,
      P(5) => pwm_on5_n_100,
      P(4) => pwm_on5_n_101,
      P(3) => pwm_on5_n_102,
      P(2) => pwm_on5_n_103,
      P(1) => pwm_on5_n_104,
      P(0) => pwm_on5_n_105,
      PATTERNBDETECT => NLW_pwm_on5_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_pwm_on5_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_pwm_on5_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_pwm_on5_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_pwm_on5_XOROUT_UNCONNECTED(7 downto 0)
    );
pwm_on7_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => pwm_on7_carry_n_0,
      CO(6) => pwm_on7_carry_n_1,
      CO(5) => pwm_on7_carry_n_2,
      CO(4) => pwm_on7_carry_n_3,
      CO(3) => pwm_on7_carry_n_4,
      CO(2) => pwm_on7_carry_n_5,
      CO(1) => pwm_on7_carry_n_6,
      CO(0) => pwm_on7_carry_n_7,
      DI(7 downto 3) => A(5 downto 1),
      DI(2) => pwm_on7_carry_i_6_n_0,
      DI(1 downto 0) => B"01",
      O(7 downto 0) => pwm_on7(8 downto 1),
      S(7) => pwm_on7_carry_i_7_n_0,
      S(6) => pwm_on7_carry_i_8_n_0,
      S(5) => pwm_on7_carry_i_9_n_0,
      S(4) => pwm_on7_carry_i_10_n_0,
      S(3) => pwm_on7_carry_i_11_n_0,
      S(2) => pwm_on7_carry_i_12_n_0,
      S(1) => pwm_on7_carry_i_13_n_0,
      S(0) => pwm_on7_carry_i_14_n_0
    );
\pwm_on7_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => pwm_on7_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_pwm_on7_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \pwm_on7_carry__0_n_5\,
      CO(1) => \pwm_on7_carry__0_n_6\,
      CO(0) => \pwm_on7_carry__0_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => A(8 downto 6),
      O(7 downto 4) => \NLW_pwm_on7_carry__0_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => pwm_on7(12 downto 9),
      S(7 downto 4) => B"0000",
      S(3) => \pwm_on7_carry__0_i_4_n_0\,
      S(2) => \pwm_on7_carry__0_i_5_n_0\,
      S(1) => \pwm_on7_carry__0_i_6_n_0\,
      S(0) => \pwm_on7_carry__0_i_7_n_0\
    );
\pwm_on7_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_9\,
      I1 => \pwm_on8__52_carry__1_n_10\,
      I2 => pwm_on7_carry_i_16_n_0,
      I3 => \pwm_on8__52_carry__1_n_11\,
      I4 => \pwm_on7_carry__0_i_8_n_0\,
      O => A(8)
    );
\pwm_on7_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA9AAAAAAA9AAA9A"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_10\,
      I1 => \pwm_on7_carry__0_i_8_n_0\,
      I2 => \pwm_on8__52_carry__1_n_11\,
      I3 => \pwm_on8__138_carry__0_n_3\,
      I4 => pwm_on5_n_90,
      I5 => \pwm_on8__108_carry__0_n_13\,
      O => A(7)
    );
\pwm_on7_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9AAA9A9"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_11\,
      I1 => \pwm_on7_carry__0_i_8_n_0\,
      I2 => \pwm_on8__138_carry__0_n_3\,
      I3 => pwm_on5_n_90,
      I4 => \pwm_on8__108_carry__0_n_13\,
      O => A(6)
    );
\pwm_on7_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5955555555555555"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_8\,
      I1 => \pwm_on8__52_carry__1_n_9\,
      I2 => \pwm_on7_carry__0_i_8_n_0\,
      I3 => \pwm_on8__52_carry__1_n_11\,
      I4 => pwm_on7_carry_i_16_n_0,
      I5 => \pwm_on8__52_carry__1_n_10\,
      O => \pwm_on7_carry__0_i_4_n_0\
    );
\pwm_on7_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55559555"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_9\,
      I1 => \pwm_on8__52_carry__1_n_10\,
      I2 => pwm_on7_carry_i_16_n_0,
      I3 => \pwm_on8__52_carry__1_n_11\,
      I4 => \pwm_on7_carry__0_i_8_n_0\,
      O => \pwm_on7_carry__0_i_5_n_0\
    );
\pwm_on7_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAA6A55155595"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_10\,
      I1 => pwm_on7_carry_i_16_n_0,
      I2 => \pwm_on8__52_carry__1_n_11\,
      I3 => \pwm_on7_carry__0_i_8_n_0\,
      I4 => \pwm_on8__52_carry__1_n_9\,
      I5 => \pwm_on8__52_carry__1_n_8\,
      O => \pwm_on7_carry__0_i_6_n_0\
    );
\pwm_on7_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DC9C2363"
    )
        port map (
      I0 => \pwm_on7_carry__0_i_8_n_0\,
      I1 => \pwm_on8__52_carry__1_n_11\,
      I2 => pwm_on7_carry_i_16_n_0,
      I3 => \pwm_on8__52_carry__1_n_10\,
      I4 => \pwm_on8__52_carry__1_n_9\,
      O => \pwm_on7_carry__0_i_7_n_0\
    );
\pwm_on7_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_13\,
      I1 => \pwm_on8__52_carry__0_n_9\,
      I2 => \pwm_on8__52_carry__0_n_8\,
      I3 => \pwm_on8__52_carry__1_n_15\,
      I4 => \pwm_on8__52_carry__1_n_14\,
      I5 => \pwm_on8__52_carry__1_n_12\,
      O => \pwm_on7_carry__0_i_8_n_0\
    );
pwm_on7_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9AAA9A9"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_12\,
      I1 => pwm_on7_carry_i_15_n_0,
      I2 => \pwm_on8__138_carry__0_n_3\,
      I3 => pwm_on5_n_90,
      I4 => \pwm_on8__108_carry__0_n_13\,
      O => A(5)
    );
pwm_on7_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DAF0F0F0250F0F0F"
    )
        port map (
      I0 => pwm_on7_carry_i_16_n_0,
      I1 => \pwm_on8__52_carry__1_n_14\,
      I2 => \pwm_on8__52_carry__1_n_15\,
      I3 => \pwm_on8__52_carry__0_n_8\,
      I4 => \pwm_on8__52_carry__0_n_9\,
      I5 => \pwm_on8__52_carry__1_n_13\,
      O => pwm_on7_carry_i_10_n_0
    );
pwm_on7_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8780787"
    )
        port map (
      I0 => pwm_on7_carry_i_16_n_0,
      I1 => \pwm_on8__52_carry__0_n_9\,
      I2 => \pwm_on8__52_carry__0_n_8\,
      I3 => \pwm_on8__52_carry__1_n_15\,
      I4 => \pwm_on8__52_carry__1_n_14\,
      O => pwm_on7_carry_i_11_n_0
    );
pwm_on7_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABB9A9945446566"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_n_9\,
      I1 => \pwm_on8__138_carry__0_n_3\,
      I2 => pwm_on5_n_90,
      I3 => \pwm_on8__108_carry__0_n_13\,
      I4 => \pwm_on8__52_carry__0_n_8\,
      I5 => \pwm_on8__52_carry__1_n_15\,
      O => pwm_on7_carry_i_12_n_0
    );
pwm_on7_carry_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D00F2FF"
    )
        port map (
      I0 => \pwm_on8__108_carry__0_n_13\,
      I1 => pwm_on5_n_90,
      I2 => \pwm_on8__138_carry__0_n_3\,
      I3 => \pwm_on8__52_carry__0_n_9\,
      I4 => \pwm_on8__52_carry__0_n_8\,
      O => pwm_on7_carry_i_13_n_0
    );
pwm_on7_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F20D"
    )
        port map (
      I0 => \pwm_on8__108_carry__0_n_13\,
      I1 => pwm_on5_n_90,
      I2 => \pwm_on8__138_carry__0_n_3\,
      I3 => \pwm_on8__52_carry__0_n_9\,
      O => pwm_on7_carry_i_14_n_0
    );
pwm_on7_carry_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_14\,
      I1 => \pwm_on8__52_carry__1_n_15\,
      I2 => \pwm_on8__52_carry__0_n_8\,
      I3 => \pwm_on8__52_carry__0_n_9\,
      I4 => \pwm_on8__52_carry__1_n_13\,
      O => pwm_on7_carry_i_15_n_0
    );
pwm_on7_carry_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \pwm_on8__138_carry__0_n_3\,
      I1 => pwm_on5_n_90,
      I2 => \pwm_on8__108_carry__0_n_13\,
      O => pwm_on7_carry_i_16_n_0
    );
pwm_on7_carry_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_n_9\,
      I1 => \pwm_on8__52_carry__0_n_8\,
      I2 => \pwm_on8__52_carry__1_n_15\,
      I3 => \pwm_on8__52_carry__1_n_14\,
      O => pwm_on7_carry_i_17_n_0
    );
pwm_on7_carry_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_15\,
      I1 => \pwm_on8__52_carry__0_n_8\,
      I2 => \pwm_on8__52_carry__0_n_9\,
      O => pwm_on7_carry_i_18_n_0
    );
pwm_on7_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_13\,
      I1 => \pwm_on8__52_carry__0_n_9\,
      I2 => \pwm_on8__52_carry__0_n_8\,
      I3 => \pwm_on8__52_carry__1_n_15\,
      I4 => \pwm_on8__52_carry__1_n_14\,
      I5 => pwm_on7_carry_i_16_n_0,
      O => A(4)
    );
pwm_on7_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_14\,
      I1 => \pwm_on8__52_carry__1_n_15\,
      I2 => \pwm_on8__52_carry__0_n_8\,
      I3 => \pwm_on8__52_carry__0_n_9\,
      I4 => pwm_on7_carry_i_16_n_0,
      O => A(3)
    );
pwm_on7_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA66A6AAAAAAAA"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_15\,
      I1 => \pwm_on8__52_carry__0_n_8\,
      I2 => \pwm_on8__108_carry__0_n_13\,
      I3 => pwm_on5_n_90,
      I4 => \pwm_on8__138_carry__0_n_3\,
      I5 => \pwm_on8__52_carry__0_n_9\,
      O => A(2)
    );
pwm_on7_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAA6A6"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_n_8\,
      I1 => \pwm_on8__52_carry__0_n_9\,
      I2 => \pwm_on8__138_carry__0_n_3\,
      I3 => pwm_on5_n_90,
      I4 => \pwm_on8__108_carry__0_n_13\,
      O => A(1)
    );
pwm_on7_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F20D"
    )
        port map (
      I0 => \pwm_on8__108_carry__0_n_13\,
      I1 => pwm_on5_n_90,
      I2 => \pwm_on8__138_carry__0_n_3\,
      I3 => \pwm_on8__52_carry__0_n_9\,
      O => pwm_on7_carry_i_6_n_0
    );
pwm_on7_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD0A02F5"
    )
        port map (
      I0 => pwm_on7_carry_i_16_n_0,
      I1 => \pwm_on8__52_carry__1_n_11\,
      I2 => pwm_on7_carry_i_15_n_0,
      I3 => \pwm_on8__52_carry__1_n_12\,
      I4 => \pwm_on8__52_carry__1_n_10\,
      O => pwm_on7_carry_i_7_n_0
    );
pwm_on7_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD0A02F5"
    )
        port map (
      I0 => pwm_on7_carry_i_16_n_0,
      I1 => \pwm_on8__52_carry__1_n_12\,
      I2 => pwm_on7_carry_i_17_n_0,
      I3 => \pwm_on8__52_carry__1_n_13\,
      I4 => \pwm_on8__52_carry__1_n_11\,
      O => pwm_on7_carry_i_8_n_0
    );
pwm_on7_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD0A02F5"
    )
        port map (
      I0 => pwm_on7_carry_i_16_n_0,
      I1 => \pwm_on8__52_carry__1_n_13\,
      I2 => pwm_on7_carry_i_18_n_0,
      I3 => \pwm_on8__52_carry__1_n_14\,
      I4 => \pwm_on8__52_carry__1_n_12\,
      O => pwm_on7_carry_i_9_n_0
    );
\pwm_on8__108_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \pwm_on8__108_carry_n_0\,
      CO(6) => \pwm_on8__108_carry_n_1\,
      CO(5) => \pwm_on8__108_carry_n_2\,
      CO(4) => \pwm_on8__108_carry_n_3\,
      CO(3) => \pwm_on8__108_carry_n_4\,
      CO(2) => \pwm_on8__108_carry_n_5\,
      CO(1) => \pwm_on8__108_carry_n_6\,
      CO(0) => \pwm_on8__108_carry_n_7\,
      DI(7) => \pwm_on8__108_carry_i_1_n_0\,
      DI(6) => \pwm_on8__108_carry_i_2_n_0\,
      DI(5) => \pwm_on8__108_carry_i_3_n_0\,
      DI(4) => \pwm_on8__108_carry_i_4_n_0\,
      DI(3) => \pwm_on8__108_carry_i_5_n_0\,
      DI(2) => \pwm_on8__108_carry_i_6_n_0\,
      DI(1) => \pwm_on8__108_carry_i_7_n_0\,
      DI(0) => '0',
      O(7) => \pwm_on8__108_carry_n_8\,
      O(6) => \pwm_on8__108_carry_n_9\,
      O(5) => \pwm_on8__108_carry_n_10\,
      O(4) => \pwm_on8__108_carry_n_11\,
      O(3) => \pwm_on8__108_carry_n_12\,
      O(2) => \pwm_on8__108_carry_n_13\,
      O(1) => \pwm_on8__108_carry_n_14\,
      O(0) => \pwm_on8__108_carry_n_15\,
      S(7) => \pwm_on8__108_carry_i_8_n_0\,
      S(6) => \pwm_on8__108_carry_i_9_n_0\,
      S(5) => \pwm_on8__108_carry_i_10_n_0\,
      S(4) => \pwm_on8__108_carry_i_11_n_0\,
      S(3) => \pwm_on8__108_carry_i_12_n_0\,
      S(2) => \pwm_on8__108_carry_i_13_n_0\,
      S(1) => \pwm_on8__108_carry_i_14_n_0\,
      S(0) => \pwm_on8__108_carry_i_15_n_0\
    );
\pwm_on8__108_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \pwm_on8__108_carry_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_pwm_on8__108_carry__0_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \pwm_on8__108_carry__0_n_6\,
      CO(0) => \pwm_on8__108_carry__0_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \pwm_on8__108_carry__0_i_1_n_0\,
      DI(0) => \pwm_on8__108_carry__0_i_2_n_0\,
      O(7 downto 3) => \NLW_pwm_on8__108_carry__0_O_UNCONNECTED\(7 downto 3),
      O(2) => \pwm_on8__108_carry__0_n_13\,
      O(1) => \pwm_on8__108_carry__0_n_14\,
      O(0) => \pwm_on8__108_carry__0_n_15\,
      S(7 downto 3) => B"00000",
      S(2) => \pwm_on8__108_carry__0_i_3_n_0\,
      S(1) => \pwm_on8__108_carry__0_i_4_n_0\,
      S(0) => \pwm_on8__108_carry__0_i_5_n_0\
    );
\pwm_on8__108_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_11\,
      I1 => \pwm_on8__52_carry__1_n_9\,
      O => \pwm_on8__108_carry__0_i_1_n_0\
    );
\pwm_on8__108_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_12\,
      I1 => \pwm_on8__52_carry__1_n_10\,
      O => \pwm_on8__108_carry__0_i_2_n_0\
    );
\pwm_on8__108_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_9\,
      I1 => \pwm_on8__52_carry__1_n_8\,
      I2 => \pwm_on8__52_carry__1_n_10\,
      O => \pwm_on8__108_carry__0_i_3_n_0\
    );
\pwm_on8__108_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_9\,
      I1 => \pwm_on8__52_carry__1_n_11\,
      I2 => \pwm_on8__52_carry__1_n_8\,
      I3 => \pwm_on8__52_carry__1_n_10\,
      O => \pwm_on8__108_carry__0_i_4_n_0\
    );
\pwm_on8__108_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_10\,
      I1 => \pwm_on8__52_carry__1_n_12\,
      I2 => \pwm_on8__52_carry__1_n_9\,
      I3 => \pwm_on8__52_carry__1_n_11\,
      O => \pwm_on8__108_carry__0_i_5_n_0\
    );
\pwm_on8__108_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_13\,
      I1 => \pwm_on8__52_carry__1_n_11\,
      I2 => \pwm_on8__52_carry__1_n_8\,
      O => \pwm_on8__108_carry_i_1_n_0\
    );
\pwm_on8__108_carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_14\,
      I1 => \pwm_on8__52_carry__1_n_12\,
      I2 => \pwm_on8__52_carry__1_n_9\,
      I3 => \pwm_on8__108_carry_i_3_n_0\,
      O => \pwm_on8__108_carry_i_10_n_0\
    );
\pwm_on8__108_carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_15\,
      I1 => \pwm_on8__52_carry__1_n_13\,
      I2 => \pwm_on8__52_carry__1_n_10\,
      I3 => \pwm_on8__108_carry_i_4_n_0\,
      O => \pwm_on8__108_carry_i_11_n_0\
    );
\pwm_on8__108_carry_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_n_8\,
      I1 => \pwm_on8__52_carry__1_n_14\,
      I2 => \pwm_on8__52_carry__1_n_11\,
      I3 => \pwm_on8__108_carry_i_5_n_0\,
      O => \pwm_on8__108_carry_i_12_n_0\
    );
\pwm_on8__108_carry_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_n_9\,
      I1 => \pwm_on8__52_carry__1_n_15\,
      I2 => \pwm_on8__52_carry__1_n_12\,
      I3 => \pwm_on8__52_carry__0_n_8\,
      I4 => \pwm_on8__52_carry__1_n_13\,
      O => \pwm_on8__108_carry_i_13_n_0\
    );
\pwm_on8__108_carry_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_n_9\,
      I1 => \pwm_on8__52_carry__1_n_14\,
      I2 => \pwm_on8__52_carry__1_n_13\,
      I3 => \pwm_on8__52_carry__0_n_8\,
      O => \pwm_on8__108_carry_i_14_n_0\
    );
\pwm_on8__108_carry_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_14\,
      I1 => \pwm_on8__52_carry__0_n_9\,
      O => \pwm_on8__108_carry_i_15_n_0\
    );
\pwm_on8__108_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_14\,
      I1 => \pwm_on8__52_carry__1_n_12\,
      I2 => \pwm_on8__52_carry__1_n_9\,
      O => \pwm_on8__108_carry_i_2_n_0\
    );
\pwm_on8__108_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_15\,
      I1 => \pwm_on8__52_carry__1_n_13\,
      I2 => \pwm_on8__52_carry__1_n_10\,
      O => \pwm_on8__108_carry_i_3_n_0\
    );
\pwm_on8__108_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_n_8\,
      I1 => \pwm_on8__52_carry__1_n_14\,
      I2 => \pwm_on8__52_carry__1_n_11\,
      O => \pwm_on8__108_carry_i_4_n_0\
    );
\pwm_on8__108_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_n_9\,
      I1 => \pwm_on8__52_carry__1_n_15\,
      I2 => \pwm_on8__52_carry__1_n_12\,
      O => \pwm_on8__108_carry_i_5_n_0\
    );
\pwm_on8__108_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_12\,
      I1 => \pwm_on8__52_carry__1_n_15\,
      I2 => \pwm_on8__52_carry__0_n_9\,
      O => \pwm_on8__108_carry_i_6_n_0\
    );
\pwm_on8__108_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_14\,
      I1 => \pwm_on8__52_carry__0_n_9\,
      O => \pwm_on8__108_carry_i_7_n_0\
    );
\pwm_on8__108_carry_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DB2B24D"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_8\,
      I1 => \pwm_on8__52_carry__1_n_11\,
      I2 => \pwm_on8__52_carry__1_n_13\,
      I3 => \pwm_on8__52_carry__1_n_10\,
      I4 => \pwm_on8__52_carry__1_n_12\,
      O => \pwm_on8__108_carry_i_8_n_0\
    );
\pwm_on8__108_carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \pwm_on8__108_carry_i_2_n_0\,
      I1 => \pwm_on8__52_carry__1_n_13\,
      I2 => \pwm_on8__52_carry__1_n_11\,
      I3 => \pwm_on8__52_carry__1_n_8\,
      O => \pwm_on8__108_carry_i_9_n_0\
    );
\pwm_on8__138_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \pwm_on8__138_carry_n_0\,
      CO(6) => \pwm_on8__138_carry_n_1\,
      CO(5) => \pwm_on8__138_carry_n_2\,
      CO(4) => \pwm_on8__138_carry_n_3\,
      CO(3) => \pwm_on8__138_carry_n_4\,
      CO(2) => \pwm_on8__138_carry_n_5\,
      CO(1) => \pwm_on8__138_carry_n_6\,
      CO(0) => \pwm_on8__138_carry_n_7\,
      DI(7) => \pwm_on8__138_carry_i_1_n_0\,
      DI(6) => \pwm_on8__138_carry_i_2_n_0\,
      DI(5) => \pwm_on8__138_carry_i_3_n_0\,
      DI(4) => \pwm_on8__138_carry_i_4_n_0\,
      DI(3) => \pwm_on8__138_carry_i_5_n_0\,
      DI(2) => \pwm_on8__138_carry_i_6_n_0\,
      DI(1) => \pwm_on8__138_carry_i_7_n_0\,
      DI(0) => \pwm_on8__138_carry_i_8_n_0\,
      O(7 downto 0) => \NLW_pwm_on8__138_carry_O_UNCONNECTED\(7 downto 0),
      S(7) => \pwm_on8__138_carry_i_9_n_0\,
      S(6) => \pwm_on8__138_carry_i_10_n_0\,
      S(5) => \pwm_on8__138_carry_i_11_n_0\,
      S(4) => \pwm_on8__138_carry_i_12_n_0\,
      S(3) => \pwm_on8__138_carry_i_13_n_0\,
      S(2) => \pwm_on8__138_carry_i_14_n_0\,
      S(1) => \pwm_on8__138_carry_i_15_n_0\,
      S(0) => \pwm_on8__138_carry_i_16_n_0\
    );
\pwm_on8__138_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \pwm_on8__138_carry_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_pwm_on8__138_carry__0_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \pwm_on8__138_carry__0_n_3\,
      CO(3) => \pwm_on8__138_carry__0_n_4\,
      CO(2) => \pwm_on8__138_carry__0_n_5\,
      CO(1) => \pwm_on8__138_carry__0_n_6\,
      CO(0) => \pwm_on8__138_carry__0_n_7\,
      DI(7 downto 5) => B"000",
      DI(4) => \pwm_on8__138_carry__0_i_1_n_0\,
      DI(3) => \pwm_on8__138_carry__0_i_2_n_0\,
      DI(2) => \pwm_on8__138_carry__0_i_3_n_0\,
      DI(1) => \pwm_on8__138_carry__0_i_4_n_0\,
      DI(0) => \pwm_on8__138_carry__0_i_5_n_0\,
      O(7 downto 0) => \NLW_pwm_on8__138_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 5) => B"000",
      S(4) => \pwm_on8__138_carry__0_i_6_n_0\,
      S(3) => \pwm_on8__138_carry__0_i_7_n_0\,
      S(2) => \pwm_on8__138_carry__0_i_8_n_0\,
      S(1) => \pwm_on8__138_carry__0_i_9_n_0\,
      S(0) => \pwm_on8__138_carry__0_i_10_n_0\
    );
\pwm_on8__138_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pwm_on8__108_carry__0_n_14\,
      I1 => pwm_on5_n_91,
      O => \pwm_on8__138_carry__0_i_1_n_0\
    );
\pwm_on8__138_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pwm_on5_n_95,
      I1 => \pwm_on8__108_carry_n_10\,
      I2 => \pwm_on8__108_carry_n_9\,
      I3 => pwm_on5_n_94,
      O => \pwm_on8__138_carry__0_i_10_n_0\
    );
\pwm_on8__138_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pwm_on8__108_carry__0_n_15\,
      I1 => pwm_on5_n_92,
      O => \pwm_on8__138_carry__0_i_2_n_0\
    );
\pwm_on8__138_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pwm_on8__108_carry_n_8\,
      I1 => pwm_on5_n_93,
      O => \pwm_on8__138_carry__0_i_3_n_0\
    );
\pwm_on8__138_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pwm_on8__108_carry_n_9\,
      I1 => pwm_on5_n_94,
      O => \pwm_on8__138_carry__0_i_4_n_0\
    );
\pwm_on8__138_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pwm_on8__108_carry_n_10\,
      I1 => pwm_on5_n_95,
      O => \pwm_on8__138_carry__0_i_5_n_0\
    );
\pwm_on8__138_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pwm_on5_n_91,
      I1 => \pwm_on8__108_carry__0_n_14\,
      I2 => \pwm_on8__108_carry__0_n_13\,
      I3 => pwm_on5_n_90,
      O => \pwm_on8__138_carry__0_i_6_n_0\
    );
\pwm_on8__138_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pwm_on5_n_92,
      I1 => \pwm_on8__108_carry__0_n_15\,
      I2 => \pwm_on8__108_carry__0_n_14\,
      I3 => pwm_on5_n_91,
      O => \pwm_on8__138_carry__0_i_7_n_0\
    );
\pwm_on8__138_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pwm_on5_n_93,
      I1 => \pwm_on8__108_carry_n_8\,
      I2 => \pwm_on8__108_carry__0_n_15\,
      I3 => pwm_on5_n_92,
      O => \pwm_on8__138_carry__0_i_8_n_0\
    );
\pwm_on8__138_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pwm_on5_n_94,
      I1 => \pwm_on8__108_carry_n_9\,
      I2 => \pwm_on8__108_carry_n_8\,
      I3 => pwm_on5_n_93,
      O => \pwm_on8__138_carry__0_i_9_n_0\
    );
\pwm_on8__138_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pwm_on8__108_carry_n_11\,
      I1 => pwm_on5_n_96,
      O => \pwm_on8__138_carry_i_1_n_0\
    );
\pwm_on8__138_carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pwm_on5_n_97,
      I1 => \pwm_on8__108_carry_n_12\,
      I2 => \pwm_on8__108_carry_n_11\,
      I3 => pwm_on5_n_96,
      O => \pwm_on8__138_carry_i_10_n_0\
    );
\pwm_on8__138_carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pwm_on5_n_98,
      I1 => \pwm_on8__108_carry_n_13\,
      I2 => \pwm_on8__108_carry_n_12\,
      I3 => pwm_on5_n_97,
      O => \pwm_on8__138_carry_i_11_n_0\
    );
\pwm_on8__138_carry_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => pwm_on5_n_99,
      I1 => \pwm_on8__108_carry_n_14\,
      I2 => \pwm_on8__108_carry_n_13\,
      I3 => pwm_on5_n_98,
      O => \pwm_on8__138_carry_i_12_n_0\
    );
\pwm_on8__138_carry_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => pwm_on5_n_100,
      I1 => \pwm_on8__108_carry_n_15\,
      I2 => \pwm_on8__108_carry_n_14\,
      I3 => pwm_on5_n_99,
      O => \pwm_on8__138_carry_i_13_n_0\
    );
\pwm_on8__138_carry_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => pwm_on5_n_101,
      I1 => \pwm_on8__52_carry__1_n_15\,
      I2 => \pwm_on8__108_carry_n_15\,
      I3 => pwm_on5_n_100,
      O => \pwm_on8__138_carry_i_14_n_0\
    );
\pwm_on8__138_carry_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pwm_on5_n_102,
      I1 => \pwm_on8__52_carry__0_n_8\,
      I2 => \pwm_on8__52_carry__1_n_15\,
      I3 => pwm_on5_n_101,
      O => \pwm_on8__138_carry_i_15_n_0\
    );
\pwm_on8__138_carry_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => pwm_on5_n_103,
      I1 => \pwm_on8__52_carry__0_n_9\,
      I2 => \pwm_on8__52_carry__0_n_8\,
      I3 => pwm_on5_n_102,
      O => \pwm_on8__138_carry_i_16_n_0\
    );
\pwm_on8__138_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pwm_on8__108_carry_n_12\,
      I1 => pwm_on5_n_97,
      O => \pwm_on8__138_carry_i_2_n_0\
    );
\pwm_on8__138_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pwm_on8__108_carry_n_13\,
      I1 => pwm_on5_n_98,
      O => \pwm_on8__138_carry_i_3_n_0\
    );
\pwm_on8__138_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \pwm_on8__108_carry_n_14\,
      I1 => pwm_on5_n_99,
      O => \pwm_on8__138_carry_i_4_n_0\
    );
\pwm_on8__138_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \pwm_on8__108_carry_n_15\,
      I1 => pwm_on5_n_100,
      O => \pwm_on8__138_carry_i_5_n_0\
    );
\pwm_on8__138_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_n_15\,
      I1 => pwm_on5_n_101,
      O => \pwm_on8__138_carry_i_6_n_0\
    );
\pwm_on8__138_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_n_8\,
      I1 => pwm_on5_n_102,
      O => \pwm_on8__138_carry_i_7_n_0\
    );
\pwm_on8__138_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_n_9\,
      I1 => pwm_on5_n_103,
      O => \pwm_on8__138_carry_i_8_n_0\
    );
\pwm_on8__138_carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pwm_on5_n_96,
      I1 => \pwm_on8__108_carry_n_11\,
      I2 => \pwm_on8__108_carry_n_10\,
      I3 => pwm_on5_n_95,
      O => \pwm_on8__138_carry_i_9_n_0\
    );
\pwm_on8__52_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \pwm_on8__52_carry_n_0\,
      CO(6) => \pwm_on8__52_carry_n_1\,
      CO(5) => \pwm_on8__52_carry_n_2\,
      CO(4) => \pwm_on8__52_carry_n_3\,
      CO(3) => \pwm_on8__52_carry_n_4\,
      CO(2) => \pwm_on8__52_carry_n_5\,
      CO(1) => \pwm_on8__52_carry_n_6\,
      CO(0) => \pwm_on8__52_carry_n_7\,
      DI(7) => \pwm_on8__52_carry_i_1_n_0\,
      DI(6) => \pwm_on8__52_carry_i_2_n_0\,
      DI(5) => pwm_on5_n_101,
      DI(4) => pwm_on5_n_102,
      DI(3) => pwm_on5_n_103,
      DI(2) => pwm_on5_n_104,
      DI(1) => pwm_on5_n_105,
      DI(0) => '0',
      O(7 downto 0) => \NLW_pwm_on8__52_carry_O_UNCONNECTED\(7 downto 0),
      S(7) => \pwm_on8__52_carry_i_3_n_0\,
      S(6) => \pwm_on8__52_carry_i_4_n_0\,
      S(5) => \pwm_on8__52_carry_i_5_n_0\,
      S(4) => \pwm_on8__52_carry_i_6_n_0\,
      S(3) => \pwm_on8__52_carry_i_7_n_0\,
      S(2) => \pwm_on8__52_carry_i_8_n_0\,
      S(1) => \pwm_on8__52_carry_i_9_n_0\,
      S(0) => pwm_on8_carry_n_13
    );
\pwm_on8__52_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \pwm_on8__52_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \pwm_on8__52_carry__0_n_0\,
      CO(6) => \pwm_on8__52_carry__0_n_1\,
      CO(5) => \pwm_on8__52_carry__0_n_2\,
      CO(4) => \pwm_on8__52_carry__0_n_3\,
      CO(3) => \pwm_on8__52_carry__0_n_4\,
      CO(2) => \pwm_on8__52_carry__0_n_5\,
      CO(1) => \pwm_on8__52_carry__0_n_6\,
      CO(0) => \pwm_on8__52_carry__0_n_7\,
      DI(7) => \pwm_on8__52_carry__0_i_1_n_0\,
      DI(6) => \pwm_on8__52_carry__0_i_2_n_0\,
      DI(5) => \pwm_on8__52_carry__0_i_3_n_0\,
      DI(4) => \pwm_on8__52_carry__0_i_4_n_0\,
      DI(3) => \pwm_on8__52_carry__0_i_5_n_0\,
      DI(2) => \pwm_on8__52_carry__0_i_6_n_0\,
      DI(1) => \pwm_on8__52_carry__0_i_7_n_0\,
      DI(0) => \pwm_on8__52_carry__0_i_8_n_0\,
      O(7) => \pwm_on8__52_carry__0_n_8\,
      O(6) => \pwm_on8__52_carry__0_n_9\,
      O(5 downto 0) => \NLW_pwm_on8__52_carry__0_O_UNCONNECTED\(5 downto 0),
      S(7) => \pwm_on8__52_carry__0_i_9_n_0\,
      S(6) => \pwm_on8__52_carry__0_i_10_n_0\,
      S(5) => \pwm_on8__52_carry__0_i_11_n_0\,
      S(4) => \pwm_on8__52_carry__0_i_12_n_0\,
      S(3) => \pwm_on8__52_carry__0_i_13_n_0\,
      S(2) => \pwm_on8__52_carry__0_i_14_n_0\,
      S(1) => \pwm_on8__52_carry__0_i_15_n_0\,
      S(0) => \pwm_on8__52_carry__0_i_16_n_0\
    );
\pwm_on8__52_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB2B222"
    )
        port map (
      I0 => pwm_on5_n_92,
      I1 => \pwm_on8__52_carry__0_i_17_n_0\,
      I2 => pwm_on5_n_99,
      I3 => \pwm_on8_carry__0_n_8\,
      I4 => pwm_on5_n_97,
      O => \pwm_on8__52_carry__0_i_1_n_0\
    );
\pwm_on8__52_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995566A566AA995"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_i_2_n_0\,
      I1 => pwm_on5_n_99,
      I2 => \pwm_on8_carry__0_n_8\,
      I3 => pwm_on5_n_97,
      I4 => pwm_on5_n_92,
      I5 => \pwm_on8__52_carry__0_i_17_n_0\,
      O => \pwm_on8__52_carry__0_i_10_n_0\
    );
\pwm_on8__52_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995566A566AA995"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_i_3_n_0\,
      I1 => pwm_on5_n_98,
      I2 => \pwm_on8_carry__0_n_9\,
      I3 => pwm_on5_n_100,
      I4 => pwm_on5_n_93,
      I5 => \pwm_on8__52_carry__0_i_18_n_0\,
      O => \pwm_on8__52_carry__0_i_11_n_0\
    );
\pwm_on8__52_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995566A566AA995"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_i_4_n_0\,
      I1 => pwm_on5_n_99,
      I2 => \pwm_on8_carry__0_n_10\,
      I3 => pwm_on5_n_101,
      I4 => pwm_on5_n_94,
      I5 => \pwm_on8__52_carry__0_i_19_n_0\,
      O => \pwm_on8__52_carry__0_i_12_n_0\
    );
\pwm_on8__52_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995566A566AA995"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_i_5_n_0\,
      I1 => pwm_on5_n_100,
      I2 => \pwm_on8_carry__0_n_11\,
      I3 => pwm_on5_n_102,
      I4 => pwm_on5_n_95,
      I5 => \pwm_on8__52_carry__0_i_20_n_0\,
      O => \pwm_on8__52_carry__0_i_13_n_0\
    );
\pwm_on8__52_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_i_6_n_0\,
      I1 => pwm_on5_n_96,
      I2 => \pwm_on8__52_carry__0_i_21_n_0\,
      I3 => \pwm_on8_carry__0_n_12\,
      I4 => pwm_on5_n_103,
      I5 => pwm_on5_n_101,
      O => \pwm_on8__52_carry__0_i_14_n_0\
    );
\pwm_on8__52_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_i_7_n_0\,
      I1 => pwm_on5_n_97,
      I2 => \pwm_on8__52_carry__0_i_22_n_0\,
      I3 => \pwm_on8_carry__0_n_13\,
      I4 => pwm_on5_n_104,
      I5 => pwm_on5_n_102,
      O => \pwm_on8__52_carry__0_i_15_n_0\
    );
\pwm_on8__52_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666666966696999"
    )
        port map (
      I0 => pwm_on5_n_98,
      I1 => \pwm_on8__52_carry__0_i_23_n_0\,
      I2 => pwm_on5_n_103,
      I3 => \pwm_on8_carry__0_n_14\,
      I4 => pwm_on5_n_105,
      I5 => pwm_on5_n_99,
      O => \pwm_on8__52_carry__0_i_16_n_0\
    );
\pwm_on8__52_carry__0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => pwm_on5_n_96,
      I1 => \pwm_on8_carry__1_n_15\,
      I2 => pwm_on5_n_98,
      O => \pwm_on8__52_carry__0_i_17_n_0\
    );
\pwm_on8__52_carry__0_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => pwm_on5_n_97,
      I1 => \pwm_on8_carry__0_n_8\,
      I2 => pwm_on5_n_99,
      O => \pwm_on8__52_carry__0_i_18_n_0\
    );
\pwm_on8__52_carry__0_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => pwm_on5_n_100,
      I1 => \pwm_on8_carry__0_n_9\,
      I2 => pwm_on5_n_98,
      O => \pwm_on8__52_carry__0_i_19_n_0\
    );
\pwm_on8__52_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB2B222"
    )
        port map (
      I0 => pwm_on5_n_93,
      I1 => \pwm_on8__52_carry__0_i_18_n_0\,
      I2 => pwm_on5_n_98,
      I3 => \pwm_on8_carry__0_n_9\,
      I4 => pwm_on5_n_100,
      O => \pwm_on8__52_carry__0_i_2_n_0\
    );
\pwm_on8__52_carry__0_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => pwm_on5_n_101,
      I1 => \pwm_on8_carry__0_n_10\,
      I2 => pwm_on5_n_99,
      O => \pwm_on8__52_carry__0_i_20_n_0\
    );
\pwm_on8__52_carry__0_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => pwm_on5_n_102,
      I1 => \pwm_on8_carry__0_n_11\,
      I2 => pwm_on5_n_100,
      O => \pwm_on8__52_carry__0_i_21_n_0\
    );
\pwm_on8__52_carry__0_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => pwm_on5_n_101,
      I1 => \pwm_on8_carry__0_n_12\,
      I2 => pwm_on5_n_103,
      O => \pwm_on8__52_carry__0_i_22_n_0\
    );
\pwm_on8__52_carry__0_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => pwm_on5_n_102,
      I1 => \pwm_on8_carry__0_n_13\,
      I2 => pwm_on5_n_104,
      O => \pwm_on8__52_carry__0_i_23_n_0\
    );
\pwm_on8__52_carry__0_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => pwm_on5_n_95,
      I1 => \pwm_on8_carry__1_n_14\,
      I2 => pwm_on5_n_97,
      O => \pwm_on8__52_carry__0_i_24_n_0\
    );
\pwm_on8__52_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => pwm_on5_n_99,
      I1 => \pwm_on8_carry__0_n_10\,
      I2 => pwm_on5_n_101,
      I3 => pwm_on5_n_94,
      I4 => \pwm_on8__52_carry__0_i_19_n_0\,
      O => \pwm_on8__52_carry__0_i_3_n_0\
    );
\pwm_on8__52_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => pwm_on5_n_100,
      I1 => \pwm_on8_carry__0_n_11\,
      I2 => pwm_on5_n_102,
      I3 => pwm_on5_n_95,
      I4 => \pwm_on8__52_carry__0_i_20_n_0\,
      O => \pwm_on8__52_carry__0_i_4_n_0\
    );
\pwm_on8__52_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8FF00E8"
    )
        port map (
      I0 => \pwm_on8_carry__0_n_12\,
      I1 => pwm_on5_n_103,
      I2 => pwm_on5_n_101,
      I3 => \pwm_on8__52_carry__0_i_21_n_0\,
      I4 => pwm_on5_n_96,
      O => \pwm_on8__52_carry__0_i_5_n_0\
    );
\pwm_on8__52_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8FF00E8"
    )
        port map (
      I0 => \pwm_on8_carry__0_n_13\,
      I1 => pwm_on5_n_104,
      I2 => pwm_on5_n_102,
      I3 => \pwm_on8__52_carry__0_i_22_n_0\,
      I4 => pwm_on5_n_97,
      O => \pwm_on8__52_carry__0_i_6_n_0\
    );
\pwm_on8__52_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD4D444"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_i_23_n_0\,
      I1 => pwm_on5_n_98,
      I2 => pwm_on5_n_105,
      I3 => \pwm_on8_carry__0_n_14\,
      I4 => pwm_on5_n_103,
      O => \pwm_on8__52_carry__0_i_7_n_0\
    );
\pwm_on8__52_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17E8E817"
    )
        port map (
      I0 => pwm_on5_n_103,
      I1 => \pwm_on8_carry__0_n_14\,
      I2 => pwm_on5_n_105,
      I3 => \pwm_on8__52_carry__0_i_23_n_0\,
      I4 => pwm_on5_n_98,
      O => \pwm_on8__52_carry__0_i_8_n_0\
    );
\pwm_on8__52_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995566A566AA995"
    )
        port map (
      I0 => \pwm_on8__52_carry__0_i_1_n_0\,
      I1 => pwm_on5_n_98,
      I2 => \pwm_on8_carry__1_n_15\,
      I3 => pwm_on5_n_96,
      I4 => pwm_on5_n_91,
      I5 => \pwm_on8__52_carry__0_i_24_n_0\,
      O => \pwm_on8__52_carry__0_i_9_n_0\
    );
\pwm_on8__52_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \pwm_on8__52_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_pwm_on8__52_carry__1_CO_UNCONNECTED\(7),
      CO(6) => \pwm_on8__52_carry__1_n_1\,
      CO(5) => \pwm_on8__52_carry__1_n_2\,
      CO(4) => \pwm_on8__52_carry__1_n_3\,
      CO(3) => \pwm_on8__52_carry__1_n_4\,
      CO(2) => \pwm_on8__52_carry__1_n_5\,
      CO(1) => \pwm_on8__52_carry__1_n_6\,
      CO(0) => \pwm_on8__52_carry__1_n_7\,
      DI(7) => '0',
      DI(6) => \pwm_on8__52_carry__1_i_1_n_0\,
      DI(5) => \pwm_on8__52_carry__1_i_2_n_0\,
      DI(4) => \pwm_on8__52_carry__1_i_3_n_0\,
      DI(3) => \pwm_on8__52_carry__1_i_4_n_0\,
      DI(2) => \pwm_on8__52_carry__1_i_5_n_0\,
      DI(1) => \pwm_on8__52_carry__1_i_6_n_0\,
      DI(0) => \pwm_on8__52_carry__1_i_7_n_0\,
      O(7) => \pwm_on8__52_carry__1_n_8\,
      O(6) => \pwm_on8__52_carry__1_n_9\,
      O(5) => \pwm_on8__52_carry__1_n_10\,
      O(4) => \pwm_on8__52_carry__1_n_11\,
      O(3) => \pwm_on8__52_carry__1_n_12\,
      O(2) => \pwm_on8__52_carry__1_n_13\,
      O(1) => \pwm_on8__52_carry__1_n_14\,
      O(0) => \pwm_on8__52_carry__1_n_15\,
      S(7) => \pwm_on8__52_carry__1_i_8_n_0\,
      S(6) => \pwm_on8__52_carry__1_i_9_n_0\,
      S(5) => \pwm_on8__52_carry__1_i_10_n_0\,
      S(4) => \pwm_on8__52_carry__1_i_11_n_0\,
      S(3) => \pwm_on8__52_carry__1_i_12_n_0\,
      S(2) => \pwm_on8__52_carry__1_i_13_n_0\,
      S(1) => \pwm_on8__52_carry__1_i_14_n_0\,
      S(0) => \pwm_on8__52_carry__1_i_15_n_0\
    );
\pwm_on8__52_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B332"
    )
        port map (
      I0 => pwm_on5_n_90,
      I1 => \pwm_on8_carry__1_n_4\,
      I2 => pwm_on5_n_92,
      I3 => pwm_on5_n_91,
      O => \pwm_on8__52_carry__1_i_1_n_0\
    );
\pwm_on8__52_carry__1_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95566AA9"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_i_2_n_0\,
      I1 => pwm_on5_n_90,
      I2 => \pwm_on8_carry__1_n_4\,
      I3 => pwm_on5_n_92,
      I4 => pwm_on5_n_91,
      O => \pwm_on8__52_carry__1_i_10_n_0\
    );
\pwm_on8__52_carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E83FC07E17C03F81"
    )
        port map (
      I0 => pwm_on5_n_94,
      I1 => pwm_on5_n_93,
      I2 => pwm_on5_n_91,
      I3 => pwm_on5_n_92,
      I4 => \pwm_on8_carry__1_n_4\,
      I5 => pwm_on5_n_90,
      O => \pwm_on8__52_carry__1_i_11_n_0\
    );
\pwm_on8__52_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996996699669669"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_i_4_n_0\,
      I1 => pwm_on5_n_91,
      I2 => \pwm_on8_carry__1_n_4\,
      I3 => pwm_on5_n_93,
      I4 => pwm_on5_n_92,
      I5 => pwm_on5_n_94,
      O => \pwm_on8__52_carry__1_i_12_n_0\
    );
\pwm_on8__52_carry__1_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AA9955695566AA9"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_i_5_n_0\,
      I1 => \pwm_on8_carry__1_n_4\,
      I2 => pwm_on5_n_93,
      I3 => pwm_on5_n_95,
      I4 => pwm_on5_n_94,
      I5 => pwm_on5_n_92,
      O => \pwm_on8__52_carry__1_i_13_n_0\
    );
\pwm_on8__52_carry__1_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66696999"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_i_6_n_0\,
      I1 => \pwm_on8__52_carry__1_i_17_n_0\,
      I2 => pwm_on5_n_94,
      I3 => \pwm_on8_carry__1_n_13\,
      I4 => pwm_on5_n_96,
      O => \pwm_on8__52_carry__1_i_14_n_0\
    );
\pwm_on8__52_carry__1_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995566A566AA995"
    )
        port map (
      I0 => \pwm_on8__52_carry__1_i_7_n_0\,
      I1 => pwm_on5_n_97,
      I2 => \pwm_on8_carry__1_n_14\,
      I3 => pwm_on5_n_95,
      I4 => pwm_on5_n_90,
      I5 => \pwm_on8__52_carry__1_i_16_n_0\,
      O => \pwm_on8__52_carry__1_i_15_n_0\
    );
\pwm_on8__52_carry__1_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => pwm_on5_n_96,
      I1 => \pwm_on8_carry__1_n_13\,
      I2 => pwm_on5_n_94,
      O => \pwm_on8__52_carry__1_i_16_n_0\
    );
\pwm_on8__52_carry__1_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => pwm_on5_n_95,
      I1 => \pwm_on8_carry__1_n_4\,
      I2 => pwm_on5_n_93,
      O => \pwm_on8__52_carry__1_i_17_n_0\
    );
\pwm_on8__52_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08E0800E"
    )
        port map (
      I0 => pwm_on5_n_93,
      I1 => pwm_on5_n_91,
      I2 => pwm_on5_n_92,
      I3 => \pwm_on8_carry__1_n_4\,
      I4 => pwm_on5_n_90,
      O => \pwm_on8__52_carry__1_i_2_n_0\
    );
\pwm_on8__52_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08E0800E"
    )
        port map (
      I0 => pwm_on5_n_94,
      I1 => pwm_on5_n_92,
      I2 => pwm_on5_n_93,
      I3 => \pwm_on8_carry__1_n_4\,
      I4 => pwm_on5_n_91,
      O => \pwm_on8__52_carry__1_i_3_n_0\
    );
\pwm_on8__52_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60009990"
    )
        port map (
      I0 => pwm_on5_n_92,
      I1 => pwm_on5_n_94,
      I2 => pwm_on5_n_95,
      I3 => pwm_on5_n_93,
      I4 => \pwm_on8_carry__1_n_4\,
      O => \pwm_on8__52_carry__1_i_4_n_0\
    );
\pwm_on8__52_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E8E800E80000E8"
    )
        port map (
      I0 => pwm_on5_n_96,
      I1 => \pwm_on8_carry__1_n_13\,
      I2 => pwm_on5_n_94,
      I3 => pwm_on5_n_93,
      I4 => \pwm_on8_carry__1_n_4\,
      I5 => pwm_on5_n_95,
      O => \pwm_on8__52_carry__1_i_5_n_0\
    );
\pwm_on8__52_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB2B222"
    )
        port map (
      I0 => pwm_on5_n_90,
      I1 => \pwm_on8__52_carry__1_i_16_n_0\,
      I2 => pwm_on5_n_97,
      I3 => \pwm_on8_carry__1_n_14\,
      I4 => pwm_on5_n_95,
      O => \pwm_on8__52_carry__1_i_6_n_0\
    );
\pwm_on8__52_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB2B222"
    )
        port map (
      I0 => pwm_on5_n_91,
      I1 => \pwm_on8__52_carry__0_i_24_n_0\,
      I2 => pwm_on5_n_98,
      I3 => \pwm_on8_carry__1_n_15\,
      I4 => pwm_on5_n_96,
      O => \pwm_on8__52_carry__1_i_7_n_0\
    );
\pwm_on8__52_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_on5_n_90,
      I1 => \pwm_on8_carry__1_n_4\,
      O => \pwm_on8__52_carry__1_i_8_n_0\
    );
\pwm_on8__52_carry__1_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F01"
    )
        port map (
      I0 => pwm_on5_n_91,
      I1 => pwm_on5_n_92,
      I2 => \pwm_on8_carry__1_n_4\,
      I3 => pwm_on5_n_90,
      O => \pwm_on8__52_carry__1_i_9_n_0\
    );
\pwm_on8__52_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => pwm_on5_n_105,
      I1 => \pwm_on8_carry__0_n_14\,
      I2 => pwm_on5_n_103,
      I3 => pwm_on5_n_99,
      O => \pwm_on8__52_carry_i_1_n_0\
    );
\pwm_on8__52_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => pwm_on5_n_100,
      I1 => pwm_on5_n_104,
      I2 => \pwm_on8_carry__0_n_15\,
      O => \pwm_on8__52_carry_i_2_n_0\
    );
\pwm_on8__52_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \pwm_on8__52_carry_i_1_n_0\,
      I1 => pwm_on5_n_100,
      I2 => pwm_on5_n_104,
      I3 => \pwm_on8_carry__0_n_15\,
      O => \pwm_on8__52_carry_i_3_n_0\
    );
\pwm_on8__52_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \pwm_on8_carry__0_n_15\,
      I1 => pwm_on5_n_104,
      I2 => pwm_on5_n_100,
      I3 => pwm_on8_carry_n_8,
      I4 => pwm_on5_n_105,
      O => \pwm_on8__52_carry_i_4_n_0\
    );
\pwm_on8__52_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => pwm_on8_carry_n_8,
      I1 => pwm_on5_n_105,
      I2 => pwm_on5_n_101,
      O => \pwm_on8__52_carry_i_5_n_0\
    );
\pwm_on8__52_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pwm_on5_n_102,
      I1 => pwm_on8_carry_n_9,
      O => \pwm_on8__52_carry_i_6_n_0\
    );
\pwm_on8__52_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pwm_on5_n_103,
      I1 => pwm_on8_carry_n_10,
      O => \pwm_on8__52_carry_i_7_n_0\
    );
\pwm_on8__52_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pwm_on5_n_104,
      I1 => pwm_on8_carry_n_11,
      O => \pwm_on8__52_carry_i_8_n_0\
    );
\pwm_on8__52_carry_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pwm_on5_n_105,
      I1 => pwm_on8_carry_n_12,
      O => \pwm_on8__52_carry_i_9_n_0\
    );
pwm_on8_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => pwm_on8_carry_n_0,
      CO(6) => pwm_on8_carry_n_1,
      CO(5) => pwm_on8_carry_n_2,
      CO(4) => pwm_on8_carry_n_3,
      CO(3) => pwm_on8_carry_n_4,
      CO(2) => pwm_on8_carry_n_5,
      CO(1) => pwm_on8_carry_n_6,
      CO(0) => pwm_on8_carry_n_7,
      DI(7) => pwm_on5_n_101,
      DI(6) => pwm_on5_n_102,
      DI(5) => pwm_on5_n_103,
      DI(4) => pwm_on5_n_104,
      DI(3) => pwm_on5_n_105,
      DI(2 downto 0) => B"001",
      O(7) => pwm_on8_carry_n_8,
      O(6) => pwm_on8_carry_n_9,
      O(5) => pwm_on8_carry_n_10,
      O(4) => pwm_on8_carry_n_11,
      O(3) => pwm_on8_carry_n_12,
      O(2) => pwm_on8_carry_n_13,
      O(1 downto 0) => NLW_pwm_on8_carry_O_UNCONNECTED(1 downto 0),
      S(7) => pwm_on8_carry_i_1_n_0,
      S(6) => pwm_on8_carry_i_2_n_0,
      S(5) => pwm_on8_carry_i_3_n_0,
      S(4) => pwm_on8_carry_i_4_n_0,
      S(3) => pwm_on8_carry_i_5_n_0,
      S(2) => pwm_on8_carry_i_6_n_0,
      S(1) => pwm_on8_carry_i_7_n_0,
      S(0) => pwm_on5_n_105
    );
\pwm_on8_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => pwm_on8_carry_n_0,
      CI_TOP => '0',
      CO(7) => \pwm_on8_carry__0_n_0\,
      CO(6) => \pwm_on8_carry__0_n_1\,
      CO(5) => \pwm_on8_carry__0_n_2\,
      CO(4) => \pwm_on8_carry__0_n_3\,
      CO(3) => \pwm_on8_carry__0_n_4\,
      CO(2) => \pwm_on8_carry__0_n_5\,
      CO(1) => \pwm_on8_carry__0_n_6\,
      CO(0) => \pwm_on8_carry__0_n_7\,
      DI(7) => pwm_on5_n_93,
      DI(6) => pwm_on5_n_94,
      DI(5) => pwm_on5_n_95,
      DI(4) => pwm_on5_n_96,
      DI(3) => pwm_on5_n_97,
      DI(2) => pwm_on5_n_98,
      DI(1) => pwm_on5_n_99,
      DI(0) => pwm_on5_n_100,
      O(7) => \pwm_on8_carry__0_n_8\,
      O(6) => \pwm_on8_carry__0_n_9\,
      O(5) => \pwm_on8_carry__0_n_10\,
      O(4) => \pwm_on8_carry__0_n_11\,
      O(3) => \pwm_on8_carry__0_n_12\,
      O(2) => \pwm_on8_carry__0_n_13\,
      O(1) => \pwm_on8_carry__0_n_14\,
      O(0) => \pwm_on8_carry__0_n_15\,
      S(7) => \pwm_on8_carry__0_i_1_n_0\,
      S(6) => \pwm_on8_carry__0_i_2_n_0\,
      S(5) => \pwm_on8_carry__0_i_3_n_0\,
      S(4) => \pwm_on8_carry__0_i_4_n_0\,
      S(3) => \pwm_on8_carry__0_i_5_n_0\,
      S(2) => \pwm_on8_carry__0_i_6_n_0\,
      S(1) => \pwm_on8_carry__0_i_7_n_0\,
      S(0) => \pwm_on8_carry__0_i_8_n_0\
    );
\pwm_on8_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pwm_on5_n_93,
      I1 => pwm_on5_n_90,
      O => \pwm_on8_carry__0_i_1_n_0\
    );
\pwm_on8_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pwm_on5_n_94,
      I1 => pwm_on5_n_91,
      O => \pwm_on8_carry__0_i_2_n_0\
    );
\pwm_on8_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pwm_on5_n_95,
      I1 => pwm_on5_n_92,
      O => \pwm_on8_carry__0_i_3_n_0\
    );
\pwm_on8_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pwm_on5_n_96,
      I1 => pwm_on5_n_93,
      O => \pwm_on8_carry__0_i_4_n_0\
    );
\pwm_on8_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pwm_on5_n_97,
      I1 => pwm_on5_n_94,
      O => \pwm_on8_carry__0_i_5_n_0\
    );
\pwm_on8_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pwm_on5_n_98,
      I1 => pwm_on5_n_95,
      O => \pwm_on8_carry__0_i_6_n_0\
    );
\pwm_on8_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pwm_on5_n_99,
      I1 => pwm_on5_n_96,
      O => \pwm_on8_carry__0_i_7_n_0\
    );
\pwm_on8_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pwm_on5_n_100,
      I1 => pwm_on5_n_97,
      O => \pwm_on8_carry__0_i_8_n_0\
    );
\pwm_on8_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \pwm_on8_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_pwm_on8_carry__1_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \pwm_on8_carry__1_n_4\,
      CO(2) => \NLW_pwm_on8_carry__1_CO_UNCONNECTED\(2),
      CO(1) => \pwm_on8_carry__1_n_6\,
      CO(0) => \pwm_on8_carry__1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2) => pwm_on5_n_90,
      DI(1) => pwm_on5_n_91,
      DI(0) => pwm_on5_n_92,
      O(7 downto 3) => \NLW_pwm_on8_carry__1_O_UNCONNECTED\(7 downto 3),
      O(2) => \pwm_on8_carry__1_n_13\,
      O(1) => \pwm_on8_carry__1_n_14\,
      O(0) => \pwm_on8_carry__1_n_15\,
      S(7 downto 3) => B"00001",
      S(2) => \pwm_on8_carry__1_i_1_n_0\,
      S(1) => \pwm_on8_carry__1_i_2_n_0\,
      S(0) => \pwm_on8_carry__1_i_3_n_0\
    );
\pwm_on8_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_on5_n_90,
      O => \pwm_on8_carry__1_i_1_n_0\
    );
\pwm_on8_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_on5_n_91,
      O => \pwm_on8_carry__1_i_2_n_0\
    );
\pwm_on8_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_on5_n_92,
      O => \pwm_on8_carry__1_i_3_n_0\
    );
pwm_on8_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pwm_on5_n_101,
      I1 => pwm_on5_n_98,
      O => pwm_on8_carry_i_1_n_0
    );
pwm_on8_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pwm_on5_n_102,
      I1 => pwm_on5_n_99,
      O => pwm_on8_carry_i_2_n_0
    );
pwm_on8_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pwm_on5_n_103,
      I1 => pwm_on5_n_100,
      O => pwm_on8_carry_i_3_n_0
    );
pwm_on8_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pwm_on5_n_104,
      I1 => pwm_on5_n_101,
      O => pwm_on8_carry_i_4_n_0
    );
pwm_on8_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pwm_on5_n_105,
      I1 => pwm_on5_n_102,
      O => pwm_on8_carry_i_5_n_0
    );
pwm_on8_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_on5_n_103,
      O => pwm_on8_carry_i_6_n_0
    );
pwm_on8_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_on5_n_104,
      O => pwm_on8_carry_i_7_n_0
    );
pwm_on_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFEEFAAAAAAAA"
    )
        port map (
      I0 => \pwm[7]_i_4_n_0\,
      I1 => \pwm[0]_i_1_n_0\,
      I2 => pwm_on7(5),
      I3 => \pwm[7]_i_3_n_0\,
      I4 => pwm_on4_carry_n_1,
      I5 => pwm_on_reg_n_0,
      O => pwm_on_i_1_n_0
    );
pwm_on_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdy,
      CE => '1',
      D => pwm_on_i_1_n_0,
      Q => pwm_on_reg_n_0,
      R => '0'
    );
\pwm_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdy,
      CE => '1',
      D => \pwm[0]_i_1_n_0\,
      Q => pwm(0),
      R => \pwm[7]_i_1_n_0\
    );
\pwm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdy,
      CE => '1',
      D => \pwm[1]_i_1_n_0\,
      Q => pwm(1),
      R => \pwm[7]_i_1_n_0\
    );
\pwm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdy,
      CE => '1',
      D => \pwm[2]_i_1_n_0\,
      Q => pwm(2),
      R => \pwm[7]_i_1_n_0\
    );
\pwm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdy,
      CE => '1',
      D => \pwm[3]_i_1_n_0\,
      Q => pwm(3),
      R => \pwm[7]_i_1_n_0\
    );
\pwm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdy,
      CE => '1',
      D => \pwm[4]_i_1_n_0\,
      Q => pwm(4),
      R => \pwm[7]_i_1_n_0\
    );
\pwm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdy,
      CE => '1',
      D => \pwm[5]_i_1_n_0\,
      Q => pwm(5),
      R => \pwm[7]_i_1_n_0\
    );
\pwm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdy,
      CE => '1',
      D => \pwm[6]_i_1_n_0\,
      Q => pwm(6),
      R => \pwm[7]_i_1_n_0\
    );
\pwm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdy,
      CE => '1',
      D => \pwm[7]_i_2_n_0\,
      Q => pwm(7),
      R => \pwm[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    rdy : in STD_LOGIC;
    temp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    pwm : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "hardware_temp2pwm_0_0,temp2pwm,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "temp2pwm,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_temp2pwm
     port map (
      pwm(7 downto 0) => pwm(7 downto 0),
      rdy => rdy,
      temp(9 downto 0) => temp(9 downto 0)
    );
end STRUCTURE;
