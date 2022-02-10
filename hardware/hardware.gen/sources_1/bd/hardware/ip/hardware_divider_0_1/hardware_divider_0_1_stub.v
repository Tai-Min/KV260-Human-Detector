// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Feb  8 11:28:03 2022
// Host        : PC running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/mateusz/KV260/hardware/hardware.gen/sources_1/bd/hardware/ip/hardware_divider_0_1/hardware_divider_0_1_stub.v
// Design      : hardware_divider_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "divider,Vivado 2021.1" *)
module hardware_divider_0_1(clk_in, rst, clk_out)
/* synthesis syn_black_box black_box_pad_pin="clk_in,rst,clk_out" */;
  input clk_in;
  input rst;
  output clk_out;
endmodule
