// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Feb  6 11:29:02 2022
// Host        : PC running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mateusz/KV260/hardware/hardware.gen/sources_1/bd/hardware/ip/hardware_divider_0_1/hardware_divider_0_1_sim_netlist.v
// Design      : hardware_divider_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "hardware_divider_0_1,divider,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "divider,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module hardware_divider_0_1
   (clk_in,
    rst,
    clk_out);
  input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output clk_out;

  wire clk_in;
  wire clk_out;
  wire rst;

  hardware_divider_0_1_divider inst
       (.clk_in(clk_in),
        .clk_out(clk_out),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "divider" *) 
module hardware_divider_0_1_divider
   (clk_out,
    clk_in,
    rst);
  output clk_out;
  input clk_in;
  input rst;

  wire clk_in;
  wire clk_out;
  wire clk_out_i_1_n_0;
  wire clk_out_i_2_n_0;
  wire clk_out_i_3_n_0;
  wire clk_out_i_4_n_0;
  wire clk_out_i_5_n_0;
  wire clk_out_i_6_n_0;
  wire [20:0]counter;
  wire counter0__157_carry__0_i_1_n_0;
  wire counter0__157_carry__0_i_2_n_0;
  wire counter0__157_carry__0_i_3_n_0;
  wire counter0__157_carry__0_i_4_n_0;
  wire counter0__157_carry__0_i_5_n_0;
  wire counter0__157_carry__0_i_6_n_0;
  wire counter0__157_carry__0_i_7_n_0;
  wire counter0__157_carry__0_i_8_n_0;
  wire counter0__157_carry__0_i_9_n_0;
  wire counter0__157_carry__0_n_11;
  wire counter0__157_carry__0_n_12;
  wire counter0__157_carry__0_n_13;
  wire counter0__157_carry__0_n_14;
  wire counter0__157_carry__0_n_15;
  wire counter0__157_carry__0_n_4;
  wire counter0__157_carry__0_n_5;
  wire counter0__157_carry__0_n_6;
  wire counter0__157_carry__0_n_7;
  wire counter0__157_carry_i_1_n_0;
  wire counter0__157_carry_i_2_n_0;
  wire counter0__157_carry_i_3_n_0;
  wire counter0__157_carry_i_4_n_0;
  wire counter0__157_carry_i_5_n_0;
  wire counter0__157_carry_i_6_n_0;
  wire counter0__157_carry_i_7_n_0;
  wire counter0__157_carry_i_8_n_0;
  wire counter0__157_carry_n_0;
  wire counter0__157_carry_n_1;
  wire counter0__157_carry_n_10;
  wire counter0__157_carry_n_11;
  wire counter0__157_carry_n_12;
  wire counter0__157_carry_n_13;
  wire counter0__157_carry_n_14;
  wire counter0__157_carry_n_15;
  wire counter0__157_carry_n_2;
  wire counter0__157_carry_n_3;
  wire counter0__157_carry_n_4;
  wire counter0__157_carry_n_5;
  wire counter0__157_carry_n_6;
  wire counter0__157_carry_n_7;
  wire counter0__157_carry_n_8;
  wire counter0__157_carry_n_9;
  wire counter0__193_carry_i_1_n_0;
  wire counter0__193_carry_i_2_n_0;
  wire counter0__193_carry_i_3_n_0;
  wire counter0__193_carry_i_4_n_0;
  wire counter0__193_carry_n_11;
  wire counter0__193_carry_n_12;
  wire counter0__193_carry_n_13;
  wire counter0__193_carry_n_14;
  wire counter0__193_carry_n_15;
  wire counter0__193_carry_n_4;
  wire counter0__193_carry_n_5;
  wire counter0__193_carry_n_6;
  wire counter0__193_carry_n_7;
  wire counter0__204_carry_i_1_n_0;
  wire counter0__204_carry_i_2_n_0;
  wire counter0__204_carry_i_3_n_0;
  wire counter0__204_carry_i_4_n_0;
  wire counter0__204_carry_i_5_n_0;
  wire counter0__204_carry_n_11;
  wire counter0__204_carry_n_12;
  wire counter0__204_carry_n_13;
  wire counter0__204_carry_n_14;
  wire counter0__204_carry_n_15;
  wire counter0__204_carry_n_4;
  wire counter0__204_carry_n_5;
  wire counter0__204_carry_n_6;
  wire counter0__204_carry_n_7;
  wire counter0__217_carry__0_i_1_n_0;
  wire counter0__217_carry__0_i_2_n_0;
  wire counter0__217_carry__0_i_3_n_0;
  wire counter0__217_carry__0_i_4_n_0;
  wire counter0__217_carry__0_i_5_n_0;
  wire counter0__217_carry__0_i_6_n_0;
  wire counter0__217_carry__0_i_7_n_0;
  wire counter0__217_carry__0_i_8_n_0;
  wire counter0__217_carry__0_n_0;
  wire counter0__217_carry__0_n_1;
  wire counter0__217_carry__0_n_10;
  wire counter0__217_carry__0_n_11;
  wire counter0__217_carry__0_n_12;
  wire counter0__217_carry__0_n_13;
  wire counter0__217_carry__0_n_14;
  wire counter0__217_carry__0_n_15;
  wire counter0__217_carry__0_n_2;
  wire counter0__217_carry__0_n_3;
  wire counter0__217_carry__0_n_4;
  wire counter0__217_carry__0_n_5;
  wire counter0__217_carry__0_n_6;
  wire counter0__217_carry__0_n_7;
  wire counter0__217_carry__0_n_8;
  wire counter0__217_carry__0_n_9;
  wire counter0__217_carry__1_i_1_n_0;
  wire counter0__217_carry__1_i_2_n_0;
  wire counter0__217_carry__1_i_3_n_0;
  wire counter0__217_carry__1_i_4_n_0;
  wire counter0__217_carry__1_i_5_n_0;
  wire counter0__217_carry__1_i_6_n_0;
  wire counter0__217_carry__1_n_10;
  wire counter0__217_carry__1_n_11;
  wire counter0__217_carry__1_n_12;
  wire counter0__217_carry__1_n_13;
  wire counter0__217_carry__1_n_14;
  wire counter0__217_carry__1_n_15;
  wire counter0__217_carry__1_n_3;
  wire counter0__217_carry__1_n_4;
  wire counter0__217_carry__1_n_5;
  wire counter0__217_carry__1_n_6;
  wire counter0__217_carry__1_n_7;
  wire counter0__217_carry_i_2_n_0;
  wire counter0__217_carry_i_3_n_0;
  wire counter0__217_carry_i_4_n_0;
  wire counter0__217_carry_i_5_n_0;
  wire counter0__217_carry_i_6_n_0;
  wire counter0__217_carry_i_7_n_0;
  wire counter0__217_carry_i_8_n_0;
  wire counter0__217_carry_n_0;
  wire counter0__217_carry_n_1;
  wire counter0__217_carry_n_2;
  wire counter0__217_carry_n_3;
  wire counter0__217_carry_n_4;
  wire counter0__217_carry_n_5;
  wire counter0__217_carry_n_6;
  wire counter0__217_carry_n_7;
  wire counter0__217_carry_n_8;
  wire counter0__274_carry__0_i_1_n_0;
  wire counter0__274_carry__0_i_2_n_0;
  wire counter0__274_carry__0_n_1;
  wire counter0__274_carry__0_n_10;
  wire counter0__274_carry__0_n_11;
  wire counter0__274_carry__0_n_12;
  wire counter0__274_carry__0_n_13;
  wire counter0__274_carry__0_n_14;
  wire counter0__274_carry__0_n_15;
  wire counter0__274_carry__0_n_2;
  wire counter0__274_carry__0_n_3;
  wire counter0__274_carry__0_n_4;
  wire counter0__274_carry__0_n_5;
  wire counter0__274_carry__0_n_6;
  wire counter0__274_carry__0_n_7;
  wire counter0__274_carry_i_1_n_0;
  wire counter0__274_carry_i_2_n_0;
  wire counter0__274_carry_i_3_n_0;
  wire counter0__274_carry_i_4_n_0;
  wire counter0__274_carry_i_5_n_0;
  wire counter0__274_carry_i_6_n_0;
  wire counter0__274_carry_n_0;
  wire counter0__274_carry_n_1;
  wire counter0__274_carry_n_10;
  wire counter0__274_carry_n_11;
  wire counter0__274_carry_n_12;
  wire counter0__274_carry_n_13;
  wire counter0__274_carry_n_14;
  wire counter0__274_carry_n_15;
  wire counter0__274_carry_n_2;
  wire counter0__274_carry_n_3;
  wire counter0__274_carry_n_4;
  wire counter0__274_carry_n_5;
  wire counter0__274_carry_n_6;
  wire counter0__274_carry_n_7;
  wire counter0__274_carry_n_8;
  wire counter0__274_carry_n_9;
  wire counter0__77_carry__0_i_10_n_0;
  wire counter0__77_carry__0_i_11_n_0;
  wire counter0__77_carry__0_i_12_n_0;
  wire counter0__77_carry__0_i_13_n_0;
  wire counter0__77_carry__0_i_14_n_0;
  wire counter0__77_carry__0_i_15_n_0;
  wire counter0__77_carry__0_i_16_n_0;
  wire counter0__77_carry__0_i_1_n_0;
  wire counter0__77_carry__0_i_2_n_0;
  wire counter0__77_carry__0_i_3_n_0;
  wire counter0__77_carry__0_i_4_n_0;
  wire counter0__77_carry__0_i_5_n_0;
  wire counter0__77_carry__0_i_6_n_0;
  wire counter0__77_carry__0_i_7_n_0;
  wire counter0__77_carry__0_i_8_n_0;
  wire counter0__77_carry__0_i_9_n_0;
  wire counter0__77_carry__0_n_0;
  wire counter0__77_carry__0_n_1;
  wire counter0__77_carry__0_n_2;
  wire counter0__77_carry__0_n_3;
  wire counter0__77_carry__0_n_4;
  wire counter0__77_carry__0_n_5;
  wire counter0__77_carry__0_n_6;
  wire counter0__77_carry__0_n_7;
  wire counter0__77_carry__1_i_10_n_0;
  wire counter0__77_carry__1_i_11_n_0;
  wire counter0__77_carry__1_i_12_n_0;
  wire counter0__77_carry__1_i_13_n_0;
  wire counter0__77_carry__1_i_14_n_0;
  wire counter0__77_carry__1_i_15_n_0;
  wire counter0__77_carry__1_i_16_n_0;
  wire counter0__77_carry__1_i_1_n_0;
  wire counter0__77_carry__1_i_2_n_0;
  wire counter0__77_carry__1_i_3_n_0;
  wire counter0__77_carry__1_i_4_n_0;
  wire counter0__77_carry__1_i_5_n_0;
  wire counter0__77_carry__1_i_6_n_0;
  wire counter0__77_carry__1_i_7_n_0;
  wire counter0__77_carry__1_i_8_n_0;
  wire counter0__77_carry__1_i_9_n_0;
  wire counter0__77_carry__1_n_0;
  wire counter0__77_carry__1_n_1;
  wire counter0__77_carry__1_n_2;
  wire counter0__77_carry__1_n_3;
  wire counter0__77_carry__1_n_4;
  wire counter0__77_carry__1_n_5;
  wire counter0__77_carry__1_n_6;
  wire counter0__77_carry__1_n_7;
  wire counter0__77_carry__2_i_10_n_0;
  wire counter0__77_carry__2_i_11_n_0;
  wire counter0__77_carry__2_i_12_n_0;
  wire counter0__77_carry__2_i_13_n_0;
  wire counter0__77_carry__2_i_1_n_0;
  wire counter0__77_carry__2_i_2_n_0;
  wire counter0__77_carry__2_i_3_n_0;
  wire counter0__77_carry__2_i_4_n_0;
  wire counter0__77_carry__2_i_5_n_0;
  wire counter0__77_carry__2_i_6_n_0;
  wire counter0__77_carry__2_i_7_n_0;
  wire counter0__77_carry__2_i_8_n_0;
  wire counter0__77_carry__2_i_9_n_0;
  wire counter0__77_carry__2_n_0;
  wire counter0__77_carry__2_n_1;
  wire counter0__77_carry__2_n_10;
  wire counter0__77_carry__2_n_11;
  wire counter0__77_carry__2_n_12;
  wire counter0__77_carry__2_n_2;
  wire counter0__77_carry__2_n_3;
  wire counter0__77_carry__2_n_4;
  wire counter0__77_carry__2_n_5;
  wire counter0__77_carry__2_n_6;
  wire counter0__77_carry__2_n_7;
  wire counter0__77_carry__2_n_8;
  wire counter0__77_carry__2_n_9;
  wire counter0__77_carry__3_i_1_n_0;
  wire counter0__77_carry__3_i_2_n_0;
  wire counter0__77_carry__3_i_3_n_0;
  wire counter0__77_carry__3_i_4_n_0;
  wire counter0__77_carry__3_i_5_n_0;
  wire counter0__77_carry__3_i_6_n_0;
  wire counter0__77_carry__3_i_7_n_0;
  wire counter0__77_carry__3_n_10;
  wire counter0__77_carry__3_n_11;
  wire counter0__77_carry__3_n_12;
  wire counter0__77_carry__3_n_13;
  wire counter0__77_carry__3_n_14;
  wire counter0__77_carry__3_n_15;
  wire counter0__77_carry__3_n_2;
  wire counter0__77_carry__3_n_3;
  wire counter0__77_carry__3_n_4;
  wire counter0__77_carry__3_n_5;
  wire counter0__77_carry__3_n_6;
  wire counter0__77_carry__3_n_7;
  wire counter0__77_carry__3_n_9;
  wire counter0__77_carry_i_1_n_0;
  wire counter0__77_carry_i_2_n_0;
  wire counter0__77_carry_i_3_n_0;
  wire counter0__77_carry_i_4_n_0;
  wire counter0__77_carry_i_5_n_0;
  wire counter0__77_carry_i_6_n_0;
  wire counter0__77_carry_i_7_n_0;
  wire counter0__77_carry_i_8_n_0;
  wire counter0__77_carry_i_9_n_0;
  wire counter0__77_carry_n_0;
  wire counter0__77_carry_n_1;
  wire counter0__77_carry_n_2;
  wire counter0__77_carry_n_3;
  wire counter0__77_carry_n_4;
  wire counter0__77_carry_n_5;
  wire counter0__77_carry_n_6;
  wire counter0__77_carry_n_7;
  wire counter0_carry__0_i_10_n_0;
  wire counter0_carry__0_i_11_n_0;
  wire counter0_carry__0_i_12_n_0;
  wire counter0_carry__0_i_13_n_0;
  wire counter0_carry__0_i_14_n_0;
  wire counter0_carry__0_i_15_n_0;
  wire counter0_carry__0_i_16_n_0;
  wire counter0_carry__0_i_1_n_0;
  wire counter0_carry__0_i_2_n_0;
  wire counter0_carry__0_i_3_n_0;
  wire counter0_carry__0_i_4_n_0;
  wire counter0_carry__0_i_5_n_0;
  wire counter0_carry__0_i_6_n_0;
  wire counter0_carry__0_i_7_n_0;
  wire counter0_carry__0_i_8_n_0;
  wire counter0_carry__0_i_9_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_10;
  wire counter0_carry__0_n_11;
  wire counter0_carry__0_n_12;
  wire counter0_carry__0_n_13;
  wire counter0_carry__0_n_14;
  wire counter0_carry__0_n_15;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__0_n_8;
  wire counter0_carry__0_n_9;
  wire counter0_carry__1_i_10_n_0;
  wire counter0_carry__1_i_11_n_0;
  wire counter0_carry__1_i_12_n_0;
  wire counter0_carry__1_i_13_n_0;
  wire counter0_carry__1_i_14_n_0;
  wire counter0_carry__1_i_15_n_0;
  wire counter0_carry__1_i_16_n_0;
  wire counter0_carry__1_i_1_n_0;
  wire counter0_carry__1_i_2_n_0;
  wire counter0_carry__1_i_3_n_0;
  wire counter0_carry__1_i_4_n_0;
  wire counter0_carry__1_i_5_n_0;
  wire counter0_carry__1_i_6_n_0;
  wire counter0_carry__1_i_7_n_0;
  wire counter0_carry__1_i_8_n_0;
  wire counter0_carry__1_i_9_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_10;
  wire counter0_carry__1_n_11;
  wire counter0_carry__1_n_12;
  wire counter0_carry__1_n_13;
  wire counter0_carry__1_n_14;
  wire counter0_carry__1_n_15;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__1_n_8;
  wire counter0_carry__1_n_9;
  wire counter0_carry__2_i_1_n_0;
  wire counter0_carry__2_i_2_n_0;
  wire counter0_carry__2_i_3_n_0;
  wire counter0_carry__2_i_4_n_0;
  wire counter0_carry__2_i_5_n_0;
  wire counter0_carry__2_n_12;
  wire counter0_carry__2_n_13;
  wire counter0_carry__2_n_14;
  wire counter0_carry__2_n_15;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry_i_10_n_0;
  wire counter0_carry_i_11_n_0;
  wire counter0_carry_i_1_n_0;
  wire counter0_carry_i_2_n_0;
  wire counter0_carry_i_3_n_0;
  wire counter0_carry_i_4_n_0;
  wire counter0_carry_i_5_n_0;
  wire counter0_carry_i_6_n_0;
  wire counter0_carry_i_7_n_0;
  wire counter0_carry_i_8_n_0;
  wire counter0_carry_i_9_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_10;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire counter0_carry_n_8;
  wire counter0_carry_n_9;
  wire [21:0]counter1;
  wire counter1_carry__0_n_0;
  wire counter1_carry__0_n_1;
  wire counter1_carry__0_n_2;
  wire counter1_carry__0_n_3;
  wire counter1_carry__0_n_4;
  wire counter1_carry__0_n_5;
  wire counter1_carry__0_n_6;
  wire counter1_carry__0_n_7;
  wire counter1_carry__1_n_5;
  wire counter1_carry__1_n_6;
  wire counter1_carry__1_n_7;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire counter1_carry_n_4;
  wire counter1_carry_n_5;
  wire counter1_carry_n_6;
  wire counter1_carry_n_7;
  wire [20:0]p_0_in;
  wire rst;
  wire [7:4]NLW_counter0__157_carry__0_CO_UNCONNECTED;
  wire [7:5]NLW_counter0__157_carry__0_O_UNCONNECTED;
  wire [7:4]NLW_counter0__193_carry_CO_UNCONNECTED;
  wire [7:5]NLW_counter0__193_carry_O_UNCONNECTED;
  wire [7:4]NLW_counter0__204_carry_CO_UNCONNECTED;
  wire [7:5]NLW_counter0__204_carry_O_UNCONNECTED;
  wire [7:5]NLW_counter0__217_carry__1_CO_UNCONNECTED;
  wire [7:6]NLW_counter0__217_carry__1_O_UNCONNECTED;
  wire [7:7]NLW_counter0__274_carry__0_CO_UNCONNECTED;
  wire [7:6]NLW_counter0__274_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_counter0__77_carry_O_UNCONNECTED;
  wire [7:0]NLW_counter0__77_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_counter0__77_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_counter0__77_carry__2_O_UNCONNECTED;
  wire [7:6]NLW_counter0__77_carry__3_CO_UNCONNECTED;
  wire [7:7]NLW_counter0__77_carry__3_O_UNCONNECTED;
  wire [4:0]NLW_counter0_carry_O_UNCONNECTED;
  wire [7:3]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [7:4]NLW_counter0_carry__2_O_UNCONNECTED;
  wire [7:3]NLW_counter1_carry__1_CO_UNCONNECTED;
  wire [7:4]NLW_counter1_carry__1_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h7FFF8000)) 
    clk_out_i_1
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(clk_out_i_6_n_0),
        .I4(clk_out),
        .O(clk_out_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clk_out_i_2
       (.I0(rst),
        .O(clk_out_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    clk_out_i_3
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .O(clk_out_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_out_i_4
       (.I0(counter[17]),
        .I1(counter[18]),
        .I2(counter[15]),
        .I3(counter[16]),
        .I4(counter[20]),
        .I5(counter[19]),
        .O(clk_out_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_out_i_5
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[3]),
        .I3(counter[4]),
        .I4(counter[8]),
        .I5(counter[7]),
        .O(clk_out_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_out_i_6
       (.I0(counter[11]),
        .I1(counter[12]),
        .I2(counter[9]),
        .I3(counter[10]),
        .I4(counter[14]),
        .I5(counter[13]),
        .O(clk_out_i_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(clk_out_i_1_n_0),
        .Q(clk_out));
  CARRY8 counter0__157_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({counter0__157_carry_n_0,counter0__157_carry_n_1,counter0__157_carry_n_2,counter0__157_carry_n_3,counter0__157_carry_n_4,counter0__157_carry_n_5,counter0__157_carry_n_6,counter0__157_carry_n_7}),
        .DI({counter0__157_carry_i_1_n_0,counter0__77_carry__3_n_12,counter0__77_carry__3_n_13,counter0__77_carry__3_n_14,counter0__77_carry__3_n_15,counter0__77_carry__2_n_8,counter0__77_carry__2_n_9,1'b0}),
        .O({counter0__157_carry_n_8,counter0__157_carry_n_9,counter0__157_carry_n_10,counter0__157_carry_n_11,counter0__157_carry_n_12,counter0__157_carry_n_13,counter0__157_carry_n_14,counter0__157_carry_n_15}),
        .S({counter0__157_carry_i_2_n_0,counter0__157_carry_i_3_n_0,counter0__157_carry_i_4_n_0,counter0__157_carry_i_5_n_0,counter0__157_carry_i_6_n_0,counter0__157_carry_i_7_n_0,counter0__157_carry_i_8_n_0,counter0__77_carry__2_n_10}));
  CARRY8 counter0__157_carry__0
       (.CI(counter0__157_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter0__157_carry__0_CO_UNCONNECTED[7:4],counter0__157_carry__0_n_4,counter0__157_carry__0_n_5,counter0__157_carry__0_n_6,counter0__157_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,counter0__157_carry__0_i_1_n_0,counter0__157_carry__0_i_2_n_0,counter0__157_carry__0_i_3_n_0,counter0__157_carry__0_i_4_n_0}),
        .O({NLW_counter0__157_carry__0_O_UNCONNECTED[7:5],counter0__157_carry__0_n_11,counter0__157_carry__0_n_12,counter0__157_carry__0_n_13,counter0__157_carry__0_n_14,counter0__157_carry__0_n_15}),
        .S({1'b0,1'b0,1'b0,counter0__157_carry__0_i_5_n_0,counter0__157_carry__0_i_6_n_0,counter0__157_carry__0_i_7_n_0,counter0__157_carry__0_i_8_n_0,counter0__157_carry__0_i_9_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    counter0__157_carry__0_i_1
       (.I0(counter0__77_carry__2_n_8),
        .I1(counter0__77_carry__3_n_11),
        .O(counter0__157_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__157_carry__0_i_2
       (.I0(counter0__77_carry__2_n_9),
        .I1(counter0__77_carry__3_n_12),
        .I2(counter0__77_carry__3_n_9),
        .O(counter0__157_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__157_carry__0_i_3
       (.I0(counter0__77_carry__2_n_10),
        .I1(counter0__77_carry__3_n_13),
        .I2(counter0__77_carry__3_n_10),
        .O(counter0__157_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__157_carry__0_i_4
       (.I0(counter0__77_carry__2_n_11),
        .I1(counter0__77_carry__3_n_14),
        .I2(counter0__77_carry__3_n_11),
        .O(counter0__157_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    counter0__157_carry__0_i_5
       (.I0(counter0__77_carry__3_n_15),
        .I1(counter0__77_carry__3_n_10),
        .I2(counter0__77_carry__3_n_14),
        .I3(counter0__77_carry__3_n_9),
        .O(counter0__157_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    counter0__157_carry__0_i_6
       (.I0(counter0__77_carry__3_n_11),
        .I1(counter0__77_carry__2_n_8),
        .I2(counter0__77_carry__3_n_15),
        .I3(counter0__77_carry__3_n_10),
        .O(counter0__157_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    counter0__157_carry__0_i_7
       (.I0(counter0__77_carry__3_n_9),
        .I1(counter0__77_carry__3_n_12),
        .I2(counter0__77_carry__2_n_9),
        .I3(counter0__77_carry__2_n_8),
        .I4(counter0__77_carry__3_n_11),
        .O(counter0__157_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__157_carry__0_i_8
       (.I0(counter0__77_carry__3_n_10),
        .I1(counter0__77_carry__3_n_13),
        .I2(counter0__77_carry__2_n_10),
        .I3(counter0__77_carry__3_n_9),
        .I4(counter0__77_carry__3_n_12),
        .I5(counter0__77_carry__2_n_9),
        .O(counter0__157_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__157_carry__0_i_9
       (.I0(counter0__77_carry__3_n_11),
        .I1(counter0__77_carry__3_n_14),
        .I2(counter0__77_carry__2_n_11),
        .I3(counter0__77_carry__3_n_10),
        .I4(counter0__77_carry__3_n_13),
        .I5(counter0__77_carry__2_n_10),
        .O(counter0__157_carry__0_i_9_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    counter0__157_carry_i_1
       (.I0(counter0__77_carry__3_n_11),
        .I1(counter0__77_carry__2_n_11),
        .I2(counter0__77_carry__3_n_14),
        .O(counter0__157_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    counter0__157_carry_i_2
       (.I0(counter0__77_carry__3_n_14),
        .I1(counter0__77_carry__2_n_11),
        .I2(counter0__77_carry__3_n_11),
        .I3(counter0__77_carry__3_n_15),
        .I4(counter0__77_carry__2_n_12),
        .O(counter0__157_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    counter0__157_carry_i_3
       (.I0(counter0__77_carry__2_n_12),
        .I1(counter0__77_carry__3_n_15),
        .I2(counter0__77_carry__3_n_12),
        .O(counter0__157_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0__157_carry_i_4
       (.I0(counter0__77_carry__3_n_13),
        .I1(counter0__77_carry__2_n_8),
        .O(counter0__157_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0__157_carry_i_5
       (.I0(counter0__77_carry__3_n_14),
        .I1(counter0__77_carry__2_n_9),
        .O(counter0__157_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0__157_carry_i_6
       (.I0(counter0__77_carry__3_n_15),
        .I1(counter0__77_carry__2_n_10),
        .O(counter0__157_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0__157_carry_i_7
       (.I0(counter0__77_carry__2_n_8),
        .I1(counter0__77_carry__2_n_11),
        .O(counter0__157_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0__157_carry_i_8
       (.I0(counter0__77_carry__2_n_9),
        .I1(counter0__77_carry__2_n_12),
        .O(counter0__157_carry_i_8_n_0));
  CARRY8 counter0__193_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_counter0__193_carry_CO_UNCONNECTED[7:4],counter0__193_carry_n_4,counter0__193_carry_n_5,counter0__193_carry_n_6,counter0__193_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,counter0__77_carry__2_n_12,1'b0,1'b0,1'b1}),
        .O({NLW_counter0__193_carry_O_UNCONNECTED[7:5],counter0__193_carry_n_11,counter0__193_carry_n_12,counter0__193_carry_n_13,counter0__193_carry_n_14,counter0__193_carry_n_15}),
        .S({1'b0,1'b0,1'b0,counter0__193_carry_i_1_n_0,counter0__193_carry_i_2_n_0,counter0__193_carry_i_3_n_0,counter0__193_carry_i_4_n_0,counter0__77_carry__2_n_12}));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__193_carry_i_1
       (.I0(counter0__77_carry__2_n_11),
        .I1(counter0__77_carry__2_n_8),
        .O(counter0__193_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__193_carry_i_2
       (.I0(counter0__77_carry__2_n_12),
        .I1(counter0__77_carry__2_n_9),
        .O(counter0__193_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__193_carry_i_3
       (.I0(counter0__77_carry__2_n_10),
        .O(counter0__193_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__193_carry_i_4
       (.I0(counter0__77_carry__2_n_11),
        .O(counter0__193_carry_i_4_n_0));
  CARRY8 counter0__204_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_counter0__204_carry_CO_UNCONNECTED[7:4],counter0__204_carry_n_4,counter0__204_carry_n_5,counter0__204_carry_n_6,counter0__204_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,counter0__77_carry__2_n_12,counter0__157_carry__0_n_13,counter0__157_carry__0_n_14,counter0__157_carry__0_n_15}),
        .O({NLW_counter0__204_carry_O_UNCONNECTED[7:5],counter0__204_carry_n_11,counter0__204_carry_n_12,counter0__204_carry_n_13,counter0__204_carry_n_14,counter0__204_carry_n_15}),
        .S({1'b0,1'b0,1'b0,counter0__204_carry_i_1_n_0,counter0__204_carry_i_2_n_0,counter0__204_carry_i_3_n_0,counter0__204_carry_i_4_n_0,counter0__204_carry_i_5_n_0}));
  LUT5 #(
    .INIT(32'h78878778)) 
    counter0__204_carry_i_1
       (.I0(counter0__157_carry__0_n_12),
        .I1(counter0__193_carry_n_12),
        .I2(counter0__157_carry__0_n_11),
        .I3(counter0__193_carry_n_11),
        .I4(counter0__77_carry__2_n_11),
        .O(counter0__204_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    counter0__204_carry_i_2
       (.I0(counter0__193_carry_n_12),
        .I1(counter0__157_carry__0_n_12),
        .I2(counter0__77_carry__2_n_12),
        .O(counter0__204_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0__204_carry_i_3
       (.I0(counter0__157_carry__0_n_13),
        .I1(counter0__193_carry_n_13),
        .O(counter0__204_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0__204_carry_i_4
       (.I0(counter0__157_carry__0_n_14),
        .I1(counter0__193_carry_n_14),
        .O(counter0__204_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0__204_carry_i_5
       (.I0(counter0__157_carry__0_n_15),
        .I1(counter0__193_carry_n_15),
        .O(counter0__204_carry_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0__217_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({counter0__217_carry_n_0,counter0__217_carry_n_1,counter0__217_carry_n_2,counter0__217_carry_n_3,counter0__217_carry_n_4,counter0__217_carry_n_5,counter0__217_carry_n_6,counter0__217_carry_n_7}),
        .DI(counter1[7:0]),
        .O({counter0__217_carry_n_8,p_0_in[6:0]}),
        .S({counter0__217_carry_i_2_n_0,counter0__217_carry_i_3_n_0,counter0__217_carry_i_4_n_0,counter0__217_carry_i_5_n_0,counter0__217_carry_i_6_n_0,counter0__217_carry_i_7_n_0,counter0__217_carry_i_8_n_0,counter[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0__217_carry__0
       (.CI(counter0__217_carry_n_0),
        .CI_TOP(1'b0),
        .CO({counter0__217_carry__0_n_0,counter0__217_carry__0_n_1,counter0__217_carry__0_n_2,counter0__217_carry__0_n_3,counter0__217_carry__0_n_4,counter0__217_carry__0_n_5,counter0__217_carry__0_n_6,counter0__217_carry__0_n_7}),
        .DI(counter1[15:8]),
        .O({counter0__217_carry__0_n_8,counter0__217_carry__0_n_9,counter0__217_carry__0_n_10,counter0__217_carry__0_n_11,counter0__217_carry__0_n_12,counter0__217_carry__0_n_13,counter0__217_carry__0_n_14,counter0__217_carry__0_n_15}),
        .S({counter0__217_carry__0_i_1_n_0,counter0__217_carry__0_i_2_n_0,counter0__217_carry__0_i_3_n_0,counter0__217_carry__0_i_4_n_0,counter0__217_carry__0_i_5_n_0,counter0__217_carry__0_i_6_n_0,counter0__217_carry__0_i_7_n_0,counter0__217_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry__0_i_1
       (.I0(counter1[15]),
        .I1(counter0__157_carry_n_9),
        .O(counter0__217_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry__0_i_2
       (.I0(counter1[14]),
        .I1(counter0__157_carry_n_10),
        .O(counter0__217_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry__0_i_3
       (.I0(counter1[13]),
        .I1(counter0__157_carry_n_11),
        .O(counter0__217_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry__0_i_4
       (.I0(counter1[12]),
        .I1(counter0__157_carry_n_12),
        .O(counter0__217_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry__0_i_5
       (.I0(counter1[11]),
        .I1(counter0__157_carry_n_13),
        .O(counter0__217_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry__0_i_6
       (.I0(counter1[10]),
        .I1(counter0__157_carry_n_14),
        .O(counter0__217_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry__0_i_7
       (.I0(counter1[9]),
        .I1(counter0__157_carry_n_15),
        .O(counter0__217_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry__0_i_8
       (.I0(counter1[8]),
        .I1(counter0__77_carry__2_n_11),
        .O(counter0__217_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0__217_carry__1
       (.CI(counter0__217_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter0__217_carry__1_CO_UNCONNECTED[7:5],counter0__217_carry__1_n_3,counter0__217_carry__1_n_4,counter0__217_carry__1_n_5,counter0__217_carry__1_n_6,counter0__217_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,counter1[20:16]}),
        .O({NLW_counter0__217_carry__1_O_UNCONNECTED[7:6],counter0__217_carry__1_n_10,counter0__217_carry__1_n_11,counter0__217_carry__1_n_12,counter0__217_carry__1_n_13,counter0__217_carry__1_n_14,counter0__217_carry__1_n_15}),
        .S({1'b0,1'b0,counter0__217_carry__1_i_1_n_0,counter0__217_carry__1_i_2_n_0,counter0__217_carry__1_i_3_n_0,counter0__217_carry__1_i_4_n_0,counter0__217_carry__1_i_5_n_0,counter0__217_carry__1_i_6_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry__1_i_1
       (.I0(counter1[21]),
        .I1(counter0__204_carry_n_11),
        .O(counter0__217_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry__1_i_2
       (.I0(counter1[20]),
        .I1(counter0__204_carry_n_12),
        .O(counter0__217_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry__1_i_3
       (.I0(counter1[19]),
        .I1(counter0__204_carry_n_13),
        .O(counter0__217_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry__1_i_4
       (.I0(counter1[18]),
        .I1(counter0__204_carry_n_14),
        .O(counter0__217_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry__1_i_5
       (.I0(counter1[17]),
        .I1(counter0__204_carry_n_15),
        .O(counter0__217_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry__1_i_6
       (.I0(counter1[16]),
        .I1(counter0__157_carry_n_8),
        .O(counter0__217_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__217_carry_i_1
       (.I0(counter[0]),
        .O(counter1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__217_carry_i_2
       (.I0(counter1[7]),
        .I1(counter0__77_carry__2_n_12),
        .O(counter0__217_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__217_carry_i_3
       (.I0(counter1[6]),
        .O(counter0__217_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__217_carry_i_4
       (.I0(counter1[5]),
        .O(counter0__217_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__217_carry_i_5
       (.I0(counter1[4]),
        .O(counter0__217_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__217_carry_i_6
       (.I0(counter1[3]),
        .O(counter0__217_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__217_carry_i_7
       (.I0(counter1[2]),
        .O(counter0__217_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__217_carry_i_8
       (.I0(counter1[1]),
        .O(counter0__217_carry_i_8_n_0));
  CARRY8 counter0__274_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({counter0__274_carry_n_0,counter0__274_carry_n_1,counter0__274_carry_n_2,counter0__274_carry_n_3,counter0__274_carry_n_4,counter0__274_carry_n_5,counter0__274_carry_n_6,counter0__274_carry_n_7}),
        .DI({1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0}),
        .O({counter0__274_carry_n_8,counter0__274_carry_n_9,counter0__274_carry_n_10,counter0__274_carry_n_11,counter0__274_carry_n_12,counter0__274_carry_n_13,counter0__274_carry_n_14,counter0__274_carry_n_15}),
        .S({counter0__274_carry_i_1_n_0,counter0__274_carry_i_2_n_0,counter0__274_carry_i_3_n_0,counter0__274_carry_i_4_n_0,counter0__217_carry__0_n_13,counter0__274_carry_i_5_n_0,counter0__274_carry_i_6_n_0,counter0__217_carry_n_8}));
  CARRY8 counter0__274_carry__0
       (.CI(counter0__274_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter0__274_carry__0_CO_UNCONNECTED[7],counter0__274_carry__0_n_1,counter0__274_carry__0_n_2,counter0__274_carry__0_n_3,counter0__274_carry__0_n_4,counter0__274_carry__0_n_5,counter0__274_carry__0_n_6,counter0__274_carry__0_n_7}),
        .DI({1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0}),
        .O({NLW_counter0__274_carry__0_O_UNCONNECTED[7:6],counter0__274_carry__0_n_10,counter0__274_carry__0_n_11,counter0__274_carry__0_n_12,counter0__274_carry__0_n_13,counter0__274_carry__0_n_14,counter0__274_carry__0_n_15}),
        .S({1'b0,counter0__274_carry__0_i_1_n_0,counter0__217_carry__1_n_11,counter0__217_carry__1_n_12,counter0__217_carry__1_n_13,counter0__217_carry__1_n_14,counter0__274_carry__0_i_2_n_0,counter0__217_carry__0_n_8}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__274_carry__0_i_1
       (.I0(counter0__217_carry__1_n_10),
        .O(counter0__274_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__274_carry__0_i_2
       (.I0(counter0__217_carry__1_n_15),
        .O(counter0__274_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__274_carry_i_1
       (.I0(counter0__217_carry__0_n_9),
        .O(counter0__274_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__274_carry_i_2
       (.I0(counter0__217_carry__0_n_10),
        .O(counter0__274_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__274_carry_i_3
       (.I0(counter0__217_carry__0_n_11),
        .O(counter0__274_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__274_carry_i_4
       (.I0(counter0__217_carry__0_n_12),
        .O(counter0__274_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__274_carry_i_5
       (.I0(counter0__217_carry__0_n_14),
        .O(counter0__274_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__274_carry_i_6
       (.I0(counter0__217_carry__0_n_15),
        .O(counter0__274_carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0__77_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({counter0__77_carry_n_0,counter0__77_carry_n_1,counter0__77_carry_n_2,counter0__77_carry_n_3,counter0__77_carry_n_4,counter0__77_carry_n_5,counter0__77_carry_n_6,counter0__77_carry_n_7}),
        .DI({counter0__77_carry_i_1_n_0,counter1[5:1],counter0__77_carry_i_2_n_0,1'b0}),
        .O(NLW_counter0__77_carry_O_UNCONNECTED[7:0]),
        .S({counter0__77_carry_i_3_n_0,counter0__77_carry_i_4_n_0,counter0__77_carry_i_5_n_0,counter0__77_carry_i_6_n_0,counter0__77_carry_i_7_n_0,counter0__77_carry_i_8_n_0,counter0__77_carry_i_9_n_0,counter0_carry_n_10}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0__77_carry__0
       (.CI(counter0__77_carry_n_0),
        .CI_TOP(1'b0),
        .CO({counter0__77_carry__0_n_0,counter0__77_carry__0_n_1,counter0__77_carry__0_n_2,counter0__77_carry__0_n_3,counter0__77_carry__0_n_4,counter0__77_carry__0_n_5,counter0__77_carry__0_n_6,counter0__77_carry__0_n_7}),
        .DI({counter0__77_carry__0_i_1_n_0,counter0__77_carry__0_i_2_n_0,counter0__77_carry__0_i_3_n_0,counter0__77_carry__0_i_4_n_0,counter0__77_carry__0_i_5_n_0,counter0__77_carry__0_i_6_n_0,counter0__77_carry__0_i_7_n_0,counter0__77_carry__0_i_8_n_0}),
        .O(NLW_counter0__77_carry__0_O_UNCONNECTED[7:0]),
        .S({counter0__77_carry__0_i_9_n_0,counter0__77_carry__0_i_10_n_0,counter0__77_carry__0_i_11_n_0,counter0__77_carry__0_i_12_n_0,counter0__77_carry__0_i_13_n_0,counter0__77_carry__0_i_14_n_0,counter0__77_carry__0_i_15_n_0,counter0__77_carry__0_i_16_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__0_i_1
       (.I0(counter1[13]),
        .I1(counter1[8]),
        .I2(counter0_carry__1_n_12),
        .O(counter0__77_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__0_i_10
       (.I0(counter0_carry__1_n_13),
        .I1(counter1[7]),
        .I2(counter1[12]),
        .I3(counter0_carry__1_n_12),
        .I4(counter1[8]),
        .I5(counter1[13]),
        .O(counter0__77_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__0_i_11
       (.I0(counter0_carry__1_n_14),
        .I1(counter1[6]),
        .I2(counter1[11]),
        .I3(counter0_carry__1_n_13),
        .I4(counter1[7]),
        .I5(counter1[12]),
        .O(counter0__77_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__0_i_12
       (.I0(counter0_carry__1_n_15),
        .I1(counter1[5]),
        .I2(counter1[10]),
        .I3(counter0_carry__1_n_14),
        .I4(counter1[6]),
        .I5(counter1[11]),
        .O(counter0__77_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__0_i_13
       (.I0(counter0_carry__0_n_8),
        .I1(counter1[4]),
        .I2(counter1[9]),
        .I3(counter0_carry__1_n_15),
        .I4(counter1[5]),
        .I5(counter1[10]),
        .O(counter0__77_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__0_i_14
       (.I0(counter0_carry__0_n_9),
        .I1(counter1[3]),
        .I2(counter1[8]),
        .I3(counter0_carry__0_n_8),
        .I4(counter1[4]),
        .I5(counter1[9]),
        .O(counter0__77_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__0_i_15
       (.I0(counter0_carry__0_n_10),
        .I1(counter1[2]),
        .I2(counter1[7]),
        .I3(counter0_carry__0_n_9),
        .I4(counter1[3]),
        .I5(counter1[8]),
        .O(counter0__77_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__0_i_16
       (.I0(counter0_carry__0_n_11),
        .I1(counter1[1]),
        .I2(counter1[6]),
        .I3(counter0_carry__0_n_10),
        .I4(counter1[2]),
        .I5(counter1[7]),
        .O(counter0__77_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__0_i_2
       (.I0(counter1[12]),
        .I1(counter1[7]),
        .I2(counter0_carry__1_n_13),
        .O(counter0__77_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__0_i_3
       (.I0(counter1[11]),
        .I1(counter1[6]),
        .I2(counter0_carry__1_n_14),
        .O(counter0__77_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__0_i_4
       (.I0(counter1[10]),
        .I1(counter1[5]),
        .I2(counter0_carry__1_n_15),
        .O(counter0__77_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__0_i_5
       (.I0(counter1[9]),
        .I1(counter1[4]),
        .I2(counter0_carry__0_n_8),
        .O(counter0__77_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__0_i_6
       (.I0(counter1[8]),
        .I1(counter1[3]),
        .I2(counter0_carry__0_n_9),
        .O(counter0__77_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__0_i_7
       (.I0(counter1[7]),
        .I1(counter1[2]),
        .I2(counter0_carry__0_n_10),
        .O(counter0__77_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__0_i_8
       (.I0(counter1[6]),
        .I1(counter1[1]),
        .I2(counter0_carry__0_n_11),
        .O(counter0__77_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__0_i_9
       (.I0(counter0_carry__1_n_12),
        .I1(counter1[8]),
        .I2(counter1[13]),
        .I3(counter0_carry__1_n_11),
        .I4(counter1[9]),
        .I5(counter1[14]),
        .O(counter0__77_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0__77_carry__1
       (.CI(counter0__77_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({counter0__77_carry__1_n_0,counter0__77_carry__1_n_1,counter0__77_carry__1_n_2,counter0__77_carry__1_n_3,counter0__77_carry__1_n_4,counter0__77_carry__1_n_5,counter0__77_carry__1_n_6,counter0__77_carry__1_n_7}),
        .DI({counter0__77_carry__1_i_1_n_0,counter0__77_carry__1_i_2_n_0,counter0__77_carry__1_i_3_n_0,counter0__77_carry__1_i_4_n_0,counter0__77_carry__1_i_5_n_0,counter0__77_carry__1_i_6_n_0,counter0__77_carry__1_i_7_n_0,counter0__77_carry__1_i_8_n_0}),
        .O(NLW_counter0__77_carry__1_O_UNCONNECTED[7:0]),
        .S({counter0__77_carry__1_i_9_n_0,counter0__77_carry__1_i_10_n_0,counter0__77_carry__1_i_11_n_0,counter0__77_carry__1_i_12_n_0,counter0__77_carry__1_i_13_n_0,counter0__77_carry__1_i_14_n_0,counter0__77_carry__1_i_15_n_0,counter0__77_carry__1_i_16_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__1_i_1
       (.I0(counter1[21]),
        .I1(counter1[16]),
        .I2(counter0_carry__2_n_12),
        .O(counter0__77_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__1_i_10
       (.I0(counter0_carry__2_n_13),
        .I1(counter1[15]),
        .I2(counter1[20]),
        .I3(counter0_carry__2_n_12),
        .I4(counter1[16]),
        .I5(counter1[21]),
        .O(counter0__77_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__1_i_11
       (.I0(counter0_carry__2_n_14),
        .I1(counter1[14]),
        .I2(counter1[19]),
        .I3(counter0_carry__2_n_13),
        .I4(counter1[15]),
        .I5(counter1[20]),
        .O(counter0__77_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__1_i_12
       (.I0(counter0_carry__2_n_15),
        .I1(counter1[13]),
        .I2(counter1[18]),
        .I3(counter0_carry__2_n_14),
        .I4(counter1[14]),
        .I5(counter1[19]),
        .O(counter0__77_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__1_i_13
       (.I0(counter0_carry__1_n_8),
        .I1(counter1[12]),
        .I2(counter1[17]),
        .I3(counter0_carry__2_n_15),
        .I4(counter1[13]),
        .I5(counter1[18]),
        .O(counter0__77_carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__1_i_14
       (.I0(counter0_carry__1_n_9),
        .I1(counter1[11]),
        .I2(counter1[16]),
        .I3(counter0_carry__1_n_8),
        .I4(counter1[12]),
        .I5(counter1[17]),
        .O(counter0__77_carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__1_i_15
       (.I0(counter0_carry__1_n_10),
        .I1(counter1[10]),
        .I2(counter1[15]),
        .I3(counter0_carry__1_n_9),
        .I4(counter1[11]),
        .I5(counter1[16]),
        .O(counter0__77_carry__1_i_15_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    counter0__77_carry__1_i_16
       (.I0(counter0_carry__1_n_11),
        .I1(counter1[9]),
        .I2(counter1[14]),
        .I3(counter0_carry__1_n_10),
        .I4(counter1[10]),
        .I5(counter1[15]),
        .O(counter0__77_carry__1_i_16_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__1_i_2
       (.I0(counter1[20]),
        .I1(counter1[15]),
        .I2(counter0_carry__2_n_13),
        .O(counter0__77_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__1_i_3
       (.I0(counter1[19]),
        .I1(counter1[14]),
        .I2(counter0_carry__2_n_14),
        .O(counter0__77_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__1_i_4
       (.I0(counter1[18]),
        .I1(counter1[13]),
        .I2(counter0_carry__2_n_15),
        .O(counter0__77_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__1_i_5
       (.I0(counter1[17]),
        .I1(counter1[12]),
        .I2(counter0_carry__1_n_8),
        .O(counter0__77_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__1_i_6
       (.I0(counter1[16]),
        .I1(counter1[11]),
        .I2(counter0_carry__1_n_9),
        .O(counter0__77_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__1_i_7
       (.I0(counter1[15]),
        .I1(counter1[10]),
        .I2(counter0_carry__1_n_10),
        .O(counter0__77_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    counter0__77_carry__1_i_8
       (.I0(counter1[14]),
        .I1(counter1[9]),
        .I2(counter0_carry__1_n_11),
        .O(counter0__77_carry__1_i_8_n_0));
  LUT5 #(
    .INIT(32'h17E8E817)) 
    counter0__77_carry__1_i_9
       (.I0(counter0_carry__2_n_12),
        .I1(counter1[16]),
        .I2(counter1[21]),
        .I3(counter0_carry__2_n_3),
        .I4(counter1[17]),
        .O(counter0__77_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0__77_carry__2
       (.CI(counter0__77_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({counter0__77_carry__2_n_0,counter0__77_carry__2_n_1,counter0__77_carry__2_n_2,counter0__77_carry__2_n_3,counter0__77_carry__2_n_4,counter0__77_carry__2_n_5,counter0__77_carry__2_n_6,counter0__77_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,counter0__77_carry__2_i_1_n_0,counter0__77_carry__2_i_2_n_0,counter0__77_carry__2_i_3_n_0,counter0__77_carry__2_i_4_n_0,counter0__77_carry__2_i_5_n_0}),
        .O({counter0__77_carry__2_n_8,counter0__77_carry__2_n_9,counter0__77_carry__2_n_10,counter0__77_carry__2_n_11,counter0__77_carry__2_n_12,NLW_counter0__77_carry__2_O_UNCONNECTED[2:0]}),
        .S({counter0__77_carry__2_i_6_n_0,counter0__77_carry__2_i_7_n_0,counter0__77_carry__2_i_8_n_0,counter0__77_carry__2_i_9_n_0,counter0__77_carry__2_i_10_n_0,counter0__77_carry__2_i_11_n_0,counter0__77_carry__2_i_12_n_0,counter0__77_carry__2_i_13_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__77_carry__2_i_1
       (.I0(counter0_carry__2_n_3),
        .O(counter0__77_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    counter0__77_carry__2_i_10
       (.I0(counter1[20]),
        .I1(counter0_carry__2_n_3),
        .I2(counter1[21]),
        .O(counter0__77_carry__2_i_10_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    counter0__77_carry__2_i_11
       (.I0(counter1[19]),
        .I1(counter0_carry__2_n_3),
        .I2(counter1[20]),
        .O(counter0__77_carry__2_i_11_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    counter0__77_carry__2_i_12
       (.I0(counter1[18]),
        .I1(counter0_carry__2_n_3),
        .I2(counter1[19]),
        .O(counter0__77_carry__2_i_12_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    counter0__77_carry__2_i_13
       (.I0(counter1[17]),
        .I1(counter0_carry__2_n_3),
        .I2(counter1[18]),
        .O(counter0__77_carry__2_i_13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter0__77_carry__2_i_2
       (.I0(counter1[20]),
        .I1(counter0_carry__2_n_3),
        .O(counter0__77_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter0__77_carry__2_i_3
       (.I0(counter1[19]),
        .I1(counter0_carry__2_n_3),
        .O(counter0__77_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter0__77_carry__2_i_4
       (.I0(counter1[18]),
        .I1(counter0_carry__2_n_3),
        .O(counter0__77_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter0__77_carry__2_i_5
       (.I0(counter1[17]),
        .I1(counter0_carry__2_n_3),
        .O(counter0__77_carry__2_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__77_carry__2_i_6
       (.I0(counter0_carry__2_n_3),
        .O(counter0__77_carry__2_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__77_carry__2_i_7
       (.I0(counter0_carry__2_n_3),
        .O(counter0__77_carry__2_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__77_carry__2_i_8
       (.I0(counter0_carry__2_n_3),
        .O(counter0__77_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0__77_carry__2_i_9
       (.I0(counter1[21]),
        .I1(counter0_carry__2_n_3),
        .O(counter0__77_carry__2_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0__77_carry__3
       (.CI(counter0__77_carry__2_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter0__77_carry__3_CO_UNCONNECTED[7:6],counter0__77_carry__3_n_2,counter0__77_carry__3_n_3,counter0__77_carry__3_n_4,counter0__77_carry__3_n_5,counter0__77_carry__3_n_6,counter0__77_carry__3_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0__77_carry__3_O_UNCONNECTED[7],counter0__77_carry__3_n_9,counter0__77_carry__3_n_10,counter0__77_carry__3_n_11,counter0__77_carry__3_n_12,counter0__77_carry__3_n_13,counter0__77_carry__3_n_14,counter0__77_carry__3_n_15}),
        .S({1'b0,counter0__77_carry__3_i_1_n_0,counter0__77_carry__3_i_2_n_0,counter0__77_carry__3_i_3_n_0,counter0__77_carry__3_i_4_n_0,counter0__77_carry__3_i_5_n_0,counter0__77_carry__3_i_6_n_0,counter0__77_carry__3_i_7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__77_carry__3_i_1
       (.I0(counter0_carry__2_n_3),
        .O(counter0__77_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__77_carry__3_i_2
       (.I0(counter0_carry__2_n_3),
        .O(counter0__77_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__77_carry__3_i_3
       (.I0(counter0_carry__2_n_3),
        .O(counter0__77_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__77_carry__3_i_4
       (.I0(counter0_carry__2_n_3),
        .O(counter0__77_carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__77_carry__3_i_5
       (.I0(counter0_carry__2_n_3),
        .O(counter0__77_carry__3_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__77_carry__3_i_6
       (.I0(counter0_carry__2_n_3),
        .O(counter0__77_carry__3_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__77_carry__3_i_7
       (.I0(counter0_carry__2_n_3),
        .O(counter0__77_carry__3_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    counter0__77_carry_i_1
       (.I0(counter1[6]),
        .I1(counter0_carry__0_n_11),
        .I2(counter1[1]),
        .O(counter0__77_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0__77_carry_i_2
       (.I0(counter[0]),
        .O(counter0__77_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h96699696)) 
    counter0__77_carry_i_3
       (.I0(counter1[1]),
        .I1(counter0_carry__0_n_11),
        .I2(counter1[6]),
        .I3(counter[0]),
        .I4(counter0_carry__0_n_12),
        .O(counter0__77_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    counter0__77_carry_i_4
       (.I0(counter0_carry__0_n_12),
        .I1(counter[0]),
        .I2(counter1[5]),
        .O(counter0__77_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0__77_carry_i_5
       (.I0(counter1[4]),
        .I1(counter0_carry__0_n_13),
        .O(counter0__77_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0__77_carry_i_6
       (.I0(counter1[3]),
        .I1(counter0_carry__0_n_14),
        .O(counter0__77_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0__77_carry_i_7
       (.I0(counter1[2]),
        .I1(counter0_carry__0_n_15),
        .O(counter0__77_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0__77_carry_i_8
       (.I0(counter1[1]),
        .I1(counter0_carry_n_8),
        .O(counter0__77_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0__77_carry_i_9
       (.I0(counter[0]),
        .I1(counter0_carry_n_9),
        .O(counter0__77_carry_i_9_n_0));
  CARRY8 counter0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3,counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .DI({counter0_carry_i_1_n_0,counter0_carry_i_2_n_0,counter1[3:1],counter0_carry_i_3_n_0,1'b0,1'b1}),
        .O({counter0_carry_n_8,counter0_carry_n_9,counter0_carry_n_10,NLW_counter0_carry_O_UNCONNECTED[4:0]}),
        .S({counter0_carry_i_4_n_0,counter0_carry_i_5_n_0,counter0_carry_i_6_n_0,counter0_carry_i_7_n_0,counter0_carry_i_8_n_0,counter0_carry_i_9_n_0,counter0_carry_i_10_n_0,counter0_carry_i_11_n_0}));
  CARRY8 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3,counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .DI({counter0_carry__0_i_1_n_0,counter0_carry__0_i_2_n_0,counter0_carry__0_i_3_n_0,counter0_carry__0_i_4_n_0,counter0_carry__0_i_5_n_0,counter0_carry__0_i_6_n_0,counter0_carry__0_i_7_n_0,counter0_carry__0_i_8_n_0}),
        .O({counter0_carry__0_n_8,counter0_carry__0_n_9,counter0_carry__0_n_10,counter0_carry__0_n_11,counter0_carry__0_n_12,counter0_carry__0_n_13,counter0_carry__0_n_14,counter0_carry__0_n_15}),
        .S({counter0_carry__0_i_9_n_0,counter0_carry__0_i_10_n_0,counter0_carry__0_i_11_n_0,counter0_carry__0_i_12_n_0,counter0_carry__0_i_13_n_0,counter0_carry__0_i_14_n_0,counter0_carry__0_i_15_n_0,counter0_carry__0_i_16_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__0_i_1
       (.I0(counter1[14]),
        .I1(counter1[12]),
        .I2(counter1[9]),
        .O(counter0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry__0_i_10
       (.I0(counter1[8]),
        .I1(counter1[11]),
        .I2(counter1[13]),
        .I3(counter1[12]),
        .I4(counter1[9]),
        .I5(counter1[14]),
        .O(counter0_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry__0_i_11
       (.I0(counter1[7]),
        .I1(counter1[10]),
        .I2(counter1[12]),
        .I3(counter1[11]),
        .I4(counter1[8]),
        .I5(counter1[13]),
        .O(counter0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry__0_i_12
       (.I0(counter1[6]),
        .I1(counter1[9]),
        .I2(counter1[11]),
        .I3(counter1[10]),
        .I4(counter1[7]),
        .I5(counter1[12]),
        .O(counter0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry__0_i_13
       (.I0(counter1[5]),
        .I1(counter1[8]),
        .I2(counter1[10]),
        .I3(counter1[9]),
        .I4(counter1[6]),
        .I5(counter1[11]),
        .O(counter0_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry__0_i_14
       (.I0(counter1[4]),
        .I1(counter1[7]),
        .I2(counter1[9]),
        .I3(counter1[8]),
        .I4(counter1[5]),
        .I5(counter1[10]),
        .O(counter0_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry__0_i_15
       (.I0(counter1[3]),
        .I1(counter1[6]),
        .I2(counter1[8]),
        .I3(counter1[7]),
        .I4(counter1[4]),
        .I5(counter1[9]),
        .O(counter0_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry__0_i_16
       (.I0(counter1[2]),
        .I1(counter1[5]),
        .I2(counter1[7]),
        .I3(counter1[6]),
        .I4(counter1[3]),
        .I5(counter1[8]),
        .O(counter0_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__0_i_2
       (.I0(counter1[13]),
        .I1(counter1[11]),
        .I2(counter1[8]),
        .O(counter0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__0_i_3
       (.I0(counter1[12]),
        .I1(counter1[10]),
        .I2(counter1[7]),
        .O(counter0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__0_i_4
       (.I0(counter1[11]),
        .I1(counter1[9]),
        .I2(counter1[6]),
        .O(counter0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__0_i_5
       (.I0(counter1[10]),
        .I1(counter1[8]),
        .I2(counter1[5]),
        .O(counter0_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__0_i_6
       (.I0(counter1[9]),
        .I1(counter1[7]),
        .I2(counter1[4]),
        .O(counter0_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__0_i_7
       (.I0(counter1[8]),
        .I1(counter1[6]),
        .I2(counter1[3]),
        .O(counter0_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__0_i_8
       (.I0(counter1[7]),
        .I1(counter1[5]),
        .I2(counter1[2]),
        .O(counter0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry__0_i_9
       (.I0(counter1[9]),
        .I1(counter1[12]),
        .I2(counter1[14]),
        .I3(counter1[13]),
        .I4(counter1[10]),
        .I5(counter1[15]),
        .O(counter0_carry__0_i_9_n_0));
  CARRY8 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3,counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .DI({counter0_carry__1_i_1_n_0,counter0_carry__1_i_2_n_0,counter0_carry__1_i_3_n_0,counter0_carry__1_i_4_n_0,counter0_carry__1_i_5_n_0,counter0_carry__1_i_6_n_0,counter0_carry__1_i_7_n_0,counter0_carry__1_i_8_n_0}),
        .O({counter0_carry__1_n_8,counter0_carry__1_n_9,counter0_carry__1_n_10,counter0_carry__1_n_11,counter0_carry__1_n_12,counter0_carry__1_n_13,counter0_carry__1_n_14,counter0_carry__1_n_15}),
        .S({counter0_carry__1_i_9_n_0,counter0_carry__1_i_10_n_0,counter0_carry__1_i_11_n_0,counter0_carry__1_i_12_n_0,counter0_carry__1_i_13_n_0,counter0_carry__1_i_14_n_0,counter0_carry__1_i_15_n_0,counter0_carry__1_i_16_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__1_i_1
       (.I0(counter1[17]),
        .I1(counter1[20]),
        .O(counter0_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    counter0_carry__1_i_10
       (.I0(counter1[16]),
        .I1(counter1[19]),
        .I2(counter1[21]),
        .I3(counter1[20]),
        .I4(counter1[17]),
        .O(counter0_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry__1_i_11
       (.I0(counter1[15]),
        .I1(counter1[18]),
        .I2(counter1[20]),
        .I3(counter1[19]),
        .I4(counter1[16]),
        .I5(counter1[21]),
        .O(counter0_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry__1_i_12
       (.I0(counter1[14]),
        .I1(counter1[17]),
        .I2(counter1[19]),
        .I3(counter1[18]),
        .I4(counter1[15]),
        .I5(counter1[20]),
        .O(counter0_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry__1_i_13
       (.I0(counter1[13]),
        .I1(counter1[16]),
        .I2(counter1[18]),
        .I3(counter1[17]),
        .I4(counter1[14]),
        .I5(counter1[19]),
        .O(counter0_carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry__1_i_14
       (.I0(counter1[12]),
        .I1(counter1[15]),
        .I2(counter1[17]),
        .I3(counter1[16]),
        .I4(counter1[13]),
        .I5(counter1[18]),
        .O(counter0_carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry__1_i_15
       (.I0(counter1[11]),
        .I1(counter1[14]),
        .I2(counter1[16]),
        .I3(counter1[15]),
        .I4(counter1[12]),
        .I5(counter1[17]),
        .O(counter0_carry__1_i_15_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry__1_i_16
       (.I0(counter1[10]),
        .I1(counter1[13]),
        .I2(counter1[15]),
        .I3(counter1[14]),
        .I4(counter1[11]),
        .I5(counter1[16]),
        .O(counter0_carry__1_i_16_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__1_i_2
       (.I0(counter1[21]),
        .I1(counter1[19]),
        .I2(counter1[16]),
        .O(counter0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__1_i_3
       (.I0(counter1[20]),
        .I1(counter1[18]),
        .I2(counter1[15]),
        .O(counter0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__1_i_4
       (.I0(counter1[19]),
        .I1(counter1[17]),
        .I2(counter1[14]),
        .O(counter0_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__1_i_5
       (.I0(counter1[18]),
        .I1(counter1[16]),
        .I2(counter1[13]),
        .O(counter0_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__1_i_6
       (.I0(counter1[17]),
        .I1(counter1[15]),
        .I2(counter1[12]),
        .O(counter0_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__1_i_7
       (.I0(counter1[16]),
        .I1(counter1[14]),
        .I2(counter1[11]),
        .O(counter0_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry__1_i_8
       (.I0(counter1[15]),
        .I1(counter1[13]),
        .I2(counter1[10]),
        .O(counter0_carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    counter0_carry__1_i_9
       (.I0(counter1[20]),
        .I1(counter1[17]),
        .I2(counter1[21]),
        .I3(counter1[18]),
        .O(counter0_carry__1_i_9_n_0));
  CARRY8 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[7:5],counter0_carry__2_n_3,NLW_counter0_carry__2_CO_UNCONNECTED[3],counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,counter1[21:19],counter0_carry__2_i_1_n_0}),
        .O({NLW_counter0_carry__2_O_UNCONNECTED[7:4],counter0_carry__2_n_12,counter0_carry__2_n_13,counter0_carry__2_n_14,counter0_carry__2_n_15}),
        .S({1'b0,1'b0,1'b0,1'b1,counter0_carry__2_i_2_n_0,counter0_carry__2_i_3_n_0,counter0_carry__2_i_4_n_0,counter0_carry__2_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_1
       (.I0(counter1[19]),
        .O(counter0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_2
       (.I0(counter1[21]),
        .O(counter0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0_carry__2_i_3
       (.I0(counter1[20]),
        .I1(counter1[21]),
        .O(counter0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0_carry__2_i_4
       (.I0(counter1[19]),
        .I1(counter1[20]),
        .O(counter0_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    counter0_carry__2_i_5
       (.I0(counter1[21]),
        .I1(counter1[18]),
        .I2(counter1[19]),
        .O(counter0_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    counter0_carry_i_1
       (.I0(counter1[6]),
        .I1(counter1[4]),
        .I2(counter1[1]),
        .O(counter0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_10
       (.I0(counter1[1]),
        .O(counter0_carry_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_11
       (.I0(counter[0]),
        .O(counter0_carry_i_11_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    counter0_carry_i_2
       (.I0(counter1[6]),
        .I1(counter1[4]),
        .I2(counter1[1]),
        .O(counter0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_3
       (.I0(counter[0]),
        .O(counter0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    counter0_carry_i_4
       (.I0(counter1[1]),
        .I1(counter1[4]),
        .I2(counter1[6]),
        .I3(counter1[5]),
        .I4(counter1[2]),
        .I5(counter1[7]),
        .O(counter0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69696996)) 
    counter0_carry_i_5
       (.I0(counter1[1]),
        .I1(counter1[4]),
        .I2(counter1[6]),
        .I3(counter1[5]),
        .I4(counter[0]),
        .O(counter0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    counter0_carry_i_6
       (.I0(counter[0]),
        .I1(counter1[5]),
        .I2(counter1[3]),
        .O(counter0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0_carry_i_7
       (.I0(counter1[2]),
        .I1(counter1[4]),
        .O(counter0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    counter0_carry_i_8
       (.I0(counter1[1]),
        .I1(counter1[3]),
        .O(counter0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    counter0_carry_i_9
       (.I0(counter[0]),
        .I1(counter1[2]),
        .O(counter0_carry_i_9_n_0));
  CARRY8 counter1_carry
       (.CI(counter[0]),
        .CI_TOP(1'b0),
        .CO({counter1_carry_n_0,counter1_carry_n_1,counter1_carry_n_2,counter1_carry_n_3,counter1_carry_n_4,counter1_carry_n_5,counter1_carry_n_6,counter1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(counter1[8:1]),
        .S(counter[8:1]));
  CARRY8 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({counter1_carry__0_n_0,counter1_carry__0_n_1,counter1_carry__0_n_2,counter1_carry__0_n_3,counter1_carry__0_n_4,counter1_carry__0_n_5,counter1_carry__0_n_6,counter1_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(counter1[16:9]),
        .S(counter[16:9]));
  CARRY8 counter1_carry__1
       (.CI(counter1_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter1_carry__1_CO_UNCONNECTED[7:5],counter1[21],NLW_counter1_carry__1_CO_UNCONNECTED[3],counter1_carry__1_n_5,counter1_carry__1_n_6,counter1_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter1_carry__1_O_UNCONNECTED[7:4],counter1[20:17]}),
        .S({1'b0,1'b0,1'b0,1'b1,counter[20:17]}));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[10]_i_1 
       (.I0(counter0__274_carry_n_12),
        .I1(counter0__274_carry__0_n_1),
        .I2(counter0__217_carry__0_n_13),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[11]_i_1 
       (.I0(counter0__274_carry_n_11),
        .I1(counter0__274_carry__0_n_1),
        .I2(counter0__217_carry__0_n_12),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[12]_i_1 
       (.I0(counter0__274_carry_n_10),
        .I1(counter0__274_carry__0_n_1),
        .I2(counter0__217_carry__0_n_11),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[13]_i_1 
       (.I0(counter0__274_carry_n_9),
        .I1(counter0__274_carry__0_n_1),
        .I2(counter0__217_carry__0_n_10),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[14]_i_1 
       (.I0(counter0__274_carry_n_8),
        .I1(counter0__274_carry__0_n_1),
        .I2(counter0__217_carry__0_n_9),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[15]_i_1 
       (.I0(counter0__274_carry__0_n_15),
        .I1(counter0__274_carry__0_n_1),
        .I2(counter0__217_carry__0_n_8),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[16]_i_1 
       (.I0(counter0__274_carry__0_n_14),
        .I1(counter0__274_carry__0_n_1),
        .I2(counter0__217_carry__1_n_15),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[17]_i_1 
       (.I0(counter0__274_carry__0_n_13),
        .I1(counter0__274_carry__0_n_1),
        .I2(counter0__217_carry__1_n_14),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[18]_i_1 
       (.I0(counter0__274_carry__0_n_12),
        .I1(counter0__274_carry__0_n_1),
        .I2(counter0__217_carry__1_n_13),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[19]_i_1 
       (.I0(counter0__274_carry__0_n_11),
        .I1(counter0__274_carry__0_n_1),
        .I2(counter0__217_carry__1_n_12),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[20]_i_1 
       (.I0(counter0__274_carry__0_n_10),
        .I1(counter0__274_carry__0_n_1),
        .I2(counter0__217_carry__1_n_11),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[7]_i_1 
       (.I0(counter0__274_carry_n_15),
        .I1(counter0__274_carry__0_n_1),
        .I2(counter0__217_carry_n_8),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[8]_i_1 
       (.I0(counter0__274_carry_n_14),
        .I1(counter0__274_carry__0_n_1),
        .I2(counter0__217_carry__0_n_15),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \counter[9]_i_1 
       (.I0(counter0__274_carry_n_13),
        .I1(counter0__274_carry__0_n_1),
        .I2(counter0__217_carry__0_n_14),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[12]),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[16]),
        .Q(counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[17]),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[18]),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[19]),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[20]),
        .Q(counter[20]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(p_0_in[9]),
        .Q(counter[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
