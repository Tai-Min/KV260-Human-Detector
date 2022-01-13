// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Jan 13 02:03:12 2021
// Host        : DESKTOP-OELG8MS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_stepper_0_0_sim_netlist.v
// Design      : system_stepper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stepper
   (ena,
    busy,
    step,
    dir,
    cmd,
    latch,
    force_ena,
    stop2,
    stop1,
    clk);
  output ena;
  output busy;
  output step;
  output dir;
  input [10:0]cmd;
  input latch;
  input force_ena;
  input stop2;
  input stop1;
  input clk;

  wire busy;
  wire busy_latch_i_1_n_0;
  wire busy_latch_reg_n_0;
  wire busy_posedge0__2;
  wire busy_posedge_i_1_n_0;
  wire busy_posedge_i_4_n_0;
  wire busy_posedge_reg_n_0;
  wire clear;
  wire clk;
  wire [10:0]cmd;
  wire cmd_latch_flip;
  wire cmd_latch_flip_i_1_n_0;
  wire cmd_posedge_flip;
  wire [1:0]curr_cmd;
  wire dir;
  wire dir_i_1_n_0;
  wire ena;
  wire force_ena;
  wire latch;
  wire step;
  wire step_negedge;
  wire step_posedge_i_1_n_0;
  wire step_posedge_i_2_n_0;
  wire step_posedge_reg_n_0;
  wire steps_performed1__0;
  wire \steps_performed[0]_i_1_n_0 ;
  wire \steps_performed[1]_i_1_n_0 ;
  wire \steps_performed[2]_i_1_n_0 ;
  wire \steps_performed[3]_i_1_n_0 ;
  wire \steps_performed[4]_i_1_n_0 ;
  wire \steps_performed[5]_i_1_n_0 ;
  wire \steps_performed[5]_i_2_n_0 ;
  wire \steps_performed[6]_i_1_n_0 ;
  wire \steps_performed[7]_i_1_n_0 ;
  wire \steps_performed[7]_i_3_n_0 ;
  wire \steps_performed[7]_i_5_n_0 ;
  wire \steps_performed[7]_i_6_n_0 ;
  wire \steps_performed[7]_i_7_n_0 ;
  wire \steps_performed[7]_i_8_n_0 ;
  wire \steps_performed[7]_i_9_n_0 ;
  wire steps_performed__1;
  wire [7:0]steps_performed_reg;
  wire [7:0]steps_to_perform;
  wire stop1;
  wire stop2;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    busy_INST_0
       (.I0(busy_posedge_reg_n_0),
        .I1(busy_latch_reg_n_0),
        .O(busy));
  LUT4 #(
    .INIT(16'h9E16)) 
    busy_latch_i_1
       (.I0(cmd[10]),
        .I1(cmd[9]),
        .I2(busy_posedge_reg_n_0),
        .I3(busy_latch_reg_n_0),
        .O(busy_latch_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    busy_latch_reg
       (.C(latch),
        .CE(1'b1),
        .D(busy_latch_i_1_n_0),
        .Q(busy_latch_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF53FFFFF0AC00000)) 
    busy_posedge_i_1
       (.I0(steps_performed1__0),
        .I1(busy_posedge0__2),
        .I2(curr_cmd[0]),
        .I3(curr_cmd[1]),
        .I4(busy_posedge_i_4_n_0),
        .I5(busy_posedge_reg_n_0),
        .O(busy_posedge_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    busy_posedge_i_2
       (.I0(\steps_performed[7]_i_9_n_0 ),
        .I1(\steps_performed[7]_i_8_n_0 ),
        .I2(\steps_performed[7]_i_7_n_0 ),
        .I3(\steps_performed[7]_i_6_n_0 ),
        .I4(busy_posedge0__2),
        .O(steps_performed1__0));
  LUT3 #(
    .INIT(8'h47)) 
    busy_posedge_i_3
       (.I0(stop2),
        .I1(dir),
        .I2(stop1),
        .O(busy_posedge0__2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6006)) 
    busy_posedge_i_4
       (.I0(busy_latch_reg_n_0),
        .I1(busy_posedge_reg_n_0),
        .I2(cmd_latch_flip),
        .I3(cmd_posedge_flip),
        .O(busy_posedge_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    busy_posedge_reg
       (.C(clk),
        .CE(1'b1),
        .D(busy_posedge_i_1_n_0),
        .Q(busy_posedge_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    cmd_latch_flip_i_1
       (.I0(cmd_latch_flip),
        .O(cmd_latch_flip_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_latch_flip_reg
       (.C(latch),
        .CE(1'b1),
        .D(cmd_latch_flip_i_1_n_0),
        .Q(cmd_latch_flip),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_posedge_flip_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd_latch_flip),
        .Q(cmd_posedge_flip),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cmd_reg[0] 
       (.C(latch),
        .CE(1'b1),
        .D(cmd[9]),
        .Q(curr_cmd[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \curr_cmd_reg[1] 
       (.C(latch),
        .CE(1'b1),
        .D(cmd[10]),
        .Q(curr_cmd[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    dir_i_1
       (.I0(cmd[10]),
        .I1(cmd[9]),
        .O(dir_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dir_reg
       (.C(latch),
        .CE(dir_i_1_n_0),
        .D(cmd[8]),
        .Q(dir),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h41)) 
    ena_INST_0
       (.I0(force_ena),
        .I1(busy_latch_reg_n_0),
        .I2(busy_posedge_reg_n_0),
        .O(ena));
  LUT2 #(
    .INIT(4'h6)) 
    step_INST_0
       (.I0(step_negedge),
        .I1(step_posedge_reg_n_0),
        .O(step));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    step_negedge_reg
       (.C(clk),
        .CE(1'b1),
        .D(step_posedge_reg_n_0),
        .Q(step_negedge),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFACFFFFF05300000)) 
    step_posedge_i_1
       (.I0(steps_performed1__0),
        .I1(busy_posedge0__2),
        .I2(curr_cmd[0]),
        .I3(curr_cmd[1]),
        .I4(step_posedge_i_2_n_0),
        .I5(step_posedge_reg_n_0),
        .O(step_posedge_i_1_n_0));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    step_posedge_i_2
       (.I0(step_negedge),
        .I1(step_posedge_reg_n_0),
        .I2(busy_posedge_reg_n_0),
        .I3(busy_latch_reg_n_0),
        .I4(cmd_latch_flip),
        .I5(cmd_posedge_flip),
        .O(step_posedge_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    step_posedge_reg
       (.C(clk),
        .CE(1'b1),
        .D(step_posedge_i_1_n_0),
        .Q(step_posedge_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4182)) 
    \steps_performed[0]_i_1 
       (.I0(steps_performed__1),
        .I1(cmd_latch_flip),
        .I2(cmd_posedge_flip),
        .I3(steps_performed_reg[0]),
        .O(\steps_performed[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h70078008)) 
    \steps_performed[1]_i_1 
       (.I0(steps_performed__1),
        .I1(steps_performed_reg[0]),
        .I2(cmd_latch_flip),
        .I3(cmd_posedge_flip),
        .I4(steps_performed_reg[1]),
        .O(\steps_performed[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F00007F80000080)) 
    \steps_performed[2]_i_1 
       (.I0(steps_performed_reg[0]),
        .I1(steps_performed__1),
        .I2(steps_performed_reg[1]),
        .I3(cmd_latch_flip),
        .I4(cmd_posedge_flip),
        .I5(steps_performed_reg[2]),
        .O(\steps_performed[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \steps_performed[3]_i_1 
       (.I0(steps_performed__1),
        .I1(steps_performed_reg[0]),
        .I2(steps_performed_reg[1]),
        .I3(steps_performed_reg[2]),
        .I4(clear),
        .I5(steps_performed_reg[3]),
        .O(\steps_performed[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F00007F80000080)) 
    \steps_performed[4]_i_1 
       (.I0(\steps_performed[5]_i_2_n_0 ),
        .I1(steps_performed__1),
        .I2(steps_performed_reg[3]),
        .I3(cmd_latch_flip),
        .I4(cmd_posedge_flip),
        .I5(steps_performed_reg[4]),
        .O(\steps_performed[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \steps_performed[5]_i_1 
       (.I0(steps_performed__1),
        .I1(\steps_performed[5]_i_2_n_0 ),
        .I2(steps_performed_reg[3]),
        .I3(steps_performed_reg[4]),
        .I4(clear),
        .I5(steps_performed_reg[5]),
        .O(\steps_performed[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \steps_performed[5]_i_2 
       (.I0(steps_performed_reg[2]),
        .I1(steps_performed_reg[1]),
        .I2(steps_performed_reg[0]),
        .O(\steps_performed[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F00007F80000080)) 
    \steps_performed[6]_i_1 
       (.I0(\steps_performed[7]_i_3_n_0 ),
        .I1(steps_performed__1),
        .I2(steps_performed_reg[5]),
        .I3(cmd_latch_flip),
        .I4(cmd_posedge_flip),
        .I5(steps_performed_reg[6]),
        .O(\steps_performed[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \steps_performed[7]_i_1 
       (.I0(steps_performed_reg[5]),
        .I1(steps_performed__1),
        .I2(\steps_performed[7]_i_3_n_0 ),
        .I3(steps_performed_reg[6]),
        .I4(clear),
        .I5(steps_performed_reg[7]),
        .O(\steps_performed[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2222222222222220)) 
    \steps_performed[7]_i_2 
       (.I0(\steps_performed[7]_i_5_n_0 ),
        .I1(busy_posedge0__2),
        .I2(\steps_performed[7]_i_6_n_0 ),
        .I3(\steps_performed[7]_i_7_n_0 ),
        .I4(\steps_performed[7]_i_8_n_0 ),
        .I5(\steps_performed[7]_i_9_n_0 ),
        .O(steps_performed__1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \steps_performed[7]_i_3 
       (.I0(steps_performed_reg[4]),
        .I1(steps_performed_reg[3]),
        .I2(steps_performed_reg[0]),
        .I3(steps_performed_reg[1]),
        .I4(steps_performed_reg[2]),
        .O(\steps_performed[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \steps_performed[7]_i_4 
       (.I0(cmd_posedge_flip),
        .I1(cmd_latch_flip),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \steps_performed[7]_i_5 
       (.I0(curr_cmd[0]),
        .I1(curr_cmd[1]),
        .I2(busy_latch_reg_n_0),
        .I3(busy_posedge_reg_n_0),
        .O(\steps_performed[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \steps_performed[7]_i_6 
       (.I0(steps_performed_reg[7]),
        .I1(steps_to_perform[7]),
        .I2(steps_performed_reg[6]),
        .I3(steps_to_perform[6]),
        .O(\steps_performed[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \steps_performed[7]_i_7 
       (.I0(steps_performed_reg[5]),
        .I1(steps_to_perform[5]),
        .I2(steps_performed_reg[2]),
        .I3(steps_to_perform[2]),
        .O(\steps_performed[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \steps_performed[7]_i_8 
       (.I0(steps_performed_reg[1]),
        .I1(steps_to_perform[1]),
        .I2(steps_performed_reg[0]),
        .I3(steps_to_perform[0]),
        .O(\steps_performed[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \steps_performed[7]_i_9 
       (.I0(steps_performed_reg[4]),
        .I1(steps_to_perform[4]),
        .I2(steps_performed_reg[3]),
        .I3(steps_to_perform[3]),
        .O(\steps_performed[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_performed_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\steps_performed[0]_i_1_n_0 ),
        .Q(steps_performed_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_performed_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\steps_performed[1]_i_1_n_0 ),
        .Q(steps_performed_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_performed_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\steps_performed[2]_i_1_n_0 ),
        .Q(steps_performed_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_performed_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\steps_performed[3]_i_1_n_0 ),
        .Q(steps_performed_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_performed_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\steps_performed[4]_i_1_n_0 ),
        .Q(steps_performed_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_performed_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\steps_performed[5]_i_1_n_0 ),
        .Q(steps_performed_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_performed_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\steps_performed[6]_i_1_n_0 ),
        .Q(steps_performed_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_performed_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\steps_performed[7]_i_1_n_0 ),
        .Q(steps_performed_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_to_perform_reg[0] 
       (.C(latch),
        .CE(dir_i_1_n_0),
        .D(cmd[0]),
        .Q(steps_to_perform[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_to_perform_reg[1] 
       (.C(latch),
        .CE(dir_i_1_n_0),
        .D(cmd[1]),
        .Q(steps_to_perform[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_to_perform_reg[2] 
       (.C(latch),
        .CE(dir_i_1_n_0),
        .D(cmd[2]),
        .Q(steps_to_perform[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_to_perform_reg[3] 
       (.C(latch),
        .CE(dir_i_1_n_0),
        .D(cmd[3]),
        .Q(steps_to_perform[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_to_perform_reg[4] 
       (.C(latch),
        .CE(dir_i_1_n_0),
        .D(cmd[4]),
        .Q(steps_to_perform[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_to_perform_reg[5] 
       (.C(latch),
        .CE(dir_i_1_n_0),
        .D(cmd[5]),
        .Q(steps_to_perform[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_to_perform_reg[6] 
       (.C(latch),
        .CE(dir_i_1_n_0),
        .D(cmd[6]),
        .Q(steps_to_perform[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \steps_to_perform_reg[7] 
       (.C(latch),
        .CE(dir_i_1_n_0),
        .D(cmd[7]),
        .Q(steps_to_perform[7]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "system_stepper_0_0,stepper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "stepper,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    latch,
    cmd,
    force_ena,
    stop1,
    stop2,
    step,
    dir,
    ena,
    busy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input latch;
  input [10:0]cmd;
  input force_ena;
  input stop1;
  input stop2;
  output step;
  output dir;
  output ena;
  output busy;

  wire busy;
  wire clk;
  wire [10:0]cmd;
  wire dir;
  wire ena;
  wire force_ena;
  wire latch;
  wire step;
  wire stop1;
  wire stop2;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stepper inst
       (.busy(busy),
        .clk(clk),
        .cmd(cmd),
        .dir(dir),
        .ena(ena),
        .force_ena(force_ena),
        .latch(latch),
        .step(step),
        .stop1(stop1),
        .stop2(stop2));
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
