//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Wed Jan 12 05:02:40 2022
//Host        : DESKTOP-OELG8MS running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (I2C_scl_io,
    I2C_sda_io,
    dir,
    ena,
    step,
    stop1,
    stop2);
  inout I2C_scl_io;
  inout I2C_sda_io;
  output dir;
  output ena;
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
  system system_i
       (.I2C_scl_i(I2C_scl_i),
        .I2C_scl_o(I2C_scl_o),
        .I2C_scl_t(I2C_scl_t),
        .I2C_sda_i(I2C_sda_i),
        .I2C_sda_o(I2C_sda_o),
        .I2C_sda_t(I2C_sda_t),
        .dir(dir),
        .ena(ena),
        .step(step),
        .stop1(stop1),
        .stop2(stop2));
endmodule
