// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Jan 18 07:31:17 2022
// Host        : PC running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_temp2pwm_0_0_sim_netlist.v
// Design      : system_temp2pwm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_temp2pwm_0_0,temp2pwm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "temp2pwm,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rdy,
    temp,
    pwm);
  input rdy;
  input [9:0]temp;
  output [7:0]pwm;

  wire [7:0]pwm;
  wire rdy;
  wire [9:0]temp;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_temp2pwm inst
       (.pwm(pwm),
        .rdy(rdy),
        .temp(temp));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_temp2pwm
   (pwm,
    temp,
    rdy);
  output [7:0]pwm;
  input [9:0]temp;
  input rdy;

  wire [8:1]A;
  wire [7:0]pwm;
  wire \pwm[0]_i_1_n_0 ;
  wire \pwm[1]_i_1_n_0 ;
  wire \pwm[2]_i_1_n_0 ;
  wire \pwm[3]_i_1_n_0 ;
  wire \pwm[3]_i_2_n_0 ;
  wire \pwm[4]_i_1_n_0 ;
  wire \pwm[5]_i_1_n_0 ;
  wire \pwm[6]_i_1_n_0 ;
  wire \pwm[6]_i_2_n_0 ;
  wire \pwm[7]_i_1_n_0 ;
  wire \pwm[7]_i_2_n_0 ;
  wire \pwm[7]_i_3_n_0 ;
  wire \pwm[7]_i_4_n_0 ;
  wire \pwm[7]_i_5_n_0 ;
  wire \pwm[7]_i_6_n_0 ;
  wire pwm_on4_carry_i_10_n_0;
  wire pwm_on4_carry_i_11_n_0;
  wire pwm_on4_carry_i_12_n_0;
  wire pwm_on4_carry_i_1_n_0;
  wire pwm_on4_carry_i_2_n_0;
  wire pwm_on4_carry_i_3_n_0;
  wire pwm_on4_carry_i_4_n_0;
  wire pwm_on4_carry_i_5_n_0;
  wire pwm_on4_carry_i_6_n_0;
  wire pwm_on4_carry_i_7_n_0;
  wire pwm_on4_carry_i_8_n_0;
  wire pwm_on4_carry_i_9_n_0;
  wire pwm_on4_carry_n_1;
  wire pwm_on4_carry_n_2;
  wire pwm_on4_carry_n_3;
  wire pwm_on4_carry_n_4;
  wire pwm_on4_carry_n_5;
  wire pwm_on4_carry_n_6;
  wire pwm_on4_carry_n_7;
  wire pwm_on5_n_100;
  wire pwm_on5_n_101;
  wire pwm_on5_n_102;
  wire pwm_on5_n_103;
  wire pwm_on5_n_104;
  wire pwm_on5_n_105;
  wire pwm_on5_n_90;
  wire pwm_on5_n_91;
  wire pwm_on5_n_92;
  wire pwm_on5_n_93;
  wire pwm_on5_n_94;
  wire pwm_on5_n_95;
  wire pwm_on5_n_96;
  wire pwm_on5_n_97;
  wire pwm_on5_n_98;
  wire pwm_on5_n_99;
  wire [12:1]pwm_on7;
  wire pwm_on7_carry__0_i_4_n_0;
  wire pwm_on7_carry__0_i_5_n_0;
  wire pwm_on7_carry__0_i_6_n_0;
  wire pwm_on7_carry__0_i_7_n_0;
  wire pwm_on7_carry__0_i_8_n_0;
  wire pwm_on7_carry__0_n_5;
  wire pwm_on7_carry__0_n_6;
  wire pwm_on7_carry__0_n_7;
  wire pwm_on7_carry_i_10_n_0;
  wire pwm_on7_carry_i_11_n_0;
  wire pwm_on7_carry_i_12_n_0;
  wire pwm_on7_carry_i_13_n_0;
  wire pwm_on7_carry_i_14_n_0;
  wire pwm_on7_carry_i_15_n_0;
  wire pwm_on7_carry_i_16_n_0;
  wire pwm_on7_carry_i_17_n_0;
  wire pwm_on7_carry_i_18_n_0;
  wire pwm_on7_carry_i_6_n_0;
  wire pwm_on7_carry_i_7_n_0;
  wire pwm_on7_carry_i_8_n_0;
  wire pwm_on7_carry_i_9_n_0;
  wire pwm_on7_carry_n_0;
  wire pwm_on7_carry_n_1;
  wire pwm_on7_carry_n_2;
  wire pwm_on7_carry_n_3;
  wire pwm_on7_carry_n_4;
  wire pwm_on7_carry_n_5;
  wire pwm_on7_carry_n_6;
  wire pwm_on7_carry_n_7;
  wire pwm_on8__108_carry__0_i_1_n_0;
  wire pwm_on8__108_carry__0_i_2_n_0;
  wire pwm_on8__108_carry__0_i_3_n_0;
  wire pwm_on8__108_carry__0_i_4_n_0;
  wire pwm_on8__108_carry__0_i_5_n_0;
  wire pwm_on8__108_carry__0_n_13;
  wire pwm_on8__108_carry__0_n_14;
  wire pwm_on8__108_carry__0_n_15;
  wire pwm_on8__108_carry__0_n_6;
  wire pwm_on8__108_carry__0_n_7;
  wire pwm_on8__108_carry_i_10_n_0;
  wire pwm_on8__108_carry_i_11_n_0;
  wire pwm_on8__108_carry_i_12_n_0;
  wire pwm_on8__108_carry_i_13_n_0;
  wire pwm_on8__108_carry_i_14_n_0;
  wire pwm_on8__108_carry_i_15_n_0;
  wire pwm_on8__108_carry_i_1_n_0;
  wire pwm_on8__108_carry_i_2_n_0;
  wire pwm_on8__108_carry_i_3_n_0;
  wire pwm_on8__108_carry_i_4_n_0;
  wire pwm_on8__108_carry_i_5_n_0;
  wire pwm_on8__108_carry_i_6_n_0;
  wire pwm_on8__108_carry_i_7_n_0;
  wire pwm_on8__108_carry_i_8_n_0;
  wire pwm_on8__108_carry_i_9_n_0;
  wire pwm_on8__108_carry_n_0;
  wire pwm_on8__108_carry_n_1;
  wire pwm_on8__108_carry_n_10;
  wire pwm_on8__108_carry_n_11;
  wire pwm_on8__108_carry_n_12;
  wire pwm_on8__108_carry_n_13;
  wire pwm_on8__108_carry_n_14;
  wire pwm_on8__108_carry_n_15;
  wire pwm_on8__108_carry_n_2;
  wire pwm_on8__108_carry_n_3;
  wire pwm_on8__108_carry_n_4;
  wire pwm_on8__108_carry_n_5;
  wire pwm_on8__108_carry_n_6;
  wire pwm_on8__108_carry_n_7;
  wire pwm_on8__108_carry_n_8;
  wire pwm_on8__108_carry_n_9;
  wire pwm_on8__138_carry__0_i_10_n_0;
  wire pwm_on8__138_carry__0_i_1_n_0;
  wire pwm_on8__138_carry__0_i_2_n_0;
  wire pwm_on8__138_carry__0_i_3_n_0;
  wire pwm_on8__138_carry__0_i_4_n_0;
  wire pwm_on8__138_carry__0_i_5_n_0;
  wire pwm_on8__138_carry__0_i_6_n_0;
  wire pwm_on8__138_carry__0_i_7_n_0;
  wire pwm_on8__138_carry__0_i_8_n_0;
  wire pwm_on8__138_carry__0_i_9_n_0;
  wire pwm_on8__138_carry__0_n_3;
  wire pwm_on8__138_carry__0_n_4;
  wire pwm_on8__138_carry__0_n_5;
  wire pwm_on8__138_carry__0_n_6;
  wire pwm_on8__138_carry__0_n_7;
  wire pwm_on8__138_carry_i_10_n_0;
  wire pwm_on8__138_carry_i_11_n_0;
  wire pwm_on8__138_carry_i_12_n_0;
  wire pwm_on8__138_carry_i_13_n_0;
  wire pwm_on8__138_carry_i_14_n_0;
  wire pwm_on8__138_carry_i_15_n_0;
  wire pwm_on8__138_carry_i_16_n_0;
  wire pwm_on8__138_carry_i_1_n_0;
  wire pwm_on8__138_carry_i_2_n_0;
  wire pwm_on8__138_carry_i_3_n_0;
  wire pwm_on8__138_carry_i_4_n_0;
  wire pwm_on8__138_carry_i_5_n_0;
  wire pwm_on8__138_carry_i_6_n_0;
  wire pwm_on8__138_carry_i_7_n_0;
  wire pwm_on8__138_carry_i_8_n_0;
  wire pwm_on8__138_carry_i_9_n_0;
  wire pwm_on8__138_carry_n_0;
  wire pwm_on8__138_carry_n_1;
  wire pwm_on8__138_carry_n_2;
  wire pwm_on8__138_carry_n_3;
  wire pwm_on8__138_carry_n_4;
  wire pwm_on8__138_carry_n_5;
  wire pwm_on8__138_carry_n_6;
  wire pwm_on8__138_carry_n_7;
  wire pwm_on8__52_carry__0_i_10_n_0;
  wire pwm_on8__52_carry__0_i_11_n_0;
  wire pwm_on8__52_carry__0_i_12_n_0;
  wire pwm_on8__52_carry__0_i_13_n_0;
  wire pwm_on8__52_carry__0_i_14_n_0;
  wire pwm_on8__52_carry__0_i_15_n_0;
  wire pwm_on8__52_carry__0_i_16_n_0;
  wire pwm_on8__52_carry__0_i_17_n_0;
  wire pwm_on8__52_carry__0_i_18_n_0;
  wire pwm_on8__52_carry__0_i_19_n_0;
  wire pwm_on8__52_carry__0_i_1_n_0;
  wire pwm_on8__52_carry__0_i_20_n_0;
  wire pwm_on8__52_carry__0_i_21_n_0;
  wire pwm_on8__52_carry__0_i_22_n_0;
  wire pwm_on8__52_carry__0_i_23_n_0;
  wire pwm_on8__52_carry__0_i_24_n_0;
  wire pwm_on8__52_carry__0_i_2_n_0;
  wire pwm_on8__52_carry__0_i_3_n_0;
  wire pwm_on8__52_carry__0_i_4_n_0;
  wire pwm_on8__52_carry__0_i_5_n_0;
  wire pwm_on8__52_carry__0_i_6_n_0;
  wire pwm_on8__52_carry__0_i_7_n_0;
  wire pwm_on8__52_carry__0_i_8_n_0;
  wire pwm_on8__52_carry__0_i_9_n_0;
  wire pwm_on8__52_carry__0_n_0;
  wire pwm_on8__52_carry__0_n_1;
  wire pwm_on8__52_carry__0_n_2;
  wire pwm_on8__52_carry__0_n_3;
  wire pwm_on8__52_carry__0_n_4;
  wire pwm_on8__52_carry__0_n_5;
  wire pwm_on8__52_carry__0_n_6;
  wire pwm_on8__52_carry__0_n_7;
  wire pwm_on8__52_carry__0_n_8;
  wire pwm_on8__52_carry__0_n_9;
  wire pwm_on8__52_carry__1_i_10_n_0;
  wire pwm_on8__52_carry__1_i_11_n_0;
  wire pwm_on8__52_carry__1_i_12_n_0;
  wire pwm_on8__52_carry__1_i_13_n_0;
  wire pwm_on8__52_carry__1_i_14_n_0;
  wire pwm_on8__52_carry__1_i_15_n_0;
  wire pwm_on8__52_carry__1_i_16_n_0;
  wire pwm_on8__52_carry__1_i_17_n_0;
  wire pwm_on8__52_carry__1_i_1_n_0;
  wire pwm_on8__52_carry__1_i_2_n_0;
  wire pwm_on8__52_carry__1_i_3_n_0;
  wire pwm_on8__52_carry__1_i_4_n_0;
  wire pwm_on8__52_carry__1_i_5_n_0;
  wire pwm_on8__52_carry__1_i_6_n_0;
  wire pwm_on8__52_carry__1_i_7_n_0;
  wire pwm_on8__52_carry__1_i_8_n_0;
  wire pwm_on8__52_carry__1_i_9_n_0;
  wire pwm_on8__52_carry__1_n_1;
  wire pwm_on8__52_carry__1_n_10;
  wire pwm_on8__52_carry__1_n_11;
  wire pwm_on8__52_carry__1_n_12;
  wire pwm_on8__52_carry__1_n_13;
  wire pwm_on8__52_carry__1_n_14;
  wire pwm_on8__52_carry__1_n_15;
  wire pwm_on8__52_carry__1_n_2;
  wire pwm_on8__52_carry__1_n_3;
  wire pwm_on8__52_carry__1_n_4;
  wire pwm_on8__52_carry__1_n_5;
  wire pwm_on8__52_carry__1_n_6;
  wire pwm_on8__52_carry__1_n_7;
  wire pwm_on8__52_carry__1_n_8;
  wire pwm_on8__52_carry__1_n_9;
  wire pwm_on8__52_carry_i_1_n_0;
  wire pwm_on8__52_carry_i_2_n_0;
  wire pwm_on8__52_carry_i_3_n_0;
  wire pwm_on8__52_carry_i_4_n_0;
  wire pwm_on8__52_carry_i_5_n_0;
  wire pwm_on8__52_carry_i_6_n_0;
  wire pwm_on8__52_carry_i_7_n_0;
  wire pwm_on8__52_carry_i_8_n_0;
  wire pwm_on8__52_carry_i_9_n_0;
  wire pwm_on8__52_carry_n_0;
  wire pwm_on8__52_carry_n_1;
  wire pwm_on8__52_carry_n_2;
  wire pwm_on8__52_carry_n_3;
  wire pwm_on8__52_carry_n_4;
  wire pwm_on8__52_carry_n_5;
  wire pwm_on8__52_carry_n_6;
  wire pwm_on8__52_carry_n_7;
  wire pwm_on8_carry__0_i_1_n_0;
  wire pwm_on8_carry__0_i_2_n_0;
  wire pwm_on8_carry__0_i_3_n_0;
  wire pwm_on8_carry__0_i_4_n_0;
  wire pwm_on8_carry__0_i_5_n_0;
  wire pwm_on8_carry__0_i_6_n_0;
  wire pwm_on8_carry__0_i_7_n_0;
  wire pwm_on8_carry__0_i_8_n_0;
  wire pwm_on8_carry__0_n_0;
  wire pwm_on8_carry__0_n_1;
  wire pwm_on8_carry__0_n_10;
  wire pwm_on8_carry__0_n_11;
  wire pwm_on8_carry__0_n_12;
  wire pwm_on8_carry__0_n_13;
  wire pwm_on8_carry__0_n_14;
  wire pwm_on8_carry__0_n_15;
  wire pwm_on8_carry__0_n_2;
  wire pwm_on8_carry__0_n_3;
  wire pwm_on8_carry__0_n_4;
  wire pwm_on8_carry__0_n_5;
  wire pwm_on8_carry__0_n_6;
  wire pwm_on8_carry__0_n_7;
  wire pwm_on8_carry__0_n_8;
  wire pwm_on8_carry__0_n_9;
  wire pwm_on8_carry__1_i_1_n_0;
  wire pwm_on8_carry__1_i_2_n_0;
  wire pwm_on8_carry__1_i_3_n_0;
  wire pwm_on8_carry__1_n_13;
  wire pwm_on8_carry__1_n_14;
  wire pwm_on8_carry__1_n_15;
  wire pwm_on8_carry__1_n_4;
  wire pwm_on8_carry__1_n_6;
  wire pwm_on8_carry__1_n_7;
  wire pwm_on8_carry_i_1_n_0;
  wire pwm_on8_carry_i_2_n_0;
  wire pwm_on8_carry_i_3_n_0;
  wire pwm_on8_carry_i_4_n_0;
  wire pwm_on8_carry_i_5_n_0;
  wire pwm_on8_carry_i_6_n_0;
  wire pwm_on8_carry_i_7_n_0;
  wire pwm_on8_carry_n_0;
  wire pwm_on8_carry_n_1;
  wire pwm_on8_carry_n_10;
  wire pwm_on8_carry_n_11;
  wire pwm_on8_carry_n_12;
  wire pwm_on8_carry_n_13;
  wire pwm_on8_carry_n_2;
  wire pwm_on8_carry_n_3;
  wire pwm_on8_carry_n_4;
  wire pwm_on8_carry_n_5;
  wire pwm_on8_carry_n_6;
  wire pwm_on8_carry_n_7;
  wire pwm_on8_carry_n_8;
  wire pwm_on8_carry_n_9;
  wire pwm_on_i_1_n_0;
  wire pwm_on_reg_n_0;
  wire rdy;
  wire [9:0]temp;
  wire [7:7]NLW_pwm_on4_carry_CO_UNCONNECTED;
  wire [7:0]NLW_pwm_on4_carry_O_UNCONNECTED;
  wire NLW_pwm_on5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_pwm_on5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_pwm_on5_OVERFLOW_UNCONNECTED;
  wire NLW_pwm_on5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_pwm_on5_PATTERNDETECT_UNCONNECTED;
  wire NLW_pwm_on5_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_pwm_on5_ACOUT_UNCONNECTED;
  wire [17:0]NLW_pwm_on5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_pwm_on5_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_pwm_on5_P_UNCONNECTED;
  wire [47:0]NLW_pwm_on5_PCOUT_UNCONNECTED;
  wire [7:0]NLW_pwm_on5_XOROUT_UNCONNECTED;
  wire [7:3]NLW_pwm_on7_carry__0_CO_UNCONNECTED;
  wire [7:4]NLW_pwm_on7_carry__0_O_UNCONNECTED;
  wire [7:2]NLW_pwm_on8__108_carry__0_CO_UNCONNECTED;
  wire [7:3]NLW_pwm_on8__108_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_pwm_on8__138_carry_O_UNCONNECTED;
  wire [7:5]NLW_pwm_on8__138_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_pwm_on8__138_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_pwm_on8__52_carry_O_UNCONNECTED;
  wire [5:0]NLW_pwm_on8__52_carry__0_O_UNCONNECTED;
  wire [7:7]NLW_pwm_on8__52_carry__1_CO_UNCONNECTED;
  wire [1:0]NLW_pwm_on8_carry_O_UNCONNECTED;
  wire [7:2]NLW_pwm_on8_carry__1_CO_UNCONNECTED;
  wire [7:3]NLW_pwm_on8_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55550451)) 
    \pwm[0]_i_1 
       (.I0(pwm_on4_carry_n_1),
        .I1(pwm_on7[7]),
        .I2(\pwm[7]_i_6_n_0 ),
        .I3(pwm_on7[8]),
        .I4(\pwm[7]_i_5_n_0 ),
        .O(\pwm[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \pwm[1]_i_1 
       (.I0(\pwm[0]_i_1_n_0 ),
        .I1(pwm_on7[1]),
        .I2(pwm_on4_carry_n_1),
        .O(\pwm[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hABBA)) 
    \pwm[2]_i_1 
       (.I0(\pwm[0]_i_1_n_0 ),
        .I1(pwm_on4_carry_n_1),
        .I2(pwm_on7[1]),
        .I3(pwm_on7[2]),
        .O(\pwm[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h41115555)) 
    \pwm[3]_i_1 
       (.I0(pwm_on4_carry_n_1),
        .I1(pwm_on7[3]),
        .I2(pwm_on7[2]),
        .I3(pwm_on7[1]),
        .I4(\pwm[3]_i_2_n_0 ),
        .O(\pwm[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4144)) 
    \pwm[3]_i_2 
       (.I0(\pwm[7]_i_5_n_0 ),
        .I1(pwm_on7[8]),
        .I2(\pwm[7]_i_6_n_0 ),
        .I3(pwm_on7[7]),
        .O(\pwm[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBBBEEE)) 
    \pwm[4]_i_1 
       (.I0(\pwm[0]_i_1_n_0 ),
        .I1(pwm_on7[4]),
        .I2(pwm_on7[1]),
        .I3(pwm_on7[2]),
        .I4(pwm_on7[3]),
        .I5(pwm_on4_carry_n_1),
        .O(\pwm[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAEB)) 
    \pwm[5]_i_1 
       (.I0(\pwm[0]_i_1_n_0 ),
        .I1(pwm_on7[5]),
        .I2(\pwm[7]_i_3_n_0 ),
        .I3(pwm_on4_carry_n_1),
        .O(\pwm[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00EB00FF00FF00EB)) 
    \pwm[6]_i_1 
       (.I0(\pwm[7]_i_5_n_0 ),
        .I1(pwm_on7[8]),
        .I2(pwm_on7[7]),
        .I3(pwm_on4_carry_n_1),
        .I4(pwm_on7[6]),
        .I5(\pwm[6]_i_2_n_0 ),
        .O(\pwm[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01115555)) 
    \pwm[6]_i_2 
       (.I0(pwm_on7[5]),
        .I1(pwm_on7[3]),
        .I2(pwm_on7[2]),
        .I3(pwm_on7[1]),
        .I4(pwm_on7[4]),
        .O(\pwm[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555DFFD)) 
    \pwm[7]_i_1 
       (.I0(pwm_on_reg_n_0),
        .I1(pwm_on4_carry_n_1),
        .I2(\pwm[7]_i_3_n_0 ),
        .I3(pwm_on7[5]),
        .I4(\pwm[0]_i_1_n_0 ),
        .I5(\pwm[7]_i_4_n_0 ),
        .O(\pwm[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000FBEF)) 
    \pwm[7]_i_2 
       (.I0(\pwm[7]_i_5_n_0 ),
        .I1(pwm_on7[8]),
        .I2(pwm_on7[7]),
        .I3(\pwm[7]_i_6_n_0 ),
        .I4(pwm_on4_carry_n_1),
        .O(\pwm[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \pwm[7]_i_3 
       (.I0(pwm_on7[4]),
        .I1(pwm_on7[1]),
        .I2(pwm_on7[2]),
        .I3(pwm_on7[3]),
        .O(\pwm[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0F060F)) 
    \pwm[7]_i_4 
       (.I0(\pwm[6]_i_2_n_0 ),
        .I1(pwm_on7[6]),
        .I2(pwm_on4_carry_n_1),
        .I3(pwm_on7[7]),
        .I4(pwm_on7[8]),
        .I5(\pwm[7]_i_5_n_0 ),
        .O(\pwm[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pwm[7]_i_5 
       (.I0(pwm_on7[11]),
        .I1(pwm_on7[10]),
        .I2(pwm_on7[12]),
        .I3(pwm_on7[9]),
        .O(\pwm[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000557F)) 
    \pwm[7]_i_6 
       (.I0(pwm_on7[4]),
        .I1(pwm_on7[1]),
        .I2(pwm_on7[2]),
        .I3(pwm_on7[3]),
        .I4(pwm_on7[5]),
        .I5(pwm_on7[6]),
        .O(\pwm[7]_i_6_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 pwm_on4_carry
       (.CI(pwm_on4_carry_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_pwm_on4_carry_CO_UNCONNECTED[7],pwm_on4_carry_n_1,pwm_on4_carry_n_2,pwm_on4_carry_n_3,pwm_on4_carry_n_4,pwm_on4_carry_n_5,pwm_on4_carry_n_6,pwm_on4_carry_n_7}),
        .DI({1'b0,pwm_on5_n_90,1'b0,pwm_on4_carry_i_2_n_0,pwm_on4_carry_i_3_n_0,pwm_on4_carry_i_4_n_0,1'b0,pwm_on4_carry_i_5_n_0}),
        .O(NLW_pwm_on4_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,pwm_on4_carry_i_6_n_0,pwm_on4_carry_i_7_n_0,pwm_on4_carry_i_8_n_0,pwm_on4_carry_i_9_n_0,pwm_on4_carry_i_10_n_0,pwm_on4_carry_i_11_n_0,pwm_on4_carry_i_12_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_on4_carry_i_1
       (.I0(pwm_on5_n_105),
        .I1(pwm_on5_n_104),
        .O(pwm_on4_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pwm_on4_carry_i_10
       (.I0(pwm_on5_n_98),
        .I1(pwm_on5_n_99),
        .O(pwm_on4_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_on4_carry_i_11
       (.I0(pwm_on5_n_100),
        .I1(pwm_on5_n_101),
        .O(pwm_on4_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on4_carry_i_12
       (.I0(pwm_on5_n_103),
        .I1(pwm_on5_n_102),
        .O(pwm_on4_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_on4_carry_i_2
       (.I0(pwm_on5_n_94),
        .O(pwm_on4_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_on4_carry_i_3
       (.I0(pwm_on5_n_97),
        .I1(pwm_on5_n_96),
        .O(pwm_on4_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    pwm_on4_carry_i_4
       (.I0(pwm_on5_n_99),
        .I1(pwm_on5_n_98),
        .O(pwm_on4_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_on4_carry_i_5
       (.I0(pwm_on5_n_103),
        .I1(pwm_on5_n_102),
        .O(pwm_on4_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_on4_carry_i_6
       (.I0(pwm_on5_n_91),
        .I1(pwm_on5_n_90),
        .O(pwm_on4_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_on4_carry_i_7
       (.I0(pwm_on5_n_93),
        .I1(pwm_on5_n_92),
        .O(pwm_on4_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on4_carry_i_8
       (.I0(pwm_on5_n_94),
        .I1(pwm_on5_n_95),
        .O(pwm_on4_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on4_carry_i_9
       (.I0(pwm_on5_n_97),
        .I1(pwm_on5_n_96),
        .O(pwm_on4_carry_i_9_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    pwm_on5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,temp}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_pwm_on5_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_pwm_on5_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_pwm_on5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_pwm_on5_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_pwm_on5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_pwm_on5_OVERFLOW_UNCONNECTED),
        .P({NLW_pwm_on5_P_UNCONNECTED[47:16],pwm_on5_n_90,pwm_on5_n_91,pwm_on5_n_92,pwm_on5_n_93,pwm_on5_n_94,pwm_on5_n_95,pwm_on5_n_96,pwm_on5_n_97,pwm_on5_n_98,pwm_on5_n_99,pwm_on5_n_100,pwm_on5_n_101,pwm_on5_n_102,pwm_on5_n_103,pwm_on5_n_104,pwm_on5_n_105}),
        .PATTERNBDETECT(NLW_pwm_on5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_pwm_on5_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_pwm_on5_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_pwm_on5_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_pwm_on5_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pwm_on7_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({pwm_on7_carry_n_0,pwm_on7_carry_n_1,pwm_on7_carry_n_2,pwm_on7_carry_n_3,pwm_on7_carry_n_4,pwm_on7_carry_n_5,pwm_on7_carry_n_6,pwm_on7_carry_n_7}),
        .DI({A[5:1],pwm_on7_carry_i_6_n_0,1'b0,1'b1}),
        .O(pwm_on7[8:1]),
        .S({pwm_on7_carry_i_7_n_0,pwm_on7_carry_i_8_n_0,pwm_on7_carry_i_9_n_0,pwm_on7_carry_i_10_n_0,pwm_on7_carry_i_11_n_0,pwm_on7_carry_i_12_n_0,pwm_on7_carry_i_13_n_0,pwm_on7_carry_i_14_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pwm_on7_carry__0
       (.CI(pwm_on7_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_pwm_on7_carry__0_CO_UNCONNECTED[7:3],pwm_on7_carry__0_n_5,pwm_on7_carry__0_n_6,pwm_on7_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,A[8:6]}),
        .O({NLW_pwm_on7_carry__0_O_UNCONNECTED[7:4],pwm_on7[12:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,pwm_on7_carry__0_i_4_n_0,pwm_on7_carry__0_i_5_n_0,pwm_on7_carry__0_i_6_n_0,pwm_on7_carry__0_i_7_n_0}));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    pwm_on7_carry__0_i_1
       (.I0(pwm_on8__52_carry__1_n_9),
        .I1(pwm_on8__52_carry__1_n_10),
        .I2(pwm_on7_carry_i_16_n_0),
        .I3(pwm_on8__52_carry__1_n_11),
        .I4(pwm_on7_carry__0_i_8_n_0),
        .O(A[8]));
  LUT6 #(
    .INIT(64'hAA9AAAAAAA9AAA9A)) 
    pwm_on7_carry__0_i_2
       (.I0(pwm_on8__52_carry__1_n_10),
        .I1(pwm_on7_carry__0_i_8_n_0),
        .I2(pwm_on8__52_carry__1_n_11),
        .I3(pwm_on8__138_carry__0_n_3),
        .I4(pwm_on5_n_90),
        .I5(pwm_on8__108_carry__0_n_13),
        .O(A[7]));
  LUT5 #(
    .INIT(32'hA9AAA9A9)) 
    pwm_on7_carry__0_i_3
       (.I0(pwm_on8__52_carry__1_n_11),
        .I1(pwm_on7_carry__0_i_8_n_0),
        .I2(pwm_on8__138_carry__0_n_3),
        .I3(pwm_on5_n_90),
        .I4(pwm_on8__108_carry__0_n_13),
        .O(A[6]));
  LUT6 #(
    .INIT(64'h5955555555555555)) 
    pwm_on7_carry__0_i_4
       (.I0(pwm_on8__52_carry__1_n_8),
        .I1(pwm_on8__52_carry__1_n_9),
        .I2(pwm_on7_carry__0_i_8_n_0),
        .I3(pwm_on8__52_carry__1_n_11),
        .I4(pwm_on7_carry_i_16_n_0),
        .I5(pwm_on8__52_carry__1_n_10),
        .O(pwm_on7_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h55559555)) 
    pwm_on7_carry__0_i_5
       (.I0(pwm_on8__52_carry__1_n_9),
        .I1(pwm_on8__52_carry__1_n_10),
        .I2(pwm_on7_carry_i_16_n_0),
        .I3(pwm_on8__52_carry__1_n_11),
        .I4(pwm_on7_carry__0_i_8_n_0),
        .O(pwm_on7_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAEAAA6A55155595)) 
    pwm_on7_carry__0_i_6
       (.I0(pwm_on8__52_carry__1_n_10),
        .I1(pwm_on7_carry_i_16_n_0),
        .I2(pwm_on8__52_carry__1_n_11),
        .I3(pwm_on7_carry__0_i_8_n_0),
        .I4(pwm_on8__52_carry__1_n_9),
        .I5(pwm_on8__52_carry__1_n_8),
        .O(pwm_on7_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'hDC9C2363)) 
    pwm_on7_carry__0_i_7
       (.I0(pwm_on7_carry__0_i_8_n_0),
        .I1(pwm_on8__52_carry__1_n_11),
        .I2(pwm_on7_carry_i_16_n_0),
        .I3(pwm_on8__52_carry__1_n_10),
        .I4(pwm_on8__52_carry__1_n_9),
        .O(pwm_on7_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    pwm_on7_carry__0_i_8
       (.I0(pwm_on8__52_carry__1_n_13),
        .I1(pwm_on8__52_carry__0_n_9),
        .I2(pwm_on8__52_carry__0_n_8),
        .I3(pwm_on8__52_carry__1_n_15),
        .I4(pwm_on8__52_carry__1_n_14),
        .I5(pwm_on8__52_carry__1_n_12),
        .O(pwm_on7_carry__0_i_8_n_0));
  LUT5 #(
    .INIT(32'hA9AAA9A9)) 
    pwm_on7_carry_i_1
       (.I0(pwm_on8__52_carry__1_n_12),
        .I1(pwm_on7_carry_i_15_n_0),
        .I2(pwm_on8__138_carry__0_n_3),
        .I3(pwm_on5_n_90),
        .I4(pwm_on8__108_carry__0_n_13),
        .O(A[5]));
  LUT6 #(
    .INIT(64'hDAF0F0F0250F0F0F)) 
    pwm_on7_carry_i_10
       (.I0(pwm_on7_carry_i_16_n_0),
        .I1(pwm_on8__52_carry__1_n_14),
        .I2(pwm_on8__52_carry__1_n_15),
        .I3(pwm_on8__52_carry__0_n_8),
        .I4(pwm_on8__52_carry__0_n_9),
        .I5(pwm_on8__52_carry__1_n_13),
        .O(pwm_on7_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'hF8780787)) 
    pwm_on7_carry_i_11
       (.I0(pwm_on7_carry_i_16_n_0),
        .I1(pwm_on8__52_carry__0_n_9),
        .I2(pwm_on8__52_carry__0_n_8),
        .I3(pwm_on8__52_carry__1_n_15),
        .I4(pwm_on8__52_carry__1_n_14),
        .O(pwm_on7_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hBABB9A9945446566)) 
    pwm_on7_carry_i_12
       (.I0(pwm_on8__52_carry__0_n_9),
        .I1(pwm_on8__138_carry__0_n_3),
        .I2(pwm_on5_n_90),
        .I3(pwm_on8__108_carry__0_n_13),
        .I4(pwm_on8__52_carry__0_n_8),
        .I5(pwm_on8__52_carry__1_n_15),
        .O(pwm_on7_carry_i_12_n_0));
  LUT5 #(
    .INIT(32'h0D00F2FF)) 
    pwm_on7_carry_i_13
       (.I0(pwm_on8__108_carry__0_n_13),
        .I1(pwm_on5_n_90),
        .I2(pwm_on8__138_carry__0_n_3),
        .I3(pwm_on8__52_carry__0_n_9),
        .I4(pwm_on8__52_carry__0_n_8),
        .O(pwm_on7_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'hF20D)) 
    pwm_on7_carry_i_14
       (.I0(pwm_on8__108_carry__0_n_13),
        .I1(pwm_on5_n_90),
        .I2(pwm_on8__138_carry__0_n_3),
        .I3(pwm_on8__52_carry__0_n_9),
        .O(pwm_on7_carry_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    pwm_on7_carry_i_15
       (.I0(pwm_on8__52_carry__1_n_14),
        .I1(pwm_on8__52_carry__1_n_15),
        .I2(pwm_on8__52_carry__0_n_8),
        .I3(pwm_on8__52_carry__0_n_9),
        .I4(pwm_on8__52_carry__1_n_13),
        .O(pwm_on7_carry_i_15_n_0));
  LUT3 #(
    .INIT(8'h45)) 
    pwm_on7_carry_i_16
       (.I0(pwm_on8__138_carry__0_n_3),
        .I1(pwm_on5_n_90),
        .I2(pwm_on8__108_carry__0_n_13),
        .O(pwm_on7_carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    pwm_on7_carry_i_17
       (.I0(pwm_on8__52_carry__0_n_9),
        .I1(pwm_on8__52_carry__0_n_8),
        .I2(pwm_on8__52_carry__1_n_15),
        .I3(pwm_on8__52_carry__1_n_14),
        .O(pwm_on7_carry_i_17_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    pwm_on7_carry_i_18
       (.I0(pwm_on8__52_carry__1_n_15),
        .I1(pwm_on8__52_carry__0_n_8),
        .I2(pwm_on8__52_carry__0_n_9),
        .O(pwm_on7_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    pwm_on7_carry_i_2
       (.I0(pwm_on8__52_carry__1_n_13),
        .I1(pwm_on8__52_carry__0_n_9),
        .I2(pwm_on8__52_carry__0_n_8),
        .I3(pwm_on8__52_carry__1_n_15),
        .I4(pwm_on8__52_carry__1_n_14),
        .I5(pwm_on7_carry_i_16_n_0),
        .O(A[4]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    pwm_on7_carry_i_3
       (.I0(pwm_on8__52_carry__1_n_14),
        .I1(pwm_on8__52_carry__1_n_15),
        .I2(pwm_on8__52_carry__0_n_8),
        .I3(pwm_on8__52_carry__0_n_9),
        .I4(pwm_on7_carry_i_16_n_0),
        .O(A[3]));
  LUT6 #(
    .INIT(64'hAAAA66A6AAAAAAAA)) 
    pwm_on7_carry_i_4
       (.I0(pwm_on8__52_carry__1_n_15),
        .I1(pwm_on8__52_carry__0_n_8),
        .I2(pwm_on8__108_carry__0_n_13),
        .I3(pwm_on5_n_90),
        .I4(pwm_on8__138_carry__0_n_3),
        .I5(pwm_on8__52_carry__0_n_9),
        .O(A[2]));
  LUT5 #(
    .INIT(32'hA6AAA6A6)) 
    pwm_on7_carry_i_5
       (.I0(pwm_on8__52_carry__0_n_8),
        .I1(pwm_on8__52_carry__0_n_9),
        .I2(pwm_on8__138_carry__0_n_3),
        .I3(pwm_on5_n_90),
        .I4(pwm_on8__108_carry__0_n_13),
        .O(A[1]));
  LUT4 #(
    .INIT(16'hF20D)) 
    pwm_on7_carry_i_6
       (.I0(pwm_on8__108_carry__0_n_13),
        .I1(pwm_on5_n_90),
        .I2(pwm_on8__138_carry__0_n_3),
        .I3(pwm_on8__52_carry__0_n_9),
        .O(pwm_on7_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hFD0A02F5)) 
    pwm_on7_carry_i_7
       (.I0(pwm_on7_carry_i_16_n_0),
        .I1(pwm_on8__52_carry__1_n_11),
        .I2(pwm_on7_carry_i_15_n_0),
        .I3(pwm_on8__52_carry__1_n_12),
        .I4(pwm_on8__52_carry__1_n_10),
        .O(pwm_on7_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'hFD0A02F5)) 
    pwm_on7_carry_i_8
       (.I0(pwm_on7_carry_i_16_n_0),
        .I1(pwm_on8__52_carry__1_n_12),
        .I2(pwm_on7_carry_i_17_n_0),
        .I3(pwm_on8__52_carry__1_n_13),
        .I4(pwm_on8__52_carry__1_n_11),
        .O(pwm_on7_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hFD0A02F5)) 
    pwm_on7_carry_i_9
       (.I0(pwm_on7_carry_i_16_n_0),
        .I1(pwm_on8__52_carry__1_n_13),
        .I2(pwm_on7_carry_i_18_n_0),
        .I3(pwm_on8__52_carry__1_n_14),
        .I4(pwm_on8__52_carry__1_n_12),
        .O(pwm_on7_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pwm_on8__108_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({pwm_on8__108_carry_n_0,pwm_on8__108_carry_n_1,pwm_on8__108_carry_n_2,pwm_on8__108_carry_n_3,pwm_on8__108_carry_n_4,pwm_on8__108_carry_n_5,pwm_on8__108_carry_n_6,pwm_on8__108_carry_n_7}),
        .DI({pwm_on8__108_carry_i_1_n_0,pwm_on8__108_carry_i_2_n_0,pwm_on8__108_carry_i_3_n_0,pwm_on8__108_carry_i_4_n_0,pwm_on8__108_carry_i_5_n_0,pwm_on8__108_carry_i_6_n_0,pwm_on8__108_carry_i_7_n_0,1'b0}),
        .O({pwm_on8__108_carry_n_8,pwm_on8__108_carry_n_9,pwm_on8__108_carry_n_10,pwm_on8__108_carry_n_11,pwm_on8__108_carry_n_12,pwm_on8__108_carry_n_13,pwm_on8__108_carry_n_14,pwm_on8__108_carry_n_15}),
        .S({pwm_on8__108_carry_i_8_n_0,pwm_on8__108_carry_i_9_n_0,pwm_on8__108_carry_i_10_n_0,pwm_on8__108_carry_i_11_n_0,pwm_on8__108_carry_i_12_n_0,pwm_on8__108_carry_i_13_n_0,pwm_on8__108_carry_i_14_n_0,pwm_on8__108_carry_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pwm_on8__108_carry__0
       (.CI(pwm_on8__108_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_pwm_on8__108_carry__0_CO_UNCONNECTED[7:2],pwm_on8__108_carry__0_n_6,pwm_on8__108_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pwm_on8__108_carry__0_i_1_n_0,pwm_on8__108_carry__0_i_2_n_0}),
        .O({NLW_pwm_on8__108_carry__0_O_UNCONNECTED[7:3],pwm_on8__108_carry__0_n_13,pwm_on8__108_carry__0_n_14,pwm_on8__108_carry__0_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,pwm_on8__108_carry__0_i_3_n_0,pwm_on8__108_carry__0_i_4_n_0,pwm_on8__108_carry__0_i_5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on8__108_carry__0_i_1
       (.I0(pwm_on8__52_carry__1_n_11),
        .I1(pwm_on8__52_carry__1_n_9),
        .O(pwm_on8__108_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on8__108_carry__0_i_2
       (.I0(pwm_on8__52_carry__1_n_12),
        .I1(pwm_on8__52_carry__1_n_10),
        .O(pwm_on8__108_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h65)) 
    pwm_on8__108_carry__0_i_3
       (.I0(pwm_on8__52_carry__1_n_9),
        .I1(pwm_on8__52_carry__1_n_8),
        .I2(pwm_on8__52_carry__1_n_10),
        .O(pwm_on8__108_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pwm_on8__108_carry__0_i_4
       (.I0(pwm_on8__52_carry__1_n_9),
        .I1(pwm_on8__52_carry__1_n_11),
        .I2(pwm_on8__52_carry__1_n_8),
        .I3(pwm_on8__52_carry__1_n_10),
        .O(pwm_on8__108_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pwm_on8__108_carry__0_i_5
       (.I0(pwm_on8__52_carry__1_n_10),
        .I1(pwm_on8__52_carry__1_n_12),
        .I2(pwm_on8__52_carry__1_n_9),
        .I3(pwm_on8__52_carry__1_n_11),
        .O(pwm_on8__108_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    pwm_on8__108_carry_i_1
       (.I0(pwm_on8__52_carry__1_n_13),
        .I1(pwm_on8__52_carry__1_n_11),
        .I2(pwm_on8__52_carry__1_n_8),
        .O(pwm_on8__108_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    pwm_on8__108_carry_i_10
       (.I0(pwm_on8__52_carry__1_n_14),
        .I1(pwm_on8__52_carry__1_n_12),
        .I2(pwm_on8__52_carry__1_n_9),
        .I3(pwm_on8__108_carry_i_3_n_0),
        .O(pwm_on8__108_carry_i_10_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    pwm_on8__108_carry_i_11
       (.I0(pwm_on8__52_carry__1_n_15),
        .I1(pwm_on8__52_carry__1_n_13),
        .I2(pwm_on8__52_carry__1_n_10),
        .I3(pwm_on8__108_carry_i_4_n_0),
        .O(pwm_on8__108_carry_i_11_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    pwm_on8__108_carry_i_12
       (.I0(pwm_on8__52_carry__0_n_8),
        .I1(pwm_on8__52_carry__1_n_14),
        .I2(pwm_on8__52_carry__1_n_11),
        .I3(pwm_on8__108_carry_i_5_n_0),
        .O(pwm_on8__108_carry_i_12_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    pwm_on8__108_carry_i_13
       (.I0(pwm_on8__52_carry__0_n_9),
        .I1(pwm_on8__52_carry__1_n_15),
        .I2(pwm_on8__52_carry__1_n_12),
        .I3(pwm_on8__52_carry__0_n_8),
        .I4(pwm_on8__52_carry__1_n_13),
        .O(pwm_on8__108_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pwm_on8__108_carry_i_14
       (.I0(pwm_on8__52_carry__0_n_9),
        .I1(pwm_on8__52_carry__1_n_14),
        .I2(pwm_on8__52_carry__1_n_13),
        .I3(pwm_on8__52_carry__0_n_8),
        .O(pwm_on8__108_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pwm_on8__108_carry_i_15
       (.I0(pwm_on8__52_carry__1_n_14),
        .I1(pwm_on8__52_carry__0_n_9),
        .O(pwm_on8__108_carry_i_15_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    pwm_on8__108_carry_i_2
       (.I0(pwm_on8__52_carry__1_n_14),
        .I1(pwm_on8__52_carry__1_n_12),
        .I2(pwm_on8__52_carry__1_n_9),
        .O(pwm_on8__108_carry_i_2_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    pwm_on8__108_carry_i_3
       (.I0(pwm_on8__52_carry__1_n_15),
        .I1(pwm_on8__52_carry__1_n_13),
        .I2(pwm_on8__52_carry__1_n_10),
        .O(pwm_on8__108_carry_i_3_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    pwm_on8__108_carry_i_4
       (.I0(pwm_on8__52_carry__0_n_8),
        .I1(pwm_on8__52_carry__1_n_14),
        .I2(pwm_on8__52_carry__1_n_11),
        .O(pwm_on8__108_carry_i_4_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    pwm_on8__108_carry_i_5
       (.I0(pwm_on8__52_carry__0_n_9),
        .I1(pwm_on8__52_carry__1_n_15),
        .I2(pwm_on8__52_carry__1_n_12),
        .O(pwm_on8__108_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pwm_on8__108_carry_i_6
       (.I0(pwm_on8__52_carry__1_n_12),
        .I1(pwm_on8__52_carry__1_n_15),
        .I2(pwm_on8__52_carry__0_n_9),
        .O(pwm_on8__108_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pwm_on8__108_carry_i_7
       (.I0(pwm_on8__52_carry__1_n_14),
        .I1(pwm_on8__52_carry__0_n_9),
        .O(pwm_on8__108_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h4DB2B24D)) 
    pwm_on8__108_carry_i_8
       (.I0(pwm_on8__52_carry__1_n_8),
        .I1(pwm_on8__52_carry__1_n_11),
        .I2(pwm_on8__52_carry__1_n_13),
        .I3(pwm_on8__52_carry__1_n_10),
        .I4(pwm_on8__52_carry__1_n_12),
        .O(pwm_on8__108_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    pwm_on8__108_carry_i_9
       (.I0(pwm_on8__108_carry_i_2_n_0),
        .I1(pwm_on8__52_carry__1_n_13),
        .I2(pwm_on8__52_carry__1_n_11),
        .I3(pwm_on8__52_carry__1_n_8),
        .O(pwm_on8__108_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pwm_on8__138_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({pwm_on8__138_carry_n_0,pwm_on8__138_carry_n_1,pwm_on8__138_carry_n_2,pwm_on8__138_carry_n_3,pwm_on8__138_carry_n_4,pwm_on8__138_carry_n_5,pwm_on8__138_carry_n_6,pwm_on8__138_carry_n_7}),
        .DI({pwm_on8__138_carry_i_1_n_0,pwm_on8__138_carry_i_2_n_0,pwm_on8__138_carry_i_3_n_0,pwm_on8__138_carry_i_4_n_0,pwm_on8__138_carry_i_5_n_0,pwm_on8__138_carry_i_6_n_0,pwm_on8__138_carry_i_7_n_0,pwm_on8__138_carry_i_8_n_0}),
        .O(NLW_pwm_on8__138_carry_O_UNCONNECTED[7:0]),
        .S({pwm_on8__138_carry_i_9_n_0,pwm_on8__138_carry_i_10_n_0,pwm_on8__138_carry_i_11_n_0,pwm_on8__138_carry_i_12_n_0,pwm_on8__138_carry_i_13_n_0,pwm_on8__138_carry_i_14_n_0,pwm_on8__138_carry_i_15_n_0,pwm_on8__138_carry_i_16_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pwm_on8__138_carry__0
       (.CI(pwm_on8__138_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_pwm_on8__138_carry__0_CO_UNCONNECTED[7:5],pwm_on8__138_carry__0_n_3,pwm_on8__138_carry__0_n_4,pwm_on8__138_carry__0_n_5,pwm_on8__138_carry__0_n_6,pwm_on8__138_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,pwm_on8__138_carry__0_i_1_n_0,pwm_on8__138_carry__0_i_2_n_0,pwm_on8__138_carry__0_i_3_n_0,pwm_on8__138_carry__0_i_4_n_0,pwm_on8__138_carry__0_i_5_n_0}),
        .O(NLW_pwm_on8__138_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,pwm_on8__138_carry__0_i_6_n_0,pwm_on8__138_carry__0_i_7_n_0,pwm_on8__138_carry__0_i_8_n_0,pwm_on8__138_carry__0_i_9_n_0,pwm_on8__138_carry__0_i_10_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on8__138_carry__0_i_1
       (.I0(pwm_on8__108_carry__0_n_14),
        .I1(pwm_on5_n_91),
        .O(pwm_on8__138_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pwm_on8__138_carry__0_i_10
       (.I0(pwm_on5_n_95),
        .I1(pwm_on8__108_carry_n_10),
        .I2(pwm_on8__108_carry_n_9),
        .I3(pwm_on5_n_94),
        .O(pwm_on8__138_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on8__138_carry__0_i_2
       (.I0(pwm_on8__108_carry__0_n_15),
        .I1(pwm_on5_n_92),
        .O(pwm_on8__138_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on8__138_carry__0_i_3
       (.I0(pwm_on8__108_carry_n_8),
        .I1(pwm_on5_n_93),
        .O(pwm_on8__138_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on8__138_carry__0_i_4
       (.I0(pwm_on8__108_carry_n_9),
        .I1(pwm_on5_n_94),
        .O(pwm_on8__138_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on8__138_carry__0_i_5
       (.I0(pwm_on8__108_carry_n_10),
        .I1(pwm_on5_n_95),
        .O(pwm_on8__138_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pwm_on8__138_carry__0_i_6
       (.I0(pwm_on5_n_91),
        .I1(pwm_on8__108_carry__0_n_14),
        .I2(pwm_on8__108_carry__0_n_13),
        .I3(pwm_on5_n_90),
        .O(pwm_on8__138_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pwm_on8__138_carry__0_i_7
       (.I0(pwm_on5_n_92),
        .I1(pwm_on8__108_carry__0_n_15),
        .I2(pwm_on8__108_carry__0_n_14),
        .I3(pwm_on5_n_91),
        .O(pwm_on8__138_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pwm_on8__138_carry__0_i_8
       (.I0(pwm_on5_n_93),
        .I1(pwm_on8__108_carry_n_8),
        .I2(pwm_on8__108_carry__0_n_15),
        .I3(pwm_on5_n_92),
        .O(pwm_on8__138_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pwm_on8__138_carry__0_i_9
       (.I0(pwm_on5_n_94),
        .I1(pwm_on8__108_carry_n_9),
        .I2(pwm_on8__108_carry_n_8),
        .I3(pwm_on5_n_93),
        .O(pwm_on8__138_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on8__138_carry_i_1
       (.I0(pwm_on8__108_carry_n_11),
        .I1(pwm_on5_n_96),
        .O(pwm_on8__138_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pwm_on8__138_carry_i_10
       (.I0(pwm_on5_n_97),
        .I1(pwm_on8__108_carry_n_12),
        .I2(pwm_on8__108_carry_n_11),
        .I3(pwm_on5_n_96),
        .O(pwm_on8__138_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pwm_on8__138_carry_i_11
       (.I0(pwm_on5_n_98),
        .I1(pwm_on8__108_carry_n_13),
        .I2(pwm_on8__108_carry_n_12),
        .I3(pwm_on5_n_97),
        .O(pwm_on8__138_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pwm_on8__138_carry_i_12
       (.I0(pwm_on5_n_99),
        .I1(pwm_on8__108_carry_n_14),
        .I2(pwm_on8__108_carry_n_13),
        .I3(pwm_on5_n_98),
        .O(pwm_on8__138_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    pwm_on8__138_carry_i_13
       (.I0(pwm_on5_n_100),
        .I1(pwm_on8__108_carry_n_15),
        .I2(pwm_on8__108_carry_n_14),
        .I3(pwm_on5_n_99),
        .O(pwm_on8__138_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    pwm_on8__138_carry_i_14
       (.I0(pwm_on5_n_101),
        .I1(pwm_on8__52_carry__1_n_15),
        .I2(pwm_on8__108_carry_n_15),
        .I3(pwm_on5_n_100),
        .O(pwm_on8__138_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pwm_on8__138_carry_i_15
       (.I0(pwm_on5_n_102),
        .I1(pwm_on8__52_carry__0_n_8),
        .I2(pwm_on8__52_carry__1_n_15),
        .I3(pwm_on5_n_101),
        .O(pwm_on8__138_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    pwm_on8__138_carry_i_16
       (.I0(pwm_on5_n_103),
        .I1(pwm_on8__52_carry__0_n_9),
        .I2(pwm_on8__52_carry__0_n_8),
        .I3(pwm_on5_n_102),
        .O(pwm_on8__138_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on8__138_carry_i_2
       (.I0(pwm_on8__108_carry_n_12),
        .I1(pwm_on5_n_97),
        .O(pwm_on8__138_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on8__138_carry_i_3
       (.I0(pwm_on8__108_carry_n_13),
        .I1(pwm_on5_n_98),
        .O(pwm_on8__138_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pwm_on8__138_carry_i_4
       (.I0(pwm_on8__108_carry_n_14),
        .I1(pwm_on5_n_99),
        .O(pwm_on8__138_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pwm_on8__138_carry_i_5
       (.I0(pwm_on8__108_carry_n_15),
        .I1(pwm_on5_n_100),
        .O(pwm_on8__138_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on8__138_carry_i_6
       (.I0(pwm_on8__52_carry__1_n_15),
        .I1(pwm_on5_n_101),
        .O(pwm_on8__138_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_on8__138_carry_i_7
       (.I0(pwm_on8__52_carry__0_n_8),
        .I1(pwm_on5_n_102),
        .O(pwm_on8__138_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    pwm_on8__138_carry_i_8
       (.I0(pwm_on8__52_carry__0_n_9),
        .I1(pwm_on5_n_103),
        .O(pwm_on8__138_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    pwm_on8__138_carry_i_9
       (.I0(pwm_on5_n_96),
        .I1(pwm_on8__108_carry_n_11),
        .I2(pwm_on8__108_carry_n_10),
        .I3(pwm_on5_n_95),
        .O(pwm_on8__138_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pwm_on8__52_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({pwm_on8__52_carry_n_0,pwm_on8__52_carry_n_1,pwm_on8__52_carry_n_2,pwm_on8__52_carry_n_3,pwm_on8__52_carry_n_4,pwm_on8__52_carry_n_5,pwm_on8__52_carry_n_6,pwm_on8__52_carry_n_7}),
        .DI({pwm_on8__52_carry_i_1_n_0,pwm_on8__52_carry_i_2_n_0,pwm_on5_n_101,pwm_on5_n_102,pwm_on5_n_103,pwm_on5_n_104,pwm_on5_n_105,1'b0}),
        .O(NLW_pwm_on8__52_carry_O_UNCONNECTED[7:0]),
        .S({pwm_on8__52_carry_i_3_n_0,pwm_on8__52_carry_i_4_n_0,pwm_on8__52_carry_i_5_n_0,pwm_on8__52_carry_i_6_n_0,pwm_on8__52_carry_i_7_n_0,pwm_on8__52_carry_i_8_n_0,pwm_on8__52_carry_i_9_n_0,pwm_on8_carry_n_13}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pwm_on8__52_carry__0
       (.CI(pwm_on8__52_carry_n_0),
        .CI_TOP(1'b0),
        .CO({pwm_on8__52_carry__0_n_0,pwm_on8__52_carry__0_n_1,pwm_on8__52_carry__0_n_2,pwm_on8__52_carry__0_n_3,pwm_on8__52_carry__0_n_4,pwm_on8__52_carry__0_n_5,pwm_on8__52_carry__0_n_6,pwm_on8__52_carry__0_n_7}),
        .DI({pwm_on8__52_carry__0_i_1_n_0,pwm_on8__52_carry__0_i_2_n_0,pwm_on8__52_carry__0_i_3_n_0,pwm_on8__52_carry__0_i_4_n_0,pwm_on8__52_carry__0_i_5_n_0,pwm_on8__52_carry__0_i_6_n_0,pwm_on8__52_carry__0_i_7_n_0,pwm_on8__52_carry__0_i_8_n_0}),
        .O({pwm_on8__52_carry__0_n_8,pwm_on8__52_carry__0_n_9,NLW_pwm_on8__52_carry__0_O_UNCONNECTED[5:0]}),
        .S({pwm_on8__52_carry__0_i_9_n_0,pwm_on8__52_carry__0_i_10_n_0,pwm_on8__52_carry__0_i_11_n_0,pwm_on8__52_carry__0_i_12_n_0,pwm_on8__52_carry__0_i_13_n_0,pwm_on8__52_carry__0_i_14_n_0,pwm_on8__52_carry__0_i_15_n_0,pwm_on8__52_carry__0_i_16_n_0}));
  LUT5 #(
    .INIT(32'hBBB2B222)) 
    pwm_on8__52_carry__0_i_1
       (.I0(pwm_on5_n_92),
        .I1(pwm_on8__52_carry__0_i_17_n_0),
        .I2(pwm_on5_n_99),
        .I3(pwm_on8_carry__0_n_8),
        .I4(pwm_on5_n_97),
        .O(pwm_on8__52_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    pwm_on8__52_carry__0_i_10
       (.I0(pwm_on8__52_carry__0_i_2_n_0),
        .I1(pwm_on5_n_99),
        .I2(pwm_on8_carry__0_n_8),
        .I3(pwm_on5_n_97),
        .I4(pwm_on5_n_92),
        .I5(pwm_on8__52_carry__0_i_17_n_0),
        .O(pwm_on8__52_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    pwm_on8__52_carry__0_i_11
       (.I0(pwm_on8__52_carry__0_i_3_n_0),
        .I1(pwm_on5_n_98),
        .I2(pwm_on8_carry__0_n_9),
        .I3(pwm_on5_n_100),
        .I4(pwm_on5_n_93),
        .I5(pwm_on8__52_carry__0_i_18_n_0),
        .O(pwm_on8__52_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    pwm_on8__52_carry__0_i_12
       (.I0(pwm_on8__52_carry__0_i_4_n_0),
        .I1(pwm_on5_n_99),
        .I2(pwm_on8_carry__0_n_10),
        .I3(pwm_on5_n_101),
        .I4(pwm_on5_n_94),
        .I5(pwm_on8__52_carry__0_i_19_n_0),
        .O(pwm_on8__52_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    pwm_on8__52_carry__0_i_13
       (.I0(pwm_on8__52_carry__0_i_5_n_0),
        .I1(pwm_on5_n_100),
        .I2(pwm_on8_carry__0_n_11),
        .I3(pwm_on5_n_102),
        .I4(pwm_on5_n_95),
        .I5(pwm_on8__52_carry__0_i_20_n_0),
        .O(pwm_on8__52_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    pwm_on8__52_carry__0_i_14
       (.I0(pwm_on8__52_carry__0_i_6_n_0),
        .I1(pwm_on5_n_96),
        .I2(pwm_on8__52_carry__0_i_21_n_0),
        .I3(pwm_on8_carry__0_n_12),
        .I4(pwm_on5_n_103),
        .I5(pwm_on5_n_101),
        .O(pwm_on8__52_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    pwm_on8__52_carry__0_i_15
       (.I0(pwm_on8__52_carry__0_i_7_n_0),
        .I1(pwm_on5_n_97),
        .I2(pwm_on8__52_carry__0_i_22_n_0),
        .I3(pwm_on8_carry__0_n_13),
        .I4(pwm_on5_n_104),
        .I5(pwm_on5_n_102),
        .O(pwm_on8__52_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h9666666966696999)) 
    pwm_on8__52_carry__0_i_16
       (.I0(pwm_on5_n_98),
        .I1(pwm_on8__52_carry__0_i_23_n_0),
        .I2(pwm_on5_n_103),
        .I3(pwm_on8_carry__0_n_14),
        .I4(pwm_on5_n_105),
        .I5(pwm_on5_n_99),
        .O(pwm_on8__52_carry__0_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pwm_on8__52_carry__0_i_17
       (.I0(pwm_on5_n_96),
        .I1(pwm_on8_carry__1_n_15),
        .I2(pwm_on5_n_98),
        .O(pwm_on8__52_carry__0_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pwm_on8__52_carry__0_i_18
       (.I0(pwm_on5_n_97),
        .I1(pwm_on8_carry__0_n_8),
        .I2(pwm_on5_n_99),
        .O(pwm_on8__52_carry__0_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pwm_on8__52_carry__0_i_19
       (.I0(pwm_on5_n_100),
        .I1(pwm_on8_carry__0_n_9),
        .I2(pwm_on5_n_98),
        .O(pwm_on8__52_carry__0_i_19_n_0));
  LUT5 #(
    .INIT(32'hBBB2B222)) 
    pwm_on8__52_carry__0_i_2
       (.I0(pwm_on5_n_93),
        .I1(pwm_on8__52_carry__0_i_18_n_0),
        .I2(pwm_on5_n_98),
        .I3(pwm_on8_carry__0_n_9),
        .I4(pwm_on5_n_100),
        .O(pwm_on8__52_carry__0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pwm_on8__52_carry__0_i_20
       (.I0(pwm_on5_n_101),
        .I1(pwm_on8_carry__0_n_10),
        .I2(pwm_on5_n_99),
        .O(pwm_on8__52_carry__0_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pwm_on8__52_carry__0_i_21
       (.I0(pwm_on5_n_102),
        .I1(pwm_on8_carry__0_n_11),
        .I2(pwm_on5_n_100),
        .O(pwm_on8__52_carry__0_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pwm_on8__52_carry__0_i_22
       (.I0(pwm_on5_n_101),
        .I1(pwm_on8_carry__0_n_12),
        .I2(pwm_on5_n_103),
        .O(pwm_on8__52_carry__0_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pwm_on8__52_carry__0_i_23
       (.I0(pwm_on5_n_102),
        .I1(pwm_on8_carry__0_n_13),
        .I2(pwm_on5_n_104),
        .O(pwm_on8__52_carry__0_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h69)) 
    pwm_on8__52_carry__0_i_24
       (.I0(pwm_on5_n_95),
        .I1(pwm_on8_carry__1_n_14),
        .I2(pwm_on5_n_97),
        .O(pwm_on8__52_carry__0_i_24_n_0));
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    pwm_on8__52_carry__0_i_3
       (.I0(pwm_on5_n_99),
        .I1(pwm_on8_carry__0_n_10),
        .I2(pwm_on5_n_101),
        .I3(pwm_on5_n_94),
        .I4(pwm_on8__52_carry__0_i_19_n_0),
        .O(pwm_on8__52_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hE800FFE8)) 
    pwm_on8__52_carry__0_i_4
       (.I0(pwm_on5_n_100),
        .I1(pwm_on8_carry__0_n_11),
        .I2(pwm_on5_n_102),
        .I3(pwm_on5_n_95),
        .I4(pwm_on8__52_carry__0_i_20_n_0),
        .O(pwm_on8__52_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    pwm_on8__52_carry__0_i_5
       (.I0(pwm_on8_carry__0_n_12),
        .I1(pwm_on5_n_103),
        .I2(pwm_on5_n_101),
        .I3(pwm_on8__52_carry__0_i_21_n_0),
        .I4(pwm_on5_n_96),
        .O(pwm_on8__52_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    pwm_on8__52_carry__0_i_6
       (.I0(pwm_on8_carry__0_n_13),
        .I1(pwm_on5_n_104),
        .I2(pwm_on5_n_102),
        .I3(pwm_on8__52_carry__0_i_22_n_0),
        .I4(pwm_on5_n_97),
        .O(pwm_on8__52_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'hDDD4D444)) 
    pwm_on8__52_carry__0_i_7
       (.I0(pwm_on8__52_carry__0_i_23_n_0),
        .I1(pwm_on5_n_98),
        .I2(pwm_on5_n_105),
        .I3(pwm_on8_carry__0_n_14),
        .I4(pwm_on5_n_103),
        .O(pwm_on8__52_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h17E8E817)) 
    pwm_on8__52_carry__0_i_8
       (.I0(pwm_on5_n_103),
        .I1(pwm_on8_carry__0_n_14),
        .I2(pwm_on5_n_105),
        .I3(pwm_on8__52_carry__0_i_23_n_0),
        .I4(pwm_on5_n_98),
        .O(pwm_on8__52_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    pwm_on8__52_carry__0_i_9
       (.I0(pwm_on8__52_carry__0_i_1_n_0),
        .I1(pwm_on5_n_98),
        .I2(pwm_on8_carry__1_n_15),
        .I3(pwm_on5_n_96),
        .I4(pwm_on5_n_91),
        .I5(pwm_on8__52_carry__0_i_24_n_0),
        .O(pwm_on8__52_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 pwm_on8__52_carry__1
       (.CI(pwm_on8__52_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_pwm_on8__52_carry__1_CO_UNCONNECTED[7],pwm_on8__52_carry__1_n_1,pwm_on8__52_carry__1_n_2,pwm_on8__52_carry__1_n_3,pwm_on8__52_carry__1_n_4,pwm_on8__52_carry__1_n_5,pwm_on8__52_carry__1_n_6,pwm_on8__52_carry__1_n_7}),
        .DI({1'b0,pwm_on8__52_carry__1_i_1_n_0,pwm_on8__52_carry__1_i_2_n_0,pwm_on8__52_carry__1_i_3_n_0,pwm_on8__52_carry__1_i_4_n_0,pwm_on8__52_carry__1_i_5_n_0,pwm_on8__52_carry__1_i_6_n_0,pwm_on8__52_carry__1_i_7_n_0}),
        .O({pwm_on8__52_carry__1_n_8,pwm_on8__52_carry__1_n_9,pwm_on8__52_carry__1_n_10,pwm_on8__52_carry__1_n_11,pwm_on8__52_carry__1_n_12,pwm_on8__52_carry__1_n_13,pwm_on8__52_carry__1_n_14,pwm_on8__52_carry__1_n_15}),
        .S({pwm_on8__52_carry__1_i_8_n_0,pwm_on8__52_carry__1_i_9_n_0,pwm_on8__52_carry__1_i_10_n_0,pwm_on8__52_carry__1_i_11_n_0,pwm_on8__52_carry__1_i_12_n_0,pwm_on8__52_carry__1_i_13_n_0,pwm_on8__52_carry__1_i_14_n_0,pwm_on8__52_carry__1_i_15_n_0}));
  LUT4 #(
    .INIT(16'hB332)) 
    pwm_on8__52_carry__1_i_1
       (.I0(pwm_on5_n_90),
        .I1(pwm_on8_carry__1_n_4),
        .I2(pwm_on5_n_92),
        .I3(pwm_on5_n_91),
        .O(pwm_on8__52_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h95566AA9)) 
    pwm_on8__52_carry__1_i_10
       (.I0(pwm_on8__52_carry__1_i_2_n_0),
        .I1(pwm_on5_n_90),
        .I2(pwm_on8_carry__1_n_4),
        .I3(pwm_on5_n_92),
        .I4(pwm_on5_n_91),
        .O(pwm_on8__52_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'hE83FC07E17C03F81)) 
    pwm_on8__52_carry__1_i_11
       (.I0(pwm_on5_n_94),
        .I1(pwm_on5_n_93),
        .I2(pwm_on5_n_91),
        .I3(pwm_on5_n_92),
        .I4(pwm_on8_carry__1_n_4),
        .I5(pwm_on5_n_90),
        .O(pwm_on8__52_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h6996996699669669)) 
    pwm_on8__52_carry__1_i_12
       (.I0(pwm_on8__52_carry__1_i_4_n_0),
        .I1(pwm_on5_n_91),
        .I2(pwm_on8_carry__1_n_4),
        .I3(pwm_on5_n_93),
        .I4(pwm_on5_n_92),
        .I5(pwm_on5_n_94),
        .O(pwm_on8__52_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'h6AA9955695566AA9)) 
    pwm_on8__52_carry__1_i_13
       (.I0(pwm_on8__52_carry__1_i_5_n_0),
        .I1(pwm_on8_carry__1_n_4),
        .I2(pwm_on5_n_93),
        .I3(pwm_on5_n_95),
        .I4(pwm_on5_n_94),
        .I5(pwm_on5_n_92),
        .O(pwm_on8__52_carry__1_i_13_n_0));
  LUT5 #(
    .INIT(32'h66696999)) 
    pwm_on8__52_carry__1_i_14
       (.I0(pwm_on8__52_carry__1_i_6_n_0),
        .I1(pwm_on8__52_carry__1_i_17_n_0),
        .I2(pwm_on5_n_94),
        .I3(pwm_on8_carry__1_n_13),
        .I4(pwm_on5_n_96),
        .O(pwm_on8__52_carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    pwm_on8__52_carry__1_i_15
       (.I0(pwm_on8__52_carry__1_i_7_n_0),
        .I1(pwm_on5_n_97),
        .I2(pwm_on8_carry__1_n_14),
        .I3(pwm_on5_n_95),
        .I4(pwm_on5_n_90),
        .I5(pwm_on8__52_carry__1_i_16_n_0),
        .O(pwm_on8__52_carry__1_i_15_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    pwm_on8__52_carry__1_i_16
       (.I0(pwm_on5_n_96),
        .I1(pwm_on8_carry__1_n_13),
        .I2(pwm_on5_n_94),
        .O(pwm_on8__52_carry__1_i_16_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pwm_on8__52_carry__1_i_17
       (.I0(pwm_on5_n_95),
        .I1(pwm_on8_carry__1_n_4),
        .I2(pwm_on5_n_93),
        .O(pwm_on8__52_carry__1_i_17_n_0));
  LUT5 #(
    .INIT(32'h08E0800E)) 
    pwm_on8__52_carry__1_i_2
       (.I0(pwm_on5_n_93),
        .I1(pwm_on5_n_91),
        .I2(pwm_on5_n_92),
        .I3(pwm_on8_carry__1_n_4),
        .I4(pwm_on5_n_90),
        .O(pwm_on8__52_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'h08E0800E)) 
    pwm_on8__52_carry__1_i_3
       (.I0(pwm_on5_n_94),
        .I1(pwm_on5_n_92),
        .I2(pwm_on5_n_93),
        .I3(pwm_on8_carry__1_n_4),
        .I4(pwm_on5_n_91),
        .O(pwm_on8__52_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'h60009990)) 
    pwm_on8__52_carry__1_i_4
       (.I0(pwm_on5_n_92),
        .I1(pwm_on5_n_94),
        .I2(pwm_on5_n_95),
        .I3(pwm_on5_n_93),
        .I4(pwm_on8_carry__1_n_4),
        .O(pwm_on8__52_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h00E8E800E80000E8)) 
    pwm_on8__52_carry__1_i_5
       (.I0(pwm_on5_n_96),
        .I1(pwm_on8_carry__1_n_13),
        .I2(pwm_on5_n_94),
        .I3(pwm_on5_n_93),
        .I4(pwm_on8_carry__1_n_4),
        .I5(pwm_on5_n_95),
        .O(pwm_on8__52_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'hBBB2B222)) 
    pwm_on8__52_carry__1_i_6
       (.I0(pwm_on5_n_90),
        .I1(pwm_on8__52_carry__1_i_16_n_0),
        .I2(pwm_on5_n_97),
        .I3(pwm_on8_carry__1_n_14),
        .I4(pwm_on5_n_95),
        .O(pwm_on8__52_carry__1_i_6_n_0));
  LUT5 #(
    .INIT(32'hBBB2B222)) 
    pwm_on8__52_carry__1_i_7
       (.I0(pwm_on5_n_91),
        .I1(pwm_on8__52_carry__0_i_24_n_0),
        .I2(pwm_on5_n_98),
        .I3(pwm_on8_carry__1_n_15),
        .I4(pwm_on5_n_96),
        .O(pwm_on8__52_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_on8__52_carry__1_i_8
       (.I0(pwm_on5_n_90),
        .I1(pwm_on8_carry__1_n_4),
        .O(pwm_on8__52_carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h7F01)) 
    pwm_on8__52_carry__1_i_9
       (.I0(pwm_on5_n_91),
        .I1(pwm_on5_n_92),
        .I2(pwm_on8_carry__1_n_4),
        .I3(pwm_on5_n_90),
        .O(pwm_on8__52_carry__1_i_9_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    pwm_on8__52_carry_i_1
       (.I0(pwm_on5_n_105),
        .I1(pwm_on8_carry__0_n_14),
        .I2(pwm_on5_n_103),
        .I3(pwm_on5_n_99),
        .O(pwm_on8__52_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pwm_on8__52_carry_i_2
       (.I0(pwm_on5_n_100),
        .I1(pwm_on5_n_104),
        .I2(pwm_on8_carry__0_n_15),
        .O(pwm_on8__52_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h566A)) 
    pwm_on8__52_carry_i_3
       (.I0(pwm_on8__52_carry_i_1_n_0),
        .I1(pwm_on5_n_100),
        .I2(pwm_on5_n_104),
        .I3(pwm_on8_carry__0_n_15),
        .O(pwm_on8__52_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    pwm_on8__52_carry_i_4
       (.I0(pwm_on8_carry__0_n_15),
        .I1(pwm_on5_n_104),
        .I2(pwm_on5_n_100),
        .I3(pwm_on8_carry_n_8),
        .I4(pwm_on5_n_105),
        .O(pwm_on8__52_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    pwm_on8__52_carry_i_5
       (.I0(pwm_on8_carry_n_8),
        .I1(pwm_on5_n_105),
        .I2(pwm_on5_n_101),
        .O(pwm_on8__52_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pwm_on8__52_carry_i_6
       (.I0(pwm_on5_n_102),
        .I1(pwm_on8_carry_n_9),
        .O(pwm_on8__52_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pwm_on8__52_carry_i_7
       (.I0(pwm_on5_n_103),
        .I1(pwm_on8_carry_n_10),
        .O(pwm_on8__52_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pwm_on8__52_carry_i_8
       (.I0(pwm_on5_n_104),
        .I1(pwm_on8_carry_n_11),
        .O(pwm_on8__52_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pwm_on8__52_carry_i_9
       (.I0(pwm_on5_n_105),
        .I1(pwm_on8_carry_n_12),
        .O(pwm_on8__52_carry_i_9_n_0));
  CARRY8 pwm_on8_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({pwm_on8_carry_n_0,pwm_on8_carry_n_1,pwm_on8_carry_n_2,pwm_on8_carry_n_3,pwm_on8_carry_n_4,pwm_on8_carry_n_5,pwm_on8_carry_n_6,pwm_on8_carry_n_7}),
        .DI({pwm_on5_n_101,pwm_on5_n_102,pwm_on5_n_103,pwm_on5_n_104,pwm_on5_n_105,1'b0,1'b0,1'b1}),
        .O({pwm_on8_carry_n_8,pwm_on8_carry_n_9,pwm_on8_carry_n_10,pwm_on8_carry_n_11,pwm_on8_carry_n_12,pwm_on8_carry_n_13,NLW_pwm_on8_carry_O_UNCONNECTED[1:0]}),
        .S({pwm_on8_carry_i_1_n_0,pwm_on8_carry_i_2_n_0,pwm_on8_carry_i_3_n_0,pwm_on8_carry_i_4_n_0,pwm_on8_carry_i_5_n_0,pwm_on8_carry_i_6_n_0,pwm_on8_carry_i_7_n_0,pwm_on5_n_105}));
  CARRY8 pwm_on8_carry__0
       (.CI(pwm_on8_carry_n_0),
        .CI_TOP(1'b0),
        .CO({pwm_on8_carry__0_n_0,pwm_on8_carry__0_n_1,pwm_on8_carry__0_n_2,pwm_on8_carry__0_n_3,pwm_on8_carry__0_n_4,pwm_on8_carry__0_n_5,pwm_on8_carry__0_n_6,pwm_on8_carry__0_n_7}),
        .DI({pwm_on5_n_93,pwm_on5_n_94,pwm_on5_n_95,pwm_on5_n_96,pwm_on5_n_97,pwm_on5_n_98,pwm_on5_n_99,pwm_on5_n_100}),
        .O({pwm_on8_carry__0_n_8,pwm_on8_carry__0_n_9,pwm_on8_carry__0_n_10,pwm_on8_carry__0_n_11,pwm_on8_carry__0_n_12,pwm_on8_carry__0_n_13,pwm_on8_carry__0_n_14,pwm_on8_carry__0_n_15}),
        .S({pwm_on8_carry__0_i_1_n_0,pwm_on8_carry__0_i_2_n_0,pwm_on8_carry__0_i_3_n_0,pwm_on8_carry__0_i_4_n_0,pwm_on8_carry__0_i_5_n_0,pwm_on8_carry__0_i_6_n_0,pwm_on8_carry__0_i_7_n_0,pwm_on8_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_on8_carry__0_i_1
       (.I0(pwm_on5_n_93),
        .I1(pwm_on5_n_90),
        .O(pwm_on8_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_on8_carry__0_i_2
       (.I0(pwm_on5_n_94),
        .I1(pwm_on5_n_91),
        .O(pwm_on8_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_on8_carry__0_i_3
       (.I0(pwm_on5_n_95),
        .I1(pwm_on5_n_92),
        .O(pwm_on8_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_on8_carry__0_i_4
       (.I0(pwm_on5_n_96),
        .I1(pwm_on5_n_93),
        .O(pwm_on8_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_on8_carry__0_i_5
       (.I0(pwm_on5_n_97),
        .I1(pwm_on5_n_94),
        .O(pwm_on8_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_on8_carry__0_i_6
       (.I0(pwm_on5_n_98),
        .I1(pwm_on5_n_95),
        .O(pwm_on8_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_on8_carry__0_i_7
       (.I0(pwm_on5_n_99),
        .I1(pwm_on5_n_96),
        .O(pwm_on8_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_on8_carry__0_i_8
       (.I0(pwm_on5_n_100),
        .I1(pwm_on5_n_97),
        .O(pwm_on8_carry__0_i_8_n_0));
  CARRY8 pwm_on8_carry__1
       (.CI(pwm_on8_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_pwm_on8_carry__1_CO_UNCONNECTED[7:4],pwm_on8_carry__1_n_4,NLW_pwm_on8_carry__1_CO_UNCONNECTED[2],pwm_on8_carry__1_n_6,pwm_on8_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,pwm_on5_n_90,pwm_on5_n_91,pwm_on5_n_92}),
        .O({NLW_pwm_on8_carry__1_O_UNCONNECTED[7:3],pwm_on8_carry__1_n_13,pwm_on8_carry__1_n_14,pwm_on8_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b1,pwm_on8_carry__1_i_1_n_0,pwm_on8_carry__1_i_2_n_0,pwm_on8_carry__1_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_on8_carry__1_i_1
       (.I0(pwm_on5_n_90),
        .O(pwm_on8_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_on8_carry__1_i_2
       (.I0(pwm_on5_n_91),
        .O(pwm_on8_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_on8_carry__1_i_3
       (.I0(pwm_on5_n_92),
        .O(pwm_on8_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_on8_carry_i_1
       (.I0(pwm_on5_n_101),
        .I1(pwm_on5_n_98),
        .O(pwm_on8_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_on8_carry_i_2
       (.I0(pwm_on5_n_102),
        .I1(pwm_on5_n_99),
        .O(pwm_on8_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_on8_carry_i_3
       (.I0(pwm_on5_n_103),
        .I1(pwm_on5_n_100),
        .O(pwm_on8_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_on8_carry_i_4
       (.I0(pwm_on5_n_104),
        .I1(pwm_on5_n_101),
        .O(pwm_on8_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_on8_carry_i_5
       (.I0(pwm_on5_n_105),
        .I1(pwm_on5_n_102),
        .O(pwm_on8_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_on8_carry_i_6
       (.I0(pwm_on5_n_103),
        .O(pwm_on8_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_on8_carry_i_7
       (.I0(pwm_on5_n_104),
        .O(pwm_on8_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hEEEEFEEFAAAAAAAA)) 
    pwm_on_i_1
       (.I0(\pwm[7]_i_4_n_0 ),
        .I1(\pwm[0]_i_1_n_0 ),
        .I2(pwm_on7[5]),
        .I3(\pwm[7]_i_3_n_0 ),
        .I4(pwm_on4_carry_n_1),
        .I5(pwm_on_reg_n_0),
        .O(pwm_on_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pwm_on_reg
       (.C(rdy),
        .CE(1'b1),
        .D(pwm_on_i_1_n_0),
        .Q(pwm_on_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_reg[0] 
       (.C(rdy),
        .CE(1'b1),
        .D(\pwm[0]_i_1_n_0 ),
        .Q(pwm[0]),
        .R(\pwm[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_reg[1] 
       (.C(rdy),
        .CE(1'b1),
        .D(\pwm[1]_i_1_n_0 ),
        .Q(pwm[1]),
        .R(\pwm[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_reg[2] 
       (.C(rdy),
        .CE(1'b1),
        .D(\pwm[2]_i_1_n_0 ),
        .Q(pwm[2]),
        .R(\pwm[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_reg[3] 
       (.C(rdy),
        .CE(1'b1),
        .D(\pwm[3]_i_1_n_0 ),
        .Q(pwm[3]),
        .R(\pwm[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_reg[4] 
       (.C(rdy),
        .CE(1'b1),
        .D(\pwm[4]_i_1_n_0 ),
        .Q(pwm[4]),
        .R(\pwm[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_reg[5] 
       (.C(rdy),
        .CE(1'b1),
        .D(\pwm[5]_i_1_n_0 ),
        .Q(pwm[5]),
        .R(\pwm[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_reg[6] 
       (.C(rdy),
        .CE(1'b1),
        .D(\pwm[6]_i_1_n_0 ),
        .Q(pwm[6]),
        .R(\pwm[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_reg[7] 
       (.C(rdy),
        .CE(1'b1),
        .D(\pwm[7]_i_2_n_0 ),
        .Q(pwm[7]),
        .R(\pwm[7]_i_1_n_0 ));
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
