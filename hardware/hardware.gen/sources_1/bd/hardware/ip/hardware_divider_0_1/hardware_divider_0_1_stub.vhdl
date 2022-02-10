-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Feb  8 11:28:03 2022
-- Host        : PC running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/mateusz/KV260/hardware/hardware.gen/sources_1/bd/hardware/ip/hardware_divider_0_1/hardware_divider_0_1_stub.vhdl
-- Design      : hardware_divider_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hardware_divider_0_1 is
  Port ( 
    clk_in : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );

end hardware_divider_0_1;

architecture stub of hardware_divider_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,rst,clk_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "divider,Vivado 2021.1";
begin
end;
