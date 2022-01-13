// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Jan 13 02:03:14 2021
// Host        : DESKTOP-OELG8MS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/KV260/package/binary_container_1.build/link/vivado/vpl/prj/prj.gen/sources_1/bd/system/ip/system_stepper_0_0/system_stepper_0_0_stub.v
// Design      : system_stepper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "stepper,Vivado 2021.1" *)
module system_stepper_0_0(clk, latch, cmd, force_ena, stop1, stop2, step, dir, ena, 
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
