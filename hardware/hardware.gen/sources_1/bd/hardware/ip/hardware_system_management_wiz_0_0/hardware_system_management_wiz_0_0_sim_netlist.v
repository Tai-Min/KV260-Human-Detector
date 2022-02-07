// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Feb  6 11:12:27 2022
// Host        : PC running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mateusz/KV260/hardware/hardware.gen/sources_1/bd/hardware/ip/hardware_system_management_wiz_0_0/hardware_system_management_wiz_0_0_sim_netlist.v
// Design      : hardware_system_management_wiz_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module hardware_system_management_wiz_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    channel_out,
    busy_out,
    eoc_out,
    eos_out,
    temp_out,
    alarm_out);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [12:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [12:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output ip2intc_irpt;
  output [5:0]channel_out;
  output busy_out;
  output eoc_out;
  output eos_out;
  output [9:0]temp_out;
  output alarm_out;

  wire \<const0> ;
  wire alarm_out;
  wire busy_out;
  wire [5:0]channel_out;
  wire eoc_out;
  wire eos_out;
  wire ip2intc_irpt;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [9:0]temp_out;
  wire [15:0]NLW_inst_alarm_out_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [30:18]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17:0] = \^s_axi_rdata [17:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "virtex7" *) 
  (* C_INCLUDE_INTR = "1" *) 
  (* C_INSTANCE = "hardware_system_management_wiz_0_0_axi_xadc" *) 
  (* C_SIM_MONITOR_FILE = "design.txt" *) 
  (* C_S_AXI_ADDR_WIDTH = "13" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* hdl = "VHDL" *) 
  (* ip_group = "LOGICORE" *) 
  (* iptype = "PERIPHERAL" *) 
  hardware_system_management_wiz_0_0_axi_xadc inst
       (.alarm_out({NLW_inst_alarm_out_UNCONNECTED[15:8],alarm_out,NLW_inst_alarm_out_UNCONNECTED[6:0]}),
        .busy_out(busy_out),
        .channel_out(channel_out),
        .eoc_out(eoc_out),
        .eos_out(eos_out),
        .ip2intc_irpt(ip2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({1'b0,1'b0,s_axi_araddr[10:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,s_axi_awaddr[10:2],1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp({\^s_axi_bresp ,NLW_inst_s_axi_bresp_UNCONNECTED[0]}),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp({\^s_axi_rresp ,NLW_inst_s_axi_rresp_UNCONNECTED[0]}),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[17:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .temp_out(temp_out),
        .vn(1'b0),
        .vp(1'b0));
endmodule

module hardware_system_management_wiz_0_0_address_decoder
   (\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ,
    Bus_RNW_reg_reg_0,
    D,
    convst_rst_wrce_or_reduce,
    local_reg_wrack0,
    local_rdce_or_reduce,
    local_reg_rdack0,
    bus2ip_wrce,
    status_reg_rdack0,
    bus2ip_rdce,
    p_4_in,
    Bus_RNW_reg_reg_1,
    reset_trig0,
    sw_rst_cond,
    irpt_rdack,
    Intr2Bus_RdAck0,
    irpt_wrack_d1_reg,
    irpt_wrack,
    interrupt_wrce_strb,
    E,
    dummy_bus2ip_rdce_intr,
    dummy_intr_reg_rdack0,
    dummy_bus2ip_wrce_intr,
    dummy_intr_reg_wrack0,
    dummy_local_reg_rdack_d10,
    dummy_local_reg_rdack0,
    dummy_local_reg_wrack_d10,
    dummy_local_reg_wrack0,
    rst_ip2bus_rdack0,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ,
    s_axi_wdata_0_sp_1,
    \s_axi_wdata[31] ,
    Q,
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 ,
    s_axi_aclk,
    s_axi_aresetn,
    ip2bus_rdack,
    ip2bus_wrack,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] ,
    p_1_in46_in,
    p_1_in43_in,
    p_1_in40_in,
    p_1_in37_in,
    p_1_in34_in,
    p_1_in31_in,
    p_1_in28_in,
    p_1_in25_in,
    p_1_in22_in,
    p_1_in19_in,
    p_1_in16_in,
    p_1_in13_in,
    p_1_in10_in,
    p_1_in7_in,
    p_1_in4_in,
    jtaglocked_i,
    p_1_in1_in,
    p_1_in,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 ,
    local_reg_wrack_d1,
    local_reg_rdack_d1,
    status_reg_rdack_d1,
    reset_trig_reg,
    sw_rst_cond_d1,
    s_axi_wstrb,
    ipif_glbl_irpt_enable_reg_reg,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    irpt_wrack_d1,
    dummy_intr_reg_rdack_d1,
    dummy_intr_reg_wrack_d1,
    dummy_local_reg_rdack_d1,
    dummy_local_reg_wrack_d1,
    rst_ip2bus_rdack_d1,
    s_axi_wdata,
    hard_macro_rst_reg);
  output \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ;
  output Bus_RNW_reg_reg_0;
  output [18:0]D;
  output convst_rst_wrce_or_reduce;
  output local_reg_wrack0;
  output local_rdce_or_reduce;
  output local_reg_rdack0;
  output [0:0]bus2ip_wrce;
  output status_reg_rdack0;
  output [2:0]bus2ip_rdce;
  output p_4_in;
  output Bus_RNW_reg_reg_1;
  output reset_trig0;
  output sw_rst_cond;
  output irpt_rdack;
  output Intr2Bus_RdAck0;
  output irpt_wrack_d1_reg;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output [0:0]E;
  output dummy_bus2ip_rdce_intr;
  output dummy_intr_reg_rdack0;
  output dummy_bus2ip_wrce_intr;
  output dummy_intr_reg_wrack0;
  output dummy_local_reg_rdack_d10;
  output dummy_local_reg_rdack0;
  output dummy_local_reg_wrack_d10;
  output dummy_local_reg_wrack0;
  output rst_ip2bus_rdack0;
  output [0:0]\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  output s_axi_wdata_0_sp_1;
  output \s_axi_wdata[31] ;
  input Q;
  input [8:0]\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 ;
  input s_axi_aclk;
  input s_axi_aresetn;
  input ip2bus_rdack;
  input ip2bus_wrack;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input [17:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] ;
  input [11:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] ;
  input [15:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] ;
  input [14:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] ;
  input \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] ;
  input p_1_in46_in;
  input p_1_in43_in;
  input p_1_in40_in;
  input p_1_in37_in;
  input p_1_in34_in;
  input p_1_in31_in;
  input p_1_in28_in;
  input p_1_in25_in;
  input p_1_in22_in;
  input p_1_in19_in;
  input p_1_in16_in;
  input p_1_in13_in;
  input p_1_in10_in;
  input p_1_in7_in;
  input p_1_in4_in;
  input jtaglocked_i;
  input p_1_in1_in;
  input p_1_in;
  input [0:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 ;
  input local_reg_wrack_d1;
  input local_reg_rdack_d1;
  input status_reg_rdack_d1;
  input reset_trig_reg;
  input sw_rst_cond_d1;
  input [0:0]s_axi_wstrb;
  input ipif_glbl_irpt_enable_reg_reg;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input irpt_wrack_d1;
  input dummy_intr_reg_rdack_d1;
  input dummy_intr_reg_wrack_d1;
  input dummy_local_reg_rdack_d1;
  input dummy_local_reg_wrack_d1;
  input rst_ip2bus_rdack_d1;
  input [1:0]s_axi_wdata;
  input hard_macro_rst_reg;

  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [18:0]D;
  wire [0:0]E;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ;
  wire [8:0]\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0 ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3_n_0 ;
  wire \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3_n_0 ;
  wire \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_4_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2_n_0 ;
  wire [17:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] ;
  wire [0:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 ;
  wire [15:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] ;
  wire [14:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] ;
  wire [11:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] ;
  wire Intr2Bus_RdAck0;
  wire Intr2Bus_RdAck_i_2_n_0;
  wire Intr2Bus_WrAck_i_2_n_0;
  wire Q;
  wire [2:0]bus2ip_rdce;
  wire [0:0]bus2ip_wrce;
  wire ce_expnd_i_1;
  wire ce_expnd_i_10;
  wire ce_expnd_i_11;
  wire ce_expnd_i_12;
  wire ce_expnd_i_13;
  wire ce_expnd_i_14;
  wire ce_expnd_i_15;
  wire ce_expnd_i_16;
  wire ce_expnd_i_17;
  wire ce_expnd_i_18;
  wire ce_expnd_i_19;
  wire ce_expnd_i_2;
  wire ce_expnd_i_20;
  wire ce_expnd_i_21;
  wire ce_expnd_i_22;
  wire ce_expnd_i_23;
  wire ce_expnd_i_24;
  wire ce_expnd_i_3;
  wire ce_expnd_i_4;
  wire ce_expnd_i_5;
  wire ce_expnd_i_6;
  wire ce_expnd_i_7;
  wire ce_expnd_i_8;
  wire ce_expnd_i_9;
  wire convst_rst_wrce_or_reduce;
  wire cs_ce_clr;
  wire dummy_bus2ip_rdce_intr;
  wire dummy_bus2ip_wrce_intr;
  wire dummy_intr_reg_rdack0;
  wire dummy_intr_reg_rdack_d1;
  wire dummy_intr_reg_wrack0;
  wire dummy_intr_reg_wrack_d1;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire hard_macro_rst_reg;
  wire interrupt_wrce_strb;
  wire ip2bus_rdack;
  wire ip2bus_wrack;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d1_reg;
  wire jtaglocked_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire p_1_in;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire p_1_in16_in;
  wire p_1_in19_in;
  wire p_1_in1_in;
  wire p_1_in22_in;
  wire p_1_in25_in;
  wire p_1_in28_in;
  wire p_1_in31_in;
  wire p_1_in34_in;
  wire p_1_in37_in;
  wire p_1_in40_in;
  wire p_1_in43_in;
  wire p_1_in46_in;
  wire p_1_in4_in;
  wire p_1_in7_in;
  wire p_1_in_0;
  wire p_20_in;
  wire p_21_in;
  wire p_22_in;
  wire p_23_in;
  wire p_24_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_4_in_1;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire reset_trig0;
  wire reset_trig_reg;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [1:0]s_axi_wdata;
  wire \s_axi_wdata[31] ;
  wire s_axi_wdata_0_sn_1;
  wire [0:0]s_axi_wstrb;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(Q),
        .I2(Bus_RNW_reg_reg_0),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .O(ce_expnd_i_24));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_24),
        .Q(p_24_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I4(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .O(ce_expnd_i_14));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_14),
        .Q(p_14_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I4(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .O(ce_expnd_i_13));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_13),
        .Q(p_13_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .O(ce_expnd_i_12));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_12),
        .Q(p_12_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .O(ce_expnd_i_11));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_11),
        .Q(p_11_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I4(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .O(ce_expnd_i_10));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_10),
        .Q(p_10_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I4(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .O(ce_expnd_i_9));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_9),
        .Q(p_9_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I4(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .O(ce_expnd_i_8));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_8),
        .Q(p_8_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .O(ce_expnd_i_7));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_7),
        .Q(p_7_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I4(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .O(ce_expnd_i_6));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_6),
        .Q(p_6_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I4(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .O(ce_expnd_i_5));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_5),
        .Q(p_5_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0 ),
        .O(ce_expnd_i_23));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_23),
        .Q(p_23_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I4(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .O(ce_expnd_i_4));
  FDRE \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_4),
        .Q(p_4_in_1),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .O(ce_expnd_i_3));
  FDRE \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(p_3_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I4(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(p_2_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I4(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .O(ce_expnd_i_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [5]),
        .I2(Q),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [8]),
        .I4(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [6]),
        .I5(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [7]),
        .O(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(p_1_in_0),
        .R(cs_ce_clr));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 
       (.I0(s_axi_aresetn),
        .I1(ip2bus_rdack),
        .I2(ip2bus_wrack),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .O(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [8]),
        .Q(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .O(ce_expnd_i_22));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_22),
        .Q(p_22_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .O(ce_expnd_i_21));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .I2(Q),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [5]),
        .I4(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [4]),
        .I5(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_21),
        .Q(p_21_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .O(ce_expnd_i_20));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_20),
        .Q(p_20_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0 ),
        .O(ce_expnd_i_19));
  LUT5 #(
    .INIT(32'h00000010)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [5]),
        .I2(Q),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_19),
        .Q(p_19_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .O(ce_expnd_i_18));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_18),
        .Q(p_18_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .O(ce_expnd_i_17));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .I3(Q),
        .I4(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [5]),
        .I5(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [4]),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [7]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [6]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [8]),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_17),
        .Q(p_17_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I4(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .O(ce_expnd_i_16));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_16),
        .Q(p_16_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0 ),
        .I4(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 [2]),
        .O(ce_expnd_i_15));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_15),
        .Q(p_15_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFBBBF)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2 
       (.I0(irpt_wrack_d1),
        .I1(p_8_in),
        .I2(s_axi_wstrb),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(Bus_RNW_reg_reg_0),
        .O(irpt_wrack_d1_reg));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_d1_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ),
        .O(dummy_bus2ip_rdce_intr));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_i_1 
       (.I0(dummy_intr_reg_rdack_d1),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ),
        .O(dummy_intr_reg_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ),
        .O(dummy_bus2ip_wrce_intr));
  LUT5 #(
    .INIT(32'h00020000)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2 
       (.I0(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3_n_0 ),
        .I1(p_11_in),
        .I2(p_15_in),
        .I3(p_10_in),
        .I4(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_4_n_0 ),
        .O(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3 
       (.I0(p_3_in),
        .I1(p_12_in),
        .I2(p_4_in_1),
        .I3(p_14_in),
        .O(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_4 
       (.I0(p_1_in_0),
        .I1(p_16_in),
        .I2(p_7_in),
        .I3(p_13_in),
        .I4(p_5_in),
        .I5(p_2_in),
        .O(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(dummy_intr_reg_wrack_d1),
        .I2(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ),
        .O(dummy_intr_reg_wrack0));
  LUT5 #(
    .INIT(32'h00000040)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[0]_i_1 
       (.I0(p_8_in),
        .I1(p_9_in),
        .I2(ipif_glbl_irpt_enable_reg),
        .I3(Intr2Bus_RdAck_i_2_n_0),
        .I4(p_6_in),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hF222FFFFF222F222)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [17]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I2(p_1_in),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBBBFFFFF)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2 
       (.I0(p_8_in),
        .I1(p_6_in),
        .I2(s_axi_wstrb),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(Bus_RNW_reg_reg_0),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3 
       (.I0(p_8_in),
        .I1(Bus_RNW_reg_reg_0),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(s_axi_wstrb),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4 
       (.I0(p_23_in),
        .I1(p_22_in),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF22F222F222F2)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [16]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I2(jtaglocked_i),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .I5(p_1_in1_in),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFF22F222F222F2)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[16]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [15]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [15]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .I5(p_1_in4_in),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [14]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(p_1_in7_in),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0320000000200000)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [14]),
        .I1(p_23_in),
        .I2(p_22_in),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ),
        .I4(Bus_RNW_reg_reg_0),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [14]),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [13]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(p_1_in10_in),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h0320000000200000)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [13]),
        .I1(p_23_in),
        .I2(p_22_in),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ),
        .I4(Bus_RNW_reg_reg_0),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [13]),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [12]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0 ),
        .I3(p_1_in13_in),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0320000000200000)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [12]),
        .I1(p_23_in),
        .I2(p_22_in),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ),
        .I4(Bus_RNW_reg_reg_0),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [12]),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [11]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [11]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0 ),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [11]),
        .I4(p_1_in16_in),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44400000)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3 
       (.I0(p_8_in),
        .I1(p_6_in),
        .I2(s_axi_wstrb),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(Bus_RNW_reg_reg_0),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4 
       (.I0(p_23_in),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ),
        .I2(p_22_in),
        .I3(Bus_RNW_reg_reg_0),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5 
       (.I0(p_22_in),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ),
        .I2(p_23_in),
        .I3(Bus_RNW_reg_reg_0),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [10]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [10]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0 ),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [10]),
        .I4(p_1_in19_in),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [9]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [9]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0 ),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [9]),
        .I4(p_1_in22_in),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [8]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [8]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0 ),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [8]),
        .I4(p_1_in25_in),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [7]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [7]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0 ),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [7]),
        .I4(p_1_in28_in),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [6]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [6]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0 ),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [6]),
        .I4(p_1_in31_in),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [5]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [5]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0 ),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [5]),
        .I4(p_1_in34_in),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [4]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [4]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0 ),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [4]),
        .I4(p_1_in37_in),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [3]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [3]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0 ),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [3]),
        .I4(p_1_in40_in),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [2]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [2]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0 ),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [2]),
        .I4(p_1_in43_in),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [1]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [1]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0 ),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [1]),
        .I4(p_1_in46_in),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] [0]),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [0]),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0 ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0 ),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] [0]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] ),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \INTR_CTRLR_GEN_I.ip2bus_wrack_i_3 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_24_in),
        .I2(reset_trig_reg),
        .O(Bus_RNW_reg_reg_1));
  LUT5 #(
    .INIT(32'h11111110)) 
    Intr2Bus_RdAck_i_1
       (.I0(irpt_rdack_d1),
        .I1(Intr2Bus_RdAck_i_2_n_0),
        .I2(p_9_in),
        .I3(p_6_in),
        .I4(p_8_in),
        .O(Intr2Bus_RdAck0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    Intr2Bus_RdAck_i_2
       (.I0(s_axi_wstrb),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(Bus_RNW_reg_reg_0),
        .O(Intr2Bus_RdAck_i_2_n_0));
  LUT5 #(
    .INIT(32'h11111110)) 
    Intr2Bus_WrAck_i_1
       (.I0(irpt_wrack_d1),
        .I1(Intr2Bus_WrAck_i_2_n_0),
        .I2(p_8_in),
        .I3(p_9_in),
        .I4(p_6_in),
        .O(interrupt_wrce_strb));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    Intr2Bus_WrAck_i_2
       (.I0(s_axi_wstrb),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(Bus_RNW_reg_reg_0),
        .O(Intr2Bus_WrAck_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    den_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ),
        .I1(jtaglocked_i),
        .O(p_4_in));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    drdy_rd_ack_i_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ),
        .O(bus2ip_rdce[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    drdy_wr_ack_i_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_wrce));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    dummy_local_reg_rdack_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_19_in),
        .I2(p_17_in),
        .I3(p_18_in),
        .O(dummy_local_reg_rdack_d10));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    dummy_local_reg_rdack_i_1
       (.I0(dummy_local_reg_rdack_d1),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_19_in),
        .I3(p_17_in),
        .I4(p_18_in),
        .O(dummy_local_reg_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    dummy_local_reg_wrack_d1_i_1
       (.I0(p_19_in),
        .I1(p_17_in),
        .I2(p_18_in),
        .I3(Bus_RNW_reg_reg_0),
        .O(dummy_local_reg_wrack_d10));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h11111110)) 
    dummy_local_reg_wrack_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(dummy_local_reg_wrack_d1),
        .I2(p_19_in),
        .I3(p_17_in),
        .I4(p_18_in),
        .O(dummy_local_reg_wrack0));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    hard_macro_rst_reg_i_1
       (.I0(s_axi_wdata[0]),
        .I1(p_20_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(p_21_in),
        .I4(hard_macro_rst_reg),
        .O(s_axi_wdata_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \ip_irpt_enable_reg[17]_i_1 
       (.I0(p_6_in),
        .I1(Bus_RNW_reg_reg_0),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(s_axi_wstrb),
        .O(E));
  LUT6 #(
    .INIT(64'hFBFBFBFF08080800)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata[1]),
        .I1(p_9_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(s_axi_wstrb),
        .I5(ipif_glbl_irpt_enable_reg),
        .O(\s_axi_wdata[31] ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A800)) 
    irpt_rdack_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(s_axi_wstrb),
        .I3(p_9_in),
        .I4(p_6_in),
        .I5(p_8_in),
        .O(irpt_rdack));
  LUT6 #(
    .INIT(64'h5454545454545400)) 
    irpt_wrack_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(s_axi_wstrb),
        .I3(p_8_in),
        .I4(p_9_in),
        .I5(p_6_in),
        .O(irpt_wrack));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    local_reg_rdack_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_22_in),
        .I2(p_20_in),
        .I3(p_21_in),
        .O(local_rdce_or_reduce));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    local_reg_rdack_i_1
       (.I0(local_reg_rdack_d1),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_22_in),
        .I3(p_20_in),
        .I4(p_21_in),
        .O(local_reg_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    local_reg_wrack_d1_i_1
       (.I0(p_22_in),
        .I1(p_23_in),
        .I2(p_20_in),
        .I3(p_21_in),
        .I4(Bus_RNW_reg_reg_0),
        .O(convst_rst_wrce_or_reduce));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    local_reg_wrack_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(local_reg_wrack_d1),
        .I2(p_22_in),
        .I3(p_23_in),
        .I4(p_20_in),
        .I5(p_21_in),
        .O(local_reg_wrack0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    reset_trig_i_1
       (.I0(reset_trig_reg),
        .I1(p_24_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(sw_rst_cond_d1),
        .O(reset_trig0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rst_ip2bus_rdack_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_24_in),
        .O(bus2ip_rdce[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    rst_ip2bus_rdack_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_24_in),
        .I2(rst_ip2bus_rdack_d1),
        .O(rst_ip2bus_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    status_reg_rdack_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_23_in),
        .O(bus2ip_rdce[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    status_reg_rdack_i_1
       (.I0(p_23_in),
        .I1(Bus_RNW_reg_reg_0),
        .I2(status_reg_rdack_d1),
        .O(status_reg_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h04)) 
    sw_rst_cond_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_24_in),
        .I2(reset_trig_reg),
        .O(sw_rst_cond));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \temp_rd_wait_cycle_reg[15]_i_2 
       (.I0(p_21_in),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_20_in),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ));
endmodule

module hardware_system_management_wiz_0_0_axi_lite_ipif
   (\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ,
    Q,
    s_axi_rresp,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_arready,
    D,
    convst_rst_wrce_or_reduce,
    local_reg_wrack0,
    local_rdce_or_reduce,
    local_reg_rdack0,
    bus2ip_wrce,
    status_reg_rdack0,
    bus2ip_rdce,
    p_4_in,
    Bus_RNW_reg_reg,
    reset_trig0,
    sw_rst_cond,
    irpt_rdack,
    Intr2Bus_RdAck0,
    irpt_wrack_d1_reg,
    irpt_wrack,
    interrupt_wrce_strb,
    E,
    dummy_bus2ip_rdce_intr,
    dummy_intr_reg_rdack0,
    dummy_bus2ip_wrce_intr,
    dummy_intr_reg_wrack0,
    dummy_local_reg_rdack_d10,
    dummy_local_reg_rdack0,
    dummy_local_reg_wrack_d10,
    dummy_local_reg_wrack0,
    rst_ip2bus_rdack0,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    s_axi_wstrb_2_sp_1,
    s_axi_wdata_0_sp_1,
    \s_axi_wdata[31] ,
    s_axi_bresp,
    s_axi_rdata,
    s_axi_aclk,
    bus2ip_reset_active_high,
    ip2bus_error,
    s_axi_arvalid,
    s_axi_wvalid,
    s_axi_awvalid,
    ip2bus_wrack,
    s_axi_aresetn,
    ip2bus_rdack,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] ,
    p_1_in46_in,
    p_1_in43_in,
    p_1_in40_in,
    p_1_in37_in,
    p_1_in34_in,
    p_1_in31_in,
    p_1_in28_in,
    p_1_in25_in,
    p_1_in22_in,
    p_1_in19_in,
    p_1_in16_in,
    p_1_in13_in,
    p_1_in10_in,
    p_1_in7_in,
    p_1_in4_in,
    jtaglocked_i,
    p_1_in1_in,
    p_1_in,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 ,
    local_reg_wrack_d1,
    local_reg_rdack_d1,
    status_reg_rdack_d1,
    sw_rst_cond_d1,
    s_axi_wstrb,
    s_axi_wdata,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    irpt_wrack_d1,
    dummy_intr_reg_rdack_d1,
    dummy_intr_reg_wrack_d1,
    dummy_local_reg_rdack_d1,
    dummy_local_reg_wrack_d1,
    rst_ip2bus_rdack_d1,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr,
    hard_macro_rst_reg,
    \s_axi_rdata_i_reg[31] );
  output \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ;
  output [7:0]Q;
  output [0:0]s_axi_rresp;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_arready;
  output [18:0]D;
  output convst_rst_wrce_or_reduce;
  output local_reg_wrack0;
  output local_rdce_or_reduce;
  output local_reg_rdack0;
  output [0:0]bus2ip_wrce;
  output status_reg_rdack0;
  output [2:0]bus2ip_rdce;
  output p_4_in;
  output Bus_RNW_reg_reg;
  output reset_trig0;
  output sw_rst_cond;
  output irpt_rdack;
  output Intr2Bus_RdAck0;
  output irpt_wrack_d1_reg;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output [0:0]E;
  output dummy_bus2ip_rdce_intr;
  output dummy_intr_reg_rdack0;
  output dummy_bus2ip_wrce_intr;
  output dummy_intr_reg_wrack0;
  output dummy_local_reg_rdack_d10;
  output dummy_local_reg_rdack0;
  output dummy_local_reg_wrack_d10;
  output dummy_local_reg_wrack0;
  output rst_ip2bus_rdack0;
  output [0:0]\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  output s_axi_wstrb_2_sp_1;
  output s_axi_wdata_0_sp_1;
  output \s_axi_wdata[31] ;
  output [0:0]s_axi_bresp;
  output [18:0]s_axi_rdata;
  input s_axi_aclk;
  input bus2ip_reset_active_high;
  input ip2bus_error;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input ip2bus_wrack;
  input s_axi_aresetn;
  input ip2bus_rdack;
  input [17:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] ;
  input [11:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] ;
  input [15:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] ;
  input [14:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] ;
  input \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] ;
  input p_1_in46_in;
  input p_1_in43_in;
  input p_1_in40_in;
  input p_1_in37_in;
  input p_1_in34_in;
  input p_1_in31_in;
  input p_1_in28_in;
  input p_1_in25_in;
  input p_1_in22_in;
  input p_1_in19_in;
  input p_1_in16_in;
  input p_1_in13_in;
  input p_1_in10_in;
  input p_1_in7_in;
  input p_1_in4_in;
  input jtaglocked_i;
  input p_1_in1_in;
  input p_1_in;
  input [0:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 ;
  input local_reg_wrack_d1;
  input local_reg_rdack_d1;
  input status_reg_rdack_d1;
  input sw_rst_cond_d1;
  input [3:0]s_axi_wstrb;
  input [4:0]s_axi_wdata;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input irpt_wrack_d1;
  input dummy_intr_reg_rdack_d1;
  input dummy_intr_reg_wrack_d1;
  input dummy_local_reg_rdack_d1;
  input dummy_local_reg_wrack_d1;
  input rst_ip2bus_rdack_d1;
  input s_axi_bready;
  input s_axi_rready;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input hard_macro_rst_reg;
  input [18:0]\s_axi_rdata_i_reg[31] ;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [18:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire [17:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] ;
  wire [0:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 ;
  wire [15:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] ;
  wire [14:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] ;
  wire [11:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] ;
  wire Intr2Bus_RdAck0;
  wire [7:0]Q;
  wire [2:0]bus2ip_rdce;
  wire bus2ip_reset_active_high;
  wire [0:0]bus2ip_wrce;
  wire convst_rst_wrce_or_reduce;
  wire dummy_bus2ip_rdce_intr;
  wire dummy_bus2ip_wrce_intr;
  wire dummy_intr_reg_rdack0;
  wire dummy_intr_reg_rdack_d1;
  wire dummy_intr_reg_wrack0;
  wire dummy_intr_reg_wrack_d1;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire hard_macro_rst_reg;
  wire interrupt_wrce_strb;
  wire ip2bus_error;
  wire ip2bus_rdack;
  wire ip2bus_wrack;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d1_reg;
  wire jtaglocked_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire p_1_in;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire p_1_in16_in;
  wire p_1_in19_in;
  wire p_1_in1_in;
  wire p_1_in22_in;
  wire p_1_in25_in;
  wire p_1_in28_in;
  wire p_1_in31_in;
  wire p_1_in34_in;
  wire p_1_in37_in;
  wire p_1_in40_in;
  wire p_1_in43_in;
  wire p_1_in46_in;
  wire p_1_in4_in;
  wire p_1_in7_in;
  wire p_4_in;
  wire reset_trig0;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [18:0]s_axi_rdata;
  wire [18:0]\s_axi_rdata_i_reg[31] ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [4:0]s_axi_wdata;
  wire \s_axi_wdata[31] ;
  wire s_axi_wdata_0_sn_1;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wstrb_2_sn_1;
  wire s_axi_wvalid;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wstrb_2_sp_1 = s_axi_wstrb_2_sn_1;
  hardware_system_management_wiz_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] (\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] (\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 (\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] (\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] (\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] (\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] (\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] ),
        .Intr2Bus_RdAck0(Intr2Bus_RdAck0),
        .Q(Q),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_reset_active_high(bus2ip_reset_active_high),
        .bus2ip_wrce(bus2ip_wrce),
        .convst_rst_wrce_or_reduce(convst_rst_wrce_or_reduce),
        .dummy_bus2ip_rdce_intr(dummy_bus2ip_rdce_intr),
        .dummy_bus2ip_wrce_intr(dummy_bus2ip_wrce_intr),
        .dummy_intr_reg_rdack0(dummy_intr_reg_rdack0),
        .dummy_intr_reg_rdack_d1(dummy_intr_reg_rdack_d1),
        .dummy_intr_reg_wrack0(dummy_intr_reg_wrack0),
        .dummy_intr_reg_wrack_d1(dummy_intr_reg_wrack_d1),
        .dummy_local_reg_rdack0(dummy_local_reg_rdack0),
        .dummy_local_reg_rdack_d1(dummy_local_reg_rdack_d1),
        .dummy_local_reg_rdack_d10(dummy_local_reg_rdack_d10),
        .dummy_local_reg_wrack0(dummy_local_reg_wrack0),
        .dummy_local_reg_wrack_d1(dummy_local_reg_wrack_d1),
        .dummy_local_reg_wrack_d10(dummy_local_reg_wrack_d10),
        .hard_macro_rst_reg(hard_macro_rst_reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .ip2bus_error(ip2bus_error),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_wrack(ip2bus_wrack),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .irpt_wrack_d1_reg(irpt_wrack_d1_reg),
        .jtaglocked_i(jtaglocked_i),
        .local_rdce_or_reduce(local_rdce_or_reduce),
        .local_reg_rdack0(local_reg_rdack0),
        .local_reg_rdack_d1(local_reg_rdack_d1),
        .local_reg_wrack0(local_reg_wrack0),
        .local_reg_wrack_d1(local_reg_wrack_d1),
        .p_1_in(p_1_in),
        .p_1_in10_in(p_1_in10_in),
        .p_1_in13_in(p_1_in13_in),
        .p_1_in16_in(p_1_in16_in),
        .p_1_in19_in(p_1_in19_in),
        .p_1_in1_in(p_1_in1_in),
        .p_1_in22_in(p_1_in22_in),
        .p_1_in25_in(p_1_in25_in),
        .p_1_in28_in(p_1_in28_in),
        .p_1_in31_in(p_1_in31_in),
        .p_1_in34_in(p_1_in34_in),
        .p_1_in37_in(p_1_in37_in),
        .p_1_in40_in(p_1_in40_in),
        .p_1_in43_in(p_1_in43_in),
        .p_1_in46_in(p_1_in46_in),
        .p_1_in4_in(p_1_in4_in),
        .p_1_in7_in(p_1_in7_in),
        .p_4_in(p_4_in),
        .reset_trig0(reset_trig0),
        .rst_ip2bus_rdack0(rst_ip2bus_rdack0),
        .rst_ip2bus_rdack_d1(rst_ip2bus_rdack_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31]_0 (\s_axi_rdata_i_reg[31] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[31] (\s_axi_wdata[31] ),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wstrb_2_sp_1(s_axi_wstrb_2_sn_1),
        .s_axi_wvalid(s_axi_wvalid),
        .status_reg_rdack0(status_reg_rdack0),
        .status_reg_rdack_d1(status_reg_rdack_d1),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1));
endmodule

(* C_FAMILY = "virtex7" *) (* C_INCLUDE_INTR = "1" *) (* C_INSTANCE = "hardware_system_management_wiz_0_0_axi_xadc" *) 
(* C_SIM_MONITOR_FILE = "design.txt" *) (* C_S_AXI_ADDR_WIDTH = "13" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* hdl = "VHDL" *) (* ip_group = "LOGICORE" *) (* iptype = "PERIPHERAL" *) 
module hardware_system_management_wiz_0_0_axi_xadc
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    vp,
    vn,
    busy_out,
    channel_out,
    eoc_out,
    eos_out,
    temp_out,
    alarm_out);
  (* sigis = "Clk" *) input s_axi_aclk;
  (* sigis = "Rst" *) input s_axi_aresetn;
  input [12:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [12:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input vp;
  input vn;
  output busy_out;
  output [5:0]channel_out;
  output eoc_out;
  output eos_out;
  output [9:0]temp_out;
  output [15:0]alarm_out;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_0;
  wire AXI_LITE_IPIF_I_n_44;
  wire AXI_LITE_IPIF_I_n_49;
  wire AXI_LITE_IPIF_I_n_63;
  wire AXI_LITE_IPIF_I_n_64;
  wire AXI_LITE_IPIF_I_n_65;
  wire AXI_SYSMON_CORE_I_n_12;
  wire AXI_SYSMON_CORE_I_n_13;
  wire AXI_SYSMON_CORE_I_n_14;
  wire AXI_SYSMON_CORE_I_n_15;
  wire AXI_SYSMON_CORE_I_n_17;
  wire AXI_SYSMON_CORE_I_n_18;
  wire AXI_SYSMON_CORE_I_n_19;
  wire AXI_SYSMON_CORE_I_n_20;
  wire AXI_SYSMON_CORE_I_n_21;
  wire AXI_SYSMON_CORE_I_n_22;
  wire AXI_SYSMON_CORE_I_n_23;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_1 ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_26 ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_31 ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_36 ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_41 ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire Intr2Bus_RdAck0;
  wire SOFT_RESET_I_n_2;
  wire [7:7]\^alarm_out ;
  wire [14:0]alarm_reg;
  wire [9:2]bus2ip_addr;
  wire [24:0]bus2ip_rdce;
  wire bus2ip_reset_active_high;
  wire [0:0]bus2ip_wrce;
  wire busy_out;
  wire [5:0]channel_out;
  wire convst_rst_wrce_or_reduce;
  wire [15:0]do_reg;
  wire dummy_bus2ip_rdce_intr;
  wire dummy_bus2ip_wrce_intr;
  wire dummy_intr_reg_rdack;
  wire dummy_intr_reg_rdack0;
  wire dummy_intr_reg_rdack_d1;
  wire dummy_intr_reg_wrack;
  wire dummy_intr_reg_wrack0;
  wire dummy_intr_reg_wrack_d1;
  wire dummy_local_reg_rdack;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire eoc_out;
  wire eos_out;
  wire hard_macro_rst_reg;
  wire [8:9]interrupt_status_i;
  wire interrupt_wrce_strb;
  wire [0:0]intr_ip2bus_data;
  wire intr_ip2bus_rdack;
  wire intr_ip2bus_wrack;
  wire [31:0]ip2bus_data;
  wire [14:31]ip2bus_data_int1;
  wire ip2bus_error;
  wire ip2bus_error_int1;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int1;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int1;
  wire ip2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d11;
  wire jtag_modified_info;
  wire jtaglocked_i;
  wire jtagmodified_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire ot_i;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in14_in;
  wire p_0_in17_in;
  wire p_0_in20_in;
  wire p_0_in23_in;
  wire p_0_in29_in;
  wire p_0_in2_in;
  wire p_0_in32_in;
  wire p_0_in35_in;
  wire p_0_in38_in;
  wire p_0_in44_in;
  wire p_0_in47_in;
  wire p_0_in5_in;
  wire p_0_in8_in;
  wire p_1_in;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire p_1_in16_in;
  wire p_1_in19_in;
  wire p_1_in1_in;
  wire p_1_in22_in;
  wire p_1_in25_in;
  wire p_1_in28_in;
  wire p_1_in31_in;
  wire p_1_in34_in;
  wire p_1_in37_in;
  wire p_1_in40_in;
  wire p_1_in43_in;
  wire p_1_in46_in;
  wire p_1_in4_in;
  wire p_1_in7_in;
  wire p_4_in;
  wire reset2ip_reset;
  wire reset_trig0;
  wire rst_ip2bus_rdack;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [11:0]status_reg;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire [9:0]temp_out;
  wire temp_rd_wait_cycle_reg;
  wire wrack;

  assign alarm_out[15] = \<const0> ;
  assign alarm_out[14] = \<const0> ;
  assign alarm_out[13] = \<const0> ;
  assign alarm_out[12] = \<const0> ;
  assign alarm_out[11] = \<const0> ;
  assign alarm_out[10] = \<const0> ;
  assign alarm_out[9] = \<const0> ;
  assign alarm_out[8] = \<const0> ;
  assign alarm_out[7] = \^alarm_out [7];
  assign alarm_out[6] = \<const0> ;
  assign alarm_out[5] = \<const0> ;
  assign alarm_out[4] = \<const0> ;
  assign alarm_out[3] = \<const0> ;
  assign alarm_out[2] = \<const0> ;
  assign alarm_out[1] = \<const0> ;
  assign alarm_out[0] = \<const0> ;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17:0] = \^s_axi_rdata [17:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  hardware_system_management_wiz_0_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_44),
        .D({intr_ip2bus_data,ip2bus_data_int1[14],ip2bus_data_int1[15],ip2bus_data_int1[16],ip2bus_data_int1[17],ip2bus_data_int1[18],ip2bus_data_int1[19],ip2bus_data_int1[20],ip2bus_data_int1[21],ip2bus_data_int1[22],ip2bus_data_int1[23],ip2bus_data_int1[24],ip2bus_data_int1[25],ip2bus_data_int1[26],ip2bus_data_int1[27],ip2bus_data_int1[28],ip2bus_data_int1[29],ip2bus_data_int1[30],ip2bus_data_int1[31]}),
        .E(irpt_wrack_d11),
        .\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] (AXI_LITE_IPIF_I_n_0),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (temp_rd_wait_cycle_reg),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] ({p_0_in47_in,p_0_in44_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_26 ,p_0_in38_in,p_0_in35_in,p_0_in32_in,p_0_in29_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_31 ,p_0_in23_in,p_0_in20_in,p_0_in17_in,p_0_in14_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_36 ,p_0_in8_in,p_0_in5_in,p_0_in2_in,p_0_in0_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_41 }),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 (jtag_modified_info),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] (do_reg),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] (alarm_reg),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] (status_reg),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] (\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_1 ),
        .Intr2Bus_RdAck0(Intr2Bus_RdAck0),
        .Q(bus2ip_addr),
        .bus2ip_rdce({bus2ip_rdce[24:23],bus2ip_rdce[0]}),
        .bus2ip_reset_active_high(bus2ip_reset_active_high),
        .bus2ip_wrce(bus2ip_wrce),
        .convst_rst_wrce_or_reduce(convst_rst_wrce_or_reduce),
        .dummy_bus2ip_rdce_intr(dummy_bus2ip_rdce_intr),
        .dummy_bus2ip_wrce_intr(dummy_bus2ip_wrce_intr),
        .dummy_intr_reg_rdack0(dummy_intr_reg_rdack0),
        .dummy_intr_reg_rdack_d1(dummy_intr_reg_rdack_d1),
        .dummy_intr_reg_wrack0(dummy_intr_reg_wrack0),
        .dummy_intr_reg_wrack_d1(dummy_intr_reg_wrack_d1),
        .dummy_local_reg_rdack0(dummy_local_reg_rdack0),
        .dummy_local_reg_rdack_d1(dummy_local_reg_rdack_d1),
        .dummy_local_reg_rdack_d10(dummy_local_reg_rdack_d10),
        .dummy_local_reg_wrack0(dummy_local_reg_wrack0),
        .dummy_local_reg_wrack_d1(dummy_local_reg_wrack_d1),
        .dummy_local_reg_wrack_d10(dummy_local_reg_wrack_d10),
        .hard_macro_rst_reg(hard_macro_rst_reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .ip2bus_error(ip2bus_error),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_wrack(ip2bus_wrack),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .irpt_wrack_d1_reg(AXI_LITE_IPIF_I_n_49),
        .jtaglocked_i(jtaglocked_i),
        .local_rdce_or_reduce(local_rdce_or_reduce),
        .local_reg_rdack0(local_reg_rdack0),
        .local_reg_rdack_d1(local_reg_rdack_d1),
        .local_reg_wrack0(local_reg_wrack0),
        .local_reg_wrack_d1(local_reg_wrack_d1),
        .p_1_in(p_1_in),
        .p_1_in10_in(p_1_in10_in),
        .p_1_in13_in(p_1_in13_in),
        .p_1_in16_in(p_1_in16_in),
        .p_1_in19_in(p_1_in19_in),
        .p_1_in1_in(p_1_in1_in),
        .p_1_in22_in(p_1_in22_in),
        .p_1_in25_in(p_1_in25_in),
        .p_1_in28_in(p_1_in28_in),
        .p_1_in31_in(p_1_in31_in),
        .p_1_in34_in(p_1_in34_in),
        .p_1_in37_in(p_1_in37_in),
        .p_1_in40_in(p_1_in40_in),
        .p_1_in43_in(p_1_in43_in),
        .p_1_in46_in(p_1_in46_in),
        .p_1_in4_in(p_1_in4_in),
        .p_1_in7_in(p_1_in7_in),
        .p_4_in(p_4_in),
        .reset_trig0(reset_trig0),
        .rst_ip2bus_rdack0(rst_ip2bus_rdack0),
        .rst_ip2bus_rdack_d1(rst_ip2bus_rdack_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[10:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[10:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [17:0]}),
        .\s_axi_rdata_i_reg[31] ({ip2bus_data[31],ip2bus_data[17:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[3:0]}),
        .\s_axi_wdata[31] (AXI_LITE_IPIF_I_n_65),
        .s_axi_wdata_0_sp_1(AXI_LITE_IPIF_I_n_64),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wstrb_2_sp_1(AXI_LITE_IPIF_I_n_63),
        .s_axi_wvalid(s_axi_wvalid),
        .status_reg_rdack0(status_reg_rdack0),
        .status_reg_rdack_d1(status_reg_rdack_d1),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1));
  hardware_system_management_wiz_0_0_xadc_core_drp AXI_SYSMON_CORE_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({jtag_modified_info,jtaglocked_i,busy_out,channel_out}),
        .E(temp_rd_wait_cycle_reg),
        .\FSM_sequential_state_reg[1] (SOFT_RESET_I_n_2),
        .\INTR_CTRLR_GEN_I.ip2bus_error_reg (AXI_LITE_IPIF_I_n_63),
        .\INTR_CTRLR_GEN_I.ip2bus_error_reg_0 (AXI_LITE_IPIF_I_n_44),
        .Q(bus2ip_addr),
        .\alarm_reg_reg[14]_0 (alarm_reg),
        .bus2ip_rdce({bus2ip_rdce[23],bus2ip_rdce[0]}),
        .bus2ip_reset_active_high(bus2ip_reset_active_high),
        .bus2ip_wrce(bus2ip_wrce),
        .convst_rst_wrce_or_reduce(convst_rst_wrce_or_reduce),
        .\do_reg_reg[15]_0 (do_reg),
        .dummy_intr_reg_rdack(dummy_intr_reg_rdack),
        .dummy_intr_reg_wrack(dummy_intr_reg_wrack),
        .dummy_local_reg_rdack(dummy_local_reg_rdack),
        .dummy_local_reg_wrack(dummy_local_reg_wrack),
        .dwe_C_reg_reg(AXI_LITE_IPIF_I_n_0),
        .eoc_out(eoc_out),
        .eos_out(eos_out),
        .hard_macro_rst_reg(hard_macro_rst_reg),
        .hard_macro_rst_reg_reg_0(AXI_LITE_IPIF_I_n_64),
        .inst_sysmon_0({AXI_SYSMON_CORE_I_n_12,AXI_SYSMON_CORE_I_n_13,AXI_SYSMON_CORE_I_n_14,AXI_SYSMON_CORE_I_n_15,\^alarm_out ,AXI_SYSMON_CORE_I_n_17,AXI_SYSMON_CORE_I_n_18,AXI_SYSMON_CORE_I_n_19,AXI_SYSMON_CORE_I_n_20,AXI_SYSMON_CORE_I_n_21,AXI_SYSMON_CORE_I_n_22,AXI_SYSMON_CORE_I_n_23,ot_i}),
        .interrupt_status_i({interrupt_status_i[8],interrupt_status_i[9]}),
        .intr_ip2bus_rdack(intr_ip2bus_rdack),
        .intr_ip2bus_wrack(intr_ip2bus_wrack),
        .ip2bus_error_int1(ip2bus_error_int1),
        .ip2bus_rdack_int1(ip2bus_rdack_int1),
        .ip2bus_wrack_int1(ip2bus_wrack_int1),
        .jtagmodified_i(jtagmodified_i),
        .local_rdce_or_reduce(local_rdce_or_reduce),
        .local_reg_rdack0(local_reg_rdack0),
        .local_reg_rdack_d1(local_reg_rdack_d1),
        .local_reg_wrack0(local_reg_wrack0),
        .local_reg_wrack_d1(local_reg_wrack_d1),
        .p_4_in(p_4_in),
        .reset2ip_reset(reset2ip_reset),
        .rst_ip2bus_rdack(rst_ip2bus_rdack),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[17:0]),
        .status_reg_rdack0(status_reg_rdack0),
        .status_reg_rdack_d1(status_reg_rdack_d1),
        .\status_reg_reg[11]_0 (status_reg),
        .temp_out(temp_out),
        .wrack(wrack));
  GND GND
       (.G(\<const0> ));
  hardware_system_management_wiz_0_0_interrupt_control \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I 
       (.D(jtaglocked_i),
        .\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 ({AXI_SYSMON_CORE_I_n_12,AXI_SYSMON_CORE_I_n_13,AXI_SYSMON_CORE_I_n_14,AXI_SYSMON_CORE_I_n_15,AXI_SYSMON_CORE_I_n_17,AXI_SYSMON_CORE_I_n_18,AXI_SYSMON_CORE_I_n_19,AXI_SYSMON_CORE_I_n_20,AXI_SYSMON_CORE_I_n_21,AXI_SYSMON_CORE_I_n_22,AXI_SYSMON_CORE_I_n_23,ot_i}),
        .E(irpt_wrack_d11),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_1 ),
        .\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 (AXI_LITE_IPIF_I_n_49),
        .Intr2Bus_RdAck0(Intr2Bus_RdAck0),
        .Q({p_0_in47_in,p_0_in44_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_26 ,p_0_in38_in,p_0_in35_in,p_0_in32_in,p_0_in29_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_31 ,p_0_in23_in,p_0_in20_in,p_0_in17_in,p_0_in14_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_36 ,p_0_in8_in,p_0_in5_in,p_0_in2_in,p_0_in0_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_41 }),
        .eoc_out(eoc_out),
        .eos_out(eos_out),
        .interrupt_status_i({interrupt_status_i[8],interrupt_status_i[9]}),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr_ip2bus_rdack(intr_ip2bus_rdack),
        .intr_ip2bus_wrack(intr_ip2bus_wrack),
        .ip2intc_irpt(ip2intc_irpt),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg_0(AXI_LITE_IPIF_I_n_65),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .jtagmodified_i(jtagmodified_i),
        .p_1_in(p_1_in),
        .p_1_in10_in(p_1_in10_in),
        .p_1_in13_in(p_1_in13_in),
        .p_1_in16_in(p_1_in16_in),
        .p_1_in19_in(p_1_in19_in),
        .p_1_in1_in(p_1_in1_in),
        .p_1_in22_in(p_1_in22_in),
        .p_1_in25_in(p_1_in25_in),
        .p_1_in28_in(p_1_in28_in),
        .p_1_in31_in(p_1_in31_in),
        .p_1_in34_in(p_1_in34_in),
        .p_1_in37_in(p_1_in37_in),
        .p_1_in40_in(p_1_in40_in),
        .p_1_in43_in(p_1_in43_in),
        .p_1_in46_in(p_1_in46_in),
        .p_1_in4_in(p_1_in4_in),
        .p_1_in7_in(p_1_in7_in),
        .reset2ip_reset(reset2ip_reset),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[17:0]));
  FDRE \INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_bus2ip_rdce_intr),
        .Q(dummy_intr_reg_rdack_d1),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_intr_reg_rdack0),
        .Q(dummy_intr_reg_rdack),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_bus2ip_wrce_intr),
        .Q(dummy_intr_reg_wrack_d1),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_intr_reg_wrack0),
        .Q(dummy_intr_reg_wrack),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ip2bus_data),
        .Q(ip2bus_data[31]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[14]),
        .Q(ip2bus_data[17]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[15]),
        .Q(ip2bus_data[16]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[16]),
        .Q(ip2bus_data[15]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[17]),
        .Q(ip2bus_data[14]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[18]),
        .Q(ip2bus_data[13]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[19]),
        .Q(ip2bus_data[12]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[20]),
        .Q(ip2bus_data[11]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[21]),
        .Q(ip2bus_data[10]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[22]),
        .Q(ip2bus_data[9]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[23]),
        .Q(ip2bus_data[8]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[24]),
        .Q(ip2bus_data[7]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[25]),
        .Q(ip2bus_data[6]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[26]),
        .Q(ip2bus_data[5]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[27]),
        .Q(ip2bus_data[4]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[28]),
        .Q(ip2bus_data[3]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[29]),
        .Q(ip2bus_data[2]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[30]),
        .Q(ip2bus_data[1]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[31]),
        .Q(ip2bus_data[0]),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.ip2bus_error_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_error_int1),
        .Q(ip2bus_error),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.ip2bus_rdack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_int1),
        .Q(ip2bus_rdack),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.ip2bus_wrack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_int1),
        .Q(ip2bus_wrack),
        .R(reset2ip_reset));
  hardware_system_management_wiz_0_0_soft_reset SOFT_RESET_I
       (.\RESET_FLOPS[15].RST_FLOPS_0 (SOFT_RESET_I_n_2),
        .bus2ip_reset_active_high(bus2ip_reset_active_high),
        .reset2ip_reset(reset2ip_reset),
        .reset_trig0(reset_trig0),
        .s_axi_aclk(s_axi_aclk),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wrack(wrack));
  LUT1 #(
    .INIT(2'h1)) 
    bus2ip_reset_active_high_i_1
       (.I0(s_axi_aresetn),
        .O(p_0_in));
  FDRE bus2ip_reset_active_high_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(bus2ip_reset_active_high),
        .R(1'b0));
  FDRE dummy_local_reg_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_rdack_d10),
        .Q(dummy_local_reg_rdack_d1),
        .R(reset2ip_reset));
  FDRE dummy_local_reg_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_rdack0),
        .Q(dummy_local_reg_rdack),
        .R(reset2ip_reset));
  FDRE dummy_local_reg_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_wrack_d10),
        .Q(dummy_local_reg_wrack_d1),
        .R(reset2ip_reset));
  FDRE dummy_local_reg_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_wrack0),
        .Q(dummy_local_reg_wrack),
        .R(reset2ip_reset));
  FDRE rst_ip2bus_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce[24]),
        .Q(rst_ip2bus_rdack_d1),
        .R(reset2ip_reset));
  FDRE rst_ip2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_ip2bus_rdack0),
        .Q(rst_ip2bus_rdack),
        .R(reset2ip_reset));
endmodule

(* ORIG_REF_NAME = "drp_arbiter" *) 
module hardware_system_management_wiz_0_0_drp_arbiter
   (AR,
    den_reg_reg_0,
    drdy_i,
    den_C,
    dwe_C,
    overlap_A_reg_0,
    overlap_B_reg_0,
    E,
    \FSM_sequential_state_reg[1]_0 ,
    drdy_wr_ack_i_d1_reg,
    drdy_rd_ack_i_d1_reg,
    den_d1_reg,
    \FSM_sequential_state_reg[1]_1 ,
    \FSM_sequential_state_reg[1]_2 ,
    \do_A_reg_reg[15]_0 ,
    \daddr_C_reg_reg[7]_0 ,
    \di_C_reg_reg[15]_0 ,
    \do_B_reg_reg[15]_0 ,
    s_axi_aclk,
    den_reg,
    Q,
    drdy_wr_ack_i_d1,
    drdy_wr_ack_i_d2,
    dwe_C_reg_reg_0,
    Bus_RNW_reg,
    \daddr_reg_reg[7]_0 ,
    drdy_rd_ack_i_d1,
    drdy_rd_ack_i_d2,
    hard_macro_rst_reg,
    bus2ip_reset_active_high,
    \FSM_sequential_state_reg[1]_3 ,
    bbusy_A,
    den_reg_reg_1,
    den_A,
    den_d1,
    drdy_C,
    den_C_reg_reg_0,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[1]_4 ,
    dwe_C_reg_reg_1,
    s_axi_wdata,
    \daddr_reg_reg[7]_1 ,
    \daddr_C_reg_reg[7]_1 ,
    DO,
    overlap_B_reg_1,
    \FSM_sequential_state_reg[1]_5 );
  output [0:0]AR;
  output den_reg_reg_0;
  output drdy_i;
  output den_C;
  output dwe_C;
  output overlap_A_reg_0;
  output overlap_B_reg_0;
  output [0:0]E;
  output [1:0]\FSM_sequential_state_reg[1]_0 ;
  output drdy_wr_ack_i_d1_reg;
  output drdy_rd_ack_i_d1_reg;
  output den_d1_reg;
  output \FSM_sequential_state_reg[1]_1 ;
  output \FSM_sequential_state_reg[1]_2 ;
  output [9:0]\do_A_reg_reg[15]_0 ;
  output [7:0]\daddr_C_reg_reg[7]_0 ;
  output [15:0]\di_C_reg_reg[15]_0 ;
  output [15:0]\do_B_reg_reg[15]_0 ;
  input s_axi_aclk;
  input den_reg;
  input [0:0]Q;
  input drdy_wr_ack_i_d1;
  input drdy_wr_ack_i_d2;
  input dwe_C_reg_reg_0;
  input Bus_RNW_reg;
  input \daddr_reg_reg[7]_0 ;
  input drdy_rd_ack_i_d1;
  input drdy_rd_ack_i_d2;
  input hard_macro_rst_reg;
  input bus2ip_reset_active_high;
  input \FSM_sequential_state_reg[1]_3 ;
  input bbusy_A;
  input den_reg_reg_1;
  input den_A;
  input den_d1;
  input drdy_C;
  input den_C_reg_reg_0;
  input \FSM_sequential_state_reg[0]_0 ;
  input \FSM_sequential_state_reg[1]_4 ;
  input dwe_C_reg_reg_1;
  input [15:0]s_axi_wdata;
  input [7:0]\daddr_reg_reg[7]_1 ;
  input \daddr_C_reg_reg[7]_1 ;
  input [15:0]DO;
  input overlap_B_reg_1;
  input [0:0]\FSM_sequential_state_reg[1]_5 ;

  wire [0:0]AR;
  wire Bus_RNW_reg;
  wire [15:0]DO;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [1:0]\FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire \FSM_sequential_state_reg[1]_2 ;
  wire \FSM_sequential_state_reg[1]_3 ;
  wire \FSM_sequential_state_reg[1]_4 ;
  wire [0:0]\FSM_sequential_state_reg[1]_5 ;
  wire [0:0]Q;
  wire bbusy_A;
  wire bus2ip_reset_active_high;
  wire [7:0]daddr_C_reg0_in;
  wire \daddr_C_reg[7]_i_1_n_0 ;
  wire \daddr_C_reg[7]_i_4_n_0 ;
  wire \daddr_C_reg[7]_i_5_n_0 ;
  wire \daddr_C_reg[7]_i_6_n_0 ;
  wire \daddr_C_reg[7]_i_7_n_0 ;
  wire [7:0]\daddr_C_reg_reg[7]_0 ;
  wire \daddr_C_reg_reg[7]_1 ;
  wire [7:0]daddr_reg;
  wire \daddr_reg_reg[7]_0 ;
  wire [7:0]\daddr_reg_reg[7]_1 ;
  wire \daddr_reg_reg_n_0_[0] ;
  wire \daddr_reg_reg_n_0_[1] ;
  wire \daddr_reg_reg_n_0_[2] ;
  wire \daddr_reg_reg_n_0_[3] ;
  wire \daddr_reg_reg_n_0_[4] ;
  wire \daddr_reg_reg_n_0_[5] ;
  wire \daddr_reg_reg_n_0_[6] ;
  wire \daddr_reg_reg_n_0_[7] ;
  wire den_A;
  wire den_C;
  wire den_C_reg;
  wire den_C_reg_i_3_n_0;
  wire den_C_reg_i_4_n_0;
  wire den_C_reg_reg_0;
  wire den_d1;
  wire den_d1_reg;
  wire den_reg;
  wire den_reg_reg_0;
  wire den_reg_reg_1;
  wire [15:0]di_C_reg;
  wire [15:0]\di_C_reg_reg[15]_0 ;
  wire [15:0]di_reg;
  wire \di_reg_reg_n_0_[0] ;
  wire \di_reg_reg_n_0_[10] ;
  wire \di_reg_reg_n_0_[11] ;
  wire \di_reg_reg_n_0_[12] ;
  wire \di_reg_reg_n_0_[13] ;
  wire \di_reg_reg_n_0_[14] ;
  wire \di_reg_reg_n_0_[15] ;
  wire \di_reg_reg_n_0_[1] ;
  wire \di_reg_reg_n_0_[2] ;
  wire \di_reg_reg_n_0_[3] ;
  wire \di_reg_reg_n_0_[4] ;
  wire \di_reg_reg_n_0_[5] ;
  wire \di_reg_reg_n_0_[6] ;
  wire \di_reg_reg_n_0_[7] ;
  wire \di_reg_reg_n_0_[8] ;
  wire \di_reg_reg_n_0_[9] ;
  wire [15:6]do_A_reg0_in;
  wire \do_A_reg[15]_i_1_n_0 ;
  wire [9:0]\do_A_reg_reg[15]_0 ;
  wire [15:0]do_B_reg0_in;
  wire \do_B_reg[15]_i_1_n_0 ;
  wire [15:0]\do_B_reg_reg[15]_0 ;
  wire drdy_A_reg;
  wire drdy_A_reg_i_1_n_0;
  wire drdy_B;
  wire drdy_B_reg;
  wire drdy_C;
  wire drdy_i;
  wire drdy_rd_ack_i_d1;
  wire drdy_rd_ack_i_d1_reg;
  wire drdy_rd_ack_i_d2;
  wire drdy_wr_ack_i_d1;
  wire drdy_wr_ack_i_d1_reg;
  wire drdy_wr_ack_i_d2;
  wire dwe_C;
  wire dwe_C_reg;
  wire dwe_C_reg_reg_0;
  wire dwe_C_reg_reg_1;
  wire dwe_reg;
  wire dwe_reg_i_1_n_0;
  wire dwe_reg_i_3_n_0;
  wire dwe_reg_reg_n_0;
  wire hard_macro_rst_reg;
  wire overlap_A;
  wire overlap_A_i_1_n_0;
  wire overlap_A_i_3_n_0;
  wire overlap_A_i_4_n_0;
  wire overlap_A_reg_0;
  wire overlap_B_i_1_n_0;
  wire overlap_B_i_3_n_0;
  wire overlap_B_i_4_n_0;
  wire overlap_B_i_5_n_0;
  wire overlap_B_i_6_n_0;
  wire overlap_B_reg_0;
  wire overlap_B_reg_1;
  wire s_axi_aclk;
  wire [15:0]s_axi_wdata;

  LUT6 #(
    .INIT(64'h30FF30FF30FF1010)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(overlap_B_reg_0),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(den_A),
        .I5(overlap_A_reg_0),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_0 [0]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFA20F0AAFF20F0)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_4 ),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(overlap_B_reg_0),
        .I5(bbusy_A),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\FSM_sequential_state_reg[1]_0 [1]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [0]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(\FSM_sequential_state_reg[1]_0 [1]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .O(\FSM_sequential_state_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "grant_b:10,nogrant:00,grant_a:01" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_state_reg[1]_5 ),
        .CLR(AR),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[1]_0 [0]));
  (* FSM_ENCODED_STATES = "grant_b:10,nogrant:00,grant_a:01" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_state_reg[1]_5 ),
        .CLR(AR),
        .D(\FSM_sequential_state[1]_i_2_n_0 ),
        .Q(\FSM_sequential_state_reg[1]_0 [1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \daddr_C_reg[0]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\daddr_reg_reg_n_0_[0] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(\daddr_reg_reg[7]_1 [0]),
        .O(daddr_C_reg0_in[0]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \daddr_C_reg[1]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\daddr_reg_reg_n_0_[1] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(\daddr_reg_reg[7]_1 [1]),
        .O(daddr_C_reg0_in[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \daddr_C_reg[2]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\daddr_reg_reg_n_0_[2] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(\daddr_reg_reg[7]_1 [2]),
        .O(daddr_C_reg0_in[2]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \daddr_C_reg[3]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\daddr_reg_reg_n_0_[3] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(\daddr_reg_reg[7]_1 [3]),
        .O(daddr_C_reg0_in[3]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \daddr_C_reg[4]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\daddr_reg_reg_n_0_[4] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(\daddr_reg_reg[7]_1 [4]),
        .O(daddr_C_reg0_in[4]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \daddr_C_reg[5]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\daddr_reg_reg_n_0_[5] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(\daddr_reg_reg[7]_1 [5]),
        .O(daddr_C_reg0_in[5]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \daddr_C_reg[6]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\daddr_reg_reg_n_0_[6] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(\daddr_reg_reg[7]_1 [6]),
        .O(daddr_C_reg0_in[6]));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEEE)) 
    \daddr_C_reg[7]_i_1 
       (.I0(dwe_C_reg_reg_1),
        .I1(\daddr_C_reg[7]_i_4_n_0 ),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(den_A),
        .I4(overlap_A_reg_0),
        .I5(overlap_B_reg_0),
        .O(\daddr_C_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \daddr_C_reg[7]_i_2 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\daddr_reg_reg_n_0_[7] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(\daddr_reg_reg[7]_1 [7]),
        .O(daddr_C_reg0_in[7]));
  LUT6 #(
    .INIT(64'h0000000022222322)) 
    \daddr_C_reg[7]_i_4 
       (.I0(overlap_B_reg_0),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .I2(\daddr_reg_reg[7]_0 ),
        .I3(dwe_C_reg_reg_0),
        .I4(den_d1),
        .I5(bbusy_A),
        .O(\daddr_C_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCD4FCF4DCDCFFFF)) 
    \daddr_C_reg[7]_i_5 
       (.I0(drdy_C),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(bbusy_A),
        .I4(overlap_A_reg_0),
        .I5(overlap_B_reg_0),
        .O(\daddr_C_reg[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0FDFF0DFFFDFF0D)) 
    \daddr_C_reg[7]_i_6 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(\daddr_C_reg[7]_i_7_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(drdy_C),
        .I5(\daddr_C_reg_reg[7]_1 ),
        .O(\daddr_C_reg[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \daddr_C_reg[7]_i_7 
       (.I0(overlap_B_reg_0),
        .I1(overlap_A_reg_0),
        .I2(den_A),
        .O(\daddr_C_reg[7]_i_7_n_0 ));
  FDCE \daddr_C_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[0]),
        .Q(\daddr_C_reg_reg[7]_0 [0]));
  FDCE \daddr_C_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[1]),
        .Q(\daddr_C_reg_reg[7]_0 [1]));
  FDCE \daddr_C_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[2]),
        .Q(\daddr_C_reg_reg[7]_0 [2]));
  FDCE \daddr_C_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[3]),
        .Q(\daddr_C_reg_reg[7]_0 [3]));
  FDCE \daddr_C_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[4]),
        .Q(\daddr_C_reg_reg[7]_0 [4]));
  FDCE \daddr_C_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[5]),
        .Q(\daddr_C_reg_reg[7]_0 [5]));
  FDCE \daddr_C_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[6]),
        .Q(\daddr_C_reg_reg[7]_0 [6]));
  FDCE \daddr_C_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[7]),
        .Q(\daddr_C_reg_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \daddr_reg[0]_i_1 
       (.I0(\daddr_reg_reg[7]_1 [0]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(daddr_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \daddr_reg[1]_i_1 
       (.I0(\daddr_reg_reg[7]_1 [1]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(daddr_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \daddr_reg[2]_i_1 
       (.I0(\daddr_reg_reg[7]_1 [2]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(daddr_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \daddr_reg[3]_i_1 
       (.I0(\daddr_reg_reg[7]_1 [3]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(daddr_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \daddr_reg[4]_i_1 
       (.I0(\daddr_reg_reg[7]_1 [4]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(daddr_reg[4]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \daddr_reg[5]_i_1 
       (.I0(\daddr_reg_reg[7]_1 [5]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(daddr_reg[5]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \daddr_reg[6]_i_1 
       (.I0(\daddr_reg_reg[7]_1 [6]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(daddr_reg[6]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \daddr_reg[7]_i_1 
       (.I0(\daddr_reg_reg[7]_1 [7]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(daddr_reg[7]));
  FDCE \daddr_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[0]),
        .Q(\daddr_reg_reg_n_0_[0] ));
  FDCE \daddr_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[1]),
        .Q(\daddr_reg_reg_n_0_[1] ));
  FDCE \daddr_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[2]),
        .Q(\daddr_reg_reg_n_0_[2] ));
  FDCE \daddr_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[3]),
        .Q(\daddr_reg_reg_n_0_[3] ));
  FDCE \daddr_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[4]),
        .Q(\daddr_reg_reg_n_0_[4] ));
  FDCE \daddr_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[5]),
        .Q(\daddr_reg_reg_n_0_[5] ));
  FDCE \daddr_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[6]),
        .Q(\daddr_reg_reg_n_0_[6] ));
  FDCE \daddr_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[7]),
        .Q(\daddr_reg_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF01)) 
    den_C_reg_i_1
       (.I0(drdy_C),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(den_d1_reg),
        .I3(den_C_reg_reg_0),
        .I4(den_C_reg_i_3_n_0),
        .I5(den_C_reg_i_4_n_0),
        .O(den_C_reg));
  LUT6 #(
    .INIT(64'hF000F000F000E0E0)) 
    den_C_reg_i_3
       (.I0(den_A),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\FSM_sequential_state_reg[1]_2 ),
        .I3(den_reg_reg_0),
        .I4(overlap_A_reg_0),
        .I5(overlap_B_reg_0),
        .O(den_C_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h4040400000004000)) 
    den_C_reg_i_4
       (.I0(\FSM_sequential_state_reg[1]_0 [0]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .I2(drdy_C),
        .I3(den_A),
        .I4(overlap_A_reg_0),
        .I5(den_reg_reg_0),
        .O(den_C_reg_i_4_n_0));
  FDCE den_C_reg_reg
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(den_C_reg),
        .Q(den_C));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    den_reg_i_2
       (.I0(den_d1),
        .I1(dwe_C_reg_reg_0),
        .I2(\daddr_reg_reg[7]_0 ),
        .O(den_d1_reg));
  FDCE den_reg_reg
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(den_reg),
        .Q(den_reg_reg_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[0]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[0] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[0]),
        .O(di_C_reg[0]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[10]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[10] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[10]),
        .O(di_C_reg[10]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[11]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[11] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[11]),
        .O(di_C_reg[11]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[12]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[12] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[12]),
        .O(di_C_reg[12]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[13]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[13] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[13]),
        .O(di_C_reg[13]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[14]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[14] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[14]),
        .O(di_C_reg[14]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[15]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[15] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[15]),
        .O(di_C_reg[15]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[1]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[1] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[1]),
        .O(di_C_reg[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[2]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[2] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[2]),
        .O(di_C_reg[2]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[3]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[3] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[3]),
        .O(di_C_reg[3]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[4]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[4] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[4]),
        .O(di_C_reg[4]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[5]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[5] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[5]),
        .O(di_C_reg[5]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[6]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[6] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[6]),
        .O(di_C_reg[6]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[7]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[7] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[7]),
        .O(di_C_reg[7]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[8]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[8] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[8]),
        .O(di_C_reg[8]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \di_C_reg[9]_i_1 
       (.I0(\daddr_C_reg[7]_i_5_n_0 ),
        .I1(\di_reg_reg_n_0_[9] ),
        .I2(\daddr_C_reg[7]_i_6_n_0 ),
        .I3(s_axi_wdata[9]),
        .O(di_C_reg[9]));
  FDCE \di_C_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[0]),
        .Q(\di_C_reg_reg[15]_0 [0]));
  FDCE \di_C_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[10]),
        .Q(\di_C_reg_reg[15]_0 [10]));
  FDCE \di_C_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[11]),
        .Q(\di_C_reg_reg[15]_0 [11]));
  FDCE \di_C_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[12]),
        .Q(\di_C_reg_reg[15]_0 [12]));
  FDCE \di_C_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[13]),
        .Q(\di_C_reg_reg[15]_0 [13]));
  FDCE \di_C_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[14]),
        .Q(\di_C_reg_reg[15]_0 [14]));
  FDCE \di_C_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[15]),
        .Q(\di_C_reg_reg[15]_0 [15]));
  FDCE \di_C_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[1]),
        .Q(\di_C_reg_reg[15]_0 [1]));
  FDCE \di_C_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[2]),
        .Q(\di_C_reg_reg[15]_0 [2]));
  FDCE \di_C_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[3]),
        .Q(\di_C_reg_reg[15]_0 [3]));
  FDCE \di_C_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[4]),
        .Q(\di_C_reg_reg[15]_0 [4]));
  FDCE \di_C_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[5]),
        .Q(\di_C_reg_reg[15]_0 [5]));
  FDCE \di_C_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[6]),
        .Q(\di_C_reg_reg[15]_0 [6]));
  FDCE \di_C_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[7]),
        .Q(\di_C_reg_reg[15]_0 [7]));
  FDCE \di_C_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[8]),
        .Q(\di_C_reg_reg[15]_0 [8]));
  FDCE \di_C_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[9]),
        .Q(\di_C_reg_reg[15]_0 [9]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[0]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[10]_i_1 
       (.I0(s_axi_wdata[10]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[10]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[11]_i_1 
       (.I0(s_axi_wdata[11]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[11]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[12]_i_1 
       (.I0(s_axi_wdata[12]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[12]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[13]_i_1 
       (.I0(s_axi_wdata[13]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[13]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[14]_i_1 
       (.I0(s_axi_wdata[14]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[14]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[15]_i_1 
       (.I0(s_axi_wdata[15]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[15]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[1]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[2]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[2]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[3]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[3]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[4]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[4]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[5]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[5]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[6]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[6]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[7]_i_1 
       (.I0(s_axi_wdata[7]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[7]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[8]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[8]));
  LUT5 #(
    .INIT(32'h0A020A0A)) 
    \di_reg[9]_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(\daddr_reg_reg[7]_0 ),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(den_A),
        .O(di_reg[9]));
  FDCE \di_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[0]),
        .Q(\di_reg_reg_n_0_[0] ));
  FDCE \di_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[10]),
        .Q(\di_reg_reg_n_0_[10] ));
  FDCE \di_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[11]),
        .Q(\di_reg_reg_n_0_[11] ));
  FDCE \di_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[12]),
        .Q(\di_reg_reg_n_0_[12] ));
  FDCE \di_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[13]),
        .Q(\di_reg_reg_n_0_[13] ));
  FDCE \di_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[14]),
        .Q(\di_reg_reg_n_0_[14] ));
  FDCE \di_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[15]),
        .Q(\di_reg_reg_n_0_[15] ));
  FDCE \di_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[1]),
        .Q(\di_reg_reg_n_0_[1] ));
  FDCE \di_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[2]),
        .Q(\di_reg_reg_n_0_[2] ));
  FDCE \di_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[3]),
        .Q(\di_reg_reg_n_0_[3] ));
  FDCE \di_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[4]),
        .Q(\di_reg_reg_n_0_[4] ));
  FDCE \di_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[5]),
        .Q(\di_reg_reg_n_0_[5] ));
  FDCE \di_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[6]),
        .Q(\di_reg_reg_n_0_[6] ));
  FDCE \di_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[7]),
        .Q(\di_reg_reg_n_0_[7] ));
  FDCE \di_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[8]),
        .Q(\di_reg_reg_n_0_[8] ));
  FDCE \di_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[9]),
        .Q(\di_reg_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[10]_i_1 
       (.I0(DO[10]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .O(do_A_reg0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[11]_i_1 
       (.I0(DO[11]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .O(do_A_reg0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[12]_i_1 
       (.I0(DO[12]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .O(do_A_reg0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[13]_i_1 
       (.I0(DO[13]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .O(do_A_reg0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[14]_i_1 
       (.I0(DO[14]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .O(do_A_reg0_in[14]));
  LUT3 #(
    .INIT(8'h31)) 
    \do_A_reg[15]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 [0]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .I2(drdy_C),
        .O(\do_A_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[15]_i_2 
       (.I0(DO[15]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .O(do_A_reg0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[6]_i_1 
       (.I0(DO[6]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .O(do_A_reg0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[7]_i_1 
       (.I0(DO[7]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .O(do_A_reg0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[8]_i_1 
       (.I0(DO[8]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .O(do_A_reg0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[9]_i_1 
       (.I0(DO[9]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .O(do_A_reg0_in[9]));
  FDCE \do_A_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[10]),
        .Q(\do_A_reg_reg[15]_0 [4]));
  FDCE \do_A_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[11]),
        .Q(\do_A_reg_reg[15]_0 [5]));
  FDCE \do_A_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[12]),
        .Q(\do_A_reg_reg[15]_0 [6]));
  FDCE \do_A_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[13]),
        .Q(\do_A_reg_reg[15]_0 [7]));
  FDCE \do_A_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[14]),
        .Q(\do_A_reg_reg[15]_0 [8]));
  FDCE \do_A_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[15]),
        .Q(\do_A_reg_reg[15]_0 [9]));
  FDCE \do_A_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[6]),
        .Q(\do_A_reg_reg[15]_0 [0]));
  FDCE \do_A_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[7]),
        .Q(\do_A_reg_reg[15]_0 [1]));
  FDCE \do_A_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[8]),
        .Q(\do_A_reg_reg[15]_0 [2]));
  FDCE \do_A_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[9]),
        .Q(\do_A_reg_reg[15]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[0]_i_1 
       (.I0(DO[0]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[10]_i_1 
       (.I0(DO[10]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[11]_i_1 
       (.I0(DO[11]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[12]_i_1 
       (.I0(DO[12]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[13]_i_1 
       (.I0(DO[13]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[14]_i_1 
       (.I0(DO[14]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[14]));
  LUT3 #(
    .INIT(8'h31)) 
    \do_B_reg[15]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 [1]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .I2(drdy_C),
        .O(\do_B_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[15]_i_2 
       (.I0(DO[15]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[1]_i_1 
       (.I0(DO[1]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[2]_i_1 
       (.I0(DO[2]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[3]_i_1 
       (.I0(DO[3]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[4]_i_1 
       (.I0(DO[4]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[5]_i_1 
       (.I0(DO[5]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[6]_i_1 
       (.I0(DO[6]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[7]_i_1 
       (.I0(DO[7]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[8]_i_1 
       (.I0(DO[8]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[9]_i_1 
       (.I0(DO[9]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(do_B_reg0_in[9]));
  FDCE \do_B_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[0]),
        .Q(\do_B_reg_reg[15]_0 [0]));
  FDCE \do_B_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[10]),
        .Q(\do_B_reg_reg[15]_0 [10]));
  FDCE \do_B_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[11]),
        .Q(\do_B_reg_reg[15]_0 [11]));
  FDCE \do_B_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[12]),
        .Q(\do_B_reg_reg[15]_0 [12]));
  FDCE \do_B_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[13]),
        .Q(\do_B_reg_reg[15]_0 [13]));
  FDCE \do_B_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[14]),
        .Q(\do_B_reg_reg[15]_0 [14]));
  FDCE \do_B_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[15]),
        .Q(\do_B_reg_reg[15]_0 [15]));
  FDCE \do_B_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[1]),
        .Q(\do_B_reg_reg[15]_0 [1]));
  FDCE \do_B_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[2]),
        .Q(\do_B_reg_reg[15]_0 [2]));
  FDCE \do_B_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[3]),
        .Q(\do_B_reg_reg[15]_0 [3]));
  FDCE \do_B_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[4]),
        .Q(\do_B_reg_reg[15]_0 [4]));
  FDCE \do_B_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[5]),
        .Q(\do_B_reg_reg[15]_0 [5]));
  FDCE \do_B_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[6]),
        .Q(\do_B_reg_reg[15]_0 [6]));
  FDCE \do_B_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[7]),
        .Q(\do_B_reg_reg[15]_0 [7]));
  FDCE \do_B_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[8]),
        .Q(\do_B_reg_reg[15]_0 [8]));
  FDCE \do_B_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[9]),
        .Q(\do_B_reg_reg[15]_0 [9]));
  LUT2 #(
    .INIT(4'h7)) 
    drdy_A_reg_i_1
       (.I0(\FSM_sequential_state_reg[1]_0 [1]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .O(drdy_A_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h08)) 
    drdy_A_reg_i_2
       (.I0(drdy_C),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .O(drdy_A_reg));
  FDCE drdy_A_reg_reg
       (.C(s_axi_aclk),
        .CE(drdy_A_reg_i_1_n_0),
        .CLR(AR),
        .D(drdy_A_reg),
        .Q(drdy_i));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    drdy_B_reg_i_1
       (.I0(drdy_C),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .I2(\FSM_sequential_state_reg[1]_0 [0]),
        .O(drdy_B_reg));
  FDCE drdy_B_reg_reg
       (.C(s_axi_aclk),
        .CE(drdy_A_reg_i_1_n_0),
        .CLR(AR),
        .D(drdy_B_reg),
        .Q(drdy_B));
  LUT6 #(
    .INIT(64'h22222222F0000000)) 
    drdy_rd_ack_i_i_1
       (.I0(drdy_rd_ack_i_d1),
        .I1(drdy_rd_ack_i_d2),
        .I2(Bus_RNW_reg),
        .I3(dwe_C_reg_reg_0),
        .I4(drdy_B),
        .I5(\daddr_reg_reg[7]_0 ),
        .O(drdy_rd_ack_i_d1_reg));
  LUT6 #(
    .INIT(64'h2222222200F00000)) 
    drdy_wr_ack_i_i_1
       (.I0(drdy_wr_ack_i_d1),
        .I1(drdy_wr_ack_i_d2),
        .I2(dwe_C_reg_reg_0),
        .I3(Bus_RNW_reg),
        .I4(drdy_B),
        .I5(\daddr_reg_reg[7]_0 ),
        .O(drdy_wr_ack_i_d1_reg));
  LUT6 #(
    .INIT(64'h0004FFFF00040004)) 
    dwe_C_reg_i_1
       (.I0(\daddr_C_reg[7]_i_6_n_0 ),
        .I1(dwe_C_reg_reg_0),
        .I2(\daddr_reg_reg[7]_0 ),
        .I3(Bus_RNW_reg),
        .I4(\daddr_C_reg[7]_i_5_n_0 ),
        .I5(dwe_reg_reg_n_0),
        .O(dwe_C_reg));
  FDCE dwe_C_reg_reg
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[7]_i_1_n_0 ),
        .CLR(AR),
        .D(dwe_C_reg),
        .Q(dwe_C));
  LUT6 #(
    .INIT(64'hEAEAEAFAEAEAEAEA)) 
    dwe_reg_i_1
       (.I0(dwe_reg_i_3_n_0),
        .I1(bbusy_A),
        .I2(den_reg_reg_1),
        .I3(overlap_A_reg_0),
        .I4(overlap_B_reg_0),
        .I5(den_A),
        .O(dwe_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    dwe_reg_i_2
       (.I0(\FSM_sequential_state_reg[1]_0 [1]),
        .I1(Bus_RNW_reg),
        .I2(dwe_C_reg_reg_0),
        .I3(\daddr_reg_reg[7]_0 ),
        .O(dwe_reg));
  LUT6 #(
    .INIT(64'h0808080808380808)) 
    dwe_reg_i_3
       (.I0(den_A),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .I2(\FSM_sequential_state_reg[1]_0 [0]),
        .I3(den_d1),
        .I4(dwe_C_reg_reg_0),
        .I5(\daddr_reg_reg[7]_0 ),
        .O(dwe_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h1)) 
    dwe_reg_i_5
       (.I0(\FSM_sequential_state_reg[1]_0 [1]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .O(\FSM_sequential_state_reg[1]_2 ));
  FDCE dwe_reg_reg
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(dwe_reg),
        .Q(dwe_reg_reg_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    inst_sysmon_i_1
       (.I0(hard_macro_rst_reg),
        .I1(bus2ip_reset_active_high),
        .I2(\FSM_sequential_state_reg[1]_3 ),
        .O(AR));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEF00)) 
    overlap_A_i_1
       (.I0(overlap_A),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(drdy_C),
        .I3(overlap_A_reg_0),
        .I4(overlap_A_i_3_n_0),
        .I5(overlap_A_i_4_n_0),
        .O(overlap_A_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    overlap_A_i_2
       (.I0(\FSM_sequential_state_reg[1]_0 [0]),
        .I1(den_A),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\daddr_reg_reg[7]_0 ),
        .O(overlap_A));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h32002200)) 
    overlap_A_i_3
       (.I0(\FSM_sequential_state_reg[1]_0 [1]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .I2(\daddr_reg_reg[7]_0 ),
        .I3(den_A),
        .I4(bbusy_A),
        .O(overlap_A_i_3_n_0));
  LUT6 #(
    .INIT(64'hC4C4C4C4C4C40400)) 
    overlap_A_i_4
       (.I0(overlap_B_reg_0),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(bbusy_A),
        .I3(den_A),
        .I4(overlap_A_reg_0),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(overlap_A_i_4_n_0));
  FDCE overlap_A_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(overlap_A_i_1_n_0),
        .Q(overlap_A_reg_0));
  LUT6 #(
    .INIT(64'hFF00FFF0FF44FF04)) 
    overlap_B_i_1
       (.I0(overlap_B_reg_1),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(overlap_B_i_3_n_0),
        .I3(overlap_B_i_4_n_0),
        .I4(overlap_B_i_5_n_0),
        .I5(overlap_B_reg_0),
        .O(overlap_B_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    overlap_B_i_3
       (.I0(overlap_B_reg_0),
        .I1(bbusy_A),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(drdy_C),
        .O(overlap_B_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    overlap_B_i_4
       (.I0(\daddr_reg_reg[7]_0 ),
        .I1(dwe_C_reg_reg_0),
        .I2(den_d1),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(\FSM_sequential_state_reg[1]_0 [1]),
        .O(overlap_B_i_4_n_0));
  LUT6 #(
    .INIT(64'hAA02AA00AA8AAA8A)) 
    overlap_B_i_5
       (.I0(overlap_B_i_6_n_0),
        .I1(bbusy_A),
        .I2(overlap_A_reg_0),
        .I3(overlap_B_reg_0),
        .I4(den_A),
        .I5(den_d1_reg),
        .O(overlap_B_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h01)) 
    overlap_B_i_6
       (.I0(\FSM_sequential_state_reg[1]_0 [1]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .I2(\daddr_reg_reg[7]_0 ),
        .O(overlap_B_i_6_n_0));
  FDCE overlap_B_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(overlap_B_i_1_n_0),
        .Q(overlap_B_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    \temp_out[9]_i_1 
       (.I0(drdy_i),
        .I1(Q),
        .O(E));
endmodule

module hardware_system_management_wiz_0_0_interrupt_control
   (irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    p_1_in46_in,
    p_1_in43_in,
    p_1_in40_in,
    p_1_in37_in,
    p_1_in34_in,
    p_1_in31_in,
    p_1_in28_in,
    p_1_in25_in,
    p_1_in22_in,
    p_1_in19_in,
    p_1_in16_in,
    p_1_in13_in,
    p_1_in10_in,
    p_1_in7_in,
    p_1_in4_in,
    p_1_in1_in,
    p_1_in,
    intr_ip2bus_wrack,
    irpt_rdack_d1,
    intr_ip2bus_rdack,
    ipif_glbl_irpt_enable_reg,
    ip2intc_irpt,
    Q,
    reset2ip_reset,
    irpt_wrack,
    s_axi_aclk,
    \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 ,
    eos_out,
    eoc_out,
    D,
    jtagmodified_i,
    interrupt_status_i,
    interrupt_wrce_strb,
    irpt_rdack,
    Intr2Bus_RdAck0,
    ipif_glbl_irpt_enable_reg_reg_0,
    s_axi_wdata,
    \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ,
    E);
  output irpt_wrack_d1;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output p_1_in46_in;
  output p_1_in43_in;
  output p_1_in40_in;
  output p_1_in37_in;
  output p_1_in34_in;
  output p_1_in31_in;
  output p_1_in28_in;
  output p_1_in25_in;
  output p_1_in22_in;
  output p_1_in19_in;
  output p_1_in16_in;
  output p_1_in13_in;
  output p_1_in10_in;
  output p_1_in7_in;
  output p_1_in4_in;
  output p_1_in1_in;
  output p_1_in;
  output intr_ip2bus_wrack;
  output irpt_rdack_d1;
  output intr_ip2bus_rdack;
  output ipif_glbl_irpt_enable_reg;
  output ip2intc_irpt;
  output [17:0]Q;
  input reset2ip_reset;
  input irpt_wrack;
  input s_axi_aclk;
  input [11:0]\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 ;
  input eos_out;
  input eoc_out;
  input [0:0]D;
  input jtagmodified_i;
  input [1:0]interrupt_status_i;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input Intr2Bus_RdAck0;
  input ipif_glbl_irpt_enable_reg_reg_0;
  input [17:0]s_axi_wdata;
  input \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ;
  input [0:0]E;

  wire [0:0]D;
  wire \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire [11:0]\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 ;
  wire \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire [0:0]E;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg[17]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1_n_0 ;
  wire Intr2Bus_RdAck0;
  wire [17:0]Q;
  wire eoc_out;
  wire eos_out;
  wire [1:0]interrupt_status_i;
  wire interrupt_wrce_strb;
  wire intr_ip2bus_rdack;
  wire intr_ip2bus_wrack;
  wire ip2intc_irpt;
  wire ip2intc_irpt_INST_0_i_10_n_0;
  wire ip2intc_irpt_INST_0_i_1_n_0;
  wire ip2intc_irpt_INST_0_i_2_n_0;
  wire ip2intc_irpt_INST_0_i_3_n_0;
  wire ip2intc_irpt_INST_0_i_4_n_0;
  wire ip2intc_irpt_INST_0_i_5_n_0;
  wire ip2intc_irpt_INST_0_i_6_n_0;
  wire ip2intc_irpt_INST_0_i_7_n_0;
  wire ip2intc_irpt_INST_0_i_8_n_0;
  wire ip2intc_irpt_INST_0_i_9_n_0;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg_0;
  wire irpt_dly1;
  wire irpt_dly2;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire jtagmodified_i;
  wire p_1_in;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire p_1_in16_in;
  wire p_1_in19_in;
  wire p_1_in1_in;
  wire p_1_in22_in;
  wire p_1_in25_in;
  wire p_1_in28_in;
  wire p_1_in31_in;
  wire p_1_in34_in;
  wire p_1_in37_in;
  wire p_1_in40_in;
  wire p_1_in43_in;
  wire p_1_in46_in;
  wire p_1_in4_in;
  wire p_1_in7_in;
  wire reset2ip_reset;
  wire s_axi_aclk;
  wire [17:0]s_axi_wdata;

  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 [0]),
        .Q(irpt_dly1),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_dly1),
        .Q(irpt_dly2),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 [4]),
        .Q(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 [5]),
        .Q(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 [6]),
        .Q(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 [7]),
        .Q(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 [8]),
        .Q(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 [9]),
        .Q(\DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 [10]),
        .Q(\DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 [11]),
        .Q(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 [1]),
        .Q(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 [2]),
        .Q(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0 [3]),
        .Q(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eos_out),
        .Q(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eoc_out),
        .Q(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(jtagmodified_i),
        .Q(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_status_i[1]),
        .Q(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_status_i[0]),
        .Q(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I1(s_axi_wdata[0]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(irpt_dly1),
        .I4(irpt_dly2),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1 
       (.I0(p_1_in19_in),
        .I1(s_axi_wdata[10]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0 ),
        .Q(p_1_in19_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1 
       (.I0(p_1_in16_in),
        .I1(s_axi_wdata[11]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0 ),
        .Q(p_1_in16_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1 
       (.I0(p_1_in13_in),
        .I1(s_axi_wdata[12]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0 ),
        .Q(p_1_in13_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1 
       (.I0(p_1_in10_in),
        .I1(s_axi_wdata[13]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0 ),
        .Q(p_1_in10_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1 
       (.I0(p_1_in7_in),
        .I1(s_axi_wdata[14]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1_n_0 ),
        .Q(p_1_in7_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1 
       (.I0(p_1_in4_in),
        .I1(s_axi_wdata[15]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1_n_0 ),
        .Q(p_1_in4_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1 
       (.I0(p_1_in1_in),
        .I1(s_axi_wdata[16]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1_n_0 ),
        .Q(p_1_in1_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg[17]_i_1 
       (.I0(p_1_in),
        .I1(s_axi_wdata[17]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg[17]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg[17]_i_1_n_0 ),
        .Q(p_1_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(p_1_in46_in),
        .I1(s_axi_wdata[1]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ),
        .Q(p_1_in46_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 
       (.I0(p_1_in43_in),
        .I1(s_axi_wdata[2]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ),
        .Q(p_1_in43_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 
       (.I0(p_1_in40_in),
        .I1(s_axi_wdata[3]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ),
        .Q(p_1_in40_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 
       (.I0(p_1_in37_in),
        .I1(s_axi_wdata[4]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ),
        .Q(p_1_in37_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 
       (.I0(p_1_in34_in),
        .I1(s_axi_wdata[5]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ),
        .Q(p_1_in34_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 
       (.I0(p_1_in31_in),
        .I1(s_axi_wdata[6]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ),
        .Q(p_1_in31_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 
       (.I0(p_1_in28_in),
        .I1(s_axi_wdata[7]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ),
        .Q(p_1_in28_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1 
       (.I0(p_1_in25_in),
        .I1(s_axi_wdata[8]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1_n_0 ),
        .Q(p_1_in25_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'hA6A6FFA6)) 
    \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1 
       (.I0(p_1_in22_in),
        .I1(s_axi_wdata[9]),
        .I2(\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0 ),
        .I3(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1_n_0 ),
        .Q(p_1_in22_in),
        .R(reset2ip_reset));
  FDRE Intr2Bus_RdAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Intr2Bus_RdAck0),
        .Q(intr_ip2bus_rdack),
        .R(reset2ip_reset));
  FDRE Intr2Bus_WrAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_wrce_strb),
        .Q(intr_ip2bus_wrack),
        .R(reset2ip_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8A8A8)) 
    ip2intc_irpt_INST_0
       (.I0(ipif_glbl_irpt_enable_reg),
        .I1(ip2intc_irpt_INST_0_i_1_n_0),
        .I2(ip2intc_irpt_INST_0_i_2_n_0),
        .I3(p_1_in),
        .I4(Q[17]),
        .I5(ip2intc_irpt_INST_0_i_3_n_0),
        .O(ip2intc_irpt));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ip2intc_irpt_INST_0_i_1
       (.I0(ip2intc_irpt_INST_0_i_4_n_0),
        .I1(ip2intc_irpt_INST_0_i_5_n_0),
        .I2(ip2intc_irpt_INST_0_i_6_n_0),
        .I3(ip2intc_irpt_INST_0_i_7_n_0),
        .I4(ip2intc_irpt_INST_0_i_8_n_0),
        .I5(ip2intc_irpt_INST_0_i_9_n_0),
        .O(ip2intc_irpt_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ip2intc_irpt_INST_0_i_10
       (.I0(p_1_in13_in),
        .I1(Q[12]),
        .I2(p_1_in19_in),
        .I3(Q[10]),
        .I4(Q[13]),
        .I5(p_1_in10_in),
        .O(ip2intc_irpt_INST_0_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    ip2intc_irpt_INST_0_i_2
       (.I0(ip2intc_irpt_INST_0_i_10_n_0),
        .I1(p_1_in4_in),
        .I2(Q[15]),
        .I3(p_1_in7_in),
        .I4(Q[14]),
        .O(ip2intc_irpt_INST_0_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    ip2intc_irpt_INST_0_i_3
       (.I0(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I1(Q[0]),
        .I2(ipif_glbl_irpt_enable_reg),
        .O(ip2intc_irpt_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_4
       (.I0(Q[16]),
        .I1(p_1_in1_in),
        .I2(Q[9]),
        .I3(p_1_in22_in),
        .O(ip2intc_irpt_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_5
       (.I0(Q[7]),
        .I1(p_1_in28_in),
        .I2(Q[8]),
        .I3(p_1_in25_in),
        .O(ip2intc_irpt_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_6
       (.I0(Q[6]),
        .I1(p_1_in31_in),
        .I2(Q[5]),
        .I3(p_1_in34_in),
        .O(ip2intc_irpt_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_7
       (.I0(Q[4]),
        .I1(p_1_in37_in),
        .I2(Q[3]),
        .I3(p_1_in40_in),
        .O(ip2intc_irpt_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_8
       (.I0(Q[2]),
        .I1(p_1_in43_in),
        .I2(Q[1]),
        .I3(p_1_in46_in),
        .O(ip2intc_irpt_INST_0_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ip2intc_irpt_INST_0_i_9
       (.I0(p_1_in16_in),
        .I1(Q[11]),
        .O(ip2intc_irpt_INST_0_i_9_n_0));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(Q[10]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(Q[11]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[12]),
        .Q(Q[12]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[13]),
        .Q(Q[13]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[14]),
        .Q(Q[14]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[15]),
        .Q(Q[15]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[16]),
        .Q(Q[16]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[17]),
        .Q(Q[17]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(Q[5]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(Q[6]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(Q[7]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(Q[8]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(Q[9]),
        .R(reset2ip_reset));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ipif_glbl_irpt_enable_reg_reg_0),
        .Q(ipif_glbl_irpt_enable_reg),
        .R(reset2ip_reset));
  FDRE irpt_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_rdack),
        .Q(irpt_rdack_d1),
        .R(reset2ip_reset));
  FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(reset2ip_reset));
endmodule

module hardware_system_management_wiz_0_0_slave_attachment
   (\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ,
    s_axi_rresp,
    Bus_RNW_reg_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_arready,
    D,
    convst_rst_wrce_or_reduce,
    local_reg_wrack0,
    local_rdce_or_reduce,
    local_reg_rdack0,
    bus2ip_wrce,
    status_reg_rdack0,
    bus2ip_rdce,
    p_4_in,
    Bus_RNW_reg_reg_0,
    reset_trig0,
    sw_rst_cond,
    irpt_rdack,
    Intr2Bus_RdAck0,
    irpt_wrack_d1_reg,
    irpt_wrack,
    interrupt_wrce_strb,
    E,
    dummy_bus2ip_rdce_intr,
    dummy_intr_reg_rdack0,
    dummy_bus2ip_wrce_intr,
    dummy_intr_reg_wrack0,
    dummy_local_reg_rdack_d10,
    dummy_local_reg_rdack0,
    dummy_local_reg_wrack_d10,
    dummy_local_reg_wrack0,
    rst_ip2bus_rdack0,
    Q,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    s_axi_wstrb_2_sp_1,
    s_axi_wdata_0_sp_1,
    \s_axi_wdata[31] ,
    s_axi_bresp,
    s_axi_rdata,
    s_axi_aclk,
    bus2ip_reset_active_high,
    ip2bus_error,
    s_axi_arvalid,
    s_axi_wvalid,
    s_axi_awvalid,
    ip2bus_wrack,
    s_axi_aresetn,
    ip2bus_rdack,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] ,
    p_1_in46_in,
    p_1_in43_in,
    p_1_in40_in,
    p_1_in37_in,
    p_1_in34_in,
    p_1_in31_in,
    p_1_in28_in,
    p_1_in25_in,
    p_1_in22_in,
    p_1_in19_in,
    p_1_in16_in,
    p_1_in13_in,
    p_1_in10_in,
    p_1_in7_in,
    p_1_in4_in,
    jtaglocked_i,
    p_1_in1_in,
    p_1_in,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 ,
    local_reg_wrack_d1,
    local_reg_rdack_d1,
    status_reg_rdack_d1,
    sw_rst_cond_d1,
    s_axi_wstrb,
    s_axi_wdata,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    irpt_wrack_d1,
    dummy_intr_reg_rdack_d1,
    dummy_intr_reg_wrack_d1,
    dummy_local_reg_rdack_d1,
    dummy_local_reg_wrack_d1,
    rst_ip2bus_rdack_d1,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr,
    hard_macro_rst_reg,
    \s_axi_rdata_i_reg[31]_0 );
  output \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ;
  output [0:0]s_axi_rresp;
  output Bus_RNW_reg_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_arready;
  output [18:0]D;
  output convst_rst_wrce_or_reduce;
  output local_reg_wrack0;
  output local_rdce_or_reduce;
  output local_reg_rdack0;
  output [0:0]bus2ip_wrce;
  output status_reg_rdack0;
  output [2:0]bus2ip_rdce;
  output p_4_in;
  output Bus_RNW_reg_reg_0;
  output reset_trig0;
  output sw_rst_cond;
  output irpt_rdack;
  output Intr2Bus_RdAck0;
  output irpt_wrack_d1_reg;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output [0:0]E;
  output dummy_bus2ip_rdce_intr;
  output dummy_intr_reg_rdack0;
  output dummy_bus2ip_wrce_intr;
  output dummy_intr_reg_wrack0;
  output dummy_local_reg_rdack_d10;
  output dummy_local_reg_rdack0;
  output dummy_local_reg_wrack_d10;
  output dummy_local_reg_wrack0;
  output rst_ip2bus_rdack0;
  output [7:0]Q;
  output [0:0]\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  output s_axi_wstrb_2_sp_1;
  output s_axi_wdata_0_sp_1;
  output \s_axi_wdata[31] ;
  output [0:0]s_axi_bresp;
  output [18:0]s_axi_rdata;
  input s_axi_aclk;
  input bus2ip_reset_active_high;
  input ip2bus_error;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input ip2bus_wrack;
  input s_axi_aresetn;
  input ip2bus_rdack;
  input [17:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] ;
  input [11:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] ;
  input [15:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] ;
  input [14:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] ;
  input \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] ;
  input p_1_in46_in;
  input p_1_in43_in;
  input p_1_in40_in;
  input p_1_in37_in;
  input p_1_in34_in;
  input p_1_in31_in;
  input p_1_in28_in;
  input p_1_in25_in;
  input p_1_in22_in;
  input p_1_in19_in;
  input p_1_in16_in;
  input p_1_in13_in;
  input p_1_in10_in;
  input p_1_in7_in;
  input p_1_in4_in;
  input jtaglocked_i;
  input p_1_in1_in;
  input p_1_in;
  input [0:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 ;
  input local_reg_wrack_d1;
  input local_reg_rdack_d1;
  input status_reg_rdack_d1;
  input sw_rst_cond_d1;
  input [3:0]s_axi_wstrb;
  input [4:0]s_axi_wdata;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input irpt_wrack_d1;
  input dummy_intr_reg_rdack_d1;
  input dummy_intr_reg_wrack_d1;
  input dummy_local_reg_rdack_d1;
  input dummy_local_reg_wrack_d1;
  input rst_ip2bus_rdack_d1;
  input s_axi_bready;
  input s_axi_rready;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_awaddr;
  input hard_macro_rst_reg;
  input [18:0]\s_axi_rdata_i_reg[31]_0 ;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire [18:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2__0_n_0 ;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_4_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ;
  wire [17:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] ;
  wire [0:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 ;
  wire [15:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] ;
  wire [14:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] ;
  wire [11:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] ;
  wire Intr2Bus_RdAck0;
  wire [7:0]Q;
  wire [10:10]bus2ip_addr;
  wire \bus2ip_addr_i[10]_i_1_n_0 ;
  wire [2:0]bus2ip_rdce;
  wire bus2ip_reset_active_high;
  wire bus2ip_rnw_i_reg_n_0;
  wire [0:0]bus2ip_wrce;
  wire clear;
  wire convst_rst_wrce_or_reduce;
  wire dummy_bus2ip_rdce_intr;
  wire dummy_bus2ip_wrce_intr;
  wire dummy_intr_reg_rdack0;
  wire dummy_intr_reg_rdack_d1;
  wire dummy_intr_reg_wrack0;
  wire dummy_intr_reg_wrack_d1;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire hard_macro_rst_reg;
  wire interrupt_wrce_strb;
  wire ip2bus_error;
  wire ip2bus_rdack;
  wire ip2bus_wrack;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d1_reg;
  wire jtaglocked_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire [1:0]p_0_out;
  wire p_1_in;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire p_1_in16_in;
  wire p_1_in19_in;
  wire p_1_in1_in;
  wire p_1_in22_in;
  wire p_1_in25_in;
  wire p_1_in28_in;
  wire p_1_in31_in;
  wire p_1_in34_in;
  wire p_1_in37_in;
  wire p_1_in40_in;
  wire p_1_in43_in;
  wire p_1_in46_in;
  wire p_1_in4_in;
  wire p_1_in7_in;
  wire [10:2]p_1_in_0;
  wire p_4_in;
  wire [6:0]plusOp;
  wire reset_trig0;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bresp_i;
  wire \s_axi_bresp_i[1]_i_1_n_0 ;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [18:0]s_axi_rdata;
  wire [18:0]\s_axi_rdata_i_reg[31]_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rresp_i;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [4:0]s_axi_wdata;
  wire \s_axi_wdata[31] ;
  wire s_axi_wdata_0_sn_1;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wstrb_2_sn_1;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire \state[1]_i_2_n_0 ;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire sw_rst_cond_d1_i_2_n_0;
  wire timeout;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wstrb_2_sp_1 = s_axi_wstrb_2_sn_1;
  LUT6 #(
    .INIT(64'h0070FFFF00700070)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(s_axi_arvalid),
        .I4(\FSM_onehot_state[3]_i_2__0_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h888F8888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(timeout),
        .I3(ip2bus_rdack),
        .I4(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF008000800080)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(s_axi_arvalid),
        .I4(\FSM_onehot_state[3]_i_3_n_0 ),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F8FFFF88F888F8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state[3]_i_2__0_n_0 ),
        .I2(s_axi_bresp_i),
        .I3(\FSM_onehot_state[3]_i_3_n_0 ),
        .I4(\FSM_onehot_state[3]_i_4_n_0 ),
        .I5(s_axi_rresp_i),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \FSM_onehot_state[3]_i_2__0 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(\FSM_onehot_state[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(timeout),
        .I1(ip2bus_wrack),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(timeout),
        .I1(ip2bus_rdack),
        .O(\FSM_onehot_state[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(bus2ip_reset_active_high));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(bus2ip_reset_active_high));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(bus2ip_reset_active_high));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_2 
       (.I0(timeout),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0 ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(timeout),
        .R(clear));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \INTR_CTRLR_GEN_I.ip2bus_error_i_2 
       (.I0(s_axi_wstrb[2]),
        .I1(s_axi_wstrb[3]),
        .I2(s_axi_wstrb[0]),
        .I3(s_axi_wstrb[1]),
        .I4(bus2ip_rnw_i_reg_n_0),
        .O(s_axi_wstrb_2_sn_1));
  hardware_system_management_wiz_0_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_0),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (timeout),
        .\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 (\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1 ({bus2ip_addr,Q}),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] (\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 (\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0 ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] (\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] (\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] (\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] (\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] ),
        .Intr2Bus_RdAck0(Intr2Bus_RdAck0),
        .Q(start2),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_wrce(bus2ip_wrce),
        .convst_rst_wrce_or_reduce(convst_rst_wrce_or_reduce),
        .dummy_bus2ip_rdce_intr(dummy_bus2ip_rdce_intr),
        .dummy_bus2ip_wrce_intr(dummy_bus2ip_wrce_intr),
        .dummy_intr_reg_rdack0(dummy_intr_reg_rdack0),
        .dummy_intr_reg_rdack_d1(dummy_intr_reg_rdack_d1),
        .dummy_intr_reg_wrack0(dummy_intr_reg_wrack0),
        .dummy_intr_reg_wrack_d1(dummy_intr_reg_wrack_d1),
        .dummy_local_reg_rdack0(dummy_local_reg_rdack0),
        .dummy_local_reg_rdack_d1(dummy_local_reg_rdack_d1),
        .dummy_local_reg_rdack_d10(dummy_local_reg_rdack_d10),
        .dummy_local_reg_wrack0(dummy_local_reg_wrack0),
        .dummy_local_reg_wrack_d1(dummy_local_reg_wrack_d1),
        .dummy_local_reg_wrack_d10(dummy_local_reg_wrack_d10),
        .hard_macro_rst_reg(hard_macro_rst_reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_wrack(ip2bus_wrack),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(bus2ip_rnw_i_reg_n_0),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .irpt_wrack_d1_reg(irpt_wrack_d1_reg),
        .jtaglocked_i(jtaglocked_i),
        .local_rdce_or_reduce(local_rdce_or_reduce),
        .local_reg_rdack0(local_reg_rdack0),
        .local_reg_rdack_d1(local_reg_rdack_d1),
        .local_reg_wrack0(local_reg_wrack0),
        .local_reg_wrack_d1(local_reg_wrack_d1),
        .p_1_in(p_1_in),
        .p_1_in10_in(p_1_in10_in),
        .p_1_in13_in(p_1_in13_in),
        .p_1_in16_in(p_1_in16_in),
        .p_1_in19_in(p_1_in19_in),
        .p_1_in1_in(p_1_in1_in),
        .p_1_in22_in(p_1_in22_in),
        .p_1_in25_in(p_1_in25_in),
        .p_1_in28_in(p_1_in28_in),
        .p_1_in31_in(p_1_in31_in),
        .p_1_in34_in(p_1_in34_in),
        .p_1_in37_in(p_1_in37_in),
        .p_1_in40_in(p_1_in40_in),
        .p_1_in43_in(p_1_in43_in),
        .p_1_in46_in(p_1_in46_in),
        .p_1_in4_in(p_1_in4_in),
        .p_1_in7_in(p_1_in7_in),
        .p_4_in(p_4_in),
        .reset_trig0(reset_trig0),
        .reset_trig_reg(sw_rst_cond_d1_i_2_n_0),
        .rst_ip2bus_rdack0(rst_ip2bus_rdack0),
        .rst_ip2bus_rdack_d1(rst_ip2bus_rdack_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata({s_axi_wdata[4],s_axi_wdata[0]}),
        .\s_axi_wdata[31] (\s_axi_wdata[31] ),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .s_axi_wstrb(s_axi_wstrb[3]),
        .status_reg_rdack0(status_reg_rdack0),
        .status_reg_rdack_d1(status_reg_rdack_d1),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[10]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(state[0]),
        .I4(state[1]),
        .O(\bus2ip_addr_i[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[10]_i_2 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[8]),
        .O(p_1_in_0[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(p_1_in_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(p_1_in_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(p_1_in_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[3]),
        .O(p_1_in_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[4]),
        .O(p_1_in_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[5]),
        .O(p_1_in_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[6]),
        .O(p_1_in_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[9]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[7]),
        .O(p_1_in_0[9]));
  FDRE \bus2ip_addr_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(p_1_in_0[10]),
        .Q(bus2ip_addr),
        .R(bus2ip_reset_active_high));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(p_1_in_0[2]),
        .Q(Q[0]),
        .R(bus2ip_reset_active_high));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(p_1_in_0[3]),
        .Q(Q[1]),
        .R(bus2ip_reset_active_high));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(p_1_in_0[4]),
        .Q(Q[2]),
        .R(bus2ip_reset_active_high));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(p_1_in_0[5]),
        .Q(Q[3]),
        .R(bus2ip_reset_active_high));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(p_1_in_0[6]),
        .Q(Q[4]),
        .R(bus2ip_reset_active_high));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(p_1_in_0[7]),
        .Q(Q[5]),
        .R(bus2ip_reset_active_high));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(p_1_in_0[8]),
        .Q(Q[6]),
        .R(bus2ip_reset_active_high));
  FDRE \bus2ip_addr_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(p_1_in_0[9]),
        .Q(Q[7]),
        .R(bus2ip_reset_active_high));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[10]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack),
        .I1(timeout),
        .O(s_axi_arready));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(ip2bus_error),
        .I1(s_axi_bresp_i),
        .I2(s_axi_bresp),
        .O(\s_axi_bresp_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp_i[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(bus2ip_reset_active_high));
  LUT6 #(
    .INIT(64'h5555FD550000FC00)) 
    s_axi_bvalid_i_i_1
       (.I0(s_axi_bready),
        .I1(timeout),
        .I2(ip2bus_wrack),
        .I3(state[1]),
        .I4(state[0]),
        .I5(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [10]),
        .Q(s_axi_rdata[10]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [11]),
        .Q(s_axi_rdata[11]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [12]),
        .Q(s_axi_rdata[12]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [13]),
        .Q(s_axi_rdata[13]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [14]),
        .Q(s_axi_rdata[14]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [15]),
        .Q(s_axi_rdata[15]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [16]),
        .Q(s_axi_rdata[16]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [17]),
        .Q(s_axi_rdata[17]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [18]),
        .Q(s_axi_rdata[18]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [4]),
        .Q(s_axi_rdata[4]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [5]),
        .Q(s_axi_rdata[5]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [6]),
        .Q(s_axi_rdata[6]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [7]),
        .Q(s_axi_rdata[7]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [8]),
        .Q(s_axi_rdata[8]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [9]),
        .Q(s_axi_rdata[9]),
        .R(bus2ip_reset_active_high));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(ip2bus_error),
        .Q(s_axi_rresp),
        .R(bus2ip_reset_active_high));
  LUT6 #(
    .INIT(64'h5555FD550000FC00)) 
    s_axi_rvalid_i_i_1
       (.I0(s_axi_rready),
        .I1(timeout),
        .I2(ip2bus_rdack),
        .I3(state[0]),
        .I4(state[1]),
        .I5(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack),
        .I1(timeout),
        .O(s_axi_awready));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(state[0]),
        .I4(state[1]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(bus2ip_reset_active_high));
  LUT6 #(
    .INIT(64'hFFFFFDA85555FDA8)) 
    \state[0]_i_1 
       (.I0(state[1]),
        .I1(ip2bus_wrack),
        .I2(timeout),
        .I3(s_axi_arvalid),
        .I4(state[0]),
        .I5(\FSM_onehot_state[3]_i_2__0_n_0 ),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'hBBBB0003BBBBCCCF)) 
    \state[1]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2__0_n_0 ),
        .I1(state[0]),
        .I2(s_axi_arvalid),
        .I3(\state[1]_i_2_n_0 ),
        .I4(state[1]),
        .I5(\FSM_onehot_state[3]_i_4_n_0 ),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \state[1]_i_2 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .O(\state[1]_i_2_n_0 ));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(state[0]),
        .R(bus2ip_reset_active_high));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(state[1]),
        .R(bus2ip_reset_active_high));
  LUT6 #(
    .INIT(64'hFFFFFFFFF1FFFFFF)) 
    sw_rst_cond_d1_i_2
       (.I0(s_axi_wstrb[0]),
        .I1(bus2ip_rnw_i_reg_n_0),
        .I2(s_axi_wdata[2]),
        .I3(s_axi_wdata[3]),
        .I4(s_axi_wdata[1]),
        .I5(s_axi_wdata[0]),
        .O(sw_rst_cond_d1_i_2_n_0));
endmodule

module hardware_system_management_wiz_0_0_soft_reset
   (sw_rst_cond_d1,
    wrack,
    \RESET_FLOPS[15].RST_FLOPS_0 ,
    reset2ip_reset,
    bus2ip_reset_active_high,
    sw_rst_cond,
    s_axi_aclk,
    reset_trig0);
  output sw_rst_cond_d1;
  output wrack;
  output \RESET_FLOPS[15].RST_FLOPS_0 ;
  output reset2ip_reset;
  input bus2ip_reset_active_high;
  input sw_rst_cond;
  input s_axi_aclk;
  input reset_trig0;

  wire FF_WRACK_i_1_n_0;
  wire \RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[15].RST_FLOPS_0 ;
  wire \RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ;
  wire S;
  wire bus2ip_reset_active_high;
  wire [1:15]flop_q_chain;
  wire reset2ip_reset;
  wire reset_trig0;
  wire s_axi_aclk;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wrack;

  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    FF_WRACK
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(FF_WRACK_i_1_n_0),
        .Q(wrack),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    FF_WRACK_i_1
       (.I0(\RESET_FLOPS[15].RST_FLOPS_0 ),
        .I1(flop_q_chain[15]),
        .O(FF_WRACK_i_1_n_0));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[0].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(S),
        .Q(flop_q_chain[1]),
        .R(bus2ip_reset_active_high));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[10].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[11]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[10].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[10]),
        .O(\RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[11].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[12]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[11].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[11]),
        .O(\RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[12].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[13]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[12].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[12]),
        .O(\RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[13].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[14]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[13].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[13]),
        .O(\RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[14].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[15]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[14].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[14]),
        .O(\RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[15].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ),
        .Q(\RESET_FLOPS[15].RST_FLOPS_0 ),
        .R(bus2ip_reset_active_high));
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[15].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[15]),
        .O(\RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[1].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[2]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[1].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[1]),
        .O(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[2].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[3]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[2].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[2]),
        .O(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[3].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[4]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[3].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[3]),
        .O(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[4].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[5]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[4].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[4]),
        .O(\RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[5].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[6]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[5].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[5]),
        .O(\RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[6].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[7]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[6].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[6]),
        .O(\RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[7].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[8]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[7].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[7]),
        .O(\RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[8].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[9]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[8].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[8]),
        .O(\RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[9].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[10]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[9].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[9]),
        .O(\RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ));
  FDRE reset_trig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_trig0),
        .Q(S),
        .R(bus2ip_reset_active_high));
  FDRE sw_rst_cond_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sw_rst_cond),
        .Q(sw_rst_cond_d1),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \temp_rd_wait_cycle_reg[15]_i_1 
       (.I0(bus2ip_reset_active_high),
        .I1(\RESET_FLOPS[15].RST_FLOPS_0 ),
        .O(reset2ip_reset));
endmodule

(* ORIG_REF_NAME = "temperature_update" *) 
module hardware_system_management_wiz_0_0_temperature_update
   (den_A,
    bbusy_A,
    den_d1_reg,
    den_reg,
    busy_o_reg_0,
    inst_sysmon,
    busy_o_reg_1,
    inst_sysmon_0,
    busy_o_reg_2,
    inst_sysmon_1,
    den_o_reg_0,
    \FSM_onehot_state_reg[2]_0 ,
    temp_out,
    s_axi_aclk,
    AR,
    E,
    den_d1,
    \FSM_sequential_state_reg[0] ,
    den_reg_reg,
    \FSM_sequential_state_reg[1] ,
    den_reg_reg_0,
    den_reg_reg_1,
    drdy_C,
    den_C_reg_reg,
    den_C_reg_reg_0,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[1]_1 ,
    Q,
    drdy_i,
    D);
  output den_A;
  output bbusy_A;
  output den_d1_reg;
  output den_reg;
  output busy_o_reg_0;
  output inst_sysmon;
  output busy_o_reg_1;
  output inst_sysmon_0;
  output [0:0]busy_o_reg_2;
  output inst_sysmon_1;
  output den_o_reg_0;
  output [0:0]\FSM_onehot_state_reg[2]_0 ;
  output [9:0]temp_out;
  input s_axi_aclk;
  input [0:0]AR;
  input [0:0]E;
  input den_d1;
  input \FSM_sequential_state_reg[0] ;
  input den_reg_reg;
  input \FSM_sequential_state_reg[1] ;
  input den_reg_reg_0;
  input [1:0]den_reg_reg_1;
  input drdy_C;
  input den_C_reg_reg;
  input den_C_reg_reg_0;
  input \FSM_sequential_state_reg[1]_0 ;
  input \FSM_sequential_state_reg[1]_1 ;
  input [15:0]Q;
  input drdy_i;
  input [9:0]D;

  wire [0:0]AR;
  wire [9:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[3]_i_1__0_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_3__0_n_0 ;
  wire \FSM_onehot_state[3]_i_4__0_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire [15:0]Q;
  wire bbusy_A;
  wire busy_o_i_1_n_0;
  wire busy_o_reg_0;
  wire busy_o_reg_1;
  wire [0:0]busy_o_reg_2;
  wire den_A;
  wire den_C_reg_reg;
  wire den_C_reg_reg_0;
  wire den_d1;
  wire den_d1_reg;
  wire den_o_i_1_n_0;
  wire den_o_reg_0;
  wire den_reg;
  wire den_reg_reg;
  wire den_reg_reg_0;
  wire [1:0]den_reg_reg_1;
  wire drdy_C;
  wire drdy_i;
  wire inst_sysmon;
  wire inst_sysmon_0;
  wire inst_sysmon_1;
  wire [15:0]p_0_in;
  wire s_axi_aclk;
  wire [9:0]temp_out;
  wire \timer_cntr[11]_i_2_n_0 ;
  wire \timer_cntr[12]_i_2_n_0 ;
  wire \timer_cntr[12]_i_3_n_0 ;
  wire \timer_cntr[15]_i_2_n_0 ;
  wire \timer_cntr[15]_i_3_n_0 ;
  wire \timer_cntr[15]_i_4_n_0 ;
  wire \timer_cntr[6]_i_2_n_0 ;
  wire \timer_cntr[7]_i_2_n_0 ;
  wire [15:0]timer_cntr_reg;

  LUT6 #(
    .INIT(64'hFEFFFEFEFEFEFEFE)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(E),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state[3]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state[3]_i_3__0_n_0 ),
        .O(\FSM_onehot_state[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(timer_cntr_reg[3]),
        .I1(timer_cntr_reg[0]),
        .I2(timer_cntr_reg[1]),
        .I3(timer_cntr_reg[2]),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[3]_i_3__0 
       (.I0(\timer_cntr[12]_i_2_n_0 ),
        .I1(timer_cntr_reg[13]),
        .I2(timer_cntr_reg[12]),
        .I3(timer_cntr_reg[15]),
        .I4(timer_cntr_reg[14]),
        .I5(\FSM_onehot_state[3]_i_4__0_n_0 ),
        .O(\FSM_onehot_state[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[3]_i_4__0 
       (.I0(timer_cntr_reg[7]),
        .I1(timer_cntr_reg[6]),
        .I2(timer_cntr_reg[5]),
        .I3(timer_cntr_reg[4]),
        .O(\FSM_onehot_state[3]_i_4__0_n_0 ));
  (* FSM_ENCODED_STATES = "wait_update_enable:0001,rd_en_ctrl_reg_temp:0010,rd_ctrl_reg_temp:0100,wait_timer_update:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[3]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .PRE(AR),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "wait_update_enable:0001,rd_en_ctrl_reg_temp:0010,rd_ctrl_reg_temp:0100,wait_timer_update:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[3]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "wait_update_enable:0001,rd_en_ctrl_reg_temp:0010,rd_ctrl_reg_temp:0100,wait_timer_update:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[3]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg[2]_0 ));
  (* FSM_ENCODED_STATES = "wait_update_enable:0001,rd_en_ctrl_reg_temp:0010,rd_ctrl_reg_temp:0100,wait_timer_update:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[3]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_state_reg[2]_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h0000FF00FF003A3A)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(bbusy_A),
        .I2(\FSM_sequential_state_reg[1] ),
        .I3(drdy_C),
        .I4(den_reg_reg_1[1]),
        .I5(den_reg_reg_1[0]),
        .O(busy_o_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(inst_sysmon_0),
        .I1(den_A),
        .I2(\FSM_sequential_state_reg[1]_0 ),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(den_A),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(den_o_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(\FSM_sequential_state_reg[1] ),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(den_d1),
        .I3(bbusy_A),
        .O(inst_sysmon_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hF7F0)) 
    busy_o_i_1
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(drdy_i),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(bbusy_A),
        .O(busy_o_i_1_n_0));
  FDCE busy_o_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(busy_o_i_1_n_0),
        .Q(bbusy_A));
  LUT6 #(
    .INIT(64'h00F10FF100010FF1)) 
    \daddr_C_reg[7]_i_3 
       (.I0(\FSM_sequential_state_reg[1] ),
        .I1(bbusy_A),
        .I2(den_reg_reg_1[1]),
        .I3(den_reg_reg_1[0]),
        .I4(drdy_C),
        .I5(den_o_reg_0),
        .O(inst_sysmon_1));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \daddr_C_reg[7]_i_8 
       (.I0(bbusy_A),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(busy_o_reg_1));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    den_C_reg_i_2
       (.I0(drdy_C),
        .I1(busy_o_reg_1),
        .I2(inst_sysmon_0),
        .I3(den_C_reg_reg),
        .I4(den_A),
        .I5(den_C_reg_reg_0),
        .O(inst_sysmon));
  LUT4 #(
    .INIT(16'hABAA)) 
    den_o_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(den_A),
        .O(den_o_i_1_n_0));
  FDCE den_o_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(den_o_i_1_n_0),
        .Q(den_A));
  LUT6 #(
    .INIT(64'h000000FFF0F0A0FC)) 
    den_reg_i_1
       (.I0(\FSM_sequential_state_reg[1] ),
        .I1(bbusy_A),
        .I2(den_A),
        .I3(den_reg_reg_0),
        .I4(den_reg_reg_1[1]),
        .I5(den_reg_reg_1[0]),
        .O(den_reg));
  LUT6 #(
    .INIT(64'hF040004000400040)) 
    dwe_reg_i_4
       (.I0(den_d1),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(den_reg_reg),
        .I3(\FSM_sequential_state_reg[1] ),
        .I4(den_A),
        .I5(bbusy_A),
        .O(den_d1_reg));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFFFFF1FF)) 
    overlap_B_i_2
       (.I0(bbusy_A),
        .I1(den_A),
        .I2(\FSM_sequential_state_reg[1] ),
        .I3(\FSM_sequential_state_reg[0] ),
        .I4(den_d1),
        .O(busy_o_reg_0));
  FDCE \temp_out_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(temp_out[0]));
  FDCE \temp_out_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(temp_out[1]));
  FDCE \temp_out_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(temp_out[2]));
  FDCE \temp_out_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(temp_out[3]));
  FDCE \temp_out_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(temp_out[4]));
  FDCE \temp_out_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(temp_out[5]));
  FDCE \temp_out_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(temp_out[6]));
  FDCE \temp_out_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(temp_out[7]));
  FDCE \temp_out_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(D[8]),
        .Q(temp_out[8]));
  FDCE \temp_out_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(D[9]),
        .Q(temp_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \timer_cntr[0]_i_1 
       (.I0(Q[0]),
        .I1(\timer_cntr[15]_i_2_n_0 ),
        .I2(timer_cntr_reg[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hD0D0D00DD0D0D0D0)) 
    \timer_cntr[10]_i_1 
       (.I0(\timer_cntr[15]_i_2_n_0 ),
        .I1(Q[10]),
        .I2(timer_cntr_reg[10]),
        .I3(timer_cntr_reg[8]),
        .I4(timer_cntr_reg[9]),
        .I5(\timer_cntr[12]_i_3_n_0 ),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hD0D0D0D0D00DD0D0)) 
    \timer_cntr[11]_i_1 
       (.I0(\timer_cntr[15]_i_2_n_0 ),
        .I1(Q[11]),
        .I2(timer_cntr_reg[11]),
        .I3(timer_cntr_reg[10]),
        .I4(\timer_cntr[12]_i_3_n_0 ),
        .I5(\timer_cntr[11]_i_2_n_0 ),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \timer_cntr[11]_i_2 
       (.I0(timer_cntr_reg[8]),
        .I1(timer_cntr_reg[9]),
        .O(\timer_cntr[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD00DD0D0)) 
    \timer_cntr[12]_i_1 
       (.I0(\timer_cntr[15]_i_2_n_0 ),
        .I1(Q[12]),
        .I2(timer_cntr_reg[12]),
        .I3(\timer_cntr[12]_i_2_n_0 ),
        .I4(\timer_cntr[12]_i_3_n_0 ),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_cntr[12]_i_2 
       (.I0(timer_cntr_reg[11]),
        .I1(timer_cntr_reg[10]),
        .I2(timer_cntr_reg[9]),
        .I3(timer_cntr_reg[8]),
        .O(\timer_cntr[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \timer_cntr[12]_i_3 
       (.I0(\timer_cntr[6]_i_2_n_0 ),
        .I1(timer_cntr_reg[4]),
        .I2(timer_cntr_reg[5]),
        .I3(timer_cntr_reg[6]),
        .I4(timer_cntr_reg[7]),
        .O(\timer_cntr[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0DD0)) 
    \timer_cntr[13]_i_1 
       (.I0(\timer_cntr[15]_i_2_n_0 ),
        .I1(Q[13]),
        .I2(timer_cntr_reg[13]),
        .I3(\timer_cntr[15]_i_3_n_0 ),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'hD00DD0D0)) 
    \timer_cntr[14]_i_1 
       (.I0(\timer_cntr[15]_i_2_n_0 ),
        .I1(Q[14]),
        .I2(timer_cntr_reg[14]),
        .I3(timer_cntr_reg[13]),
        .I4(\timer_cntr[15]_i_3_n_0 ),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'hD0D0D0D0D0D00DD0)) 
    \timer_cntr[15]_i_1 
       (.I0(\timer_cntr[15]_i_2_n_0 ),
        .I1(Q[15]),
        .I2(timer_cntr_reg[15]),
        .I3(\timer_cntr[15]_i_3_n_0 ),
        .I4(timer_cntr_reg[13]),
        .I5(timer_cntr_reg[14]),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \timer_cntr[15]_i_2 
       (.I0(\timer_cntr[6]_i_2_n_0 ),
        .I1(\FSM_onehot_state[3]_i_4__0_n_0 ),
        .I2(\timer_cntr[15]_i_4_n_0 ),
        .I3(\timer_cntr[12]_i_2_n_0 ),
        .O(\timer_cntr[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \timer_cntr[15]_i_3 
       (.I0(\timer_cntr[12]_i_2_n_0 ),
        .I1(\timer_cntr[6]_i_2_n_0 ),
        .I2(\FSM_onehot_state[3]_i_4__0_n_0 ),
        .I3(timer_cntr_reg[12]),
        .O(\timer_cntr[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \timer_cntr[15]_i_4 
       (.I0(timer_cntr_reg[13]),
        .I1(timer_cntr_reg[12]),
        .I2(timer_cntr_reg[15]),
        .I3(timer_cntr_reg[14]),
        .O(\timer_cntr[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \timer_cntr[1]_i_1 
       (.I0(timer_cntr_reg[1]),
        .I1(timer_cntr_reg[0]),
        .I2(\timer_cntr[15]_i_2_n_0 ),
        .I3(Q[1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hBBB0000B)) 
    \timer_cntr[2]_i_1 
       (.I0(Q[2]),
        .I1(\timer_cntr[15]_i_2_n_0 ),
        .I2(timer_cntr_reg[1]),
        .I3(timer_cntr_reg[0]),
        .I4(timer_cntr_reg[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFE010000FE01)) 
    \timer_cntr[3]_i_1 
       (.I0(timer_cntr_reg[2]),
        .I1(timer_cntr_reg[1]),
        .I2(timer_cntr_reg[0]),
        .I3(timer_cntr_reg[3]),
        .I4(\timer_cntr[15]_i_2_n_0 ),
        .I5(Q[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'h0DD0)) 
    \timer_cntr[4]_i_1 
       (.I0(\timer_cntr[15]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(timer_cntr_reg[4]),
        .I3(\timer_cntr[6]_i_2_n_0 ),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hD00DD0D0)) 
    \timer_cntr[5]_i_1 
       (.I0(\timer_cntr[15]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(timer_cntr_reg[5]),
        .I3(timer_cntr_reg[4]),
        .I4(\timer_cntr[6]_i_2_n_0 ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hD0D0D00DD0D0D0D0)) 
    \timer_cntr[6]_i_1 
       (.I0(\timer_cntr[15]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(timer_cntr_reg[6]),
        .I3(timer_cntr_reg[4]),
        .I4(timer_cntr_reg[5]),
        .I5(\timer_cntr[6]_i_2_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \timer_cntr[6]_i_2 
       (.I0(timer_cntr_reg[0]),
        .I1(timer_cntr_reg[1]),
        .I2(timer_cntr_reg[2]),
        .I3(timer_cntr_reg[3]),
        .O(\timer_cntr[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD00DD0D0)) 
    \timer_cntr[7]_i_1 
       (.I0(\timer_cntr[15]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(timer_cntr_reg[7]),
        .I3(timer_cntr_reg[6]),
        .I4(\timer_cntr[7]_i_2_n_0 ),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \timer_cntr[7]_i_2 
       (.I0(timer_cntr_reg[3]),
        .I1(timer_cntr_reg[2]),
        .I2(timer_cntr_reg[1]),
        .I3(timer_cntr_reg[0]),
        .I4(timer_cntr_reg[5]),
        .I5(timer_cntr_reg[4]),
        .O(\timer_cntr[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \timer_cntr[8]_i_1 
       (.I0(\timer_cntr[12]_i_3_n_0 ),
        .I1(timer_cntr_reg[8]),
        .I2(\timer_cntr[15]_i_2_n_0 ),
        .I3(Q[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hD00DD0D0)) 
    \timer_cntr[9]_i_1 
       (.I0(\timer_cntr[15]_i_2_n_0 ),
        .I1(Q[9]),
        .I2(timer_cntr_reg[9]),
        .I3(timer_cntr_reg[8]),
        .I4(\timer_cntr[12]_i_3_n_0 ),
        .O(p_0_in[9]));
  FDCE \timer_cntr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(timer_cntr_reg[0]));
  FDCE \timer_cntr_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[10]),
        .Q(timer_cntr_reg[10]));
  FDCE \timer_cntr_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[11]),
        .Q(timer_cntr_reg[11]));
  FDCE \timer_cntr_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[12]),
        .Q(timer_cntr_reg[12]));
  FDCE \timer_cntr_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[13]),
        .Q(timer_cntr_reg[13]));
  FDCE \timer_cntr_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[14]),
        .Q(timer_cntr_reg[14]));
  FDCE \timer_cntr_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[15]),
        .Q(timer_cntr_reg[15]));
  FDCE \timer_cntr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(timer_cntr_reg[1]));
  FDCE \timer_cntr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(timer_cntr_reg[2]));
  FDCE \timer_cntr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(timer_cntr_reg[3]));
  FDCE \timer_cntr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(timer_cntr_reg[4]));
  FDCE \timer_cntr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(timer_cntr_reg[5]));
  FDCE \timer_cntr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(timer_cntr_reg[6]));
  FDCE \timer_cntr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(timer_cntr_reg[7]));
  FDCE \timer_cntr_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[8]),
        .Q(timer_cntr_reg[8]));
  FDCE \timer_cntr_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[9]),
        .Q(timer_cntr_reg[9]));
endmodule

module hardware_system_management_wiz_0_0_xadc_core_drp
   (D,
    eoc_out,
    eos_out,
    jtagmodified_i,
    inst_sysmon_0,
    local_reg_wrack_d1,
    local_reg_rdack_d1,
    status_reg_rdack_d1,
    hard_macro_rst_reg,
    ip2bus_error_int1,
    ip2bus_wrack_int1,
    ip2bus_rdack_int1,
    interrupt_status_i,
    temp_out,
    \do_reg_reg[15]_0 ,
    \alarm_reg_reg[14]_0 ,
    \status_reg_reg[11]_0 ,
    s_axi_aclk,
    reset2ip_reset,
    convst_rst_wrce_or_reduce,
    local_reg_wrack0,
    bus2ip_wrce,
    local_rdce_or_reduce,
    local_reg_rdack0,
    bus2ip_rdce,
    status_reg_rdack0,
    p_4_in,
    hard_macro_rst_reg_reg_0,
    dwe_C_reg_reg,
    Bus_RNW_reg,
    bus2ip_reset_active_high,
    \FSM_sequential_state_reg[1] ,
    s_axi_wdata,
    Q,
    \INTR_CTRLR_GEN_I.ip2bus_error_reg ,
    \INTR_CTRLR_GEN_I.ip2bus_error_reg_0 ,
    dummy_intr_reg_wrack,
    dummy_local_reg_wrack,
    wrack,
    intr_ip2bus_wrack,
    rst_ip2bus_rdack,
    dummy_intr_reg_rdack,
    dummy_local_reg_rdack,
    intr_ip2bus_rdack,
    E);
  output [8:0]D;
  output eoc_out;
  output eos_out;
  output jtagmodified_i;
  output [12:0]inst_sysmon_0;
  output local_reg_wrack_d1;
  output local_reg_rdack_d1;
  output status_reg_rdack_d1;
  output hard_macro_rst_reg;
  output ip2bus_error_int1;
  output ip2bus_wrack_int1;
  output ip2bus_rdack_int1;
  output [1:0]interrupt_status_i;
  output [9:0]temp_out;
  output [15:0]\do_reg_reg[15]_0 ;
  output [14:0]\alarm_reg_reg[14]_0 ;
  output [11:0]\status_reg_reg[11]_0 ;
  input s_axi_aclk;
  input reset2ip_reset;
  input convst_rst_wrce_or_reduce;
  input local_reg_wrack0;
  input [0:0]bus2ip_wrce;
  input local_rdce_or_reduce;
  input local_reg_rdack0;
  input [1:0]bus2ip_rdce;
  input status_reg_rdack0;
  input p_4_in;
  input hard_macro_rst_reg_reg_0;
  input dwe_C_reg_reg;
  input Bus_RNW_reg;
  input bus2ip_reset_active_high;
  input \FSM_sequential_state_reg[1] ;
  input [17:0]s_axi_wdata;
  input [7:0]Q;
  input \INTR_CTRLR_GEN_I.ip2bus_error_reg ;
  input \INTR_CTRLR_GEN_I.ip2bus_error_reg_0 ;
  input dummy_intr_reg_wrack;
  input dummy_local_reg_wrack;
  input wrack;
  input intr_ip2bus_wrack;
  input rst_ip2bus_rdack;
  input dummy_intr_reg_rdack;
  input dummy_local_reg_rdack;
  input intr_ip2bus_rdack;
  input [0:0]E;

  wire Bus_RNW_reg;
  wire [8:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[1] ;
  wire \INTR_CTRLR_GEN_I.ip2bus_error_reg ;
  wire \INTR_CTRLR_GEN_I.ip2bus_error_reg_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_rdack_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_wrack_i_2_n_0 ;
  wire Inst_drp_arbiter_n_1;
  wire Inst_drp_arbiter_n_10;
  wire Inst_drp_arbiter_n_11;
  wire Inst_drp_arbiter_n_12;
  wire Inst_drp_arbiter_n_13;
  wire Inst_drp_arbiter_n_14;
  wire Inst_drp_arbiter_n_5;
  wire Inst_drp_arbiter_n_6;
  wire Inst_drp_arbiter_n_7;
  wire [7:0]Q;
  wire alarm_0_d1;
  wire [14:0]\alarm_reg_reg[14]_0 ;
  wire bbusy_A;
  wire [1:0]bus2ip_rdce;
  wire bus2ip_reset_active_high;
  wire [0:0]bus2ip_wrce;
  wire convst_rst_wrce_or_reduce;
  wire [7:0]daddr_C;
  (* DONT_TOUCH *) wire [7:0]daddr_C_master_reg;
  (* DONT_TOUCH *) wire [7:0]daddr_C_master_reg2;
  (* DONT_TOUCH *) wire [7:0]daddr_C_slave0_reg;
  (* DONT_TOUCH *) wire [7:0]daddr_C_slave0_reg2;
  (* DONT_TOUCH *) wire [7:0]daddr_C_slave1_reg;
  (* DONT_TOUCH *) wire [7:0]daddr_C_slave1_reg2;
  wire den_A;
  wire den_C;
  wire den_d1;
  wire den_reg;
  wire [15:0]di_C;
  (* DONT_TOUCH *) wire [15:0]di_C_master_reg;
  (* DONT_TOUCH *) wire [15:0]di_C_master_reg2;
  (* DONT_TOUCH *) wire [15:0]di_C_slave0_reg;
  (* DONT_TOUCH *) wire [15:0]di_C_slave0_reg2;
  (* DONT_TOUCH *) wire [15:0]di_C_slave1_reg;
  (* DONT_TOUCH *) wire [15:0]di_C_slave1_reg2;
  wire [15:6]do_A_reg;
  wire [15:0]do_B_reg;
  wire [15:0]do_C;
  wire \do_reg[15]_i_1_n_0 ;
  wire [15:0]\do_reg_reg[15]_0 ;
  wire drdy_C;
  wire drdy_i;
  wire drdy_rd_ack_i;
  wire drdy_rd_ack_i_d1;
  wire drdy_rd_ack_i_d2;
  wire drdy_wr_ack_i;
  wire drdy_wr_ack_i_d1;
  wire drdy_wr_ack_i_d2;
  wire dummy_intr_reg_rdack;
  wire dummy_intr_reg_wrack;
  wire dummy_local_reg_rdack;
  wire dummy_local_reg_wrack;
  wire dwe_C;
  (* DONT_TOUCH *) wire dwe_C_master_reg;
  (* DONT_TOUCH *) wire dwe_C_master_reg2;
  wire dwe_C_reg_reg;
  (* DONT_TOUCH *) wire dwe_C_slave0_reg;
  (* DONT_TOUCH *) wire dwe_C_slave0_reg2;
  (* DONT_TOUCH *) wire dwe_C_slave1_reg;
  (* DONT_TOUCH *) wire dwe_C_slave1_reg2;
  wire eoc_d1;
  wire eoc_d1_i_1_n_0;
  wire eoc_out;
  wire eos_d1;
  wire eos_d1_i_1_n_0;
  wire eos_out;
  wire hard_macro_rst_reg;
  wire hard_macro_rst_reg_reg_0;
  wire [12:0]inst_sysmon_0;
  wire inst_sysmon_n_27;
  wire inst_sysmon_n_28;
  wire inst_sysmon_n_29;
  wire inst_sysmon_n_30;
  wire [1:0]interrupt_status_i;
  wire intr_ip2bus_rdack;
  wire intr_ip2bus_wrack;
  wire ip2bus_error_int1;
  wire ip2bus_rdack_int1;
  wire ip2bus_wrack_int1;
  wire jtagbusy_i;
  wire jtagmodified_d1;
  wire jtagmodified_d1_i_1_n_0;
  wire jtagmodified_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire ot_d1;
  wire p_4_in;
  wire [7:6]p_5_out;
  wire reset;
  wire reset2ip_reset;
  wire rst_ip2bus_rdack;
  wire s_axi_aclk;
  wire [17:0]s_axi_wdata;
  wire [1:0]state__0;
  wire status_reg_rdack;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire [11:0]\status_reg_reg[11]_0 ;
  wire [9:0]temp_out;
  wire temperature_update_inst_n_10;
  wire temperature_update_inst_n_11;
  wire temperature_update_inst_n_2;
  wire temperature_update_inst_n_4;
  wire temperature_update_inst_n_5;
  wire temperature_update_inst_n_6;
  wire temperature_update_inst_n_7;
  wire temperature_update_inst_n_8;
  wire temperature_update_inst_n_9;
  wire [15:0]wait_cycle;
  wire wrack;
  wire NLW_inst_sysmon_I2C_SCLK_TS_UNCONNECTED;
  wire NLW_inst_sysmon_I2C_SDA_TS_UNCONNECTED;
  wire NLW_inst_sysmon_SMBALERT_TS_UNCONNECTED;
  wire [15:0]NLW_inst_sysmon_ADC_DATA_UNCONNECTED;
  wire [4:0]NLW_inst_sysmon_MUXADDR_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_i_1 
       (.I0(ot_d1),
        .I1(inst_sysmon_0[0]),
        .O(interrupt_status_i[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_i_1 
       (.I0(alarm_0_d1),
        .I1(inst_sysmon_0[1]),
        .O(interrupt_status_i[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hFFFF5554)) 
    \INTR_CTRLR_GEN_I.ip2bus_error_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_error_reg ),
        .I1(drdy_wr_ack_i),
        .I2(local_reg_wrack),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_rdack_i_2_n_0 ),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_error_reg_0 ),
        .O(ip2bus_error_int1));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \INTR_CTRLR_GEN_I.ip2bus_rdack_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_rdack_i_2_n_0 ),
        .I1(rst_ip2bus_rdack),
        .I2(dummy_intr_reg_rdack),
        .I3(dummy_local_reg_rdack),
        .I4(intr_ip2bus_rdack),
        .O(ip2bus_rdack_int1));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \INTR_CTRLR_GEN_I.ip2bus_rdack_i_2 
       (.I0(status_reg_rdack),
        .I1(drdy_rd_ack_i),
        .I2(local_reg_rdack),
        .O(\INTR_CTRLR_GEN_I.ip2bus_rdack_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \INTR_CTRLR_GEN_I.ip2bus_wrack_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_wrack_i_2_n_0 ),
        .I1(dummy_intr_reg_wrack),
        .I2(dummy_local_reg_wrack),
        .I3(\INTR_CTRLR_GEN_I.ip2bus_error_reg_0 ),
        .I4(wrack),
        .I5(intr_ip2bus_wrack),
        .O(ip2bus_wrack_int1));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \INTR_CTRLR_GEN_I.ip2bus_wrack_i_2 
       (.I0(local_reg_wrack),
        .I1(drdy_wr_ack_i),
        .O(\INTR_CTRLR_GEN_I.ip2bus_wrack_i_2_n_0 ));
  hardware_system_management_wiz_0_0_drp_arbiter Inst_drp_arbiter
       (.AR(reset),
        .Bus_RNW_reg(Bus_RNW_reg),
        .DO(do_C),
        .E(Inst_drp_arbiter_n_7),
        .\FSM_sequential_state_reg[0]_0 (temperature_update_inst_n_7),
        .\FSM_sequential_state_reg[1]_0 (state__0),
        .\FSM_sequential_state_reg[1]_1 (Inst_drp_arbiter_n_13),
        .\FSM_sequential_state_reg[1]_2 (Inst_drp_arbiter_n_14),
        .\FSM_sequential_state_reg[1]_3 (\FSM_sequential_state_reg[1] ),
        .\FSM_sequential_state_reg[1]_4 (temperature_update_inst_n_10),
        .\FSM_sequential_state_reg[1]_5 (temperature_update_inst_n_8),
        .Q(temperature_update_inst_n_11),
        .bbusy_A(bbusy_A),
        .bus2ip_reset_active_high(bus2ip_reset_active_high),
        .\daddr_C_reg_reg[7]_0 (daddr_C),
        .\daddr_C_reg_reg[7]_1 (temperature_update_inst_n_6),
        .\daddr_reg_reg[7]_0 (D[7]),
        .\daddr_reg_reg[7]_1 (Q),
        .den_A(den_A),
        .den_C(den_C),
        .den_C_reg_reg_0(temperature_update_inst_n_5),
        .den_d1(den_d1),
        .den_d1_reg(Inst_drp_arbiter_n_12),
        .den_reg(den_reg),
        .den_reg_reg_0(Inst_drp_arbiter_n_1),
        .den_reg_reg_1(temperature_update_inst_n_2),
        .\di_C_reg_reg[15]_0 (di_C),
        .\do_A_reg_reg[15]_0 (do_A_reg),
        .\do_B_reg_reg[15]_0 (do_B_reg),
        .drdy_C(drdy_C),
        .drdy_i(drdy_i),
        .drdy_rd_ack_i_d1(drdy_rd_ack_i_d1),
        .drdy_rd_ack_i_d1_reg(Inst_drp_arbiter_n_11),
        .drdy_rd_ack_i_d2(drdy_rd_ack_i_d2),
        .drdy_wr_ack_i_d1(drdy_wr_ack_i_d1),
        .drdy_wr_ack_i_d1_reg(Inst_drp_arbiter_n_10),
        .drdy_wr_ack_i_d2(drdy_wr_ack_i_d2),
        .dwe_C(dwe_C),
        .dwe_C_reg_reg_0(dwe_C_reg_reg),
        .dwe_C_reg_reg_1(temperature_update_inst_n_9),
        .hard_macro_rst_reg(hard_macro_rst_reg),
        .overlap_A_reg_0(Inst_drp_arbiter_n_5),
        .overlap_B_reg_0(Inst_drp_arbiter_n_6),
        .overlap_B_reg_1(temperature_update_inst_n_4),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[15:0]));
  FDRE alarm_0_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[1]),
        .Q(alarm_0_d1),
        .R(1'b0));
  FDRE \alarm_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[0]),
        .Q(\alarm_reg_reg[14]_0 [0]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[10]),
        .Q(\alarm_reg_reg[14]_0 [10]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[11]),
        .Q(\alarm_reg_reg[14]_0 [11]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[12]),
        .Q(\alarm_reg_reg[14]_0 [12]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_n_30),
        .Q(\alarm_reg_reg[14]_0 [13]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_n_29),
        .Q(\alarm_reg_reg[14]_0 [14]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[1]),
        .Q(\alarm_reg_reg[14]_0 [1]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[2]),
        .Q(\alarm_reg_reg[14]_0 [2]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[3]),
        .Q(\alarm_reg_reg[14]_0 [3]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[4]),
        .Q(\alarm_reg_reg[14]_0 [4]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[5]),
        .Q(\alarm_reg_reg[14]_0 [5]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[6]),
        .Q(\alarm_reg_reg[14]_0 [6]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[7]),
        .Q(\alarm_reg_reg[14]_0 [7]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[8]),
        .Q(\alarm_reg_reg[14]_0 [8]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[9]),
        .Q(\alarm_reg_reg[14]_0 [9]),
        .R(reset2ip_reset));
  FDRE den_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_4_in),
        .Q(den_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    \do_reg[15]_i_1 
       (.I0(D[7]),
        .I1(bus2ip_reset_active_high),
        .I2(\FSM_sequential_state_reg[1] ),
        .O(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[0]),
        .Q(\do_reg_reg[15]_0 [0]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[10]),
        .Q(\do_reg_reg[15]_0 [10]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[11]),
        .Q(\do_reg_reg[15]_0 [11]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[12]),
        .Q(\do_reg_reg[15]_0 [12]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[13]),
        .Q(\do_reg_reg[15]_0 [13]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[14]),
        .Q(\do_reg_reg[15]_0 [14]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[15]),
        .Q(\do_reg_reg[15]_0 [15]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[1]),
        .Q(\do_reg_reg[15]_0 [1]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[2]),
        .Q(\do_reg_reg[15]_0 [2]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[3]),
        .Q(\do_reg_reg[15]_0 [3]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[4]),
        .Q(\do_reg_reg[15]_0 [4]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[5]),
        .Q(\do_reg_reg[15]_0 [5]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[6]),
        .Q(\do_reg_reg[15]_0 [6]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[7]),
        .Q(\do_reg_reg[15]_0 [7]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[8]),
        .Q(\do_reg_reg[15]_0 [8]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE \do_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[9]),
        .Q(\do_reg_reg[15]_0 [9]),
        .R(\do_reg[15]_i_1_n_0 ));
  FDRE drdy_rd_ack_i_d1_reg
       (.C(s_axi_aclk),
        .CE(D[7]),
        .D(bus2ip_rdce[0]),
        .Q(drdy_rd_ack_i_d1),
        .R(reset2ip_reset));
  FDRE drdy_rd_ack_i_d2_reg
       (.C(s_axi_aclk),
        .CE(D[7]),
        .D(drdy_rd_ack_i_d1),
        .Q(drdy_rd_ack_i_d2),
        .R(reset2ip_reset));
  FDRE drdy_rd_ack_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Inst_drp_arbiter_n_11),
        .Q(drdy_rd_ack_i),
        .R(reset2ip_reset));
  FDRE drdy_wr_ack_i_d1_reg
       (.C(s_axi_aclk),
        .CE(D[7]),
        .D(bus2ip_wrce),
        .Q(drdy_wr_ack_i_d1),
        .R(reset2ip_reset));
  FDRE drdy_wr_ack_i_d2_reg
       (.C(s_axi_aclk),
        .CE(D[7]),
        .D(drdy_wr_ack_i_d1),
        .Q(drdy_wr_ack_i_d2),
        .R(reset2ip_reset));
  FDRE drdy_wr_ack_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Inst_drp_arbiter_n_10),
        .Q(drdy_wr_ack_i),
        .R(reset2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    eoc_d1_i_1
       (.I0(status_reg_rdack),
        .I1(eoc_out),
        .I2(eoc_d1),
        .O(eoc_d1_i_1_n_0));
  FDRE eoc_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eoc_d1_i_1_n_0),
        .Q(eoc_d1),
        .R(reset2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    eos_d1_i_1
       (.I0(status_reg_rdack),
        .I1(eos_out),
        .I2(eos_d1),
        .O(eos_d1_i_1_n_0));
  FDRE eos_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eos_d1_i_1_n_0),
        .Q(eos_d1),
        .R(reset2ip_reset));
  FDRE hard_macro_rst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(hard_macro_rst_reg_reg_0),
        .Q(hard_macro_rst_reg),
        .R(reset2ip_reset));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(daddr_C_master_reg[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(daddr_C_master_reg[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(di_C_master_reg[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_100
       (.I0(1'b0),
        .O(daddr_C_slave0_reg2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_101
       (.I0(1'b0),
        .O(daddr_C_slave0_reg2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_102
       (.I0(1'b0),
        .O(daddr_C_slave0_reg2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_103
       (.I0(1'b0),
        .O(daddr_C_slave0_reg2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_104
       (.I0(1'b0),
        .O(daddr_C_slave0_reg2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_105
       (.I0(1'b0),
        .O(daddr_C_slave0_reg2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_106
       (.I0(1'b0),
        .O(daddr_C_slave0_reg2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_107
       (.I0(1'b0),
        .O(daddr_C_slave0_reg2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_108
       (.I0(1'b0),
        .O(di_C_slave0_reg2[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_109
       (.I0(1'b0),
        .O(di_C_slave0_reg2[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(di_C_master_reg[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_110
       (.I0(1'b0),
        .O(di_C_slave0_reg2[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_111
       (.I0(1'b0),
        .O(di_C_slave0_reg2[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_112
       (.I0(1'b0),
        .O(di_C_slave0_reg2[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_113
       (.I0(1'b0),
        .O(di_C_slave0_reg2[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_114
       (.I0(1'b0),
        .O(di_C_slave0_reg2[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_115
       (.I0(1'b0),
        .O(di_C_slave0_reg2[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_116
       (.I0(1'b0),
        .O(di_C_slave0_reg2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_117
       (.I0(1'b0),
        .O(di_C_slave0_reg2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_118
       (.I0(1'b0),
        .O(di_C_slave0_reg2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_119
       (.I0(1'b0),
        .O(di_C_slave0_reg2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(di_C_master_reg[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_120
       (.I0(1'b0),
        .O(di_C_slave0_reg2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_121
       (.I0(1'b0),
        .O(di_C_slave0_reg2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_122
       (.I0(1'b0),
        .O(di_C_slave0_reg2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_123
       (.I0(1'b0),
        .O(di_C_slave0_reg2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_124
       (.I0(1'b0),
        .O(dwe_C_slave0_reg2));
  LUT1 #(
    .INIT(2'h2)) 
    i_125
       (.I0(1'b0),
        .O(daddr_C_slave1_reg2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_126
       (.I0(1'b0),
        .O(daddr_C_slave1_reg2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_127
       (.I0(1'b0),
        .O(daddr_C_slave1_reg2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_128
       (.I0(1'b0),
        .O(daddr_C_slave1_reg2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_129
       (.I0(1'b0),
        .O(daddr_C_slave1_reg2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(di_C_master_reg[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_130
       (.I0(1'b0),
        .O(daddr_C_slave1_reg2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_131
       (.I0(1'b0),
        .O(daddr_C_slave1_reg2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_132
       (.I0(1'b0),
        .O(daddr_C_slave1_reg2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_133
       (.I0(1'b0),
        .O(di_C_slave1_reg2[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_134
       (.I0(1'b0),
        .O(di_C_slave1_reg2[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_135
       (.I0(1'b0),
        .O(di_C_slave1_reg2[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_136
       (.I0(1'b0),
        .O(di_C_slave1_reg2[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_137
       (.I0(1'b0),
        .O(di_C_slave1_reg2[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_138
       (.I0(1'b0),
        .O(di_C_slave1_reg2[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_139
       (.I0(1'b0),
        .O(di_C_slave1_reg2[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(di_C_master_reg[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_140
       (.I0(1'b0),
        .O(di_C_slave1_reg2[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_141
       (.I0(1'b0),
        .O(di_C_slave1_reg2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_142
       (.I0(1'b0),
        .O(di_C_slave1_reg2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_143
       (.I0(1'b0),
        .O(di_C_slave1_reg2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_144
       (.I0(1'b0),
        .O(di_C_slave1_reg2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_145
       (.I0(1'b0),
        .O(di_C_slave1_reg2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_146
       (.I0(1'b0),
        .O(di_C_slave1_reg2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_147
       (.I0(1'b0),
        .O(di_C_slave1_reg2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_148
       (.I0(1'b0),
        .O(di_C_slave1_reg2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_149
       (.I0(1'b0),
        .O(dwe_C_slave1_reg2));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(di_C_master_reg[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(di_C_master_reg[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(di_C_master_reg[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(di_C_master_reg[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(di_C_master_reg[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(daddr_C_master_reg[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(di_C_master_reg[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(di_C_master_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(di_C_master_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(di_C_master_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(dwe_C_master_reg));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(daddr_C_slave0_reg[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(daddr_C_slave0_reg[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(daddr_C_slave0_reg[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(daddr_C_slave0_reg[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(daddr_C_slave0_reg[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(daddr_C_master_reg[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(daddr_C_slave0_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(daddr_C_slave0_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(daddr_C_slave0_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(di_C_slave0_reg[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(di_C_slave0_reg[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(di_C_slave0_reg[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(di_C_slave0_reg[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(di_C_slave0_reg[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(di_C_slave0_reg[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(di_C_slave0_reg[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(daddr_C_master_reg[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(di_C_slave0_reg[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(di_C_slave0_reg[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(di_C_slave0_reg[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(di_C_slave0_reg[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(di_C_slave0_reg[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(di_C_slave0_reg[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(di_C_slave0_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(di_C_slave0_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(di_C_slave0_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(dwe_C_slave0_reg));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(daddr_C_master_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(daddr_C_slave1_reg[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(daddr_C_slave1_reg[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(daddr_C_slave1_reg[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(daddr_C_slave1_reg[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(daddr_C_slave1_reg[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(daddr_C_slave1_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(daddr_C_slave1_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(daddr_C_slave1_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(di_C_slave1_reg[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(di_C_slave1_reg[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(daddr_C_master_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(di_C_slave1_reg[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(di_C_slave1_reg[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(di_C_slave1_reg[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(di_C_slave1_reg[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(di_C_slave1_reg[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(di_C_slave1_reg[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(di_C_slave1_reg[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(di_C_slave1_reg[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(di_C_slave1_reg[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(di_C_slave1_reg[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(daddr_C_master_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(di_C_slave1_reg[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(di_C_slave1_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(di_C_slave1_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(di_C_slave1_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(dwe_C_slave1_reg));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(daddr_C_master_reg2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(daddr_C_master_reg2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(daddr_C_master_reg2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(daddr_C_master_reg2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(daddr_C_master_reg2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(di_C_master_reg[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(daddr_C_master_reg2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(daddr_C_master_reg2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(daddr_C_master_reg2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(di_C_master_reg2[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(di_C_master_reg2[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(di_C_master_reg2[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(di_C_master_reg2[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(di_C_master_reg2[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(di_C_master_reg2[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(di_C_master_reg2[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(di_C_master_reg[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(di_C_master_reg2[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(di_C_master_reg2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(di_C_master_reg2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(di_C_master_reg2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(di_C_master_reg2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(di_C_master_reg2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(di_C_master_reg2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(di_C_master_reg2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(di_C_master_reg2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(dwe_C_master_reg2));
  (* box_type = "PRIMITIVE" *) 
  SYSMONE4 #(
    .COMMON_N_SOURCE(16'hFFFF),
    .INIT_40(16'h0000),
    .INIT_41(16'h2F9F),
    .INIT_42(16'h1400),
    .INIT_43(16'h200F),
    .INIT_44(16'h0000),
    .INIT_45(16'hEEDC),
    .INIT_46(16'h0000),
    .INIT_47(16'h0000),
    .INIT_48(16'h0100),
    .INIT_49(16'h0000),
    .INIT_4A(16'h0000),
    .INIT_4B(16'h0000),
    .INIT_4C(16'h0000),
    .INIT_4D(16'h0000),
    .INIT_4E(16'h0000),
    .INIT_4F(16'h0000),
    .INIT_50(16'hB794),
    .INIT_51(16'h4E81),
    .INIT_52(16'hA147),
    .INIT_53(16'hCBA3),
    .INIT_54(16'hAB02),
    .INIT_55(16'h4963),
    .INIT_56(16'h9555),
    .INIT_57(16'hB00A),
    .INIT_58(16'h4E81),
    .INIT_59(16'h4963),
    .INIT_5A(16'h4963),
    .INIT_5B(16'h9A74),
    .INIT_5C(16'h4963),
    .INIT_5D(16'h451E),
    .INIT_5E(16'h451E),
    .INIT_5F(16'h91EB),
    .INIT_60(16'h4D39),
    .INIT_61(16'h4DA7),
    .INIT_62(16'h9A74),
    .INIT_63(16'h9A74),
    .INIT_64(16'h0000),
    .INIT_65(16'h0000),
    .INIT_66(16'h0000),
    .INIT_67(16'h0000),
    .INIT_68(16'h4C5E),
    .INIT_69(16'h4BF2),
    .INIT_6A(16'h98BF),
    .INIT_6B(16'h98BF),
    .INIT_6C(16'h0000),
    .INIT_6D(16'h0000),
    .INIT_6E(16'h0000),
    .INIT_6F(16'h0000),
    .INIT_70(16'h0000),
    .INIT_71(16'h0000),
    .INIT_72(16'h0000),
    .INIT_73(16'h0000),
    .INIT_74(16'h0000),
    .INIT_75(16'h0000),
    .INIT_76(16'h0000),
    .INIT_77(16'h0000),
    .INIT_78(16'h0000),
    .INIT_79(16'h0000),
    .INIT_7A(16'h0000),
    .INIT_7B(16'h0000),
    .INIT_7C(16'h0000),
    .INIT_7D(16'h0000),
    .INIT_7E(16'h0000),
    .INIT_7F(16'h0000),
    .IS_CONVSTCLK_INVERTED(1'b0),
    .IS_DCLK_INVERTED(1'b0),
    .SIM_DEVICE("ZYNQ_ULTRASCALE"),
    .SIM_MONITOR_FILE("design.dat"),
    .SYSMON_VUSER0_BANK(0),
    .SYSMON_VUSER0_MONITOR("NONE"),
    .SYSMON_VUSER1_BANK(0),
    .SYSMON_VUSER1_MONITOR("NONE"),
    .SYSMON_VUSER2_BANK(0),
    .SYSMON_VUSER2_MONITOR("NONE"),
    .SYSMON_VUSER3_BANK(0),
    .SYSMON_VUSER3_MONITOR("NONE")) 
    inst_sysmon
       (.ADC_DATA(NLW_inst_sysmon_ADC_DATA_UNCONNECTED[15:0]),
        .ALM({inst_sysmon_n_27,inst_sysmon_n_28,inst_sysmon_n_29,inst_sysmon_n_30,inst_sysmon_0[12:1]}),
        .BUSY(D[6]),
        .CHANNEL(D[5:0]),
        .CONVST(1'b0),
        .CONVSTCLK(1'b0),
        .DADDR(daddr_C),
        .DCLK(s_axi_aclk),
        .DEN(den_C),
        .DI(di_C),
        .DO(do_C),
        .DRDY(drdy_C),
        .DWE(dwe_C),
        .EOC(eoc_out),
        .EOS(eos_out),
        .I2C_SCLK(1'b0),
        .I2C_SCLK_TS(NLW_inst_sysmon_I2C_SCLK_TS_UNCONNECTED),
        .I2C_SDA(1'b0),
        .I2C_SDA_TS(NLW_inst_sysmon_I2C_SDA_TS_UNCONNECTED),
        .JTAGBUSY(jtagbusy_i),
        .JTAGLOCKED(D[7]),
        .JTAGMODIFIED(jtagmodified_i),
        .MUXADDR(NLW_inst_sysmon_MUXADDR_UNCONNECTED[4:0]),
        .OT(inst_sysmon_0[0]),
        .RESET(reset),
        .SMBALERT_TS(NLW_inst_sysmon_SMBALERT_TS_UNCONNECTED),
        .VAUXN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .VAUXP({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .VN(1'b0),
        .VP(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h00000054)) 
    jtagmodified_d1_i_1
       (.I0(drdy_rd_ack_i),
        .I1(jtagmodified_i),
        .I2(jtagmodified_d1),
        .I3(bus2ip_reset_active_high),
        .I4(\FSM_sequential_state_reg[1] ),
        .O(jtagmodified_d1_i_1_n_0));
  FDRE jtagmodified_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(jtagmodified_d1_i_1_n_0),
        .Q(jtagmodified_d1),
        .R(1'b0));
  FDRE local_reg_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(local_rdce_or_reduce),
        .Q(local_reg_rdack_d1),
        .R(reset2ip_reset));
  FDRE local_reg_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(local_reg_rdack0),
        .Q(local_reg_rdack),
        .R(reset2ip_reset));
  FDRE local_reg_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(convst_rst_wrce_or_reduce),
        .Q(local_reg_wrack_d1),
        .R(reset2ip_reset));
  FDRE local_reg_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(local_reg_wrack0),
        .Q(local_reg_wrack),
        .R(reset2ip_reset));
  FDRE ot_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(inst_sysmon_0[0]),
        .Q(ot_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \status_reg[10]_i_1 
       (.I0(jtagmodified_d1),
        .I1(jtagmodified_i),
        .O(D[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \status_reg[6]_i_1 
       (.I0(eoc_out),
        .I1(eoc_d1),
        .O(p_5_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \status_reg[7]_i_1 
       (.I0(eos_out),
        .I1(eos_d1),
        .O(p_5_out[7]));
  FDRE status_reg_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce[1]),
        .Q(status_reg_rdack_d1),
        .R(reset2ip_reset));
  FDRE status_reg_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(status_reg_rdack0),
        .Q(status_reg_rdack),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\status_reg_reg[11]_0 [0]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\status_reg_reg[11]_0 [10]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(jtagbusy_i),
        .Q(\status_reg_reg[11]_0 [11]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\status_reg_reg[11]_0 [1]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\status_reg_reg[11]_0 [2]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\status_reg_reg[11]_0 [3]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\status_reg_reg[11]_0 [4]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\status_reg_reg[11]_0 [5]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_5_out[6]),
        .Q(\status_reg_reg[11]_0 [6]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_5_out[7]),
        .Q(\status_reg_reg[11]_0 [7]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\status_reg_reg[11]_0 [8]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\status_reg_reg[11]_0 [9]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \temp_rd_wait_cycle_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(wait_cycle[0]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \temp_rd_wait_cycle_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[12]),
        .Q(wait_cycle[10]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \temp_rd_wait_cycle_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[13]),
        .Q(wait_cycle[11]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \temp_rd_wait_cycle_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[14]),
        .Q(wait_cycle[12]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \temp_rd_wait_cycle_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[15]),
        .Q(wait_cycle[13]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \temp_rd_wait_cycle_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[16]),
        .Q(wait_cycle[14]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \temp_rd_wait_cycle_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[17]),
        .Q(wait_cycle[15]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \temp_rd_wait_cycle_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(wait_cycle[1]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \temp_rd_wait_cycle_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(wait_cycle[2]),
        .R(reset2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \temp_rd_wait_cycle_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(wait_cycle[3]),
        .S(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \temp_rd_wait_cycle_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(wait_cycle[4]),
        .R(reset2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \temp_rd_wait_cycle_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(wait_cycle[5]),
        .S(reset2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \temp_rd_wait_cycle_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(wait_cycle[6]),
        .S(reset2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \temp_rd_wait_cycle_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(wait_cycle[7]),
        .S(reset2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \temp_rd_wait_cycle_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(wait_cycle[8]),
        .S(reset2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \temp_rd_wait_cycle_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(wait_cycle[9]),
        .S(reset2ip_reset));
  hardware_system_management_wiz_0_0_temperature_update temperature_update_inst
       (.AR(reset),
        .D(do_A_reg),
        .E(Inst_drp_arbiter_n_7),
        .\FSM_onehot_state_reg[2]_0 (temperature_update_inst_n_11),
        .\FSM_sequential_state_reg[0] (dwe_C_reg_reg),
        .\FSM_sequential_state_reg[1] (D[7]),
        .\FSM_sequential_state_reg[1]_0 (Inst_drp_arbiter_n_5),
        .\FSM_sequential_state_reg[1]_1 (Inst_drp_arbiter_n_6),
        .Q(wait_cycle),
        .bbusy_A(bbusy_A),
        .busy_o_reg_0(temperature_update_inst_n_4),
        .busy_o_reg_1(temperature_update_inst_n_6),
        .busy_o_reg_2(temperature_update_inst_n_8),
        .den_A(den_A),
        .den_C_reg_reg(Inst_drp_arbiter_n_1),
        .den_C_reg_reg_0(Inst_drp_arbiter_n_13),
        .den_d1(den_d1),
        .den_d1_reg(temperature_update_inst_n_2),
        .den_o_reg_0(temperature_update_inst_n_10),
        .den_reg(den_reg),
        .den_reg_reg(Inst_drp_arbiter_n_14),
        .den_reg_reg_0(Inst_drp_arbiter_n_12),
        .den_reg_reg_1(state__0),
        .drdy_C(drdy_C),
        .drdy_i(drdy_i),
        .inst_sysmon(temperature_update_inst_n_5),
        .inst_sysmon_0(temperature_update_inst_n_7),
        .inst_sysmon_1(temperature_update_inst_n_9),
        .s_axi_aclk(s_axi_aclk),
        .temp_out(temp_out));
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
