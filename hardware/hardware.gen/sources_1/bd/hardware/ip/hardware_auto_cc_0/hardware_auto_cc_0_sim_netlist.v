// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sat Feb 26 15:24:04 2022
// Host        : PC running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top hardware_auto_cc_0 -prefix
//               hardware_auto_cc_0_ hardware_auto_cc_0_sim_netlist.v
// Design      : hardware_auto_cc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_ARADDR_RIGHT = "45" *) (* C_ARADDR_WIDTH = "32" *) (* C_ARBURST_RIGHT = "32" *) 
(* C_ARBURST_WIDTH = "2" *) (* C_ARCACHE_RIGHT = "27" *) (* C_ARCACHE_WIDTH = "4" *) 
(* C_ARID_RIGHT = "77" *) (* C_ARID_WIDTH = "1" *) (* C_ARLEN_RIGHT = "37" *) 
(* C_ARLEN_WIDTH = "8" *) (* C_ARLOCK_RIGHT = "31" *) (* C_ARLOCK_WIDTH = "1" *) 
(* C_ARPROT_RIGHT = "24" *) (* C_ARPROT_WIDTH = "3" *) (* C_ARQOS_RIGHT = "16" *) 
(* C_ARQOS_WIDTH = "4" *) (* C_ARREGION_RIGHT = "20" *) (* C_ARREGION_WIDTH = "4" *) 
(* C_ARSIZE_RIGHT = "34" *) (* C_ARSIZE_WIDTH = "3" *) (* C_ARUSER_RIGHT = "0" *) 
(* C_ARUSER_WIDTH = "16" *) (* C_AR_WIDTH = "78" *) (* C_AWADDR_RIGHT = "45" *) 
(* C_AWADDR_WIDTH = "32" *) (* C_AWBURST_RIGHT = "32" *) (* C_AWBURST_WIDTH = "2" *) 
(* C_AWCACHE_RIGHT = "27" *) (* C_AWCACHE_WIDTH = "4" *) (* C_AWID_RIGHT = "77" *) 
(* C_AWID_WIDTH = "1" *) (* C_AWLEN_RIGHT = "37" *) (* C_AWLEN_WIDTH = "8" *) 
(* C_AWLOCK_RIGHT = "31" *) (* C_AWLOCK_WIDTH = "1" *) (* C_AWPROT_RIGHT = "24" *) 
(* C_AWPROT_WIDTH = "3" *) (* C_AWQOS_RIGHT = "16" *) (* C_AWQOS_WIDTH = "4" *) 
(* C_AWREGION_RIGHT = "20" *) (* C_AWREGION_WIDTH = "4" *) (* C_AWSIZE_RIGHT = "34" *) 
(* C_AWSIZE_WIDTH = "3" *) (* C_AWUSER_RIGHT = "0" *) (* C_AWUSER_WIDTH = "16" *) 
(* C_AW_WIDTH = "78" *) (* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "16" *) 
(* C_AXI_AWUSER_WIDTH = "16" *) (* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) 
(* C_AXI_ID_WIDTH = "1" *) (* C_AXI_IS_ACLK_ASYNC = "0" *) (* C_AXI_PROTOCOL = "0" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "1" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_BID_RIGHT = "3" *) 
(* C_BID_WIDTH = "1" *) (* C_BRESP_RIGHT = "1" *) (* C_BRESP_WIDTH = "2" *) 
(* C_BUSER_RIGHT = "0" *) (* C_BUSER_WIDTH = "1" *) (* C_B_WIDTH = "4" *) 
(* C_FAMILY = "zynquplus" *) (* C_FIFO_AR_WIDTH = "78" *) (* C_FIFO_AW_WIDTH = "78" *) 
(* C_FIFO_B_WIDTH = "4" *) (* C_FIFO_R_WIDTH = "37" *) (* C_FIFO_W_WIDTH = "38" *) 
(* C_M_AXI_ACLK_RATIO = "1" *) (* C_RDATA_RIGHT = "4" *) (* C_RDATA_WIDTH = "32" *) 
(* C_RID_RIGHT = "36" *) (* C_RID_WIDTH = "1" *) (* C_RLAST_RIGHT = "1" *) 
(* C_RLAST_WIDTH = "1" *) (* C_RRESP_RIGHT = "2" *) (* C_RRESP_WIDTH = "2" *) 
(* C_RUSER_RIGHT = "0" *) (* C_RUSER_WIDTH = "1" *) (* C_R_WIDTH = "37" *) 
(* C_SYNCHRONIZER_STAGE = "3" *) (* C_S_AXI_ACLK_RATIO = "2" *) (* C_WDATA_RIGHT = "6" *) 
(* C_WDATA_WIDTH = "32" *) (* C_WID_RIGHT = "38" *) (* C_WID_WIDTH = "0" *) 
(* C_WLAST_RIGHT = "1" *) (* C_WLAST_WIDTH = "1" *) (* C_WSTRB_RIGHT = "2" *) 
(* C_WSTRB_WIDTH = "4" *) (* C_WUSER_RIGHT = "0" *) (* C_WUSER_WIDTH = "1" *) 
(* C_W_WIDTH = "38" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_ACLK_RATIO = "2" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_FULLY_REG = "1" *) (* P_LIGHT_WT = "0" *) (* P_LUTRAM_ASYNC = "12" *) 
(* P_ROUNDING_OFFSET = "0" *) (* P_SI_LT_MI = "1'b0" *) 
module hardware_auto_cc_0_axi_clock_converter_v2_1_23_axi_clock_converter
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  (* keep = "true" *) input s_axi_aclk;
  (* keep = "true" *) input s_axi_aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [15:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [15:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  (* keep = "true" *) input m_axi_aclk;
  (* keep = "true" *) input m_axi_aresetn;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [15:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [15:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire \gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst_n_4 ;
  wire \gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst_n_5 ;
  wire \gen_clock_conv.gen_sync_conv.gen_conv_read_ch.ar_sync_clock_converter_n_3 ;
  wire \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_0 ;
  wire \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_1 ;
  wire \gen_clock_conv.sample_cycle ;
  wire \gen_sync_clock_converter.m_aresetn_r ;
  wire \gen_sync_clock_converter.s_aresetn_r ;
  wire [1:0]\gen_sync_clock_converter.state ;
  wire [1:1]\gen_sync_clock_converter.state_reg ;
  (* RTL_KEEP = "true" *) wire m_axi_aclk;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  (* RTL_KEEP = "true" *) wire m_axi_aresetn;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire [15:0]m_axi_aruser;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire [15:0]m_axi_awuser;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire posedge_finder_first;
  wire posedge_finder_second;
  (* RTL_KEEP = "true" *) wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  (* RTL_KEEP = "true" *) wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [15:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [15:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire slow_aclk_div2;

  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  hardware_auto_cc_0_axi_clock_converter_v2_1_23_axic_sample_cycle_ratio \gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst 
       (.\FSM_onehot_gen_sync_clock_converter.state_reg[0] (\gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst_n_5 ),
        .\FSM_sequential_gen_sync_clock_converter.state_reg[0] (\gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst_n_4 ),
        .Q(\gen_sync_clock_converter.state ),
        .\gen_clock_conv.sample_cycle (\gen_clock_conv.sample_cycle ),
        .\gen_sample_cycle.posedge_finder_second_reg_0 (s_axi_aclk),
        .\gen_sync_clock_converter.s_aresetn_r (\gen_sync_clock_converter.s_aresetn_r ),
        .\gen_sync_clock_converter.s_tready_r_reg ({\gen_sync_clock_converter.state_reg ,\gen_clock_conv.gen_sync_conv.gen_conv_read_ch.ar_sync_clock_converter_n_3 }),
        .out(m_axi_aclk),
        .posedge_finder_first(posedge_finder_first),
        .posedge_finder_second(posedge_finder_second),
        .slow_aclk_div2(slow_aclk_div2));
  hardware_auto_cc_0_axi_clock_converter_v2_1_23_axic_sync_clock_converter \gen_clock_conv.gen_sync_conv.gen_conv_read_ch.ar_sync_clock_converter 
       (.D({s_axi_araddr,s_axi_arlen,s_axi_arsize,s_axi_arburst,s_axi_arlock,s_axi_arcache,s_axi_arprot,s_axi_arregion,s_axi_arqos,s_axi_aruser}),
        .\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 (m_axi_aclk),
        .Q({\gen_sync_clock_converter.state_reg ,\gen_clock_conv.gen_sync_conv.gen_conv_read_ch.ar_sync_clock_converter_n_3 }),
        .\gen_sync_clock_converter.m_aresetn_r (\gen_sync_clock_converter.m_aresetn_r ),
        .\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 ({m_axi_araddr,m_axi_arlen,m_axi_arsize,m_axi_arburst,m_axi_arlock,m_axi_arcache,m_axi_arprot,m_axi_arregion,m_axi_arqos,m_axi_aruser}),
        .\gen_sync_clock_converter.s_tready_r_reg_0 (\gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst_n_5 ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .out(s_axi_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
  hardware_auto_cc_0_axi_clock_converter_v2_1_23_axic_sync_clock_converter__parameterized2 \gen_clock_conv.gen_sync_conv.gen_conv_read_ch.r_sync_clock_converter 
       (.D({m_axi_rdata,m_axi_rresp,m_axi_rlast}),
        .\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 (m_axi_aclk),
        .\FSM_sequential_gen_sync_clock_converter.state_reg[0]_1 (\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_1 ),
        .Q({s_axi_rdata,s_axi_rresp,s_axi_rlast}),
        .\gen_clock_conv.sample_cycle (\gen_clock_conv.sample_cycle ),
        .\gen_sync_clock_converter.m_tready_hold_reg_0 (\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_0 ),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(s_axi_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
  hardware_auto_cc_0_axi_clock_converter_v2_1_23_axic_sync_clock_converter_0 \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter 
       (.D({s_axi_awaddr,s_axi_awlen,s_axi_awsize,s_axi_awburst,s_axi_awlock,s_axi_awcache,s_axi_awprot,s_axi_awregion,s_axi_awqos,s_axi_awuser}),
        .\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 (m_axi_aclk),
        .Q({m_axi_awaddr,m_axi_awlen,m_axi_awsize,m_axi_awburst,m_axi_awlock,m_axi_awcache,m_axi_awprot,m_axi_awregion,m_axi_awqos,m_axi_awuser}),
        .\gen_sync_clock_converter.m_aresetn_r (\gen_sync_clock_converter.m_aresetn_r ),
        .\gen_sync_clock_converter.s_aresetn_r (\gen_sync_clock_converter.s_aresetn_r ),
        .\gen_sync_clock_converter.s_aresetn_r_reg_0 (s_axi_aresetn),
        .\gen_sync_clock_converter.s_aresetn_r_reg_1 (m_axi_aresetn),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .out(s_axi_aclk),
        .posedge_finder_first(posedge_finder_first),
        .posedge_finder_second(posedge_finder_second),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .slow_aclk_div2(slow_aclk_div2));
  hardware_auto_cc_0_axi_clock_converter_v2_1_23_axic_sync_clock_converter__parameterized1 \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter 
       (.\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 (m_axi_aclk),
        .\gen_clock_conv.sample_cycle (\gen_clock_conv.sample_cycle ),
        .\gen_sync_clock_converter.m_aresetn_r_reg_0 (\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_0 ),
        .\gen_sync_clock_converter.m_aresetn_r_reg_1 (m_axi_aresetn),
        .\gen_sync_clock_converter.m_aresetn_r_reg_2 (s_axi_aresetn),
        .\gen_sync_clock_converter.s_aresetn_r_reg_0 (\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_1 ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .out(s_axi_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid));
  hardware_auto_cc_0_axi_clock_converter_v2_1_23_axic_sync_clock_converter__parameterized0 \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.w_sync_clock_converter 
       (.D({s_axi_wdata,s_axi_wstrb,s_axi_wlast}),
        .\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 (m_axi_aclk),
        .Q(\gen_sync_clock_converter.state ),
        .\gen_sync_clock_converter.m_aresetn_r (\gen_sync_clock_converter.m_aresetn_r ),
        .\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 ({m_axi_wdata,m_axi_wstrb,m_axi_wlast}),
        .\gen_sync_clock_converter.s_tready_r_reg_0 (\gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst_n_4 ),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .out(s_axi_aclk),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module hardware_auto_cc_0_axi_clock_converter_v2_1_23_axic_sample_cycle_ratio
   (slow_aclk_div2,
    posedge_finder_second,
    posedge_finder_first,
    \gen_clock_conv.sample_cycle ,
    \FSM_sequential_gen_sync_clock_converter.state_reg[0] ,
    \FSM_onehot_gen_sync_clock_converter.state_reg[0] ,
    out,
    \gen_sample_cycle.posedge_finder_second_reg_0 ,
    Q,
    \gen_sync_clock_converter.s_aresetn_r ,
    \gen_sync_clock_converter.s_tready_r_reg );
  output slow_aclk_div2;
  output posedge_finder_second;
  output posedge_finder_first;
  output \gen_clock_conv.sample_cycle ;
  output \FSM_sequential_gen_sync_clock_converter.state_reg[0] ;
  output \FSM_onehot_gen_sync_clock_converter.state_reg[0] ;
  input out;
  input \gen_sample_cycle.posedge_finder_second_reg_0 ;
  input [1:0]Q;
  input \gen_sync_clock_converter.s_aresetn_r ;
  input [1:0]\gen_sync_clock_converter.s_tready_r_reg ;

  wire \FSM_onehot_gen_sync_clock_converter.state_reg[0] ;
  wire \FSM_sequential_gen_sync_clock_converter.state_reg[0] ;
  wire [1:0]Q;
  wire \gen_clock_conv.sample_cycle ;
  wire \gen_clock_conv.sample_cycle_early ;
  wire \gen_sample_cycle.posedge_finder_second_reg_0 ;
  wire \gen_sync_clock_converter.s_aresetn_r ;
  wire [1:0]\gen_sync_clock_converter.s_tready_r_reg ;
  wire out;
  wire posedge_finder_first;
  wire posedge_finder_second;
  wire slow_aclk_div2;
  wire slow_aclk_div20;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h53)) 
    any_edge
       (.I0(posedge_finder_first),
        .I1(posedge_finder_second),
        .I2(slow_aclk_div2),
        .O(\gen_clock_conv.sample_cycle_early ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sample_cycle.posedge_finder_first_reg 
       (.C(\gen_sample_cycle.posedge_finder_second_reg_0 ),
        .CE(1'b1),
        .D(slow_aclk_div2),
        .Q(posedge_finder_first),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sample_cycle.posedge_finder_second_reg 
       (.C(\gen_sample_cycle.posedge_finder_second_reg_0 ),
        .CE(1'b1),
        .D(slow_aclk_div20),
        .Q(posedge_finder_second),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_sample_cycle.sample_cycle_r_reg 
       (.C(\gen_sample_cycle.posedge_finder_second_reg_0 ),
        .CE(1'b1),
        .D(\gen_clock_conv.sample_cycle_early ),
        .Q(\gen_clock_conv.sample_cycle ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_sample_cycle.slow_aclk_div2_i_1 
       (.I0(slow_aclk_div2),
        .O(slow_aclk_div20));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sample_cycle.slow_aclk_div2_reg 
       (.C(out),
        .CE(1'b1),
        .D(slow_aclk_div20),
        .Q(slow_aclk_div2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0606006600000000)) 
    \gen_sync_clock_converter.s_tready_r_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(posedge_finder_first),
        .I3(posedge_finder_second),
        .I4(slow_aclk_div2),
        .I5(\gen_sync_clock_converter.s_aresetn_r ),
        .O(\FSM_sequential_gen_sync_clock_converter.state_reg[0] ));
  LUT6 #(
    .INIT(64'h0404004400000000)) 
    \gen_sync_clock_converter.s_tready_r_i_1__1 
       (.I0(\gen_sync_clock_converter.s_tready_r_reg [0]),
        .I1(\gen_sync_clock_converter.s_tready_r_reg [1]),
        .I2(posedge_finder_first),
        .I3(posedge_finder_second),
        .I4(slow_aclk_div2),
        .I5(\gen_sync_clock_converter.s_aresetn_r ),
        .O(\FSM_onehot_gen_sync_clock_converter.state_reg[0] ));
endmodule

module hardware_auto_cc_0_axi_clock_converter_v2_1_23_axic_sync_clock_converter
   (s_axi_arready,
    m_axi_arvalid,
    Q,
    \gen_sync_clock_converter.m_tpayload_r_reg[76]_0 ,
    \gen_sync_clock_converter.s_tready_r_reg_0 ,
    out,
    \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ,
    m_axi_arready,
    s_axi_arvalid,
    \gen_sync_clock_converter.m_aresetn_r ,
    D);
  output s_axi_arready;
  output m_axi_arvalid;
  output [1:0]Q;
  output [76:0]\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 ;
  input \gen_sync_clock_converter.s_tready_r_reg_0 ;
  input out;
  input \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ;
  input m_axi_arready;
  input s_axi_arvalid;
  input \gen_sync_clock_converter.m_aresetn_r ;
  input [76:0]D;

  wire [76:0]D;
  wire \FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire \gen_sync_clock_converter.load_tpayload ;
  wire \gen_sync_clock_converter.m_aresetn_r ;
  wire [76:0]\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 ;
  wire \gen_sync_clock_converter.m_tvalid_r_i_1__1_n_0 ;
  wire \gen_sync_clock_converter.s_tready_r_reg_0 ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire out;
  wire s_axi_arready;
  wire s_axi_arvalid;

  LUT4 #(
    .INIT(16'h5557)) 
    \FSM_onehot_gen_sync_clock_converter.state[0]_i_1 
       (.I0(\gen_sync_clock_converter.m_aresetn_r ),
        .I1(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2A202020)) 
    \FSM_onehot_gen_sync_clock_converter.state[1]_i_1 
       (.I0(\gen_sync_clock_converter.m_aresetn_r ),
        .I1(s_axi_arvalid),
        .I2(Q[1]),
        .I3(m_axi_arready),
        .I4(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I5(Q[0]),
        .O(\FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444040000000400)) 
    \FSM_onehot_gen_sync_clock_converter.state[2]_i_1 
       (.I0(Q[0]),
        .I1(\gen_sync_clock_converter.m_aresetn_r ),
        .I2(m_axi_arready),
        .I3(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(s_axi_arvalid),
        .O(\FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "INIT:001,ONE:11,TWO:100,ZERO:010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_sync_clock_converter.state_reg[0] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "INIT:001,ONE:11,TWO:100,ZERO:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_sync_clock_converter.state_reg[1] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "INIT:001,ONE:11,TWO:100,ZERO:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_sync_clock_converter.state_reg[2] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_sync_clock_converter.m_tpayload_r[76]_i_1__0 
       (.I0(m_axi_arready),
        .I1(Q[1]),
        .O(\gen_sync_clock_converter.load_tpayload ));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[0] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[0]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[10] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[10]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [10]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[11] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[11]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [11]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[12] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[12]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [12]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[13] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[13]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [13]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[14] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[14]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [14]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[15] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[15]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [15]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[16] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[16]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [16]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[17] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[17]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [17]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[18] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[18]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [18]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[19] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[19]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [19]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[1] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[1]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [1]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[20] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[20]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [20]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[21] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[21]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [21]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[22] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[22]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [22]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[23] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[23]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [23]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[24] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[24]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [24]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[25] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[25]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [25]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[26] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[26]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [26]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[27] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[27]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [27]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[28] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[28]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [28]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[29] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[29]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [29]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[2] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[2]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [2]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[30] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[30]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [30]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[31] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[31]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [31]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[32] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[32]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [32]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[33] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[33]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [33]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[34] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[34]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [34]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[35] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[35]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [35]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[36] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[36]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [36]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[37] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[37]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [37]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[38] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[38]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [38]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[39] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[39]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [39]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[3] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[3]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [3]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[40] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[40]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [40]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[41] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[41]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [41]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[42] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[42]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [42]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[43] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[43]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [43]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[44] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[44]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [44]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[45] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[45]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [45]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[46] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[46]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [46]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[47] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[47]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [47]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[48] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[48]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [48]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[49] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[49]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [49]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[4] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[4]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [4]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[50] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[50]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [50]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[51] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[51]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [51]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[52] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[52]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [52]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[53] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[53]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [53]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[54] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[54]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [54]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[55] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[55]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [55]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[56] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[56]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [56]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[57] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[57]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [57]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[58] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[58]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [58]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[59] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[59]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [59]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[5] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[5]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [5]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[60] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[60]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [60]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[61] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[61]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [61]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[62] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[62]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [62]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[63] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[63]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [63]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[64] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[64]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [64]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[65] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[65]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [65]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[66] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[66]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [66]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[67] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[67]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [67]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[68] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[68]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [68]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[69] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[69]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [69]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[6] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[6]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [6]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[70] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[70]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [70]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[71] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[71]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [71]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[72] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[72]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [72]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[73] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[73]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [73]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[74] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[74]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [74]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[75] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[75]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [75]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[76] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[76]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [76]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[7] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[7]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [7]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[8] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[8]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [8]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[9] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[9]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[76]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h8F880000)) 
    \gen_sync_clock_converter.m_tvalid_r_i_1__1 
       (.I0(s_axi_arvalid),
        .I1(Q[1]),
        .I2(m_axi_arready),
        .I3(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I4(\gen_sync_clock_converter.m_aresetn_r ),
        .O(\gen_sync_clock_converter.m_tvalid_r_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tvalid_r_reg 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tvalid_r_i_1__1_n_0 ),
        .Q(m_axi_arvalid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.s_tready_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .Q(s_axi_arready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_clock_converter_v2_1_23_axic_sync_clock_converter" *) 
module hardware_auto_cc_0_axi_clock_converter_v2_1_23_axic_sync_clock_converter_0
   (\gen_sync_clock_converter.s_aresetn_r ,
    \gen_sync_clock_converter.m_aresetn_r ,
    s_axi_awready,
    m_axi_awvalid,
    Q,
    out,
    \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ,
    m_axi_awready,
    posedge_finder_first,
    posedge_finder_second,
    slow_aclk_div2,
    s_axi_awvalid,
    \gen_sync_clock_converter.s_aresetn_r_reg_0 ,
    \gen_sync_clock_converter.s_aresetn_r_reg_1 ,
    D);
  output \gen_sync_clock_converter.s_aresetn_r ;
  output \gen_sync_clock_converter.m_aresetn_r ;
  output s_axi_awready;
  output m_axi_awvalid;
  output [76:0]Q;
  input out;
  input \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ;
  input m_axi_awready;
  input posedge_finder_first;
  input posedge_finder_second;
  input slow_aclk_div2;
  input s_axi_awvalid;
  input \gen_sync_clock_converter.s_aresetn_r_reg_0 ;
  input \gen_sync_clock_converter.s_aresetn_r_reg_1 ;
  input [76:0]D;

  wire [76:0]D;
  wire \FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0] ;
  wire \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ;
  wire [76:0]Q;
  wire \gen_sync_clock_converter.load_tpayload ;
  wire \gen_sync_clock_converter.m_aresetn_r ;
  wire \gen_sync_clock_converter.m_tvalid_r_i_1_n_0 ;
  wire \gen_sync_clock_converter.s_aresetn_r ;
  wire \gen_sync_clock_converter.s_aresetn_r_i_1_n_0 ;
  wire \gen_sync_clock_converter.s_aresetn_r_reg_0 ;
  wire \gen_sync_clock_converter.s_aresetn_r_reg_1 ;
  wire \gen_sync_clock_converter.s_tready_r_i_1__0_n_0 ;
  wire [1:1]\gen_sync_clock_converter.state_reg ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire out;
  wire posedge_finder_first;
  wire posedge_finder_second;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire slow_aclk_div2;

  LUT4 #(
    .INIT(16'h5557)) 
    \FSM_onehot_gen_sync_clock_converter.state[0]_i_1 
       (.I0(\gen_sync_clock_converter.m_aresetn_r ),
        .I1(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0] ),
        .I3(\gen_sync_clock_converter.state_reg ),
        .O(\FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2A202020)) 
    \FSM_onehot_gen_sync_clock_converter.state[1]_i_1 
       (.I0(\gen_sync_clock_converter.m_aresetn_r ),
        .I1(s_axi_awvalid),
        .I2(\gen_sync_clock_converter.state_reg ),
        .I3(m_axi_awready),
        .I4(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I5(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0] ),
        .O(\FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444040000000400)) 
    \FSM_onehot_gen_sync_clock_converter.state[2]_i_1 
       (.I0(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0] ),
        .I1(\gen_sync_clock_converter.m_aresetn_r ),
        .I2(m_axi_awready),
        .I3(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I4(\gen_sync_clock_converter.state_reg ),
        .I5(s_axi_awvalid),
        .O(\FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "INIT:001,ONE:11,TWO:100,ZERO:010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_sync_clock_converter.state_reg[0] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "INIT:001,ONE:11,TWO:100,ZERO:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_sync_clock_converter.state_reg[1] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.state_reg ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "INIT:001,ONE:11,TWO:100,ZERO:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_sync_clock_converter.state_reg[2] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_aresetn_r_reg 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_aresetn_r_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.m_aresetn_r ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_sync_clock_converter.m_tpayload_r[76]_i_1 
       (.I0(m_axi_awready),
        .I1(\gen_sync_clock_converter.state_reg ),
        .O(\gen_sync_clock_converter.load_tpayload ));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[0] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[10] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[11] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[12] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[13] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[14] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[15] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[16] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[17] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[18] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[19] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[1] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[20] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[21] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[22] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[23] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[24] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[25] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[26] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[27] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[28] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[29] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[2] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[30] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[31] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[32] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[33] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[34] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[35] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[36] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[37] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[38] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[39] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[3] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[40] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[40]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[41] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[41]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[42] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[42]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[43] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[43]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[44] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[44]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[45] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[45]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[46] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[46]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[47] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[47]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[48] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[48]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[49] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[49]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[4] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[50] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[50]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[51] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[51]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[52] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[52]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[53] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[53]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[54] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[54]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[55] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[55]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[56] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[56]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[57] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[57]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[58] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[58]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[59] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[59]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[5] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[60] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[60]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[61] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[61]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[62] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[62]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[63] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[63]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[64] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[64]),
        .Q(Q[64]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[65] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[65]),
        .Q(Q[65]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[66] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[66]),
        .Q(Q[66]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[67] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[67]),
        .Q(Q[67]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[68] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[68]),
        .Q(Q[68]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[69] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[69]),
        .Q(Q[69]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[6] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[70] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[70]),
        .Q(Q[70]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[71] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[71]),
        .Q(Q[71]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[72] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[72]),
        .Q(Q[72]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[73] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[73]),
        .Q(Q[73]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[74] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[74]),
        .Q(Q[74]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[75] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[75]),
        .Q(Q[75]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[76] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[76]),
        .Q(Q[76]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[7] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[8] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[9] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h8F880000)) 
    \gen_sync_clock_converter.m_tvalid_r_i_1 
       (.I0(s_axi_awvalid),
        .I1(\gen_sync_clock_converter.state_reg ),
        .I2(m_axi_awready),
        .I3(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I4(\gen_sync_clock_converter.m_aresetn_r ),
        .O(\gen_sync_clock_converter.m_tvalid_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tvalid_r_reg 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tvalid_r_i_1_n_0 ),
        .Q(m_axi_awvalid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_sync_clock_converter.s_aresetn_r_i_1 
       (.I0(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .I1(\gen_sync_clock_converter.s_aresetn_r_reg_1 ),
        .O(\gen_sync_clock_converter.s_aresetn_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.s_aresetn_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_aresetn_r_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.s_aresetn_r ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0404004400000000)) 
    \gen_sync_clock_converter.s_tready_r_i_1__0 
       (.I0(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0] ),
        .I1(\gen_sync_clock_converter.state_reg ),
        .I2(posedge_finder_first),
        .I3(posedge_finder_second),
        .I4(slow_aclk_div2),
        .I5(\gen_sync_clock_converter.s_aresetn_r ),
        .O(\gen_sync_clock_converter.s_tready_r_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.s_tready_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_tready_r_i_1__0_n_0 ),
        .Q(s_axi_awready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_clock_converter_v2_1_23_axic_sync_clock_converter" *) 
module hardware_auto_cc_0_axi_clock_converter_v2_1_23_axic_sync_clock_converter__parameterized0
   (s_axi_wready,
    m_axi_wvalid,
    Q,
    \gen_sync_clock_converter.m_tpayload_r_reg[37]_0 ,
    \gen_sync_clock_converter.s_tready_r_reg_0 ,
    out,
    \FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ,
    m_axi_wready,
    s_axi_wvalid,
    \gen_sync_clock_converter.m_aresetn_r ,
    D);
  output s_axi_wready;
  output m_axi_wvalid;
  output [1:0]Q;
  output [36:0]\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 ;
  input \gen_sync_clock_converter.s_tready_r_reg_0 ;
  input out;
  input \FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ;
  input m_axi_wready;
  input s_axi_wvalid;
  input \gen_sync_clock_converter.m_aresetn_r ;
  input [36:0]D;

  wire [36:0]D;
  wire \FSM_sequential_gen_sync_clock_converter.state[0]_i_1_n_0 ;
  wire \FSM_sequential_gen_sync_clock_converter.state[1]_i_1_n_0 ;
  wire \FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ;
  wire [1:0]Q;
  wire \gen_sync_clock_converter.load_tpayload ;
  wire \gen_sync_clock_converter.m_aresetn_r ;
  wire [36:0]\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 ;
  wire [37:1]\gen_sync_clock_converter.m_tstorage_r ;
  wire \gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tvalid_r_i_1__0_n_0 ;
  wire \gen_sync_clock_converter.s_tready_r_reg_0 ;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire out;
  wire [37:1]p_0_in;
  wire s_axi_wready;
  wire s_axi_wvalid;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h022A8AA2)) 
    \FSM_sequential_gen_sync_clock_converter.state[0]_i_1 
       (.I0(\gen_sync_clock_converter.m_aresetn_r ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .O(\FSM_sequential_gen_sync_clock_converter.state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA880A888)) 
    \FSM_sequential_gen_sync_clock_converter.state[1]_i_1 
       (.I0(\gen_sync_clock_converter.m_aresetn_r ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .O(\FSM_sequential_gen_sync_clock_converter.state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "INIT:00,ZERO:01,TWO:11,ONE:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_sync_clock_converter.state_reg[0] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_sequential_gen_sync_clock_converter.state[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "INIT:00,ZERO:01,TWO:11,ONE:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_sync_clock_converter.state_reg[1] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_sequential_gen_sync_clock_converter.state[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[10]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [10]),
        .I1(D[9]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[10]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[11]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [11]),
        .I1(D[10]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[12]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [12]),
        .I1(D[11]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[12]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[13]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [13]),
        .I1(D[12]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[14]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [14]),
        .I1(D[13]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[14]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[15]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [15]),
        .I1(D[14]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[15]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[16]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [16]),
        .I1(D[15]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[16]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[17]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [17]),
        .I1(D[16]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[17]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[18]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [18]),
        .I1(D[17]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[18]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[19]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [19]),
        .I1(D[18]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[19]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[1]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [1]),
        .I1(D[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[20]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [20]),
        .I1(D[19]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[20]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[21]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [21]),
        .I1(D[20]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[21]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[22]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [22]),
        .I1(D[21]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[22]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[23]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [23]),
        .I1(D[22]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[23]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[24]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [24]),
        .I1(D[23]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[24]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[25]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [25]),
        .I1(D[24]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[25]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[26]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [26]),
        .I1(D[25]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[26]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[27]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [27]),
        .I1(D[26]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[27]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[28]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [28]),
        .I1(D[27]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[28]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[29]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [29]),
        .I1(D[28]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[29]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[2]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [2]),
        .I1(D[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[30]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [30]),
        .I1(D[29]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[30]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[31]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [31]),
        .I1(D[30]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[31]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[32]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [32]),
        .I1(D[31]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[32]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[33]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [33]),
        .I1(D[32]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[33]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[34]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [34]),
        .I1(D[33]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[34]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[35]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [35]),
        .I1(D[34]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[35]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[36]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [36]),
        .I1(D[35]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[36]));
  LUT3 #(
    .INIT(8'hBA)) 
    \gen_sync_clock_converter.m_tpayload_r[37]_i_1 
       (.I0(m_axi_wready),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\gen_sync_clock_converter.load_tpayload ));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[37]_i_2 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [37]),
        .I1(D[36]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[37]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[3]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [3]),
        .I1(D[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[4]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [4]),
        .I1(D[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[5]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [5]),
        .I1(D[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[6]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [6]),
        .I1(D[5]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[7]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [7]),
        .I1(D[6]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[8]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [8]),
        .I1(D[7]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[9]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r [9]),
        .I1(D[8]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_wready),
        .O(p_0_in[9]));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[10] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[10]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [9]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[11] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[11]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [10]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[12] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[12]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [11]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[13] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[13]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [12]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[14] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[14]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [13]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[15] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[15]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [14]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[16] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[16]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [15]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[17] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[17]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [16]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[18] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[18]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [17]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[19] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[19]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [18]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[1] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[1]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[20] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[20]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [19]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[21] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[21]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [20]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[22] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[22]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [21]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[23] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[23]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [22]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[24] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[24]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [23]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[25] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[25]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [24]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[26] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[26]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [25]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[27] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[27]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [26]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[28] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[28]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [27]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[29] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[29]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [28]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[2] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[2]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [1]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[30] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[30]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [29]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[31] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[31]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [30]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[32] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[32]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [31]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[33] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[33]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [32]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[34] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[34]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [33]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[35] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[35]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [34]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[36] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[36]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [35]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[37] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[37]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [36]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[3] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[3]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [2]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[4] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[4]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [3]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[5] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[5]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [4]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[6] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[6]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [5]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[7] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[7]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [6]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[8] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[8]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [7]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[9] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(p_0_in[9]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[37]_0 [8]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_sync_clock_converter.m_tstorage_r[37]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[10] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[9]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [10]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[11] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[10]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [11]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[12] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[11]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [12]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[13] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[12]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [13]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[14] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[13]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [14]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[15] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[14]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [15]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[16] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[15]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [16]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[17] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[16]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [17]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[18] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[17]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [18]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[19] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[18]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [19]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[1] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[0]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [1]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[20] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[19]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [20]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[21] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[20]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [21]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[22] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[21]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [22]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[23] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[22]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [23]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[24] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[23]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [24]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[25] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[24]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [25]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[26] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[25]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [26]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[27] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[26]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [27]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[28] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[27]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [28]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[29] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[28]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [29]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[2] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[1]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [2]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[30] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[29]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [30]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[31] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[30]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [31]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[32] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[31]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [32]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[33] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[32]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [33]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[34] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[33]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [34]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[35] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[34]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [35]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[36] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[35]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [36]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[37] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[36]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [37]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[3] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[2]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [3]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[4] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[3]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [4]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[5] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[4]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [5]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[6] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[5]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [6]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[7] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[6]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [7]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[8] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[7]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [8]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[9] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[37]_i_1_n_0 ),
        .D(D[8]),
        .Q(\gen_sync_clock_converter.m_tstorage_r [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFCC40000)) 
    \gen_sync_clock_converter.m_tvalid_r_i_1__0 
       (.I0(m_axi_wready),
        .I1(Q[1]),
        .I2(s_axi_wvalid),
        .I3(Q[0]),
        .I4(\gen_sync_clock_converter.m_aresetn_r ),
        .O(\gen_sync_clock_converter.m_tvalid_r_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tvalid_r_reg 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tvalid_r_i_1__0_n_0 ),
        .Q(m_axi_wvalid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.s_tready_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .Q(s_axi_wready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_clock_converter_v2_1_23_axic_sync_clock_converter" *) 
module hardware_auto_cc_0_axi_clock_converter_v2_1_23_axic_sync_clock_converter__parameterized1
   (\gen_sync_clock_converter.m_aresetn_r_reg_0 ,
    \gen_sync_clock_converter.s_aresetn_r_reg_0 ,
    m_axi_bready,
    s_axi_bvalid,
    s_axi_bresp,
    out,
    \FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ,
    s_axi_bready,
    m_axi_bvalid,
    \gen_clock_conv.sample_cycle ,
    \gen_sync_clock_converter.m_aresetn_r_reg_1 ,
    \gen_sync_clock_converter.m_aresetn_r_reg_2 ,
    m_axi_bresp);
  output \gen_sync_clock_converter.m_aresetn_r_reg_0 ;
  output \gen_sync_clock_converter.s_aresetn_r_reg_0 ;
  output m_axi_bready;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  input out;
  input \FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ;
  input s_axi_bready;
  input m_axi_bvalid;
  input \gen_clock_conv.sample_cycle ;
  input \gen_sync_clock_converter.m_aresetn_r_reg_1 ;
  input \gen_sync_clock_converter.m_aresetn_r_reg_2 ;
  input [1:0]m_axi_bresp;

  wire \FSM_sequential_gen_sync_clock_converter.state[0]_i_1_n_0 ;
  wire \FSM_sequential_gen_sync_clock_converter.state[1]_i_1_n_0 ;
  wire \FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ;
  wire \gen_clock_conv.sample_cycle ;
  wire \gen_sync_clock_converter.load_tpayload ;
  wire \gen_sync_clock_converter.m_aresetn_r_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_aresetn_r_reg_0 ;
  wire \gen_sync_clock_converter.m_aresetn_r_reg_1 ;
  wire \gen_sync_clock_converter.m_aresetn_r_reg_2 ;
  wire \gen_sync_clock_converter.m_tready_hold ;
  wire \gen_sync_clock_converter.m_tready_hold_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tvalid_r_i_1__2_n_0 ;
  wire \gen_sync_clock_converter.s_aresetn_r_reg_0 ;
  wire \gen_sync_clock_converter.s_tready_r_i_1__2_n_0 ;
  wire [1:0]\gen_sync_clock_converter.state ;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire out;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;

  LUT6 #(
    .INIT(64'h02AA02AA02AA0222)) 
    \FSM_sequential_gen_sync_clock_converter.state[0]_i_1 
       (.I0(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .I1(\gen_sync_clock_converter.state [1]),
        .I2(m_axi_bvalid),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(s_axi_bready),
        .I5(\gen_sync_clock_converter.m_tready_hold ),
        .O(\FSM_sequential_gen_sync_clock_converter.state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00AA020000000200)) 
    \FSM_sequential_gen_sync_clock_converter.state[1]_i_1 
       (.I0(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .I1(s_axi_bready),
        .I2(\gen_sync_clock_converter.m_tready_hold ),
        .I3(\gen_sync_clock_converter.state [1]),
        .I4(\gen_sync_clock_converter.state [0]),
        .I5(m_axi_bvalid),
        .O(\FSM_sequential_gen_sync_clock_converter.state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "INIT:00,ONE:11,TWO:10,ZERO:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_sync_clock_converter.state_reg[0] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_sequential_gen_sync_clock_converter.state[0]_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "INIT:00,ONE:11,TWO:10,ZERO:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_sync_clock_converter.state_reg[1] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_sequential_gen_sync_clock_converter.state[1]_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.state [1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_sync_clock_converter.m_aresetn_r_i_1 
       (.I0(\gen_sync_clock_converter.m_aresetn_r_reg_1 ),
        .I1(\gen_sync_clock_converter.m_aresetn_r_reg_2 ),
        .O(\gen_sync_clock_converter.m_aresetn_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_aresetn_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_aresetn_r_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.m_aresetn_r_reg_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \gen_sync_clock_converter.m_tpayload_r[2]_i_1 
       (.I0(\gen_sync_clock_converter.m_tready_hold ),
        .I1(s_axi_bready),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .O(\gen_sync_clock_converter.load_tpayload ));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[1] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(m_axi_bresp[0]),
        .Q(s_axi_bresp[0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[2] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(m_axi_bresp[1]),
        .Q(s_axi_bresp[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E0)) 
    \gen_sync_clock_converter.m_tready_hold_i_1 
       (.I0(\gen_sync_clock_converter.m_tready_hold ),
        .I1(s_axi_bready),
        .I2(\gen_sync_clock_converter.m_aresetn_r_reg_0 ),
        .I3(\gen_clock_conv.sample_cycle ),
        .O(\gen_sync_clock_converter.m_tready_hold_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tready_hold_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tready_hold_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.m_tready_hold ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAA200020)) 
    \gen_sync_clock_converter.m_tvalid_r_i_1__2 
       (.I0(\gen_sync_clock_converter.m_aresetn_r_reg_0 ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid),
        .I3(\gen_clock_conv.sample_cycle ),
        .I4(\FSM_sequential_gen_sync_clock_converter.state[1]_i_1_n_0 ),
        .O(\gen_sync_clock_converter.m_tvalid_r_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tvalid_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tvalid_r_i_1__2_n_0 ),
        .Q(s_axi_bvalid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.s_aresetn_r_reg 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_aresetn_r_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111FFF300000000)) 
    \gen_sync_clock_converter.s_tready_r_i_1__2 
       (.I0(m_axi_bvalid),
        .I1(\gen_sync_clock_converter.state [1]),
        .I2(\gen_sync_clock_converter.m_tready_hold ),
        .I3(s_axi_bready),
        .I4(\gen_sync_clock_converter.state [0]),
        .I5(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .O(\gen_sync_clock_converter.s_tready_r_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.s_tready_r_reg 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_tready_r_i_1__2_n_0 ),
        .Q(m_axi_bready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_clock_converter_v2_1_23_axic_sync_clock_converter" *) 
module hardware_auto_cc_0_axi_clock_converter_v2_1_23_axic_sync_clock_converter__parameterized2
   (m_axi_rready,
    s_axi_rvalid,
    Q,
    out,
    \FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ,
    s_axi_rready,
    \gen_sync_clock_converter.m_tready_hold_reg_0 ,
    \gen_clock_conv.sample_cycle ,
    D,
    \FSM_sequential_gen_sync_clock_converter.state_reg[0]_1 ,
    m_axi_rvalid);
  output m_axi_rready;
  output s_axi_rvalid;
  output [34:0]Q;
  input out;
  input \FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ;
  input s_axi_rready;
  input \gen_sync_clock_converter.m_tready_hold_reg_0 ;
  input \gen_clock_conv.sample_cycle ;
  input [34:0]D;
  input \FSM_sequential_gen_sync_clock_converter.state_reg[0]_1 ;
  input m_axi_rvalid;

  wire [34:0]D;
  wire \FSM_sequential_gen_sync_clock_converter.state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_gen_sync_clock_converter.state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ;
  wire \FSM_sequential_gen_sync_clock_converter.state_reg[0]_1 ;
  wire [34:0]Q;
  wire \gen_clock_conv.sample_cycle ;
  wire \gen_sync_clock_converter.load_tpayload ;
  wire \gen_sync_clock_converter.m_tpayload_r[10]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[11]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[12]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[13]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[14]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[15]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[16]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[17]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[18]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[19]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[1]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[20]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[21]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[22]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[23]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[24]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[25]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[26]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[27]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[28]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[29]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[2]_i_1__0_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[30]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[31]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[32]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[33]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[34]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[35]_i_2_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[3]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[4]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[5]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[6]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[7]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[8]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tpayload_r[9]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tready_hold ;
  wire \gen_sync_clock_converter.m_tready_hold_i_1__0_n_0 ;
  wire \gen_sync_clock_converter.m_tready_hold_reg_0 ;
  wire \gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[10] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[11] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[12] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[13] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[14] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[15] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[16] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[17] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[18] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[19] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[1] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[20] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[21] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[22] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[23] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[24] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[25] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[26] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[27] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[28] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[29] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[2] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[30] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[31] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[32] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[33] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[34] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[35] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[3] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[4] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[5] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[6] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[7] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[8] ;
  wire \gen_sync_clock_converter.m_tstorage_r_reg_n_0_[9] ;
  wire \gen_sync_clock_converter.m_tvalid_r_i_1__3_n_0 ;
  wire \gen_sync_clock_converter.m_tvalid_r_i_2_n_0 ;
  wire \gen_sync_clock_converter.s_tready_r_i_1__3_n_0 ;
  wire [1:0]\gen_sync_clock_converter.state ;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire out;
  wire s_axi_rready;
  wire s_axi_rvalid;

  LUT6 #(
    .INIT(64'h022A022A022A8AA2)) 
    \FSM_sequential_gen_sync_clock_converter.state[0]_i_1__0 
       (.I0(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_1 ),
        .I1(\gen_sync_clock_converter.state [1]),
        .I2(\gen_sync_clock_converter.state [0]),
        .I3(m_axi_rvalid),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\FSM_sequential_gen_sync_clock_converter.state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA880A880A880A888)) 
    \FSM_sequential_gen_sync_clock_converter.state[1]_i_1__0 
       (.I0(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_1 ),
        .I1(\gen_sync_clock_converter.state [1]),
        .I2(m_axi_rvalid),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(s_axi_rready),
        .I5(\gen_sync_clock_converter.m_tready_hold ),
        .O(\FSM_sequential_gen_sync_clock_converter.state[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "INIT:00,ZERO:01,TWO:11,ONE:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_sync_clock_converter.state_reg[0] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_sequential_gen_sync_clock_converter.state[0]_i_1__0_n_0 ),
        .Q(\gen_sync_clock_converter.state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "INIT:00,ZERO:01,TWO:11,ONE:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_sync_clock_converter.state_reg[1] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_sequential_gen_sync_clock_converter.state[1]_i_1__0_n_0 ),
        .Q(\gen_sync_clock_converter.state [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[10]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[10] ),
        .I1(D[9]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[11]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[11] ),
        .I1(D[10]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[12]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[12] ),
        .I1(D[11]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[13]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[13] ),
        .I1(D[12]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[14]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[14] ),
        .I1(D[13]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[15]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[15] ),
        .I1(D[14]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[16]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[16] ),
        .I1(D[15]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[17]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[17] ),
        .I1(D[16]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[18]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[18] ),
        .I1(D[17]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[19]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[19] ),
        .I1(D[18]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[1]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[1] ),
        .I1(D[0]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[20]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[20] ),
        .I1(D[19]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[21]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[21] ),
        .I1(D[20]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[22]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[22] ),
        .I1(D[21]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[23]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[23] ),
        .I1(D[22]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[24]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[24] ),
        .I1(D[23]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[25]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[25] ),
        .I1(D[24]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[26]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[26] ),
        .I1(D[25]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[27]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[27] ),
        .I1(D[26]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[28]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[28] ),
        .I1(D[27]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[29]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[29] ),
        .I1(D[28]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[2]_i_1__0 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[2] ),
        .I1(D[1]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[30]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[30] ),
        .I1(D[29]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[31]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[31] ),
        .I1(D[30]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[32]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[32] ),
        .I1(D[31]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[33]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[33] ),
        .I1(D[32]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[34]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[34] ),
        .I1(D[33]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[34]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \gen_sync_clock_converter.m_tpayload_r[35]_i_1 
       (.I0(\gen_sync_clock_converter.m_tready_hold ),
        .I1(s_axi_rready),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .O(\gen_sync_clock_converter.load_tpayload ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[35]_i_2 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[35] ),
        .I1(D[34]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[35]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[3]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[3] ),
        .I1(D[2]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[4]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[4] ),
        .I1(D[3]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[5]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[5] ),
        .I1(D[4]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[6]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[6] ),
        .I1(D[5]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[7]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[7] ),
        .I1(D[6]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[8]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[8] ),
        .I1(D[7]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACCCACCCACCCCCCC)) 
    \gen_sync_clock_converter.m_tpayload_r[9]_i_1 
       (.I0(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[9] ),
        .I1(D[8]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.m_tready_hold ),
        .I5(s_axi_rready),
        .O(\gen_sync_clock_converter.m_tpayload_r[9]_i_1_n_0 ));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[10] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[10]_i_1_n_0 ),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[11] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[11]_i_1_n_0 ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[12] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[12]_i_1_n_0 ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[13] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[13]_i_1_n_0 ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[14] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[14]_i_1_n_0 ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[15] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[15]_i_1_n_0 ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[16] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[16]_i_1_n_0 ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[17] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[17]_i_1_n_0 ),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[18] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[18]_i_1_n_0 ),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[19] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[19]_i_1_n_0 ),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[1] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[1]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[20] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[20]_i_1_n_0 ),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[21] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[21]_i_1_n_0 ),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[22] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[22]_i_1_n_0 ),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[23] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[23]_i_1_n_0 ),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[24] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[24]_i_1_n_0 ),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[25] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[25]_i_1_n_0 ),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[26] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[26]_i_1_n_0 ),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[27] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[27]_i_1_n_0 ),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[28] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[28]_i_1_n_0 ),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[29] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[29]_i_1_n_0 ),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[2] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[2]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[30] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[30]_i_1_n_0 ),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[31] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[31]_i_1_n_0 ),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[32] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[32]_i_1_n_0 ),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[33] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[33]_i_1_n_0 ),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[34] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[34]_i_1_n_0 ),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[35] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[35]_i_2_n_0 ),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[3] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[3]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[4] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[4]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[5] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[5]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[6] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[6]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[7] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[7]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[8] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[8]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[9] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(\gen_sync_clock_converter.m_tpayload_r[9]_i_1_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E0)) 
    \gen_sync_clock_converter.m_tready_hold_i_1__0 
       (.I0(\gen_sync_clock_converter.m_tready_hold ),
        .I1(s_axi_rready),
        .I2(\gen_sync_clock_converter.m_tready_hold_reg_0 ),
        .I3(\gen_clock_conv.sample_cycle ),
        .O(\gen_sync_clock_converter.m_tready_hold_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tready_hold_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tready_hold_i_1__0_n_0 ),
        .Q(\gen_sync_clock_converter.m_tready_hold ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_sync_clock_converter.m_tstorage_r[35]_i_1 
       (.I0(\gen_sync_clock_converter.state [1]),
        .I1(\gen_sync_clock_converter.state [0]),
        .O(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[10] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[9]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[11] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[10]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[12] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[11]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[13] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[12]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[14] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[13]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[15] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[14]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[16] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[15]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[17] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[16]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[18] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[17]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[19] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[18]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[1] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[0]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[20] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[19]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[21] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[20]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[22] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[21]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[23] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[22]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[24] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[23]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[25] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[24]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[26] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[25]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[27] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[26]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[28] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[27]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[29] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[28]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[2] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[1]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[30] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[29]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[31] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[30]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[32] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[31]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[33] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[32]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[34] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[33]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[35] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[34]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[3] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[2]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[4] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[3]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[5] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[4]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[6] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[5]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[7] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[6]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[8] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[7]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tstorage_r_reg[9] 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.m_tstorage_r[35]_i_1_n_0 ),
        .D(D[8]),
        .Q(\gen_sync_clock_converter.m_tstorage_r_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAA200020)) 
    \gen_sync_clock_converter.m_tvalid_r_i_1__3 
       (.I0(\gen_sync_clock_converter.m_tready_hold_reg_0 ),
        .I1(s_axi_rready),
        .I2(s_axi_rvalid),
        .I3(\gen_clock_conv.sample_cycle ),
        .I4(\gen_sync_clock_converter.m_tvalid_r_i_2_n_0 ),
        .O(\gen_sync_clock_converter.m_tvalid_r_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hA880A880A880AA80)) 
    \gen_sync_clock_converter.m_tvalid_r_i_2 
       (.I0(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_1 ),
        .I1(\gen_sync_clock_converter.state [0]),
        .I2(m_axi_rvalid),
        .I3(\gen_sync_clock_converter.state [1]),
        .I4(s_axi_rready),
        .I5(\gen_sync_clock_converter.m_tready_hold ),
        .O(\gen_sync_clock_converter.m_tvalid_r_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tvalid_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tvalid_r_i_1__3_n_0 ),
        .Q(s_axi_rvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFCFDFFFF00000000)) 
    \gen_sync_clock_converter.s_tready_r_i_1__3 
       (.I0(m_axi_rvalid),
        .I1(\gen_sync_clock_converter.m_tready_hold ),
        .I2(s_axi_rready),
        .I3(\gen_sync_clock_converter.state [0]),
        .I4(\gen_sync_clock_converter.state [1]),
        .I5(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_1 ),
        .O(\gen_sync_clock_converter.s_tready_r_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.s_tready_r_reg 
       (.C(\FSM_sequential_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_tready_r_i_1__3_n_0 ),
        .Q(m_axi_rready),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "hardware_auto_cc_0,axi_clock_converter_v2_1_23_axi_clock_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module hardware_auto_cc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_CLK, FREQ_HZ 199998000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hardware_clk_wiz_0_0_clk_out1, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWUSER" *) input [15:0]s_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARUSER" *) input [15:0]s_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 199998000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN hardware_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 MI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MI_CLK, FREQ_HZ 99999000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hardware_clk_wiz_0_0_clk_out1, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, INSERT_VIP 0" *) input m_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 MI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input m_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREGION" *) output [3:0]m_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWUSER" *) output [15:0]m_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [0:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREGION" *) output [3:0]m_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARUSER" *) output [15:0]m_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 99999000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN hardware_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire m_axi_aclk;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire m_axi_aresetn;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire [15:0]m_axi_aruser;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire [15:0]m_axi_awuser;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [15:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [15:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_ARADDR_RIGHT = "45" *) 
  (* C_ARADDR_WIDTH = "32" *) 
  (* C_ARBURST_RIGHT = "32" *) 
  (* C_ARBURST_WIDTH = "2" *) 
  (* C_ARCACHE_RIGHT = "27" *) 
  (* C_ARCACHE_WIDTH = "4" *) 
  (* C_ARID_RIGHT = "77" *) 
  (* C_ARID_WIDTH = "1" *) 
  (* C_ARLEN_RIGHT = "37" *) 
  (* C_ARLEN_WIDTH = "8" *) 
  (* C_ARLOCK_RIGHT = "31" *) 
  (* C_ARLOCK_WIDTH = "1" *) 
  (* C_ARPROT_RIGHT = "24" *) 
  (* C_ARPROT_WIDTH = "3" *) 
  (* C_ARQOS_RIGHT = "16" *) 
  (* C_ARQOS_WIDTH = "4" *) 
  (* C_ARREGION_RIGHT = "20" *) 
  (* C_ARREGION_WIDTH = "4" *) 
  (* C_ARSIZE_RIGHT = "34" *) 
  (* C_ARSIZE_WIDTH = "3" *) 
  (* C_ARUSER_RIGHT = "0" *) 
  (* C_ARUSER_WIDTH = "16" *) 
  (* C_AR_WIDTH = "78" *) 
  (* C_AWADDR_RIGHT = "45" *) 
  (* C_AWADDR_WIDTH = "32" *) 
  (* C_AWBURST_RIGHT = "32" *) 
  (* C_AWBURST_WIDTH = "2" *) 
  (* C_AWCACHE_RIGHT = "27" *) 
  (* C_AWCACHE_WIDTH = "4" *) 
  (* C_AWID_RIGHT = "77" *) 
  (* C_AWID_WIDTH = "1" *) 
  (* C_AWLEN_RIGHT = "37" *) 
  (* C_AWLEN_WIDTH = "8" *) 
  (* C_AWLOCK_RIGHT = "31" *) 
  (* C_AWLOCK_WIDTH = "1" *) 
  (* C_AWPROT_RIGHT = "24" *) 
  (* C_AWPROT_WIDTH = "3" *) 
  (* C_AWQOS_RIGHT = "16" *) 
  (* C_AWQOS_WIDTH = "4" *) 
  (* C_AWREGION_RIGHT = "20" *) 
  (* C_AWREGION_WIDTH = "4" *) 
  (* C_AWSIZE_RIGHT = "34" *) 
  (* C_AWSIZE_WIDTH = "3" *) 
  (* C_AWUSER_RIGHT = "0" *) 
  (* C_AWUSER_WIDTH = "16" *) 
  (* C_AW_WIDTH = "78" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "16" *) 
  (* C_AXI_AWUSER_WIDTH = "16" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_IS_ACLK_ASYNC = "0" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "1" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_BID_RIGHT = "3" *) 
  (* C_BID_WIDTH = "1" *) 
  (* C_BRESP_RIGHT = "1" *) 
  (* C_BRESP_WIDTH = "2" *) 
  (* C_BUSER_RIGHT = "0" *) 
  (* C_BUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FIFO_AR_WIDTH = "78" *) 
  (* C_FIFO_AW_WIDTH = "78" *) 
  (* C_FIFO_B_WIDTH = "4" *) 
  (* C_FIFO_R_WIDTH = "37" *) 
  (* C_FIFO_W_WIDTH = "38" *) 
  (* C_M_AXI_ACLK_RATIO = "1" *) 
  (* C_RDATA_RIGHT = "4" *) 
  (* C_RDATA_WIDTH = "32" *) 
  (* C_RID_RIGHT = "36" *) 
  (* C_RID_WIDTH = "1" *) 
  (* C_RLAST_RIGHT = "1" *) 
  (* C_RLAST_WIDTH = "1" *) 
  (* C_RRESP_RIGHT = "2" *) 
  (* C_RRESP_WIDTH = "2" *) 
  (* C_RUSER_RIGHT = "0" *) 
  (* C_RUSER_WIDTH = "1" *) 
  (* C_R_WIDTH = "37" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_S_AXI_ACLK_RATIO = "2" *) 
  (* C_WDATA_RIGHT = "6" *) 
  (* C_WDATA_WIDTH = "32" *) 
  (* C_WID_RIGHT = "38" *) 
  (* C_WID_WIDTH = "0" *) 
  (* C_WLAST_RIGHT = "1" *) 
  (* C_WLAST_WIDTH = "1" *) 
  (* C_WSTRB_RIGHT = "2" *) 
  (* C_WSTRB_WIDTH = "4" *) 
  (* C_WUSER_RIGHT = "0" *) 
  (* C_WUSER_WIDTH = "1" *) 
  (* C_W_WIDTH = "38" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_ACLK_RATIO = "2" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_FULLY_REG = "1" *) 
  (* P_LIGHT_WT = "0" *) 
  (* P_LUTRAM_ASYNC = "12" *) 
  (* P_ROUNDING_OFFSET = "0" *) 
  (* P_SI_LT_MI = "1'b0" *) 
  hardware_auto_cc_0_axi_clock_converter_v2_1_23_axi_clock_converter inst
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_aresetn(m_axi_aresetn),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(m_axi_arregion),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(m_axi_aruser),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(m_axi_awuser),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion(s_axi_arregion),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(s_axi_aruser),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(s_axi_awuser),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
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
