// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Feb  6 11:26:27 2022
// Host        : PC running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hardware_pwm_0_0_sim_netlist.v
// Design      : hardware_pwm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "hardware_pwm_0_0,pwm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pwm,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    fill,
    rst,
    state);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input [7:0]fill;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output state;

  wire clk;
  wire [7:0]fill;
  wire rst;
  wire state;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm inst
       (.clk(clk),
        .fill(fill),
        .rst(rst),
        .state(state));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm
   (state,
    clk,
    fill,
    rst);
  output state;
  input clk;
  input [7:0]fill;
  input rst;

  wire _carry_i_1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_i_5_n_0;
  wire _carry_i_6_n_0;
  wire _carry_i_7_n_0;
  wire _carry_i_8_n_0;
  wire _carry_n_5;
  wire _carry_n_6;
  wire _carry_n_7;
  wire clk;
  wire [7:0]counter;
  wire \counter[1]_i_2_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[7]_i_2_n_0 ;
  wire [7:0]fill;
  wire [7:0]p_0_in;
  wire rst;
  wire state;
  wire state0;
  wire state_i_1_n_0;
  wire [7:4]NLW__carry_CO_UNCONNECTED;
  wire [7:0]NLW__carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 _carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW__carry_CO_UNCONNECTED[7:4],state0,_carry_n_5,_carry_n_6,_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,_carry_i_1_n_0,_carry_i_2_n_0,_carry_i_3_n_0,_carry_i_4_n_0}),
        .O(NLW__carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,_carry_i_5_n_0,_carry_i_6_n_0,_carry_i_7_n_0,_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20BA)) 
    _carry_i_1
       (.I0(counter[7]),
        .I1(fill[6]),
        .I2(counter[6]),
        .I3(fill[7]),
        .O(_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    _carry_i_2
       (.I0(counter[5]),
        .I1(fill[4]),
        .I2(counter[4]),
        .I3(fill[5]),
        .O(_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    _carry_i_3
       (.I0(counter[3]),
        .I1(fill[2]),
        .I2(counter[2]),
        .I3(fill[3]),
        .O(_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    _carry_i_4
       (.I0(counter[1]),
        .I1(fill[1]),
        .I2(counter[0]),
        .I3(fill[0]),
        .O(_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    _carry_i_5
       (.I0(counter[6]),
        .I1(counter[7]),
        .I2(fill[6]),
        .I3(fill[7]),
        .O(_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    _carry_i_6
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(fill[4]),
        .I3(fill[5]),
        .O(_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    _carry_i_7
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(fill[2]),
        .I3(fill[3]),
        .O(_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    _carry_i_8
       (.I0(fill[1]),
        .I1(counter[1]),
        .I2(fill[0]),
        .I3(counter[0]),
        .O(_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h2333333333333333)) 
    \counter[0]_i_1 
       (.I0(\counter[7]_i_2_n_0 ),
        .I1(counter[0]),
        .I2(counter[5]),
        .I3(counter[4]),
        .I4(counter[7]),
        .I5(counter[6]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00FFBF00)) 
    \counter[1]_i_1 
       (.I0(\counter[1]_i_2_n_0 ),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(counter[0]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[1]_i_2 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[7]),
        .I3(counter[6]),
        .O(\counter[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFC011C0)) 
    \counter[2]_i_1 
       (.I0(counter[3]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(\counter[3]_i_2_n_0 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF805580)) 
    \counter[3]_i_1 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[3]),
        .I4(\counter[3]_i_2_n_0 ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h15555555FFFFFFFF)) 
    \counter[3]_i_2 
       (.I0(counter[0]),
        .I1(counter[5]),
        .I2(counter[4]),
        .I3(counter[7]),
        .I4(counter[6]),
        .I5(counter[1]),
        .O(\counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF7F00FF0000)) 
    \counter[4]_i_1 
       (.I0(counter[7]),
        .I1(counter[6]),
        .I2(counter[5]),
        .I3(\counter[7]_i_2_n_0 ),
        .I4(counter[0]),
        .I5(counter[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hAABFFFFF55000000)) 
    \counter[5]_i_1 
       (.I0(\counter[7]_i_2_n_0 ),
        .I1(counter[7]),
        .I2(counter[6]),
        .I3(counter[0]),
        .I4(counter[4]),
        .I5(counter[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hF01CF0F0F0F0F0F0)) 
    \counter[6]_i_1 
       (.I0(counter[7]),
        .I1(counter[0]),
        .I2(counter[6]),
        .I3(\counter[7]_i_2_n_0 ),
        .I4(counter[5]),
        .I5(counter[4]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hF7FFF7FF08000000)) 
    \counter[7]_i_1 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(\counter[7]_i_2_n_0 ),
        .I3(counter[6]),
        .I4(counter[0]),
        .I5(counter[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \counter[7]_i_2 
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[1]),
        .O(\counter[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(state_i_1_n_0),
        .D(p_0_in[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(state_i_1_n_0),
        .D(p_0_in[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(state_i_1_n_0),
        .D(p_0_in[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(state_i_1_n_0),
        .D(p_0_in[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(state_i_1_n_0),
        .D(p_0_in[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(state_i_1_n_0),
        .D(p_0_in[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(state_i_1_n_0),
        .D(p_0_in[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(state_i_1_n_0),
        .D(p_0_in[7]),
        .Q(counter[7]));
  LUT1 #(
    .INIT(2'h1)) 
    state_i_1
       (.I0(rst),
        .O(state_i_1_n_0));
  FDPE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk),
        .CE(1'b1),
        .D(state0),
        .PRE(state_i_1_n_0),
        .Q(state));
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
