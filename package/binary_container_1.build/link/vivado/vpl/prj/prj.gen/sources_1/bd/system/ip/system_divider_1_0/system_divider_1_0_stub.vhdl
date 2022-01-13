-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Wed Jan 13 02:06:10 2021
-- Host        : DESKTOP-OELG8MS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/KV260/package/binary_container_1.build/link/vivado/vpl/prj/prj.gen/sources_1/bd/system/ip/system_divider_1_0/system_divider_1_0_stub.vhdl
-- Design      : system_divider_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_divider_1_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );

end system_divider_1_0;

architecture stub of system_divider_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,rst,clk_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "divider,Vivado 2021.1";
begin
end;
