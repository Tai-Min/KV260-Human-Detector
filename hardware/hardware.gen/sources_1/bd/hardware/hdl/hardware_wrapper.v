//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Sat Feb 26 17:47:28 2022
//Host        : PC running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target hardware_wrapper.bd
//Design      : hardware_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hardware_wrapper
   (dir,
    ena,
    fan,
    step,
    stop1,
    stop2);
  output dir;
  output ena;
  output fan;
  output step;
  input stop1;
  input stop2;

  wire dir;
  wire ena;
  wire fan;
  wire step;
  wire stop1;
  wire stop2;

  hardware hardware_i
       (.dir(dir),
        .ena(ena),
        .fan(fan),
        .step(step),
        .stop1(stop1),
        .stop2(stop2));
endmodule
