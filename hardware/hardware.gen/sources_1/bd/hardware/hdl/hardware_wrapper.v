//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Wed Feb  9 21:48:58 2022
//Host        : PC running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target hardware_wrapper.bd
//Design      : hardware_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hardware_wrapper
   (I2C_scl_io,
    I2C_sda_io,
    dir,
    ena,
    fan,
    step,
    stop1,
    stop2);
  inout I2C_scl_io;
  inout I2C_sda_io;
  output dir;
  output ena;
  output fan;
  output step;
  input stop1;
  input stop2;

  wire I2C_scl_i;
  wire I2C_scl_io;
  wire I2C_scl_o;
  wire I2C_scl_t;
  wire I2C_sda_i;
  wire I2C_sda_io;
  wire I2C_sda_o;
  wire I2C_sda_t;
  wire dir;
  wire ena;
  wire fan;
  wire step;
  wire stop1;
  wire stop2;

  IOBUF I2C_scl_iobuf
       (.I(I2C_scl_o),
        .IO(I2C_scl_io),
        .O(I2C_scl_i),
        .T(I2C_scl_t));
  IOBUF I2C_sda_iobuf
       (.I(I2C_sda_o),
        .IO(I2C_sda_io),
        .O(I2C_sda_i),
        .T(I2C_sda_t));
  hardware hardware_i
       (.I2C_scl_i(I2C_scl_i),
        .I2C_scl_o(I2C_scl_o),
        .I2C_scl_t(I2C_scl_t),
        .I2C_sda_i(I2C_sda_i),
        .I2C_sda_o(I2C_sda_o),
        .I2C_sda_t(I2C_sda_t),
        .dir(dir),
        .ena(ena),
        .fan(fan),
        .step(step),
        .stop1(stop1),
        .stop2(stop2));
endmodule
