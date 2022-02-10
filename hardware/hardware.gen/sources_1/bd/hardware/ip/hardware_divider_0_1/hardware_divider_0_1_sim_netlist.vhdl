-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Feb  8 11:28:03 2022
-- Host        : PC running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/mateusz/KV260/hardware/hardware.gen/sources_1/bd/hardware/ip/hardware_divider_0_1/hardware_divider_0_1_sim_netlist.vhdl
-- Design      : hardware_divider_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hardware_divider_0_1_divider is
  port (
    clk_out : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hardware_divider_0_1_divider : entity is "divider";
end hardware_divider_0_1_divider;

architecture STRUCTURE of hardware_divider_0_1_divider is
  signal \^clk_out\ : STD_LOGIC;
  signal clk_out_i_1_n_0 : STD_LOGIC;
  signal clk_out_i_2_n_0 : STD_LOGIC;
  signal clk_out_i_3_n_0 : STD_LOGIC;
  signal clk_out_i_4_n_0 : STD_LOGIC;
  signal clk_out_i_5_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \counter0__154_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter0__154_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter0__154_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter0__154_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter0__154_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \counter0__154_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \counter0__154_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \counter0__154_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \counter0__154_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \counter0__154_carry__0_n_11\ : STD_LOGIC;
  signal \counter0__154_carry__0_n_12\ : STD_LOGIC;
  signal \counter0__154_carry__0_n_13\ : STD_LOGIC;
  signal \counter0__154_carry__0_n_14\ : STD_LOGIC;
  signal \counter0__154_carry__0_n_15\ : STD_LOGIC;
  signal \counter0__154_carry__0_n_4\ : STD_LOGIC;
  signal \counter0__154_carry__0_n_5\ : STD_LOGIC;
  signal \counter0__154_carry__0_n_6\ : STD_LOGIC;
  signal \counter0__154_carry__0_n_7\ : STD_LOGIC;
  signal \counter0__154_carry_i_1_n_0\ : STD_LOGIC;
  signal \counter0__154_carry_i_2_n_0\ : STD_LOGIC;
  signal \counter0__154_carry_i_3_n_0\ : STD_LOGIC;
  signal \counter0__154_carry_i_4_n_0\ : STD_LOGIC;
  signal \counter0__154_carry_i_5_n_0\ : STD_LOGIC;
  signal \counter0__154_carry_i_6_n_0\ : STD_LOGIC;
  signal \counter0__154_carry_i_7_n_0\ : STD_LOGIC;
  signal \counter0__154_carry_i_8_n_0\ : STD_LOGIC;
  signal \counter0__154_carry_n_0\ : STD_LOGIC;
  signal \counter0__154_carry_n_1\ : STD_LOGIC;
  signal \counter0__154_carry_n_10\ : STD_LOGIC;
  signal \counter0__154_carry_n_11\ : STD_LOGIC;
  signal \counter0__154_carry_n_12\ : STD_LOGIC;
  signal \counter0__154_carry_n_13\ : STD_LOGIC;
  signal \counter0__154_carry_n_14\ : STD_LOGIC;
  signal \counter0__154_carry_n_15\ : STD_LOGIC;
  signal \counter0__154_carry_n_2\ : STD_LOGIC;
  signal \counter0__154_carry_n_3\ : STD_LOGIC;
  signal \counter0__154_carry_n_4\ : STD_LOGIC;
  signal \counter0__154_carry_n_5\ : STD_LOGIC;
  signal \counter0__154_carry_n_6\ : STD_LOGIC;
  signal \counter0__154_carry_n_7\ : STD_LOGIC;
  signal \counter0__154_carry_n_8\ : STD_LOGIC;
  signal \counter0__154_carry_n_9\ : STD_LOGIC;
  signal \counter0__190_carry_i_1_n_0\ : STD_LOGIC;
  signal \counter0__190_carry_i_2_n_0\ : STD_LOGIC;
  signal \counter0__190_carry_i_3_n_0\ : STD_LOGIC;
  signal \counter0__190_carry_i_4_n_0\ : STD_LOGIC;
  signal \counter0__190_carry_n_11\ : STD_LOGIC;
  signal \counter0__190_carry_n_12\ : STD_LOGIC;
  signal \counter0__190_carry_n_13\ : STD_LOGIC;
  signal \counter0__190_carry_n_14\ : STD_LOGIC;
  signal \counter0__190_carry_n_15\ : STD_LOGIC;
  signal \counter0__190_carry_n_4\ : STD_LOGIC;
  signal \counter0__190_carry_n_5\ : STD_LOGIC;
  signal \counter0__190_carry_n_6\ : STD_LOGIC;
  signal \counter0__190_carry_n_7\ : STD_LOGIC;
  signal \counter0__201_carry_i_1_n_0\ : STD_LOGIC;
  signal \counter0__201_carry_i_2_n_0\ : STD_LOGIC;
  signal \counter0__201_carry_i_3_n_0\ : STD_LOGIC;
  signal \counter0__201_carry_i_4_n_0\ : STD_LOGIC;
  signal \counter0__201_carry_i_5_n_0\ : STD_LOGIC;
  signal \counter0__201_carry_n_11\ : STD_LOGIC;
  signal \counter0__201_carry_n_12\ : STD_LOGIC;
  signal \counter0__201_carry_n_13\ : STD_LOGIC;
  signal \counter0__201_carry_n_14\ : STD_LOGIC;
  signal \counter0__201_carry_n_15\ : STD_LOGIC;
  signal \counter0__201_carry_n_4\ : STD_LOGIC;
  signal \counter0__201_carry_n_5\ : STD_LOGIC;
  signal \counter0__201_carry_n_6\ : STD_LOGIC;
  signal \counter0__201_carry_n_7\ : STD_LOGIC;
  signal \counter0__214_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter0__214_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter0__214_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter0__214_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter0__214_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \counter0__214_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \counter0__214_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \counter0__214_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_0\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_1\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_10\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_11\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_12\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_13\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_14\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_15\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_2\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_3\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_4\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_5\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_6\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_7\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_8\ : STD_LOGIC;
  signal \counter0__214_carry__0_n_9\ : STD_LOGIC;
  signal \counter0__214_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter0__214_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter0__214_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter0__214_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter0__214_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \counter0__214_carry__1_n_11\ : STD_LOGIC;
  signal \counter0__214_carry__1_n_12\ : STD_LOGIC;
  signal \counter0__214_carry__1_n_13\ : STD_LOGIC;
  signal \counter0__214_carry__1_n_14\ : STD_LOGIC;
  signal \counter0__214_carry__1_n_15\ : STD_LOGIC;
  signal \counter0__214_carry__1_n_4\ : STD_LOGIC;
  signal \counter0__214_carry__1_n_5\ : STD_LOGIC;
  signal \counter0__214_carry__1_n_6\ : STD_LOGIC;
  signal \counter0__214_carry__1_n_7\ : STD_LOGIC;
  signal \counter0__214_carry_i_2_n_0\ : STD_LOGIC;
  signal \counter0__214_carry_i_3_n_0\ : STD_LOGIC;
  signal \counter0__214_carry_i_4_n_0\ : STD_LOGIC;
  signal \counter0__214_carry_i_5_n_0\ : STD_LOGIC;
  signal \counter0__214_carry_i_6_n_0\ : STD_LOGIC;
  signal \counter0__214_carry_i_7_n_0\ : STD_LOGIC;
  signal \counter0__214_carry_i_8_n_0\ : STD_LOGIC;
  signal \counter0__214_carry_n_0\ : STD_LOGIC;
  signal \counter0__214_carry_n_1\ : STD_LOGIC;
  signal \counter0__214_carry_n_2\ : STD_LOGIC;
  signal \counter0__214_carry_n_3\ : STD_LOGIC;
  signal \counter0__214_carry_n_4\ : STD_LOGIC;
  signal \counter0__214_carry_n_5\ : STD_LOGIC;
  signal \counter0__214_carry_n_6\ : STD_LOGIC;
  signal \counter0__214_carry_n_7\ : STD_LOGIC;
  signal \counter0__214_carry_n_8\ : STD_LOGIC;
  signal \counter0__214_carry_n_9\ : STD_LOGIC;
  signal \counter0__269_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter0__269_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter0__269_carry__0_n_1\ : STD_LOGIC;
  signal \counter0__269_carry__0_n_10\ : STD_LOGIC;
  signal \counter0__269_carry__0_n_11\ : STD_LOGIC;
  signal \counter0__269_carry__0_n_12\ : STD_LOGIC;
  signal \counter0__269_carry__0_n_13\ : STD_LOGIC;
  signal \counter0__269_carry__0_n_14\ : STD_LOGIC;
  signal \counter0__269_carry__0_n_15\ : STD_LOGIC;
  signal \counter0__269_carry__0_n_2\ : STD_LOGIC;
  signal \counter0__269_carry__0_n_3\ : STD_LOGIC;
  signal \counter0__269_carry__0_n_4\ : STD_LOGIC;
  signal \counter0__269_carry__0_n_5\ : STD_LOGIC;
  signal \counter0__269_carry__0_n_6\ : STD_LOGIC;
  signal \counter0__269_carry__0_n_7\ : STD_LOGIC;
  signal \counter0__269_carry_i_1_n_0\ : STD_LOGIC;
  signal \counter0__269_carry_i_2_n_0\ : STD_LOGIC;
  signal \counter0__269_carry_i_3_n_0\ : STD_LOGIC;
  signal \counter0__269_carry_i_4_n_0\ : STD_LOGIC;
  signal \counter0__269_carry_i_5_n_0\ : STD_LOGIC;
  signal \counter0__269_carry_i_6_n_0\ : STD_LOGIC;
  signal \counter0__269_carry_n_0\ : STD_LOGIC;
  signal \counter0__269_carry_n_1\ : STD_LOGIC;
  signal \counter0__269_carry_n_10\ : STD_LOGIC;
  signal \counter0__269_carry_n_11\ : STD_LOGIC;
  signal \counter0__269_carry_n_12\ : STD_LOGIC;
  signal \counter0__269_carry_n_13\ : STD_LOGIC;
  signal \counter0__269_carry_n_14\ : STD_LOGIC;
  signal \counter0__269_carry_n_15\ : STD_LOGIC;
  signal \counter0__269_carry_n_2\ : STD_LOGIC;
  signal \counter0__269_carry_n_3\ : STD_LOGIC;
  signal \counter0__269_carry_n_4\ : STD_LOGIC;
  signal \counter0__269_carry_n_5\ : STD_LOGIC;
  signal \counter0__269_carry_n_6\ : STD_LOGIC;
  signal \counter0__269_carry_n_7\ : STD_LOGIC;
  signal \counter0__269_carry_n_8\ : STD_LOGIC;
  signal \counter0__269_carry_n_9\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__0_n_1\ : STD_LOGIC;
  signal \counter0__74_carry__0_n_2\ : STD_LOGIC;
  signal \counter0__74_carry__0_n_3\ : STD_LOGIC;
  signal \counter0__74_carry__0_n_4\ : STD_LOGIC;
  signal \counter0__74_carry__0_n_5\ : STD_LOGIC;
  signal \counter0__74_carry__0_n_6\ : STD_LOGIC;
  signal \counter0__74_carry__0_n_7\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__1_n_1\ : STD_LOGIC;
  signal \counter0__74_carry__1_n_2\ : STD_LOGIC;
  signal \counter0__74_carry__1_n_3\ : STD_LOGIC;
  signal \counter0__74_carry__1_n_4\ : STD_LOGIC;
  signal \counter0__74_carry__1_n_5\ : STD_LOGIC;
  signal \counter0__74_carry__1_n_6\ : STD_LOGIC;
  signal \counter0__74_carry__1_n_7\ : STD_LOGIC;
  signal \counter0__74_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__2_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__2_n_1\ : STD_LOGIC;
  signal \counter0__74_carry__2_n_10\ : STD_LOGIC;
  signal \counter0__74_carry__2_n_11\ : STD_LOGIC;
  signal \counter0__74_carry__2_n_12\ : STD_LOGIC;
  signal \counter0__74_carry__2_n_13\ : STD_LOGIC;
  signal \counter0__74_carry__2_n_2\ : STD_LOGIC;
  signal \counter0__74_carry__2_n_3\ : STD_LOGIC;
  signal \counter0__74_carry__2_n_4\ : STD_LOGIC;
  signal \counter0__74_carry__2_n_5\ : STD_LOGIC;
  signal \counter0__74_carry__2_n_6\ : STD_LOGIC;
  signal \counter0__74_carry__2_n_7\ : STD_LOGIC;
  signal \counter0__74_carry__2_n_8\ : STD_LOGIC;
  signal \counter0__74_carry__2_n_9\ : STD_LOGIC;
  signal \counter0__74_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \counter0__74_carry__3_n_10\ : STD_LOGIC;
  signal \counter0__74_carry__3_n_11\ : STD_LOGIC;
  signal \counter0__74_carry__3_n_12\ : STD_LOGIC;
  signal \counter0__74_carry__3_n_13\ : STD_LOGIC;
  signal \counter0__74_carry__3_n_14\ : STD_LOGIC;
  signal \counter0__74_carry__3_n_15\ : STD_LOGIC;
  signal \counter0__74_carry__3_n_2\ : STD_LOGIC;
  signal \counter0__74_carry__3_n_3\ : STD_LOGIC;
  signal \counter0__74_carry__3_n_4\ : STD_LOGIC;
  signal \counter0__74_carry__3_n_5\ : STD_LOGIC;
  signal \counter0__74_carry__3_n_6\ : STD_LOGIC;
  signal \counter0__74_carry__3_n_7\ : STD_LOGIC;
  signal \counter0__74_carry__3_n_9\ : STD_LOGIC;
  signal \counter0__74_carry_i_1_n_0\ : STD_LOGIC;
  signal \counter0__74_carry_i_2_n_0\ : STD_LOGIC;
  signal \counter0__74_carry_i_3_n_0\ : STD_LOGIC;
  signal \counter0__74_carry_i_4_n_0\ : STD_LOGIC;
  signal \counter0__74_carry_i_5_n_0\ : STD_LOGIC;
  signal \counter0__74_carry_i_6_n_0\ : STD_LOGIC;
  signal \counter0__74_carry_i_7_n_0\ : STD_LOGIC;
  signal \counter0__74_carry_i_8_n_0\ : STD_LOGIC;
  signal \counter0__74_carry_i_9_n_0\ : STD_LOGIC;
  signal \counter0__74_carry_n_0\ : STD_LOGIC;
  signal \counter0__74_carry_n_1\ : STD_LOGIC;
  signal \counter0__74_carry_n_2\ : STD_LOGIC;
  signal \counter0__74_carry_n_3\ : STD_LOGIC;
  signal \counter0__74_carry_n_4\ : STD_LOGIC;
  signal \counter0__74_carry_n_5\ : STD_LOGIC;
  signal \counter0__74_carry_n_6\ : STD_LOGIC;
  signal \counter0__74_carry_n_7\ : STD_LOGIC;
  signal \counter0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_10\ : STD_LOGIC;
  signal \counter0_carry__0_n_11\ : STD_LOGIC;
  signal \counter0_carry__0_n_12\ : STD_LOGIC;
  signal \counter0_carry__0_n_13\ : STD_LOGIC;
  signal \counter0_carry__0_n_14\ : STD_LOGIC;
  signal \counter0_carry__0_n_15\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__0_n_4\ : STD_LOGIC;
  signal \counter0_carry__0_n_5\ : STD_LOGIC;
  signal \counter0_carry__0_n_6\ : STD_LOGIC;
  signal \counter0_carry__0_n_7\ : STD_LOGIC;
  signal \counter0_carry__0_n_8\ : STD_LOGIC;
  signal \counter0_carry__0_n_9\ : STD_LOGIC;
  signal \counter0_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_10\ : STD_LOGIC;
  signal \counter0_carry__1_n_11\ : STD_LOGIC;
  signal \counter0_carry__1_n_12\ : STD_LOGIC;
  signal \counter0_carry__1_n_13\ : STD_LOGIC;
  signal \counter0_carry__1_n_14\ : STD_LOGIC;
  signal \counter0_carry__1_n_15\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_4\ : STD_LOGIC;
  signal \counter0_carry__1_n_5\ : STD_LOGIC;
  signal \counter0_carry__1_n_6\ : STD_LOGIC;
  signal \counter0_carry__1_n_7\ : STD_LOGIC;
  signal \counter0_carry__1_n_8\ : STD_LOGIC;
  signal \counter0_carry__1_n_9\ : STD_LOGIC;
  signal \counter0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_13\ : STD_LOGIC;
  signal \counter0_carry__2_n_14\ : STD_LOGIC;
  signal \counter0_carry__2_n_15\ : STD_LOGIC;
  signal \counter0_carry__2_n_4\ : STD_LOGIC;
  signal \counter0_carry__2_n_6\ : STD_LOGIC;
  signal \counter0_carry__2_n_7\ : STD_LOGIC;
  signal counter0_carry_i_10_n_0 : STD_LOGIC;
  signal counter0_carry_i_11_n_0 : STD_LOGIC;
  signal counter0_carry_i_1_n_0 : STD_LOGIC;
  signal counter0_carry_i_2_n_0 : STD_LOGIC;
  signal counter0_carry_i_3_n_0 : STD_LOGIC;
  signal counter0_carry_i_4_n_0 : STD_LOGIC;
  signal counter0_carry_i_5_n_0 : STD_LOGIC;
  signal counter0_carry_i_6_n_0 : STD_LOGIC;
  signal counter0_carry_i_7_n_0 : STD_LOGIC;
  signal counter0_carry_i_8_n_0 : STD_LOGIC;
  signal counter0_carry_i_9_n_0 : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_10 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter0_carry_n_4 : STD_LOGIC;
  signal counter0_carry_n_5 : STD_LOGIC;
  signal counter0_carry_n_6 : STD_LOGIC;
  signal counter0_carry_n_7 : STD_LOGIC;
  signal counter0_carry_n_8 : STD_LOGIC;
  signal counter0_carry_n_9 : STD_LOGIC;
  signal counter1 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \counter1_carry__0_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_n_1\ : STD_LOGIC;
  signal \counter1_carry__0_n_2\ : STD_LOGIC;
  signal \counter1_carry__0_n_3\ : STD_LOGIC;
  signal \counter1_carry__0_n_4\ : STD_LOGIC;
  signal \counter1_carry__0_n_5\ : STD_LOGIC;
  signal \counter1_carry__0_n_6\ : STD_LOGIC;
  signal \counter1_carry__0_n_7\ : STD_LOGIC;
  signal \counter1_carry__1_n_6\ : STD_LOGIC;
  signal \counter1_carry__1_n_7\ : STD_LOGIC;
  signal counter1_carry_n_0 : STD_LOGIC;
  signal counter1_carry_n_1 : STD_LOGIC;
  signal counter1_carry_n_2 : STD_LOGIC;
  signal counter1_carry_n_3 : STD_LOGIC;
  signal counter1_carry_n_4 : STD_LOGIC;
  signal counter1_carry_n_5 : STD_LOGIC;
  signal counter1_carry_n_6 : STD_LOGIC;
  signal counter1_carry_n_7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \NLW_counter0__154_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_counter0__154_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_counter0__190_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_counter0__190_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_counter0__201_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_counter0__201_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_counter0__214_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_counter0__214_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_counter0__269_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_counter0__269_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_counter0__74_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_counter0__74_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_counter0__74_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_counter0__74_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_counter0__74_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_counter0__74_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_counter0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_counter1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_counter1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter0__214_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0__214_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0__214_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0__74_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0__74_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0__74_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0__74_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0__74_carry__3\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[10]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[11]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[12]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[13]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[14]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[15]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[16]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[17]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[18]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[19]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair5";
begin
  clk_out <= \^clk_out\;
clk_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF10000000"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => clk_out_i_3_n_0,
      I3 => clk_out_i_4_n_0,
      I4 => clk_out_i_5_n_0,
      I5 => \^clk_out\,
      O => clk_out_i_1_n_0
    );
clk_out_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => clk_out_i_2_n_0
    );
clk_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter(10),
      I1 => counter(11),
      I2 => counter(8),
      I3 => counter(9),
      I4 => counter(13),
      I5 => counter(12),
      O => clk_out_i_3_n_0
    );
clk_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter(4),
      I1 => counter(5),
      I2 => counter(2),
      I3 => counter(3),
      I4 => counter(7),
      I5 => counter(6),
      O => clk_out_i_4_n_0
    );
clk_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter(16),
      I1 => counter(17),
      I2 => counter(14),
      I3 => counter(15),
      I4 => counter(19),
      I5 => counter(18),
      O => clk_out_i_5_n_0
    );
clk_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => clk_out_i_1_n_0,
      Q => \^clk_out\
    );
\counter0__154_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter0__154_carry_n_0\,
      CO(6) => \counter0__154_carry_n_1\,
      CO(5) => \counter0__154_carry_n_2\,
      CO(4) => \counter0__154_carry_n_3\,
      CO(3) => \counter0__154_carry_n_4\,
      CO(2) => \counter0__154_carry_n_5\,
      CO(1) => \counter0__154_carry_n_6\,
      CO(0) => \counter0__154_carry_n_7\,
      DI(7) => \counter0__154_carry_i_1_n_0\,
      DI(6) => \counter0__74_carry__3_n_13\,
      DI(5) => \counter0__74_carry__3_n_14\,
      DI(4) => \counter0__74_carry__3_n_15\,
      DI(3) => \counter0__74_carry__2_n_8\,
      DI(2) => \counter0__74_carry__2_n_9\,
      DI(1) => \counter0__74_carry__2_n_10\,
      DI(0) => '0',
      O(7) => \counter0__154_carry_n_8\,
      O(6) => \counter0__154_carry_n_9\,
      O(5) => \counter0__154_carry_n_10\,
      O(4) => \counter0__154_carry_n_11\,
      O(3) => \counter0__154_carry_n_12\,
      O(2) => \counter0__154_carry_n_13\,
      O(1) => \counter0__154_carry_n_14\,
      O(0) => \counter0__154_carry_n_15\,
      S(7) => \counter0__154_carry_i_2_n_0\,
      S(6) => \counter0__154_carry_i_3_n_0\,
      S(5) => \counter0__154_carry_i_4_n_0\,
      S(4) => \counter0__154_carry_i_5_n_0\,
      S(3) => \counter0__154_carry_i_6_n_0\,
      S(2) => \counter0__154_carry_i_7_n_0\,
      S(1) => \counter0__154_carry_i_8_n_0\,
      S(0) => \counter0__74_carry__2_n_11\
    );
\counter0__154_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0__154_carry_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_counter0__154_carry__0_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \counter0__154_carry__0_n_4\,
      CO(2) => \counter0__154_carry__0_n_5\,
      CO(1) => \counter0__154_carry__0_n_6\,
      CO(0) => \counter0__154_carry__0_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => \counter0__154_carry__0_i_1_n_0\,
      DI(2) => \counter0__154_carry__0_i_2_n_0\,
      DI(1) => \counter0__154_carry__0_i_3_n_0\,
      DI(0) => \counter0__154_carry__0_i_4_n_0\,
      O(7 downto 5) => \NLW_counter0__154_carry__0_O_UNCONNECTED\(7 downto 5),
      O(4) => \counter0__154_carry__0_n_11\,
      O(3) => \counter0__154_carry__0_n_12\,
      O(2) => \counter0__154_carry__0_n_13\,
      O(1) => \counter0__154_carry__0_n_14\,
      O(0) => \counter0__154_carry__0_n_15\,
      S(7 downto 5) => B"000",
      S(4) => \counter0__154_carry__0_i_5_n_0\,
      S(3) => \counter0__154_carry__0_i_6_n_0\,
      S(2) => \counter0__154_carry__0_i_7_n_0\,
      S(1) => \counter0__154_carry__0_i_8_n_0\,
      S(0) => \counter0__154_carry__0_i_9_n_0\
    );
\counter0__154_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \counter0__74_carry__3_n_12\,
      I1 => \counter0__74_carry__2_n_9\,
      I2 => \counter0__74_carry__3_n_9\,
      O => \counter0__154_carry__0_i_1_n_0\
    );
\counter0__154_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \counter0__74_carry__2_n_10\,
      I1 => \counter0__74_carry__3_n_13\,
      I2 => \counter0__74_carry__3_n_10\,
      O => \counter0__154_carry__0_i_2_n_0\
    );
\counter0__154_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \counter0__74_carry__2_n_11\,
      I1 => \counter0__74_carry__3_n_14\,
      I2 => \counter0__74_carry__3_n_11\,
      O => \counter0__154_carry__0_i_3_n_0\
    );
\counter0__154_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \counter0__74_carry__2_n_12\,
      I1 => \counter0__74_carry__3_n_15\,
      I2 => \counter0__74_carry__3_n_12\,
      O => \counter0__154_carry__0_i_4_n_0\
    );
\counter0__154_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \counter0__74_carry__2_n_8\,
      I1 => \counter0__74_carry__3_n_11\,
      I2 => \counter0__74_carry__3_n_15\,
      I3 => \counter0__74_carry__3_n_10\,
      O => \counter0__154_carry__0_i_5_n_0\
    );
\counter0__154_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \counter0__74_carry__3_n_9\,
      I1 => \counter0__74_carry__2_n_9\,
      I2 => \counter0__74_carry__3_n_12\,
      I3 => \counter0__74_carry__2_n_8\,
      I4 => \counter0__74_carry__3_n_11\,
      O => \counter0__154_carry__0_i_6_n_0\
    );
\counter0__154_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0__74_carry__3_n_10\,
      I1 => \counter0__74_carry__3_n_13\,
      I2 => \counter0__74_carry__2_n_10\,
      I3 => \counter0__74_carry__3_n_9\,
      I4 => \counter0__74_carry__2_n_9\,
      I5 => \counter0__74_carry__3_n_12\,
      O => \counter0__154_carry__0_i_7_n_0\
    );
\counter0__154_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0__74_carry__3_n_11\,
      I1 => \counter0__74_carry__3_n_14\,
      I2 => \counter0__74_carry__2_n_11\,
      I3 => \counter0__74_carry__3_n_10\,
      I4 => \counter0__74_carry__3_n_13\,
      I5 => \counter0__74_carry__2_n_10\,
      O => \counter0__154_carry__0_i_8_n_0\
    );
\counter0__154_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0__74_carry__3_n_12\,
      I1 => \counter0__74_carry__3_n_15\,
      I2 => \counter0__74_carry__2_n_12\,
      I3 => \counter0__74_carry__3_n_11\,
      I4 => \counter0__74_carry__3_n_14\,
      I5 => \counter0__74_carry__2_n_11\,
      O => \counter0__154_carry__0_i_9_n_0\
    );
\counter0__154_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \counter0__74_carry__3_n_12\,
      I1 => \counter0__74_carry__2_n_12\,
      I2 => \counter0__74_carry__3_n_15\,
      O => \counter0__154_carry_i_1_n_0\
    );
\counter0__154_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \counter0__74_carry__3_n_15\,
      I1 => \counter0__74_carry__2_n_12\,
      I2 => \counter0__74_carry__3_n_12\,
      I3 => \counter0__74_carry__2_n_8\,
      I4 => \counter0__74_carry__2_n_13\,
      O => \counter0__154_carry_i_2_n_0\
    );
\counter0__154_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \counter0__74_carry__2_n_13\,
      I1 => \counter0__74_carry__2_n_8\,
      I2 => \counter0__74_carry__3_n_13\,
      O => \counter0__154_carry_i_3_n_0\
    );
\counter0__154_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter0__74_carry__3_n_14\,
      I1 => \counter0__74_carry__2_n_9\,
      O => \counter0__154_carry_i_4_n_0\
    );
\counter0__154_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter0__74_carry__3_n_15\,
      I1 => \counter0__74_carry__2_n_10\,
      O => \counter0__154_carry_i_5_n_0\
    );
\counter0__154_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter0__74_carry__2_n_8\,
      I1 => \counter0__74_carry__2_n_11\,
      O => \counter0__154_carry_i_6_n_0\
    );
\counter0__154_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter0__74_carry__2_n_9\,
      I1 => \counter0__74_carry__2_n_12\,
      O => \counter0__154_carry_i_7_n_0\
    );
\counter0__154_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter0__74_carry__2_n_10\,
      I1 => \counter0__74_carry__2_n_13\,
      O => \counter0__154_carry_i_8_n_0\
    );
\counter0__190_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_counter0__190_carry_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \counter0__190_carry_n_4\,
      CO(2) => \counter0__190_carry_n_5\,
      CO(1) => \counter0__190_carry_n_6\,
      CO(0) => \counter0__190_carry_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => \counter0__74_carry__2_n_13\,
      DI(2 downto 0) => B"001",
      O(7 downto 5) => \NLW_counter0__190_carry_O_UNCONNECTED\(7 downto 5),
      O(4) => \counter0__190_carry_n_11\,
      O(3) => \counter0__190_carry_n_12\,
      O(2) => \counter0__190_carry_n_13\,
      O(1) => \counter0__190_carry_n_14\,
      O(0) => \counter0__190_carry_n_15\,
      S(7 downto 5) => B"000",
      S(4) => \counter0__190_carry_i_1_n_0\,
      S(3) => \counter0__190_carry_i_2_n_0\,
      S(2) => \counter0__190_carry_i_3_n_0\,
      S(1) => \counter0__190_carry_i_4_n_0\,
      S(0) => \counter0__74_carry__2_n_13\
    );
\counter0__190_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \counter0__74_carry__2_n_12\,
      I1 => \counter0__74_carry__2_n_9\,
      O => \counter0__190_carry_i_1_n_0\
    );
\counter0__190_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \counter0__74_carry__2_n_13\,
      I1 => \counter0__74_carry__2_n_10\,
      O => \counter0__190_carry_i_2_n_0\
    );
\counter0__190_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0__74_carry__2_n_11\,
      O => \counter0__190_carry_i_3_n_0\
    );
\counter0__190_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0__74_carry__2_n_12\,
      O => \counter0__190_carry_i_4_n_0\
    );
\counter0__201_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_counter0__201_carry_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \counter0__201_carry_n_4\,
      CO(2) => \counter0__201_carry_n_5\,
      CO(1) => \counter0__201_carry_n_6\,
      CO(0) => \counter0__201_carry_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => \counter0__74_carry__2_n_13\,
      DI(2) => \counter0__154_carry__0_n_13\,
      DI(1) => \counter0__154_carry__0_n_14\,
      DI(0) => \counter0__154_carry__0_n_15\,
      O(7 downto 5) => \NLW_counter0__201_carry_O_UNCONNECTED\(7 downto 5),
      O(4) => \counter0__201_carry_n_11\,
      O(3) => \counter0__201_carry_n_12\,
      O(2) => \counter0__201_carry_n_13\,
      O(1) => \counter0__201_carry_n_14\,
      O(0) => \counter0__201_carry_n_15\,
      S(7 downto 5) => B"000",
      S(4) => \counter0__201_carry_i_1_n_0\,
      S(3) => \counter0__201_carry_i_2_n_0\,
      S(2) => \counter0__201_carry_i_3_n_0\,
      S(1) => \counter0__201_carry_i_4_n_0\,
      S(0) => \counter0__201_carry_i_5_n_0\
    );
\counter0__201_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => \counter0__154_carry__0_n_12\,
      I1 => \counter0__190_carry_n_12\,
      I2 => \counter0__154_carry__0_n_11\,
      I3 => \counter0__190_carry_n_11\,
      I4 => \counter0__74_carry__2_n_12\,
      O => \counter0__201_carry_i_1_n_0\
    );
\counter0__201_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \counter0__190_carry_n_12\,
      I1 => \counter0__154_carry__0_n_12\,
      I2 => \counter0__74_carry__2_n_13\,
      O => \counter0__201_carry_i_2_n_0\
    );
\counter0__201_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter0__154_carry__0_n_13\,
      I1 => \counter0__190_carry_n_13\,
      O => \counter0__201_carry_i_3_n_0\
    );
\counter0__201_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter0__154_carry__0_n_14\,
      I1 => \counter0__190_carry_n_14\,
      O => \counter0__201_carry_i_4_n_0\
    );
\counter0__201_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter0__154_carry__0_n_15\,
      I1 => \counter0__190_carry_n_15\,
      O => \counter0__201_carry_i_5_n_0\
    );
\counter0__214_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \counter0__214_carry_n_0\,
      CO(6) => \counter0__214_carry_n_1\,
      CO(5) => \counter0__214_carry_n_2\,
      CO(4) => \counter0__214_carry_n_3\,
      CO(3) => \counter0__214_carry_n_4\,
      CO(2) => \counter0__214_carry_n_5\,
      CO(1) => \counter0__214_carry_n_6\,
      CO(0) => \counter0__214_carry_n_7\,
      DI(7 downto 0) => counter1(7 downto 0),
      O(7) => \counter0__214_carry_n_8\,
      O(6) => \counter0__214_carry_n_9\,
      O(5 downto 0) => p_0_in(5 downto 0),
      S(7) => \counter0__214_carry_i_2_n_0\,
      S(6) => \counter0__214_carry_i_3_n_0\,
      S(5) => \counter0__214_carry_i_4_n_0\,
      S(4) => \counter0__214_carry_i_5_n_0\,
      S(3) => \counter0__214_carry_i_6_n_0\,
      S(2) => \counter0__214_carry_i_7_n_0\,
      S(1) => \counter0__214_carry_i_8_n_0\,
      S(0) => counter(0)
    );
\counter0__214_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0__214_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \counter0__214_carry__0_n_0\,
      CO(6) => \counter0__214_carry__0_n_1\,
      CO(5) => \counter0__214_carry__0_n_2\,
      CO(4) => \counter0__214_carry__0_n_3\,
      CO(3) => \counter0__214_carry__0_n_4\,
      CO(2) => \counter0__214_carry__0_n_5\,
      CO(1) => \counter0__214_carry__0_n_6\,
      CO(0) => \counter0__214_carry__0_n_7\,
      DI(7 downto 0) => counter1(15 downto 8),
      O(7) => \counter0__214_carry__0_n_8\,
      O(6) => \counter0__214_carry__0_n_9\,
      O(5) => \counter0__214_carry__0_n_10\,
      O(4) => \counter0__214_carry__0_n_11\,
      O(3) => \counter0__214_carry__0_n_12\,
      O(2) => \counter0__214_carry__0_n_13\,
      O(1) => \counter0__214_carry__0_n_14\,
      O(0) => \counter0__214_carry__0_n_15\,
      S(7) => \counter0__214_carry__0_i_1_n_0\,
      S(6) => \counter0__214_carry__0_i_2_n_0\,
      S(5) => \counter0__214_carry__0_i_3_n_0\,
      S(4) => \counter0__214_carry__0_i_4_n_0\,
      S(3) => \counter0__214_carry__0_i_5_n_0\,
      S(2) => \counter0__214_carry__0_i_6_n_0\,
      S(1) => \counter0__214_carry__0_i_7_n_0\,
      S(0) => \counter0__214_carry__0_i_8_n_0\
    );
\counter0__214_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(15),
      I1 => \counter0__154_carry_n_8\,
      O => \counter0__214_carry__0_i_1_n_0\
    );
\counter0__214_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(14),
      I1 => \counter0__154_carry_n_9\,
      O => \counter0__214_carry__0_i_2_n_0\
    );
\counter0__214_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(13),
      I1 => \counter0__154_carry_n_10\,
      O => \counter0__214_carry__0_i_3_n_0\
    );
\counter0__214_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(12),
      I1 => \counter0__154_carry_n_11\,
      O => \counter0__214_carry__0_i_4_n_0\
    );
\counter0__214_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(11),
      I1 => \counter0__154_carry_n_12\,
      O => \counter0__214_carry__0_i_5_n_0\
    );
\counter0__214_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(10),
      I1 => \counter0__154_carry_n_13\,
      O => \counter0__214_carry__0_i_6_n_0\
    );
\counter0__214_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(9),
      I1 => \counter0__154_carry_n_14\,
      O => \counter0__214_carry__0_i_7_n_0\
    );
\counter0__214_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(8),
      I1 => \counter0__154_carry_n_15\,
      O => \counter0__214_carry__0_i_8_n_0\
    );
\counter0__214_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0__214_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_counter0__214_carry__1_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \counter0__214_carry__1_n_4\,
      CO(2) => \counter0__214_carry__1_n_5\,
      CO(1) => \counter0__214_carry__1_n_6\,
      CO(0) => \counter0__214_carry__1_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3 downto 0) => counter1(19 downto 16),
      O(7 downto 5) => \NLW_counter0__214_carry__1_O_UNCONNECTED\(7 downto 5),
      O(4) => \counter0__214_carry__1_n_11\,
      O(3) => \counter0__214_carry__1_n_12\,
      O(2) => \counter0__214_carry__1_n_13\,
      O(1) => \counter0__214_carry__1_n_14\,
      O(0) => \counter0__214_carry__1_n_15\,
      S(7 downto 5) => B"000",
      S(4) => \counter0__214_carry__1_i_1_n_0\,
      S(3) => \counter0__214_carry__1_i_2_n_0\,
      S(2) => \counter0__214_carry__1_i_3_n_0\,
      S(1) => \counter0__214_carry__1_i_4_n_0\,
      S(0) => \counter0__214_carry__1_i_5_n_0\
    );
\counter0__214_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(20),
      I1 => \counter0__201_carry_n_11\,
      O => \counter0__214_carry__1_i_1_n_0\
    );
\counter0__214_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(19),
      I1 => \counter0__201_carry_n_12\,
      O => \counter0__214_carry__1_i_2_n_0\
    );
\counter0__214_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(18),
      I1 => \counter0__201_carry_n_13\,
      O => \counter0__214_carry__1_i_3_n_0\
    );
\counter0__214_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(17),
      I1 => \counter0__201_carry_n_14\,
      O => \counter0__214_carry__1_i_4_n_0\
    );
\counter0__214_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(16),
      I1 => \counter0__201_carry_n_15\,
      O => \counter0__214_carry__1_i_5_n_0\
    );
\counter0__214_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter1(0)
    );
\counter0__214_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(7),
      I1 => \counter0__74_carry__2_n_12\,
      O => \counter0__214_carry_i_2_n_0\
    );
\counter0__214_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(6),
      I1 => \counter0__74_carry__2_n_13\,
      O => \counter0__214_carry_i_3_n_0\
    );
\counter0__214_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(5),
      O => \counter0__214_carry_i_4_n_0\
    );
\counter0__214_carry_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(4),
      O => \counter0__214_carry_i_5_n_0\
    );
\counter0__214_carry_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(3),
      O => \counter0__214_carry_i_6_n_0\
    );
\counter0__214_carry_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(2),
      O => \counter0__214_carry_i_7_n_0\
    );
\counter0__214_carry_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(1),
      O => \counter0__214_carry_i_8_n_0\
    );
\counter0__269_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \counter0__269_carry_n_0\,
      CO(6) => \counter0__269_carry_n_1\,
      CO(5) => \counter0__269_carry_n_2\,
      CO(4) => \counter0__269_carry_n_3\,
      CO(3) => \counter0__269_carry_n_4\,
      CO(2) => \counter0__269_carry_n_5\,
      CO(1) => \counter0__269_carry_n_6\,
      CO(0) => \counter0__269_carry_n_7\,
      DI(7 downto 0) => B"11110110",
      O(7) => \counter0__269_carry_n_8\,
      O(6) => \counter0__269_carry_n_9\,
      O(5) => \counter0__269_carry_n_10\,
      O(4) => \counter0__269_carry_n_11\,
      O(3) => \counter0__269_carry_n_12\,
      O(2) => \counter0__269_carry_n_13\,
      O(1) => \counter0__269_carry_n_14\,
      O(0) => \counter0__269_carry_n_15\,
      S(7) => \counter0__269_carry_i_1_n_0\,
      S(6) => \counter0__269_carry_i_2_n_0\,
      S(5) => \counter0__269_carry_i_3_n_0\,
      S(4) => \counter0__269_carry_i_4_n_0\,
      S(3) => \counter0__214_carry__0_n_14\,
      S(2) => \counter0__269_carry_i_5_n_0\,
      S(1) => \counter0__269_carry_i_6_n_0\,
      S(0) => \counter0__214_carry_n_9\
    );
\counter0__269_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0__269_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_counter0__269_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \counter0__269_carry__0_n_1\,
      CO(5) => \counter0__269_carry__0_n_2\,
      CO(4) => \counter0__269_carry__0_n_3\,
      CO(3) => \counter0__269_carry__0_n_4\,
      CO(2) => \counter0__269_carry__0_n_5\,
      CO(1) => \counter0__269_carry__0_n_6\,
      CO(0) => \counter0__269_carry__0_n_7\,
      DI(7 downto 0) => B"01000010",
      O(7 downto 6) => \NLW_counter0__269_carry__0_O_UNCONNECTED\(7 downto 6),
      O(5) => \counter0__269_carry__0_n_10\,
      O(4) => \counter0__269_carry__0_n_11\,
      O(3) => \counter0__269_carry__0_n_12\,
      O(2) => \counter0__269_carry__0_n_13\,
      O(1) => \counter0__269_carry__0_n_14\,
      O(0) => \counter0__269_carry__0_n_15\,
      S(7) => '0',
      S(6) => \counter0__269_carry__0_i_1_n_0\,
      S(5) => \counter0__214_carry__1_n_12\,
      S(4) => \counter0__214_carry__1_n_13\,
      S(3) => \counter0__214_carry__1_n_14\,
      S(2) => \counter0__214_carry__1_n_15\,
      S(1) => \counter0__269_carry__0_i_2_n_0\,
      S(0) => \counter0__214_carry__0_n_9\
    );
\counter0__269_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0__214_carry__1_n_11\,
      O => \counter0__269_carry__0_i_1_n_0\
    );
\counter0__269_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0__214_carry__0_n_8\,
      O => \counter0__269_carry__0_i_2_n_0\
    );
\counter0__269_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0__214_carry__0_n_10\,
      O => \counter0__269_carry_i_1_n_0\
    );
\counter0__269_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0__214_carry__0_n_11\,
      O => \counter0__269_carry_i_2_n_0\
    );
\counter0__269_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0__214_carry__0_n_12\,
      O => \counter0__269_carry_i_3_n_0\
    );
\counter0__269_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0__214_carry__0_n_13\,
      O => \counter0__269_carry_i_4_n_0\
    );
\counter0__269_carry_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0__214_carry__0_n_15\,
      O => \counter0__269_carry_i_5_n_0\
    );
\counter0__269_carry_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0__214_carry_n_8\,
      O => \counter0__269_carry_i_6_n_0\
    );
\counter0__74_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter0__74_carry_n_0\,
      CO(6) => \counter0__74_carry_n_1\,
      CO(5) => \counter0__74_carry_n_2\,
      CO(4) => \counter0__74_carry_n_3\,
      CO(3) => \counter0__74_carry_n_4\,
      CO(2) => \counter0__74_carry_n_5\,
      CO(1) => \counter0__74_carry_n_6\,
      CO(0) => \counter0__74_carry_n_7\,
      DI(7) => \counter0__74_carry_i_1_n_0\,
      DI(6 downto 2) => counter1(5 downto 1),
      DI(1) => \counter0__74_carry_i_2_n_0\,
      DI(0) => '0',
      O(7 downto 0) => \NLW_counter0__74_carry_O_UNCONNECTED\(7 downto 0),
      S(7) => \counter0__74_carry_i_3_n_0\,
      S(6) => \counter0__74_carry_i_4_n_0\,
      S(5) => \counter0__74_carry_i_5_n_0\,
      S(4) => \counter0__74_carry_i_6_n_0\,
      S(3) => \counter0__74_carry_i_7_n_0\,
      S(2) => \counter0__74_carry_i_8_n_0\,
      S(1) => \counter0__74_carry_i_9_n_0\,
      S(0) => counter0_carry_n_10
    );
\counter0__74_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0__74_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \counter0__74_carry__0_n_0\,
      CO(6) => \counter0__74_carry__0_n_1\,
      CO(5) => \counter0__74_carry__0_n_2\,
      CO(4) => \counter0__74_carry__0_n_3\,
      CO(3) => \counter0__74_carry__0_n_4\,
      CO(2) => \counter0__74_carry__0_n_5\,
      CO(1) => \counter0__74_carry__0_n_6\,
      CO(0) => \counter0__74_carry__0_n_7\,
      DI(7) => \counter0__74_carry__0_i_1_n_0\,
      DI(6) => \counter0__74_carry__0_i_2_n_0\,
      DI(5) => \counter0__74_carry__0_i_3_n_0\,
      DI(4) => \counter0__74_carry__0_i_4_n_0\,
      DI(3) => \counter0__74_carry__0_i_5_n_0\,
      DI(2) => \counter0__74_carry__0_i_6_n_0\,
      DI(1) => \counter0__74_carry__0_i_7_n_0\,
      DI(0) => \counter0__74_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_counter0__74_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \counter0__74_carry__0_i_9_n_0\,
      S(6) => \counter0__74_carry__0_i_10_n_0\,
      S(5) => \counter0__74_carry__0_i_11_n_0\,
      S(4) => \counter0__74_carry__0_i_12_n_0\,
      S(3) => \counter0__74_carry__0_i_13_n_0\,
      S(2) => \counter0__74_carry__0_i_14_n_0\,
      S(1) => \counter0__74_carry__0_i_15_n_0\,
      S(0) => \counter0__74_carry__0_i_16_n_0\
    );
\counter0__74_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(13),
      I1 => counter1(8),
      I2 => \counter0_carry__1_n_12\,
      O => \counter0__74_carry__0_i_1_n_0\
    );
\counter0__74_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0_carry__1_n_13\,
      I1 => counter1(7),
      I2 => counter1(12),
      I3 => \counter0_carry__1_n_12\,
      I4 => counter1(8),
      I5 => counter1(13),
      O => \counter0__74_carry__0_i_10_n_0\
    );
\counter0__74_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0_carry__1_n_14\,
      I1 => counter1(6),
      I2 => counter1(11),
      I3 => \counter0_carry__1_n_13\,
      I4 => counter1(7),
      I5 => counter1(12),
      O => \counter0__74_carry__0_i_11_n_0\
    );
\counter0__74_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0_carry__1_n_15\,
      I1 => counter1(5),
      I2 => counter1(10),
      I3 => \counter0_carry__1_n_14\,
      I4 => counter1(6),
      I5 => counter1(11),
      O => \counter0__74_carry__0_i_12_n_0\
    );
\counter0__74_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0_carry__0_n_8\,
      I1 => counter1(4),
      I2 => counter1(9),
      I3 => \counter0_carry__1_n_15\,
      I4 => counter1(5),
      I5 => counter1(10),
      O => \counter0__74_carry__0_i_13_n_0\
    );
\counter0__74_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0_carry__0_n_9\,
      I1 => counter1(3),
      I2 => counter1(8),
      I3 => \counter0_carry__0_n_8\,
      I4 => counter1(4),
      I5 => counter1(9),
      O => \counter0__74_carry__0_i_14_n_0\
    );
\counter0__74_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0_carry__0_n_10\,
      I1 => counter1(2),
      I2 => counter1(7),
      I3 => \counter0_carry__0_n_9\,
      I4 => counter1(3),
      I5 => counter1(8),
      O => \counter0__74_carry__0_i_15_n_0\
    );
\counter0__74_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0_carry__0_n_11\,
      I1 => counter1(1),
      I2 => counter1(6),
      I3 => \counter0_carry__0_n_10\,
      I4 => counter1(2),
      I5 => counter1(7),
      O => \counter0__74_carry__0_i_16_n_0\
    );
\counter0__74_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(12),
      I1 => counter1(7),
      I2 => \counter0_carry__1_n_13\,
      O => \counter0__74_carry__0_i_2_n_0\
    );
\counter0__74_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(11),
      I1 => counter1(6),
      I2 => \counter0_carry__1_n_14\,
      O => \counter0__74_carry__0_i_3_n_0\
    );
\counter0__74_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(10),
      I1 => counter1(5),
      I2 => \counter0_carry__1_n_15\,
      O => \counter0__74_carry__0_i_4_n_0\
    );
\counter0__74_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(9),
      I1 => counter1(4),
      I2 => \counter0_carry__0_n_8\,
      O => \counter0__74_carry__0_i_5_n_0\
    );
\counter0__74_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(8),
      I1 => counter1(3),
      I2 => \counter0_carry__0_n_9\,
      O => \counter0__74_carry__0_i_6_n_0\
    );
\counter0__74_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(7),
      I1 => counter1(2),
      I2 => \counter0_carry__0_n_10\,
      O => \counter0__74_carry__0_i_7_n_0\
    );
\counter0__74_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(6),
      I1 => counter1(1),
      I2 => \counter0_carry__0_n_11\,
      O => \counter0__74_carry__0_i_8_n_0\
    );
\counter0__74_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0_carry__1_n_12\,
      I1 => counter1(8),
      I2 => counter1(13),
      I3 => \counter0_carry__1_n_11\,
      I4 => counter1(9),
      I5 => counter1(14),
      O => \counter0__74_carry__0_i_9_n_0\
    );
\counter0__74_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0__74_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \counter0__74_carry__1_n_0\,
      CO(6) => \counter0__74_carry__1_n_1\,
      CO(5) => \counter0__74_carry__1_n_2\,
      CO(4) => \counter0__74_carry__1_n_3\,
      CO(3) => \counter0__74_carry__1_n_4\,
      CO(2) => \counter0__74_carry__1_n_5\,
      CO(1) => \counter0__74_carry__1_n_6\,
      CO(0) => \counter0__74_carry__1_n_7\,
      DI(7) => \counter0__74_carry__1_i_1_n_0\,
      DI(6) => \counter0__74_carry__1_i_2_n_0\,
      DI(5) => \counter0__74_carry__1_i_3_n_0\,
      DI(4) => \counter0__74_carry__1_i_4_n_0\,
      DI(3) => \counter0__74_carry__1_i_5_n_0\,
      DI(2) => \counter0__74_carry__1_i_6_n_0\,
      DI(1) => \counter0__74_carry__1_i_7_n_0\,
      DI(0) => \counter0__74_carry__1_i_8_n_0\,
      O(7 downto 0) => \NLW_counter0__74_carry__1_O_UNCONNECTED\(7 downto 0),
      S(7) => \counter0__74_carry__1_i_9_n_0\,
      S(6) => \counter0__74_carry__1_i_10_n_0\,
      S(5) => \counter0__74_carry__1_i_11_n_0\,
      S(4) => \counter0__74_carry__1_i_12_n_0\,
      S(3) => \counter0__74_carry__1_i_13_n_0\,
      S(2) => \counter0__74_carry__1_i_14_n_0\,
      S(1) => \counter0__74_carry__1_i_15_n_0\,
      S(0) => \counter0__74_carry__1_i_16_n_0\
    );
\counter0__74_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter1(16),
      I1 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__1_i_1_n_0\
    );
\counter0__74_carry__1_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17E8E817"
    )
        port map (
      I0 => \counter0_carry__2_n_13\,
      I1 => counter1(15),
      I2 => counter1(20),
      I3 => \counter0_carry__2_n_4\,
      I4 => counter1(16),
      O => \counter0__74_carry__1_i_10_n_0\
    );
\counter0__74_carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0_carry__2_n_14\,
      I1 => counter1(14),
      I2 => counter1(19),
      I3 => \counter0_carry__2_n_13\,
      I4 => counter1(15),
      I5 => counter1(20),
      O => \counter0__74_carry__1_i_11_n_0\
    );
\counter0__74_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0_carry__2_n_15\,
      I1 => counter1(13),
      I2 => counter1(18),
      I3 => \counter0_carry__2_n_14\,
      I4 => counter1(14),
      I5 => counter1(19),
      O => \counter0__74_carry__1_i_12_n_0\
    );
\counter0__74_carry__1_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0_carry__1_n_8\,
      I1 => counter1(12),
      I2 => counter1(17),
      I3 => \counter0_carry__2_n_15\,
      I4 => counter1(13),
      I5 => counter1(18),
      O => \counter0__74_carry__1_i_13_n_0\
    );
\counter0__74_carry__1_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0_carry__1_n_9\,
      I1 => counter1(11),
      I2 => counter1(16),
      I3 => \counter0_carry__1_n_8\,
      I4 => counter1(12),
      I5 => counter1(17),
      O => \counter0__74_carry__1_i_14_n_0\
    );
\counter0__74_carry__1_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0_carry__1_n_10\,
      I1 => counter1(10),
      I2 => counter1(15),
      I3 => \counter0_carry__1_n_9\,
      I4 => counter1(11),
      I5 => counter1(16),
      O => \counter0__74_carry__1_i_15_n_0\
    );
\counter0__74_carry__1_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \counter0_carry__1_n_11\,
      I1 => counter1(9),
      I2 => counter1(14),
      I3 => \counter0_carry__1_n_10\,
      I4 => counter1(10),
      I5 => counter1(15),
      O => \counter0__74_carry__1_i_16_n_0\
    );
\counter0__74_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(20),
      I1 => counter1(15),
      I2 => \counter0_carry__2_n_13\,
      O => \counter0__74_carry__1_i_2_n_0\
    );
\counter0__74_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(19),
      I1 => counter1(14),
      I2 => \counter0_carry__2_n_14\,
      O => \counter0__74_carry__1_i_3_n_0\
    );
\counter0__74_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(18),
      I1 => counter1(13),
      I2 => \counter0_carry__2_n_15\,
      O => \counter0__74_carry__1_i_4_n_0\
    );
\counter0__74_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(17),
      I1 => counter1(12),
      I2 => \counter0_carry__1_n_8\,
      O => \counter0__74_carry__1_i_5_n_0\
    );
\counter0__74_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(16),
      I1 => counter1(11),
      I2 => \counter0_carry__1_n_9\,
      O => \counter0__74_carry__1_i_6_n_0\
    );
\counter0__74_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(15),
      I1 => counter1(10),
      I2 => \counter0_carry__1_n_10\,
      O => \counter0__74_carry__1_i_7_n_0\
    );
\counter0__74_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => counter1(14),
      I1 => counter1(9),
      I2 => \counter0_carry__1_n_11\,
      O => \counter0__74_carry__1_i_8_n_0\
    );
\counter0__74_carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => counter1(16),
      I1 => \counter0_carry__2_n_4\,
      I2 => counter1(17),
      O => \counter0__74_carry__1_i_9_n_0\
    );
\counter0__74_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0__74_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter0__74_carry__2_n_0\,
      CO(6) => \counter0__74_carry__2_n_1\,
      CO(5) => \counter0__74_carry__2_n_2\,
      CO(4) => \counter0__74_carry__2_n_3\,
      CO(3) => \counter0__74_carry__2_n_4\,
      CO(2) => \counter0__74_carry__2_n_5\,
      CO(1) => \counter0__74_carry__2_n_6\,
      CO(0) => \counter0__74_carry__2_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => \counter0__74_carry__2_i_1_n_0\,
      DI(2) => \counter0__74_carry__2_i_2_n_0\,
      DI(1) => \counter0__74_carry__2_i_3_n_0\,
      DI(0) => \counter0__74_carry__2_i_4_n_0\,
      O(7) => \counter0__74_carry__2_n_8\,
      O(6) => \counter0__74_carry__2_n_9\,
      O(5) => \counter0__74_carry__2_n_10\,
      O(4) => \counter0__74_carry__2_n_11\,
      O(3) => \counter0__74_carry__2_n_12\,
      O(2) => \counter0__74_carry__2_n_13\,
      O(1 downto 0) => \NLW_counter0__74_carry__2_O_UNCONNECTED\(1 downto 0),
      S(7) => \counter0__74_carry__2_i_5_n_0\,
      S(6) => \counter0__74_carry__2_i_6_n_0\,
      S(5) => \counter0__74_carry__2_i_7_n_0\,
      S(4) => \counter0__74_carry__2_i_8_n_0\,
      S(3) => \counter0__74_carry__2_i_9_n_0\,
      S(2) => \counter0__74_carry__2_i_10_n_0\,
      S(1) => \counter0__74_carry__2_i_11_n_0\,
      S(0) => \counter0__74_carry__2_i_12_n_0\
    );
\counter0__74_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__2_i_1_n_0\
    );
\counter0__74_carry__2_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => counter1(19),
      I1 => \counter0_carry__2_n_4\,
      I2 => counter1(20),
      O => \counter0__74_carry__2_i_10_n_0\
    );
\counter0__74_carry__2_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => counter1(18),
      I1 => \counter0_carry__2_n_4\,
      I2 => counter1(19),
      O => \counter0__74_carry__2_i_11_n_0\
    );
\counter0__74_carry__2_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => counter1(17),
      I1 => \counter0_carry__2_n_4\,
      I2 => counter1(18),
      O => \counter0__74_carry__2_i_12_n_0\
    );
\counter0__74_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter1(19),
      I1 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__2_i_2_n_0\
    );
\counter0__74_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter1(18),
      I1 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__2_i_3_n_0\
    );
\counter0__74_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter1(17),
      I1 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__2_i_4_n_0\
    );
\counter0__74_carry__2_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__2_i_5_n_0\
    );
\counter0__74_carry__2_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__2_i_6_n_0\
    );
\counter0__74_carry__2_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__2_i_7_n_0\
    );
\counter0__74_carry__2_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__2_i_8_n_0\
    );
\counter0__74_carry__2_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(20),
      I1 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__2_i_9_n_0\
    );
\counter0__74_carry__3\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0__74_carry__2_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_counter0__74_carry__3_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \counter0__74_carry__3_n_2\,
      CO(4) => \counter0__74_carry__3_n_3\,
      CO(3) => \counter0__74_carry__3_n_4\,
      CO(2) => \counter0__74_carry__3_n_5\,
      CO(1) => \counter0__74_carry__3_n_6\,
      CO(0) => \counter0__74_carry__3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_counter0__74_carry__3_O_UNCONNECTED\(7),
      O(6) => \counter0__74_carry__3_n_9\,
      O(5) => \counter0__74_carry__3_n_10\,
      O(4) => \counter0__74_carry__3_n_11\,
      O(3) => \counter0__74_carry__3_n_12\,
      O(2) => \counter0__74_carry__3_n_13\,
      O(1) => \counter0__74_carry__3_n_14\,
      O(0) => \counter0__74_carry__3_n_15\,
      S(7) => '0',
      S(6) => \counter0__74_carry__3_i_1_n_0\,
      S(5) => \counter0__74_carry__3_i_2_n_0\,
      S(4) => \counter0__74_carry__3_i_3_n_0\,
      S(3) => \counter0__74_carry__3_i_4_n_0\,
      S(2) => \counter0__74_carry__3_i_5_n_0\,
      S(1) => \counter0__74_carry__3_i_6_n_0\,
      S(0) => \counter0__74_carry__3_i_7_n_0\
    );
\counter0__74_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__3_i_1_n_0\
    );
\counter0__74_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__3_i_2_n_0\
    );
\counter0__74_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__3_i_3_n_0\
    );
\counter0__74_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__3_i_4_n_0\
    );
\counter0__74_carry__3_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__3_i_5_n_0\
    );
\counter0__74_carry__3_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__3_i_6_n_0\
    );
\counter0__74_carry__3_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter0_carry__2_n_4\,
      O => \counter0__74_carry__3_i_7_n_0\
    );
\counter0__74_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => counter1(6),
      I1 => \counter0_carry__0_n_11\,
      I2 => counter1(1),
      O => \counter0__74_carry_i_1_n_0\
    );
\counter0__74_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => \counter0__74_carry_i_2_n_0\
    );
\counter0__74_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96699696"
    )
        port map (
      I0 => counter1(1),
      I1 => \counter0_carry__0_n_11\,
      I2 => counter1(6),
      I3 => counter(0),
      I4 => \counter0_carry__0_n_12\,
      O => \counter0__74_carry_i_3_n_0\
    );
\counter0__74_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \counter0_carry__0_n_12\,
      I1 => counter(0),
      I2 => counter1(5),
      O => \counter0__74_carry_i_4_n_0\
    );
\counter0__74_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter1(4),
      I1 => \counter0_carry__0_n_13\,
      O => \counter0__74_carry_i_5_n_0\
    );
\counter0__74_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter1(3),
      I1 => \counter0_carry__0_n_14\,
      O => \counter0__74_carry_i_6_n_0\
    );
\counter0__74_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter1(2),
      I1 => \counter0_carry__0_n_15\,
      O => \counter0__74_carry_i_7_n_0\
    );
\counter0__74_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter1(1),
      I1 => counter0_carry_n_8,
      O => \counter0__74_carry_i_8_n_0\
    );
\counter0__74_carry_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter(0),
      I1 => counter0_carry_n_9,
      O => \counter0__74_carry_i_9_n_0\
    );
counter0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => counter0_carry_n_0,
      CO(6) => counter0_carry_n_1,
      CO(5) => counter0_carry_n_2,
      CO(4) => counter0_carry_n_3,
      CO(3) => counter0_carry_n_4,
      CO(2) => counter0_carry_n_5,
      CO(1) => counter0_carry_n_6,
      CO(0) => counter0_carry_n_7,
      DI(7) => counter0_carry_i_1_n_0,
      DI(6) => counter0_carry_i_2_n_0,
      DI(5 downto 3) => counter1(3 downto 1),
      DI(2) => counter0_carry_i_3_n_0,
      DI(1 downto 0) => B"01",
      O(7) => counter0_carry_n_8,
      O(6) => counter0_carry_n_9,
      O(5) => counter0_carry_n_10,
      O(4 downto 0) => NLW_counter0_carry_O_UNCONNECTED(4 downto 0),
      S(7) => counter0_carry_i_4_n_0,
      S(6) => counter0_carry_i_5_n_0,
      S(5) => counter0_carry_i_6_n_0,
      S(4) => counter0_carry_i_7_n_0,
      S(3) => counter0_carry_i_8_n_0,
      S(2) => counter0_carry_i_9_n_0,
      S(1) => counter0_carry_i_10_n_0,
      S(0) => counter0_carry_i_11_n_0
    );
\counter0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => counter0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \counter0_carry__0_n_0\,
      CO(6) => \counter0_carry__0_n_1\,
      CO(5) => \counter0_carry__0_n_2\,
      CO(4) => \counter0_carry__0_n_3\,
      CO(3) => \counter0_carry__0_n_4\,
      CO(2) => \counter0_carry__0_n_5\,
      CO(1) => \counter0_carry__0_n_6\,
      CO(0) => \counter0_carry__0_n_7\,
      DI(7) => \counter0_carry__0_i_1_n_0\,
      DI(6) => \counter0_carry__0_i_2_n_0\,
      DI(5) => \counter0_carry__0_i_3_n_0\,
      DI(4) => \counter0_carry__0_i_4_n_0\,
      DI(3) => \counter0_carry__0_i_5_n_0\,
      DI(2) => \counter0_carry__0_i_6_n_0\,
      DI(1) => \counter0_carry__0_i_7_n_0\,
      DI(0) => \counter0_carry__0_i_8_n_0\,
      O(7) => \counter0_carry__0_n_8\,
      O(6) => \counter0_carry__0_n_9\,
      O(5) => \counter0_carry__0_n_10\,
      O(4) => \counter0_carry__0_n_11\,
      O(3) => \counter0_carry__0_n_12\,
      O(2) => \counter0_carry__0_n_13\,
      O(1) => \counter0_carry__0_n_14\,
      O(0) => \counter0_carry__0_n_15\,
      S(7) => \counter0_carry__0_i_9_n_0\,
      S(6) => \counter0_carry__0_i_10_n_0\,
      S(5) => \counter0_carry__0_i_11_n_0\,
      S(4) => \counter0_carry__0_i_12_n_0\,
      S(3) => \counter0_carry__0_i_13_n_0\,
      S(2) => \counter0_carry__0_i_14_n_0\,
      S(1) => \counter0_carry__0_i_15_n_0\,
      S(0) => \counter0_carry__0_i_16_n_0\
    );
\counter0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(14),
      I1 => counter1(12),
      I2 => counter1(9),
      O => \counter0_carry__0_i_1_n_0\
    );
\counter0_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => counter1(8),
      I1 => counter1(11),
      I2 => counter1(13),
      I3 => counter1(12),
      I4 => counter1(9),
      I5 => counter1(14),
      O => \counter0_carry__0_i_10_n_0\
    );
\counter0_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => counter1(7),
      I1 => counter1(10),
      I2 => counter1(12),
      I3 => counter1(11),
      I4 => counter1(8),
      I5 => counter1(13),
      O => \counter0_carry__0_i_11_n_0\
    );
\counter0_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => counter1(6),
      I1 => counter1(9),
      I2 => counter1(11),
      I3 => counter1(10),
      I4 => counter1(7),
      I5 => counter1(12),
      O => \counter0_carry__0_i_12_n_0\
    );
\counter0_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => counter1(5),
      I1 => counter1(8),
      I2 => counter1(10),
      I3 => counter1(9),
      I4 => counter1(6),
      I5 => counter1(11),
      O => \counter0_carry__0_i_13_n_0\
    );
\counter0_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => counter1(4),
      I1 => counter1(7),
      I2 => counter1(9),
      I3 => counter1(8),
      I4 => counter1(5),
      I5 => counter1(10),
      O => \counter0_carry__0_i_14_n_0\
    );
\counter0_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => counter1(3),
      I1 => counter1(6),
      I2 => counter1(8),
      I3 => counter1(7),
      I4 => counter1(4),
      I5 => counter1(9),
      O => \counter0_carry__0_i_15_n_0\
    );
\counter0_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => counter1(2),
      I1 => counter1(5),
      I2 => counter1(7),
      I3 => counter1(6),
      I4 => counter1(3),
      I5 => counter1(8),
      O => \counter0_carry__0_i_16_n_0\
    );
\counter0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(13),
      I1 => counter1(11),
      I2 => counter1(8),
      O => \counter0_carry__0_i_2_n_0\
    );
\counter0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(12),
      I1 => counter1(10),
      I2 => counter1(7),
      O => \counter0_carry__0_i_3_n_0\
    );
\counter0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(11),
      I1 => counter1(9),
      I2 => counter1(6),
      O => \counter0_carry__0_i_4_n_0\
    );
\counter0_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(10),
      I1 => counter1(8),
      I2 => counter1(5),
      O => \counter0_carry__0_i_5_n_0\
    );
\counter0_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(9),
      I1 => counter1(7),
      I2 => counter1(4),
      O => \counter0_carry__0_i_6_n_0\
    );
\counter0_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(8),
      I1 => counter1(6),
      I2 => counter1(3),
      O => \counter0_carry__0_i_7_n_0\
    );
\counter0_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(7),
      I1 => counter1(5),
      I2 => counter1(2),
      O => \counter0_carry__0_i_8_n_0\
    );
\counter0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => counter1(9),
      I1 => counter1(12),
      I2 => counter1(14),
      I3 => counter1(13),
      I4 => counter1(10),
      I5 => counter1(15),
      O => \counter0_carry__0_i_9_n_0\
    );
\counter0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \counter0_carry__1_n_0\,
      CO(6) => \counter0_carry__1_n_1\,
      CO(5) => \counter0_carry__1_n_2\,
      CO(4) => \counter0_carry__1_n_3\,
      CO(3) => \counter0_carry__1_n_4\,
      CO(2) => \counter0_carry__1_n_5\,
      CO(1) => \counter0_carry__1_n_6\,
      CO(0) => \counter0_carry__1_n_7\,
      DI(7) => \counter0_carry__1_i_1_n_0\,
      DI(6) => \counter0_carry__1_i_2_n_0\,
      DI(5) => \counter0_carry__1_i_3_n_0\,
      DI(4) => \counter0_carry__1_i_4_n_0\,
      DI(3) => \counter0_carry__1_i_5_n_0\,
      DI(2) => \counter0_carry__1_i_6_n_0\,
      DI(1) => \counter0_carry__1_i_7_n_0\,
      DI(0) => \counter0_carry__1_i_8_n_0\,
      O(7) => \counter0_carry__1_n_8\,
      O(6) => \counter0_carry__1_n_9\,
      O(5) => \counter0_carry__1_n_10\,
      O(4) => \counter0_carry__1_n_11\,
      O(3) => \counter0_carry__1_n_12\,
      O(2) => \counter0_carry__1_n_13\,
      O(1) => \counter0_carry__1_n_14\,
      O(0) => \counter0_carry__1_n_15\,
      S(7) => \counter0_carry__1_i_9_n_0\,
      S(6) => \counter0_carry__1_i_10_n_0\,
      S(5) => \counter0_carry__1_i_11_n_0\,
      S(4) => \counter0_carry__1_i_12_n_0\,
      S(3) => \counter0_carry__1_i_13_n_0\,
      S(2) => \counter0_carry__1_i_14_n_0\,
      S(1) => \counter0_carry__1_i_15_n_0\,
      S(0) => \counter0_carry__1_i_16_n_0\
    );
\counter0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(18),
      O => \counter0_carry__1_i_1_n_0\
    );
\counter0_carry__1_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => counter1(19),
      I1 => counter1(16),
      I2 => counter1(20),
      I3 => counter1(17),
      O => \counter0_carry__1_i_10_n_0\
    );
\counter0_carry__1_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => counter1(15),
      I1 => counter1(18),
      I2 => counter1(20),
      I3 => counter1(19),
      I4 => counter1(16),
      O => \counter0_carry__1_i_11_n_0\
    );
\counter0_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => counter1(14),
      I1 => counter1(17),
      I2 => counter1(19),
      I3 => counter1(18),
      I4 => counter1(15),
      I5 => counter1(20),
      O => \counter0_carry__1_i_12_n_0\
    );
\counter0_carry__1_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => counter1(13),
      I1 => counter1(16),
      I2 => counter1(18),
      I3 => counter1(17),
      I4 => counter1(14),
      I5 => counter1(19),
      O => \counter0_carry__1_i_13_n_0\
    );
\counter0_carry__1_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => counter1(12),
      I1 => counter1(15),
      I2 => counter1(17),
      I3 => counter1(16),
      I4 => counter1(13),
      I5 => counter1(18),
      O => \counter0_carry__1_i_14_n_0\
    );
\counter0_carry__1_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => counter1(11),
      I1 => counter1(14),
      I2 => counter1(16),
      I3 => counter1(15),
      I4 => counter1(12),
      I5 => counter1(17),
      O => \counter0_carry__1_i_15_n_0\
    );
\counter0_carry__1_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => counter1(10),
      I1 => counter1(13),
      I2 => counter1(15),
      I3 => counter1(14),
      I4 => counter1(11),
      I5 => counter1(16),
      O => \counter0_carry__1_i_16_n_0\
    );
\counter0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter1(16),
      I1 => counter1(19),
      O => \counter0_carry__1_i_2_n_0\
    );
\counter0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(20),
      I1 => counter1(18),
      I2 => counter1(15),
      O => \counter0_carry__1_i_3_n_0\
    );
\counter0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(19),
      I1 => counter1(17),
      I2 => counter1(14),
      O => \counter0_carry__1_i_4_n_0\
    );
\counter0_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(18),
      I1 => counter1(16),
      I2 => counter1(13),
      O => \counter0_carry__1_i_5_n_0\
    );
\counter0_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(17),
      I1 => counter1(15),
      I2 => counter1(12),
      O => \counter0_carry__1_i_6_n_0\
    );
\counter0_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(16),
      I1 => counter1(14),
      I2 => counter1(11),
      O => \counter0_carry__1_i_7_n_0\
    );
\counter0_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(15),
      I1 => counter1(13),
      I2 => counter1(10),
      O => \counter0_carry__1_i_8_n_0\
    );
\counter0_carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => counter1(20),
      I1 => counter1(17),
      I2 => counter1(18),
      O => \counter0_carry__1_i_9_n_0\
    );
\counter0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_counter0_carry__2_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \counter0_carry__2_n_4\,
      CO(2) => \NLW_counter0_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \counter0_carry__2_n_6\,
      CO(0) => \counter0_carry__2_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => counter1(20 downto 18),
      O(7 downto 3) => \NLW_counter0_carry__2_O_UNCONNECTED\(7 downto 3),
      O(2) => \counter0_carry__2_n_13\,
      O(1) => \counter0_carry__2_n_14\,
      O(0) => \counter0_carry__2_n_15\,
      S(7 downto 3) => B"00001",
      S(2) => \counter0_carry__2_i_1_n_0\,
      S(1) => \counter0_carry__2_i_2_n_0\,
      S(0) => \counter0_carry__2_i_3_n_0\
    );
\counter0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(20),
      O => \counter0_carry__2_i_1_n_0\
    );
\counter0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(19),
      I1 => counter1(20),
      O => \counter0_carry__2_i_2_n_0\
    );
\counter0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(18),
      I1 => counter1(19),
      O => \counter0_carry__2_i_3_n_0\
    );
counter0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => counter1(6),
      I1 => counter1(4),
      I2 => counter1(1),
      O => counter0_carry_i_1_n_0
    );
counter0_carry_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter1(1),
      O => counter0_carry_i_10_n_0
    );
counter0_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter0_carry_i_11_n_0
    );
counter0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => counter1(6),
      I1 => counter1(4),
      I2 => counter1(1),
      O => counter0_carry_i_2_n_0
    );
counter0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter0_carry_i_3_n_0
    );
counter0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => counter1(1),
      I1 => counter1(4),
      I2 => counter1(6),
      I3 => counter1(5),
      I4 => counter1(2),
      I5 => counter1(7),
      O => counter0_carry_i_4_n_0
    );
counter0_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69696996"
    )
        port map (
      I0 => counter1(1),
      I1 => counter1(4),
      I2 => counter1(6),
      I3 => counter1(5),
      I4 => counter(0),
      O => counter0_carry_i_5_n_0
    );
counter0_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => counter(0),
      I1 => counter1(5),
      I2 => counter1(3),
      O => counter0_carry_i_6_n_0
    );
counter0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(2),
      I1 => counter1(4),
      O => counter0_carry_i_7_n_0
    );
counter0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter1(1),
      I1 => counter1(3),
      O => counter0_carry_i_8_n_0
    );
counter0_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(0),
      I1 => counter1(2),
      O => counter0_carry_i_9_n_0
    );
counter1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => counter(0),
      CI_TOP => '0',
      CO(7) => counter1_carry_n_0,
      CO(6) => counter1_carry_n_1,
      CO(5) => counter1_carry_n_2,
      CO(4) => counter1_carry_n_3,
      CO(3) => counter1_carry_n_4,
      CO(2) => counter1_carry_n_5,
      CO(1) => counter1_carry_n_6,
      CO(0) => counter1_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => counter1(8 downto 1),
      S(7 downto 0) => counter(8 downto 1)
    );
\counter1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => counter1_carry_n_0,
      CI_TOP => '0',
      CO(7) => \counter1_carry__0_n_0\,
      CO(6) => \counter1_carry__0_n_1\,
      CO(5) => \counter1_carry__0_n_2\,
      CO(4) => \counter1_carry__0_n_3\,
      CO(3) => \counter1_carry__0_n_4\,
      CO(2) => \counter1_carry__0_n_5\,
      CO(1) => \counter1_carry__0_n_6\,
      CO(0) => \counter1_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => counter1(16 downto 9),
      S(7 downto 0) => counter(16 downto 9)
    );
\counter1_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter1_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_counter1_carry__1_CO_UNCONNECTED\(7 downto 4),
      CO(3) => counter1(20),
      CO(2) => \NLW_counter1_carry__1_CO_UNCONNECTED\(2),
      CO(1) => \counter1_carry__1_n_6\,
      CO(0) => \counter1_carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_counter1_carry__1_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => counter1(19 downto 17),
      S(7 downto 3) => B"00001",
      S(2 downto 0) => counter(19 downto 17)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter0__269_carry_n_11\,
      I1 => \counter0__269_carry__0_n_1\,
      I2 => \counter0__214_carry__0_n_13\,
      O => p_0_in(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter0__269_carry_n_10\,
      I1 => \counter0__269_carry__0_n_1\,
      I2 => \counter0__214_carry__0_n_12\,
      O => p_0_in(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter0__269_carry_n_9\,
      I1 => \counter0__269_carry__0_n_1\,
      I2 => \counter0__214_carry__0_n_11\,
      O => p_0_in(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter0__269_carry_n_8\,
      I1 => \counter0__269_carry__0_n_1\,
      I2 => \counter0__214_carry__0_n_10\,
      O => p_0_in(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter0__269_carry__0_n_15\,
      I1 => \counter0__269_carry__0_n_1\,
      I2 => \counter0__214_carry__0_n_9\,
      O => p_0_in(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter0__269_carry__0_n_14\,
      I1 => \counter0__269_carry__0_n_1\,
      I2 => \counter0__214_carry__0_n_8\,
      O => p_0_in(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter0__269_carry__0_n_13\,
      I1 => \counter0__269_carry__0_n_1\,
      I2 => \counter0__214_carry__1_n_15\,
      O => p_0_in(16)
    );
\counter[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter0__269_carry__0_n_12\,
      I1 => \counter0__269_carry__0_n_1\,
      I2 => \counter0__214_carry__1_n_14\,
      O => p_0_in(17)
    );
\counter[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter0__269_carry__0_n_11\,
      I1 => \counter0__269_carry__0_n_1\,
      I2 => \counter0__214_carry__1_n_13\,
      O => p_0_in(18)
    );
\counter[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter0__269_carry__0_n_10\,
      I1 => \counter0__269_carry__0_n_1\,
      I2 => \counter0__214_carry__1_n_12\,
      O => p_0_in(19)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter0__269_carry_n_15\,
      I1 => \counter0__269_carry__0_n_1\,
      I2 => \counter0__214_carry_n_9\,
      O => p_0_in(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter0__269_carry_n_14\,
      I1 => \counter0__269_carry__0_n_1\,
      I2 => \counter0__214_carry_n_8\,
      O => p_0_in(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter0__269_carry_n_13\,
      I1 => \counter0__269_carry__0_n_1\,
      I2 => \counter0__214_carry__0_n_15\,
      O => p_0_in(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter0__269_carry_n_12\,
      I1 => \counter0__269_carry__0_n_1\,
      I2 => \counter0__214_carry__0_n_14\,
      O => p_0_in(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(12),
      Q => counter(12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(13),
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(14),
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(15),
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(16),
      Q => counter(16)
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(17),
      Q => counter(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(18),
      Q => counter(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(19),
      Q => counter(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(1),
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(2),
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(4),
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(8),
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => p_0_in(9),
      Q => counter(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hardware_divider_0_1 is
  port (
    clk_in : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hardware_divider_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hardware_divider_0_1 : entity is "hardware_divider_0_1,divider,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of hardware_divider_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of hardware_divider_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of hardware_divider_0_1 : entity is "divider,Vivado 2021.1";
end hardware_divider_0_1;

architecture STRUCTURE of hardware_divider_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.hardware_divider_0_1_divider
     port map (
      clk_in => clk_in,
      clk_out => clk_out,
      rst => rst
    );
end STRUCTURE;
