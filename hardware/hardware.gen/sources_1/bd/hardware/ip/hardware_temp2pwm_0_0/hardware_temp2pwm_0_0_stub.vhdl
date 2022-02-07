-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Sun Feb  6 11:12:27 2022
-- Host        : PC running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/mateusz/KV260/hardware/hardware.gen/sources_1/bd/hardware/ip/hardware_temp2pwm_0_0/hardware_temp2pwm_0_0_stub.vhdl
-- Design      : hardware_temp2pwm_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hardware_temp2pwm_0_0 is
  Port ( 
    rdy : in STD_LOGIC;
    temp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    pwm : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end hardware_temp2pwm_0_0;

architecture stub of hardware_temp2pwm_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rdy,temp[9:0],pwm[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "temp2pwm,Vivado 2021.1";
begin
end;
