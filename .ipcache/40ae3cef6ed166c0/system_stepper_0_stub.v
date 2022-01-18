// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Jan 18 07:33:49 2022
// Host        : PC running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_stepper_0_stub.v
// Design      : system_stepper_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "stepper,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, latch, cmd, force_ena, stop1, stop2, step, dir, ena, 
  busy)
/* synthesis syn_black_box black_box_pad_pin="clk,latch,cmd[10:0],force_ena,stop1,stop2,step,dir,ena,busy" */;
  input clk;
  input latch;
  input [10:0]cmd;
  input force_ena;
  input stop1;
  input stop2;
  output step;
  output dir;
  output ena;
  output busy;
endmodule
