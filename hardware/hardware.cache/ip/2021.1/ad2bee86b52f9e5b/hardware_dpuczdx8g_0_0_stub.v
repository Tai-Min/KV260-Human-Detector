// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sat Feb 26 17:50:44 2022
// Host        : PC running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hardware_dpuczdx8g_0_0_stub.v
// Design      : hardware_dpuczdx8g_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "DPUCZDX8G_v3_4_0,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_aclk, s_axi_aresetn, dpu_2x_clk, 
  dpu_2x_resetn, m_axi_dpu_aclk, m_axi_dpu_aresetn, dpu0_interrupt, s_axi_awid, s_axi_awaddr, 
  s_axi_awlen, s_axi_awsize, s_axi_awburst, s_axi_awlock, s_axi_awcache, s_axi_awprot, 
  s_axi_awqos, s_axi_awregion, s_axi_awuser, s_axi_awvalid, s_axi_awready, s_axi_wid, 
  s_axi_wdata, s_axi_wstrb, s_axi_wlast, s_axi_wvalid, s_axi_wready, s_axi_bid, s_axi_bresp, 
  s_axi_bvalid, s_axi_bready, s_axi_arid, s_axi_araddr, s_axi_arlen, s_axi_arsize, 
  s_axi_arburst, s_axi_arlock, s_axi_arcache, s_axi_arprot, s_axi_arqos, s_axi_arregion, 
  s_axi_aruser, s_axi_arvalid, s_axi_arready, s_axi_rid, s_axi_rdata, s_axi_rresp, s_axi_rlast, 
  s_axi_rvalid, s_axi_rready, dpu0_m_axi_instr_awid, dpu0_m_axi_instr_awaddr, 
  dpu0_m_axi_instr_awlen, dpu0_m_axi_instr_awsize, dpu0_m_axi_instr_awburst, 
  dpu0_m_axi_instr_awlock, dpu0_m_axi_instr_awcache, dpu0_m_axi_instr_awprot, 
  dpu0_m_axi_instr_awqos, dpu0_m_axi_instr_awuser, dpu0_m_axi_instr_awvalid, 
  dpu0_m_axi_instr_awready, dpu0_m_axi_instr_wid, dpu0_m_axi_instr_wdata, 
  dpu0_m_axi_instr_wstrb, dpu0_m_axi_instr_wlast, dpu0_m_axi_instr_wvalid, 
  dpu0_m_axi_instr_wready, dpu0_m_axi_instr_bid, dpu0_m_axi_instr_bresp, 
  dpu0_m_axi_instr_bvalid, dpu0_m_axi_instr_bready, dpu0_m_axi_instr_arid, 
  dpu0_m_axi_instr_araddr, dpu0_m_axi_instr_arlen, dpu0_m_axi_instr_arsize, 
  dpu0_m_axi_instr_arburst, dpu0_m_axi_instr_arlock, dpu0_m_axi_instr_arcache, 
  dpu0_m_axi_instr_arprot, dpu0_m_axi_instr_arqos, dpu0_m_axi_instr_aruser, 
  dpu0_m_axi_instr_arvalid, dpu0_m_axi_instr_arready, dpu0_m_axi_instr_rid, 
  dpu0_m_axi_instr_rdata, dpu0_m_axi_instr_rresp, dpu0_m_axi_instr_rlast, 
  dpu0_m_axi_instr_rvalid, dpu0_m_axi_instr_rready, dpu0_m_axi_data0_awid, 
  dpu0_m_axi_data0_awaddr, dpu0_m_axi_data0_awlen, dpu0_m_axi_data0_awsize, 
  dpu0_m_axi_data0_awburst, dpu0_m_axi_data0_awlock, dpu0_m_axi_data0_awcache, 
  dpu0_m_axi_data0_awprot, dpu0_m_axi_data0_awqos, dpu0_m_axi_data0_awuser, 
  dpu0_m_axi_data0_awvalid, dpu0_m_axi_data0_awready, dpu0_m_axi_data0_wid, 
  dpu0_m_axi_data0_wdata, dpu0_m_axi_data0_wstrb, dpu0_m_axi_data0_wlast, 
  dpu0_m_axi_data0_wvalid, dpu0_m_axi_data0_wready, dpu0_m_axi_data0_bid, 
  dpu0_m_axi_data0_bresp, dpu0_m_axi_data0_bvalid, dpu0_m_axi_data0_bready, 
  dpu0_m_axi_data0_arid, dpu0_m_axi_data0_araddr, dpu0_m_axi_data0_arlen, 
  dpu0_m_axi_data0_arsize, dpu0_m_axi_data0_arburst, dpu0_m_axi_data0_arlock, 
  dpu0_m_axi_data0_arcache, dpu0_m_axi_data0_arprot, dpu0_m_axi_data0_arqos, 
  dpu0_m_axi_data0_aruser, dpu0_m_axi_data0_arvalid, dpu0_m_axi_data0_arready, 
  dpu0_m_axi_data0_rid, dpu0_m_axi_data0_rdata, dpu0_m_axi_data0_rresp, 
  dpu0_m_axi_data0_rlast, dpu0_m_axi_data0_rvalid, dpu0_m_axi_data0_rready, 
  dpu0_m_axi_data1_awid, dpu0_m_axi_data1_awaddr, dpu0_m_axi_data1_awlen, 
  dpu0_m_axi_data1_awsize, dpu0_m_axi_data1_awburst, dpu0_m_axi_data1_awlock, 
  dpu0_m_axi_data1_awcache, dpu0_m_axi_data1_awprot, dpu0_m_axi_data1_awqos, 
  dpu0_m_axi_data1_awuser, dpu0_m_axi_data1_awvalid, dpu0_m_axi_data1_awready, 
  dpu0_m_axi_data1_wid, dpu0_m_axi_data1_wdata, dpu0_m_axi_data1_wstrb, 
  dpu0_m_axi_data1_wlast, dpu0_m_axi_data1_wvalid, dpu0_m_axi_data1_wready, 
  dpu0_m_axi_data1_bid, dpu0_m_axi_data1_bresp, dpu0_m_axi_data1_bvalid, 
  dpu0_m_axi_data1_bready, dpu0_m_axi_data1_arid, dpu0_m_axi_data1_araddr, 
  dpu0_m_axi_data1_arlen, dpu0_m_axi_data1_arsize, dpu0_m_axi_data1_arburst, 
  dpu0_m_axi_data1_arlock, dpu0_m_axi_data1_arcache, dpu0_m_axi_data1_arprot, 
  dpu0_m_axi_data1_arqos, dpu0_m_axi_data1_aruser, dpu0_m_axi_data1_arvalid, 
  dpu0_m_axi_data1_arready, dpu0_m_axi_data1_rid, dpu0_m_axi_data1_rdata, 
  dpu0_m_axi_data1_rresp, dpu0_m_axi_data1_rlast, dpu0_m_axi_data1_rvalid, 
  dpu0_m_axi_data1_rready)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,dpu_2x_clk,dpu_2x_resetn,m_axi_dpu_aclk,m_axi_dpu_aresetn,dpu0_interrupt,s_axi_awid[15:0],s_axi_awaddr[31:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awlock[1:0],s_axi_awcache[3:0],s_axi_awprot[2:0],s_axi_awqos[3:0],s_axi_awregion[3:0],s_axi_awuser[15:0],s_axi_awvalid,s_axi_awready,s_axi_wid[15:0],s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bid[15:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_arid[15:0],s_axi_araddr[31:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arlock[1:0],s_axi_arcache[3:0],s_axi_arprot[2:0],s_axi_arqos[3:0],s_axi_arregion[3:0],s_axi_aruser[15:0],s_axi_arvalid,s_axi_arready,s_axi_rid[15:0],s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,s_axi_rready,dpu0_m_axi_instr_awid[1:0],dpu0_m_axi_instr_awaddr[39:0],dpu0_m_axi_instr_awlen[7:0],dpu0_m_axi_instr_awsize[2:0],dpu0_m_axi_instr_awburst[1:0],dpu0_m_axi_instr_awlock[0:0],dpu0_m_axi_instr_awcache[3:0],dpu0_m_axi_instr_awprot[2:0],dpu0_m_axi_instr_awqos[3:0],dpu0_m_axi_instr_awuser[0:0],dpu0_m_axi_instr_awvalid,dpu0_m_axi_instr_awready,dpu0_m_axi_instr_wid[5:0],dpu0_m_axi_instr_wdata[31:0],dpu0_m_axi_instr_wstrb[3:0],dpu0_m_axi_instr_wlast,dpu0_m_axi_instr_wvalid,dpu0_m_axi_instr_wready,dpu0_m_axi_instr_bid[5:0],dpu0_m_axi_instr_bresp[1:0],dpu0_m_axi_instr_bvalid,dpu0_m_axi_instr_bready,dpu0_m_axi_instr_arid[1:0],dpu0_m_axi_instr_araddr[39:0],dpu0_m_axi_instr_arlen[7:0],dpu0_m_axi_instr_arsize[2:0],dpu0_m_axi_instr_arburst[1:0],dpu0_m_axi_instr_arlock[0:0],dpu0_m_axi_instr_arcache[3:0],dpu0_m_axi_instr_arprot[2:0],dpu0_m_axi_instr_arqos[3:0],dpu0_m_axi_instr_aruser[0:0],dpu0_m_axi_instr_arvalid,dpu0_m_axi_instr_arready,dpu0_m_axi_instr_rid[5:0],dpu0_m_axi_instr_rdata[31:0],dpu0_m_axi_instr_rresp[1:0],dpu0_m_axi_instr_rlast,dpu0_m_axi_instr_rvalid,dpu0_m_axi_instr_rready,dpu0_m_axi_data0_awid[1:0],dpu0_m_axi_data0_awaddr[39:0],dpu0_m_axi_data0_awlen[7:0],dpu0_m_axi_data0_awsize[2:0],dpu0_m_axi_data0_awburst[1:0],dpu0_m_axi_data0_awlock[0:0],dpu0_m_axi_data0_awcache[3:0],dpu0_m_axi_data0_awprot[2:0],dpu0_m_axi_data0_awqos[3:0],dpu0_m_axi_data0_awuser[0:0],dpu0_m_axi_data0_awvalid,dpu0_m_axi_data0_awready,dpu0_m_axi_data0_wid[5:0],dpu0_m_axi_data0_wdata[127:0],dpu0_m_axi_data0_wstrb[15:0],dpu0_m_axi_data0_wlast,dpu0_m_axi_data0_wvalid,dpu0_m_axi_data0_wready,dpu0_m_axi_data0_bid[5:0],dpu0_m_axi_data0_bresp[1:0],dpu0_m_axi_data0_bvalid,dpu0_m_axi_data0_bready,dpu0_m_axi_data0_arid[1:0],dpu0_m_axi_data0_araddr[39:0],dpu0_m_axi_data0_arlen[7:0],dpu0_m_axi_data0_arsize[2:0],dpu0_m_axi_data0_arburst[1:0],dpu0_m_axi_data0_arlock[0:0],dpu0_m_axi_data0_arcache[3:0],dpu0_m_axi_data0_arprot[2:0],dpu0_m_axi_data0_arqos[3:0],dpu0_m_axi_data0_aruser[0:0],dpu0_m_axi_data0_arvalid,dpu0_m_axi_data0_arready,dpu0_m_axi_data0_rid[5:0],dpu0_m_axi_data0_rdata[127:0],dpu0_m_axi_data0_rresp[1:0],dpu0_m_axi_data0_rlast,dpu0_m_axi_data0_rvalid,dpu0_m_axi_data0_rready,dpu0_m_axi_data1_awid[1:0],dpu0_m_axi_data1_awaddr[39:0],dpu0_m_axi_data1_awlen[7:0],dpu0_m_axi_data1_awsize[2:0],dpu0_m_axi_data1_awburst[1:0],dpu0_m_axi_data1_awlock[0:0],dpu0_m_axi_data1_awcache[3:0],dpu0_m_axi_data1_awprot[2:0],dpu0_m_axi_data1_awqos[3:0],dpu0_m_axi_data1_awuser[0:0],dpu0_m_axi_data1_awvalid,dpu0_m_axi_data1_awready,dpu0_m_axi_data1_wid[5:0],dpu0_m_axi_data1_wdata[127:0],dpu0_m_axi_data1_wstrb[15:0],dpu0_m_axi_data1_wlast,dpu0_m_axi_data1_wvalid,dpu0_m_axi_data1_wready,dpu0_m_axi_data1_bid[5:0],dpu0_m_axi_data1_bresp[1:0],dpu0_m_axi_data1_bvalid,dpu0_m_axi_data1_bready,dpu0_m_axi_data1_arid[1:0],dpu0_m_axi_data1_araddr[39:0],dpu0_m_axi_data1_arlen[7:0],dpu0_m_axi_data1_arsize[2:0],dpu0_m_axi_data1_arburst[1:0],dpu0_m_axi_data1_arlock[0:0],dpu0_m_axi_data1_arcache[3:0],dpu0_m_axi_data1_arprot[2:0],dpu0_m_axi_data1_arqos[3:0],dpu0_m_axi_data1_aruser[0:0],dpu0_m_axi_data1_arvalid,dpu0_m_axi_data1_arready,dpu0_m_axi_data1_rid[5:0],dpu0_m_axi_data1_rdata[127:0],dpu0_m_axi_data1_rresp[1:0],dpu0_m_axi_data1_rlast,dpu0_m_axi_data1_rvalid,dpu0_m_axi_data1_rready" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  input dpu_2x_clk;
  input dpu_2x_resetn;
  input m_axi_dpu_aclk;
  input m_axi_dpu_aresetn;
  output dpu0_interrupt;
  input [15:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [15:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [15:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [15:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [15:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [15:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [1:0]dpu0_m_axi_instr_awid;
  output [39:0]dpu0_m_axi_instr_awaddr;
  output [7:0]dpu0_m_axi_instr_awlen;
  output [2:0]dpu0_m_axi_instr_awsize;
  output [1:0]dpu0_m_axi_instr_awburst;
  output [0:0]dpu0_m_axi_instr_awlock;
  output [3:0]dpu0_m_axi_instr_awcache;
  output [2:0]dpu0_m_axi_instr_awprot;
  output [3:0]dpu0_m_axi_instr_awqos;
  output [0:0]dpu0_m_axi_instr_awuser;
  output dpu0_m_axi_instr_awvalid;
  input dpu0_m_axi_instr_awready;
  output [5:0]dpu0_m_axi_instr_wid;
  output [31:0]dpu0_m_axi_instr_wdata;
  output [3:0]dpu0_m_axi_instr_wstrb;
  output dpu0_m_axi_instr_wlast;
  output dpu0_m_axi_instr_wvalid;
  input dpu0_m_axi_instr_wready;
  input [5:0]dpu0_m_axi_instr_bid;
  input [1:0]dpu0_m_axi_instr_bresp;
  input dpu0_m_axi_instr_bvalid;
  output dpu0_m_axi_instr_bready;
  output [1:0]dpu0_m_axi_instr_arid;
  output [39:0]dpu0_m_axi_instr_araddr;
  output [7:0]dpu0_m_axi_instr_arlen;
  output [2:0]dpu0_m_axi_instr_arsize;
  output [1:0]dpu0_m_axi_instr_arburst;
  output [0:0]dpu0_m_axi_instr_arlock;
  output [3:0]dpu0_m_axi_instr_arcache;
  output [2:0]dpu0_m_axi_instr_arprot;
  output [3:0]dpu0_m_axi_instr_arqos;
  output [0:0]dpu0_m_axi_instr_aruser;
  output dpu0_m_axi_instr_arvalid;
  input dpu0_m_axi_instr_arready;
  input [5:0]dpu0_m_axi_instr_rid;
  input [31:0]dpu0_m_axi_instr_rdata;
  input [1:0]dpu0_m_axi_instr_rresp;
  input dpu0_m_axi_instr_rlast;
  input dpu0_m_axi_instr_rvalid;
  output dpu0_m_axi_instr_rready;
  output [1:0]dpu0_m_axi_data0_awid;
  output [39:0]dpu0_m_axi_data0_awaddr;
  output [7:0]dpu0_m_axi_data0_awlen;
  output [2:0]dpu0_m_axi_data0_awsize;
  output [1:0]dpu0_m_axi_data0_awburst;
  output [0:0]dpu0_m_axi_data0_awlock;
  output [3:0]dpu0_m_axi_data0_awcache;
  output [2:0]dpu0_m_axi_data0_awprot;
  output [3:0]dpu0_m_axi_data0_awqos;
  output [0:0]dpu0_m_axi_data0_awuser;
  output dpu0_m_axi_data0_awvalid;
  input dpu0_m_axi_data0_awready;
  output [5:0]dpu0_m_axi_data0_wid;
  output [127:0]dpu0_m_axi_data0_wdata;
  output [15:0]dpu0_m_axi_data0_wstrb;
  output dpu0_m_axi_data0_wlast;
  output dpu0_m_axi_data0_wvalid;
  input dpu0_m_axi_data0_wready;
  input [5:0]dpu0_m_axi_data0_bid;
  input [1:0]dpu0_m_axi_data0_bresp;
  input dpu0_m_axi_data0_bvalid;
  output dpu0_m_axi_data0_bready;
  output [1:0]dpu0_m_axi_data0_arid;
  output [39:0]dpu0_m_axi_data0_araddr;
  output [7:0]dpu0_m_axi_data0_arlen;
  output [2:0]dpu0_m_axi_data0_arsize;
  output [1:0]dpu0_m_axi_data0_arburst;
  output [0:0]dpu0_m_axi_data0_arlock;
  output [3:0]dpu0_m_axi_data0_arcache;
  output [2:0]dpu0_m_axi_data0_arprot;
  output [3:0]dpu0_m_axi_data0_arqos;
  output [0:0]dpu0_m_axi_data0_aruser;
  output dpu0_m_axi_data0_arvalid;
  input dpu0_m_axi_data0_arready;
  input [5:0]dpu0_m_axi_data0_rid;
  input [127:0]dpu0_m_axi_data0_rdata;
  input [1:0]dpu0_m_axi_data0_rresp;
  input dpu0_m_axi_data0_rlast;
  input dpu0_m_axi_data0_rvalid;
  output dpu0_m_axi_data0_rready;
  output [1:0]dpu0_m_axi_data1_awid;
  output [39:0]dpu0_m_axi_data1_awaddr;
  output [7:0]dpu0_m_axi_data1_awlen;
  output [2:0]dpu0_m_axi_data1_awsize;
  output [1:0]dpu0_m_axi_data1_awburst;
  output [0:0]dpu0_m_axi_data1_awlock;
  output [3:0]dpu0_m_axi_data1_awcache;
  output [2:0]dpu0_m_axi_data1_awprot;
  output [3:0]dpu0_m_axi_data1_awqos;
  output [0:0]dpu0_m_axi_data1_awuser;
  output dpu0_m_axi_data1_awvalid;
  input dpu0_m_axi_data1_awready;
  output [5:0]dpu0_m_axi_data1_wid;
  output [127:0]dpu0_m_axi_data1_wdata;
  output [15:0]dpu0_m_axi_data1_wstrb;
  output dpu0_m_axi_data1_wlast;
  output dpu0_m_axi_data1_wvalid;
  input dpu0_m_axi_data1_wready;
  input [5:0]dpu0_m_axi_data1_bid;
  input [1:0]dpu0_m_axi_data1_bresp;
  input dpu0_m_axi_data1_bvalid;
  output dpu0_m_axi_data1_bready;
  output [1:0]dpu0_m_axi_data1_arid;
  output [39:0]dpu0_m_axi_data1_araddr;
  output [7:0]dpu0_m_axi_data1_arlen;
  output [2:0]dpu0_m_axi_data1_arsize;
  output [1:0]dpu0_m_axi_data1_arburst;
  output [0:0]dpu0_m_axi_data1_arlock;
  output [3:0]dpu0_m_axi_data1_arcache;
  output [2:0]dpu0_m_axi_data1_arprot;
  output [3:0]dpu0_m_axi_data1_arqos;
  output [0:0]dpu0_m_axi_data1_aruser;
  output dpu0_m_axi_data1_arvalid;
  input dpu0_m_axi_data1_arready;
  input [5:0]dpu0_m_axi_data1_rid;
  input [127:0]dpu0_m_axi_data1_rdata;
  input [1:0]dpu0_m_axi_data1_rresp;
  input dpu0_m_axi_data1_rlast;
  input dpu0_m_axi_data1_rvalid;
  output dpu0_m_axi_data1_rready;
endmodule
