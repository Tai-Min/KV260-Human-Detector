-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Sun Mar 20 01:34:15 2022
-- Host        : PC running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/mateusz/KV260/hardware/hardware.gen/sources_1/bd/hardware/ip/hardware_clk_wiz_0_2/hardware_clk_wiz_0_2_stub.vhdl
-- Design      : hardware_clk_wiz_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hardware_clk_wiz_0_2 is
  Port ( 
    dpu : out STD_LOGIC;
    dpux2 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end hardware_clk_wiz_0_2;

architecture stub of hardware_clk_wiz_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dpu,dpux2,resetn,locked,clk_in1";
begin
end;
