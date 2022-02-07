-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Sun Feb  6 11:26:27 2022
-- Host        : PC running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hardware_stepper_0_0_stub.vhdl
-- Design      : hardware_stepper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    latch : in STD_LOGIC;
    cmd : in STD_LOGIC_VECTOR ( 10 downto 0 );
    force_ena : in STD_LOGIC;
    stop1 : in STD_LOGIC;
    stop2 : in STD_LOGIC;
    step : out STD_LOGIC;
    dir : out STD_LOGIC;
    ena : out STD_LOGIC;
    busy : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,latch,cmd[10:0],force_ena,stop1,stop2,step,dir,ena,busy";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "stepper,Vivado 2021.1";
begin
end;
