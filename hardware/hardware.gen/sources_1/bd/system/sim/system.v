//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
//Date        : Tue Feb  1 08:38:55 2022
//Host        : PC running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_1FFJOHT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_6FTVM8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [39:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_HH6ILE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [39:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_1447R5F
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [39:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_13MN6MO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [15:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [39:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [15:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [15:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [15:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_1IVSNKI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [15:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [15:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [15:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [15:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [15:0]s00_couplers_to_s00_couplers_ARID;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire s00_couplers_to_s00_couplers_ARLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [3:0]s00_couplers_to_s00_couplers_ARQOS;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [39:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [15:0]s00_couplers_to_s00_couplers_AWID;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire s00_couplers_to_s00_couplers_AWLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [3:0]s00_couplers_to_s00_couplers_AWQOS;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire [15:0]s00_couplers_to_s00_couplers_BID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [15:0]s00_couplers_to_s00_couplers_RID;
  wire s00_couplers_to_s00_couplers_RLAST;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WLAST;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[15:0] = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[15:0] = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_s00_couplers_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_s00_couplers_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BID = M_AXI_bid[15:0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RID = M_AXI_rid[15:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=27,numReposBlks=19,numNonXlnxBlks=0,numHierBlks=8,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,da_sys_mgmt_wiz_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (I2C_scl_i,
    I2C_scl_o,
    I2C_scl_t,
    I2C_sda_i,
    I2C_sda_o,
    I2C_sda_t,
    dir,
    ena,
    fan,
    step,
    stop1,
    stop2);
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C SCL_I" *) input I2C_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C SCL_O" *) output I2C_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C SCL_T" *) output I2C_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C SDA_I" *) input I2C_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C SDA_O" *) output I2C_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C SDA_T" *) output I2C_sda_t;
  output dir;
  output ena;
  output fan;
  output step;
  input stop1;
  input stop2;

  wire axi_iic_0_IIC_SCL_I;
  wire axi_iic_0_IIC_SCL_O;
  wire axi_iic_0_IIC_SCL_T;
  wire axi_iic_0_IIC_SDA_I;
  wire axi_iic_0_IIC_SDA_O;
  wire axi_iic_0_IIC_SDA_T;
  wire axi_intc_irq;
  wire [39:0]axi_inter1_M00_AXI_ARADDR;
  wire axi_inter1_M00_AXI_ARREADY;
  wire [0:0]axi_inter1_M00_AXI_ARVALID;
  wire [39:0]axi_inter1_M00_AXI_AWADDR;
  wire axi_inter1_M00_AXI_AWREADY;
  wire [0:0]axi_inter1_M00_AXI_AWVALID;
  wire [0:0]axi_inter1_M00_AXI_BREADY;
  wire [1:0]axi_inter1_M00_AXI_BRESP;
  wire axi_inter1_M00_AXI_BVALID;
  wire [31:0]axi_inter1_M00_AXI_RDATA;
  wire [0:0]axi_inter1_M00_AXI_RREADY;
  wire [1:0]axi_inter1_M00_AXI_RRESP;
  wire axi_inter1_M00_AXI_RVALID;
  wire [31:0]axi_inter1_M00_AXI_WDATA;
  wire axi_inter1_M00_AXI_WREADY;
  wire [3:0]axi_inter1_M00_AXI_WSTRB;
  wire [0:0]axi_inter1_M00_AXI_WVALID;
  wire [39:0]axi_inter1_M01_AXI_ARADDR;
  wire axi_inter1_M01_AXI_ARREADY;
  wire [0:0]axi_inter1_M01_AXI_ARVALID;
  wire [39:0]axi_inter1_M01_AXI_AWADDR;
  wire axi_inter1_M01_AXI_AWREADY;
  wire [0:0]axi_inter1_M01_AXI_AWVALID;
  wire [0:0]axi_inter1_M01_AXI_BREADY;
  wire [1:0]axi_inter1_M01_AXI_BRESP;
  wire axi_inter1_M01_AXI_BVALID;
  wire [31:0]axi_inter1_M01_AXI_RDATA;
  wire [0:0]axi_inter1_M01_AXI_RREADY;
  wire [1:0]axi_inter1_M01_AXI_RRESP;
  wire axi_inter1_M01_AXI_RVALID;
  wire [31:0]axi_inter1_M01_AXI_WDATA;
  wire axi_inter1_M01_AXI_WREADY;
  wire [3:0]axi_inter1_M01_AXI_WSTRB;
  wire [0:0]axi_inter1_M01_AXI_WVALID;
  wire [39:0]axi_inter1_M02_AXI_ARADDR;
  wire axi_inter1_M02_AXI_ARREADY;
  wire axi_inter1_M02_AXI_ARVALID;
  wire [39:0]axi_inter1_M02_AXI_AWADDR;
  wire axi_inter1_M02_AXI_AWREADY;
  wire axi_inter1_M02_AXI_AWVALID;
  wire axi_inter1_M02_AXI_BREADY;
  wire [1:0]axi_inter1_M02_AXI_BRESP;
  wire axi_inter1_M02_AXI_BVALID;
  wire [31:0]axi_inter1_M02_AXI_RDATA;
  wire axi_inter1_M02_AXI_RREADY;
  wire [1:0]axi_inter1_M02_AXI_RRESP;
  wire axi_inter1_M02_AXI_RVALID;
  wire [31:0]axi_inter1_M02_AXI_WDATA;
  wire axi_inter1_M02_AXI_WREADY;
  wire [3:0]axi_inter1_M02_AXI_WSTRB;
  wire axi_inter1_M02_AXI_WVALID;
  wire [39:0]axi_inter1_M03_AXI_ARADDR;
  wire axi_inter1_M03_AXI_ARREADY;
  wire axi_inter1_M03_AXI_ARVALID;
  wire [39:0]axi_inter1_M03_AXI_AWADDR;
  wire axi_inter1_M03_AXI_AWREADY;
  wire axi_inter1_M03_AXI_AWVALID;
  wire axi_inter1_M03_AXI_BREADY;
  wire [1:0]axi_inter1_M03_AXI_BRESP;
  wire axi_inter1_M03_AXI_BVALID;
  wire [31:0]axi_inter1_M03_AXI_RDATA;
  wire axi_inter1_M03_AXI_RREADY;
  wire [1:0]axi_inter1_M03_AXI_RRESP;
  wire axi_inter1_M03_AXI_RVALID;
  wire [31:0]axi_inter1_M03_AXI_WDATA;
  wire axi_inter1_M03_AXI_WREADY;
  wire [3:0]axi_inter1_M03_AXI_WSTRB;
  wire axi_inter1_M03_AXI_WVALID;
  wire [39:0]axi_inter_M00_AXI_ARADDR;
  wire [1:0]axi_inter_M00_AXI_ARBURST;
  wire [3:0]axi_inter_M00_AXI_ARCACHE;
  wire [15:0]axi_inter_M00_AXI_ARID;
  wire [7:0]axi_inter_M00_AXI_ARLEN;
  wire axi_inter_M00_AXI_ARLOCK;
  wire [2:0]axi_inter_M00_AXI_ARPROT;
  wire [3:0]axi_inter_M00_AXI_ARQOS;
  wire axi_inter_M00_AXI_ARREADY;
  wire [2:0]axi_inter_M00_AXI_ARSIZE;
  wire axi_inter_M00_AXI_ARVALID;
  wire [39:0]axi_inter_M00_AXI_AWADDR;
  wire [1:0]axi_inter_M00_AXI_AWBURST;
  wire [3:0]axi_inter_M00_AXI_AWCACHE;
  wire [15:0]axi_inter_M00_AXI_AWID;
  wire [7:0]axi_inter_M00_AXI_AWLEN;
  wire axi_inter_M00_AXI_AWLOCK;
  wire [2:0]axi_inter_M00_AXI_AWPROT;
  wire [3:0]axi_inter_M00_AXI_AWQOS;
  wire axi_inter_M00_AXI_AWREADY;
  wire [2:0]axi_inter_M00_AXI_AWSIZE;
  wire axi_inter_M00_AXI_AWVALID;
  wire [15:0]axi_inter_M00_AXI_BID;
  wire axi_inter_M00_AXI_BREADY;
  wire [1:0]axi_inter_M00_AXI_BRESP;
  wire axi_inter_M00_AXI_BVALID;
  wire [31:0]axi_inter_M00_AXI_RDATA;
  wire [15:0]axi_inter_M00_AXI_RID;
  wire axi_inter_M00_AXI_RLAST;
  wire axi_inter_M00_AXI_RREADY;
  wire [1:0]axi_inter_M00_AXI_RRESP;
  wire axi_inter_M00_AXI_RVALID;
  wire [31:0]axi_inter_M00_AXI_WDATA;
  wire axi_inter_M00_AXI_WLAST;
  wire axi_inter_M00_AXI_WREADY;
  wire [3:0]axi_inter_M00_AXI_WSTRB;
  wire axi_inter_M00_AXI_WVALID;
  wire [12:0]axi_io_gpio_io_o;
  wire clk_wiz_clk_out1;
  wire clk_wiz_locked;
  wire [10:0]cmd_bit_Dout;
  wire divider_0_clk_out;
  wire [0:0]fce_ena_bit_Dout;
  wire [0:0]latch_bit_Dout;
  wire pwm_0_state;
  wire stepper_busy;
  wire stepper_dir;
  wire stepper_div1_clk_out;
  wire stepper_div_clk_out;
  wire stepper_ena;
  wire [2:0]stepper_state_dout;
  wire stepper_step;
  wire stop1_1;
  wire stop2_1;
  wire [0:0]sys_ret_peripheral_aresetn;
  wire system_management_wiz_0_eos_out;
  wire [9:0]system_management_wiz_0_temp_out;
  wire [7:0]temp2pwm_0_pwm;
  wire [39:0]zynq_ps_M_AXI_con_ARADDR;
  wire [1:0]zynq_ps_M_AXI_con_ARBURST;
  wire [3:0]zynq_ps_M_AXI_con_ARCACHE;
  wire [15:0]zynq_ps_M_AXI_con_ARID;
  wire [7:0]zynq_ps_M_AXI_con_ARLEN;
  wire zynq_ps_M_AXI_con_ARLOCK;
  wire [2:0]zynq_ps_M_AXI_con_ARPROT;
  wire [3:0]zynq_ps_M_AXI_con_ARQOS;
  wire zynq_ps_M_AXI_con_ARREADY;
  wire [2:0]zynq_ps_M_AXI_con_ARSIZE;
  wire zynq_ps_M_AXI_con_ARVALID;
  wire [39:0]zynq_ps_M_AXI_con_AWADDR;
  wire [1:0]zynq_ps_M_AXI_con_AWBURST;
  wire [3:0]zynq_ps_M_AXI_con_AWCACHE;
  wire [15:0]zynq_ps_M_AXI_con_AWID;
  wire [7:0]zynq_ps_M_AXI_con_AWLEN;
  wire zynq_ps_M_AXI_con_AWLOCK;
  wire [2:0]zynq_ps_M_AXI_con_AWPROT;
  wire [3:0]zynq_ps_M_AXI_con_AWQOS;
  wire zynq_ps_M_AXI_con_AWREADY;
  wire [2:0]zynq_ps_M_AXI_con_AWSIZE;
  wire zynq_ps_M_AXI_con_AWVALID;
  wire [15:0]zynq_ps_M_AXI_con_BID;
  wire zynq_ps_M_AXI_con_BREADY;
  wire [1:0]zynq_ps_M_AXI_con_BRESP;
  wire zynq_ps_M_AXI_con_BVALID;
  wire [31:0]zynq_ps_M_AXI_con_RDATA;
  wire [15:0]zynq_ps_M_AXI_con_RID;
  wire zynq_ps_M_AXI_con_RLAST;
  wire zynq_ps_M_AXI_con_RREADY;
  wire [1:0]zynq_ps_M_AXI_con_RRESP;
  wire zynq_ps_M_AXI_con_RVALID;
  wire [31:0]zynq_ps_M_AXI_con_WDATA;
  wire zynq_ps_M_AXI_con_WLAST;
  wire zynq_ps_M_AXI_con_WREADY;
  wire [3:0]zynq_ps_M_AXI_con_WSTRB;
  wire zynq_ps_M_AXI_con_WVALID;
  wire zynq_ps_pl_clk0;
  wire zynq_ps_pl_resetn0;

  assign I2C_scl_o = axi_iic_0_IIC_SCL_O;
  assign I2C_scl_t = axi_iic_0_IIC_SCL_T;
  assign I2C_sda_o = axi_iic_0_IIC_SDA_O;
  assign I2C_sda_t = axi_iic_0_IIC_SDA_T;
  assign axi_iic_0_IIC_SCL_I = I2C_scl_i;
  assign axi_iic_0_IIC_SDA_I = I2C_sda_i;
  assign dir = stepper_dir;
  assign ena = stepper_ena;
  assign fan = pwm_0_state;
  assign step = stepper_step;
  assign stop1_1 = stop1;
  assign stop2_1 = stop2;
  system_axi_iic_0_0 axi_iic_0
       (.s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(axi_inter1_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(sys_ret_peripheral_aresetn),
        .s_axi_arready(axi_inter1_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_inter1_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_inter1_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_inter1_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_inter1_M01_AXI_AWVALID),
        .s_axi_bready(axi_inter1_M01_AXI_BREADY),
        .s_axi_bresp(axi_inter1_M01_AXI_BRESP),
        .s_axi_bvalid(axi_inter1_M01_AXI_BVALID),
        .s_axi_rdata(axi_inter1_M01_AXI_RDATA),
        .s_axi_rready(axi_inter1_M01_AXI_RREADY),
        .s_axi_rresp(axi_inter1_M01_AXI_RRESP),
        .s_axi_rvalid(axi_inter1_M01_AXI_RVALID),
        .s_axi_wdata(axi_inter1_M01_AXI_WDATA),
        .s_axi_wready(axi_inter1_M01_AXI_WREADY),
        .s_axi_wstrb(axi_inter1_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_inter1_M01_AXI_WVALID),
        .scl_i(axi_iic_0_IIC_SCL_I),
        .scl_o(axi_iic_0_IIC_SCL_O),
        .scl_t(axi_iic_0_IIC_SCL_T),
        .sda_i(axi_iic_0_IIC_SDA_I),
        .sda_o(axi_iic_0_IIC_SDA_O),
        .sda_t(axi_iic_0_IIC_SDA_T));
  system_axi_intc_0 axi_intc
       (.intr(1'b0),
        .irq(axi_intc_irq),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(axi_inter1_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(sys_ret_peripheral_aresetn),
        .s_axi_arready(axi_inter1_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_inter1_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_inter1_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_inter1_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_inter1_M00_AXI_AWVALID),
        .s_axi_bready(axi_inter1_M00_AXI_BREADY),
        .s_axi_bresp(axi_inter1_M00_AXI_BRESP),
        .s_axi_bvalid(axi_inter1_M00_AXI_BVALID),
        .s_axi_rdata(axi_inter1_M00_AXI_RDATA),
        .s_axi_rready(axi_inter1_M00_AXI_RREADY),
        .s_axi_rresp(axi_inter1_M00_AXI_RRESP),
        .s_axi_rvalid(axi_inter1_M00_AXI_RVALID),
        .s_axi_wdata(axi_inter1_M00_AXI_WDATA),
        .s_axi_wready(axi_inter1_M00_AXI_WREADY),
        .s_axi_wstrb(axi_inter1_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_inter1_M00_AXI_WVALID));
  system_axi_inter_0 axi_inter
       (.ACLK(clk_wiz_clk_out1),
        .ARESETN(sys_ret_peripheral_aresetn),
        .M00_ACLK(clk_wiz_clk_out1),
        .M00_ARESETN(sys_ret_peripheral_aresetn),
        .M00_AXI_araddr(axi_inter_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_inter_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_inter_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_inter_M00_AXI_ARID),
        .M00_AXI_arlen(axi_inter_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_inter_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_inter_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_inter_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_inter_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_inter_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_inter_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_inter_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_inter_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_inter_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_inter_M00_AXI_AWID),
        .M00_AXI_awlen(axi_inter_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_inter_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_inter_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_inter_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_inter_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_inter_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_inter_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_inter_M00_AXI_BID),
        .M00_AXI_bready(axi_inter_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_inter_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_inter_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_inter_M00_AXI_RDATA),
        .M00_AXI_rid(axi_inter_M00_AXI_RID),
        .M00_AXI_rlast(axi_inter_M00_AXI_RLAST),
        .M00_AXI_rready(axi_inter_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_inter_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_inter_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_inter_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_inter_M00_AXI_WLAST),
        .M00_AXI_wready(axi_inter_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_inter_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_inter_M00_AXI_WVALID),
        .S00_ACLK(clk_wiz_clk_out1),
        .S00_ARESETN(sys_ret_peripheral_aresetn),
        .S00_AXI_araddr(zynq_ps_M_AXI_con_ARADDR),
        .S00_AXI_arburst(zynq_ps_M_AXI_con_ARBURST),
        .S00_AXI_arcache(zynq_ps_M_AXI_con_ARCACHE),
        .S00_AXI_arid(zynq_ps_M_AXI_con_ARID),
        .S00_AXI_arlen(zynq_ps_M_AXI_con_ARLEN),
        .S00_AXI_arlock(zynq_ps_M_AXI_con_ARLOCK),
        .S00_AXI_arprot(zynq_ps_M_AXI_con_ARPROT),
        .S00_AXI_arqos(zynq_ps_M_AXI_con_ARQOS),
        .S00_AXI_arready(zynq_ps_M_AXI_con_ARREADY),
        .S00_AXI_arsize(zynq_ps_M_AXI_con_ARSIZE),
        .S00_AXI_arvalid(zynq_ps_M_AXI_con_ARVALID),
        .S00_AXI_awaddr(zynq_ps_M_AXI_con_AWADDR),
        .S00_AXI_awburst(zynq_ps_M_AXI_con_AWBURST),
        .S00_AXI_awcache(zynq_ps_M_AXI_con_AWCACHE),
        .S00_AXI_awid(zynq_ps_M_AXI_con_AWID),
        .S00_AXI_awlen(zynq_ps_M_AXI_con_AWLEN),
        .S00_AXI_awlock(zynq_ps_M_AXI_con_AWLOCK),
        .S00_AXI_awprot(zynq_ps_M_AXI_con_AWPROT),
        .S00_AXI_awqos(zynq_ps_M_AXI_con_AWQOS),
        .S00_AXI_awready(zynq_ps_M_AXI_con_AWREADY),
        .S00_AXI_awsize(zynq_ps_M_AXI_con_AWSIZE),
        .S00_AXI_awvalid(zynq_ps_M_AXI_con_AWVALID),
        .S00_AXI_bid(zynq_ps_M_AXI_con_BID),
        .S00_AXI_bready(zynq_ps_M_AXI_con_BREADY),
        .S00_AXI_bresp(zynq_ps_M_AXI_con_BRESP),
        .S00_AXI_bvalid(zynq_ps_M_AXI_con_BVALID),
        .S00_AXI_rdata(zynq_ps_M_AXI_con_RDATA),
        .S00_AXI_rid(zynq_ps_M_AXI_con_RID),
        .S00_AXI_rlast(zynq_ps_M_AXI_con_RLAST),
        .S00_AXI_rready(zynq_ps_M_AXI_con_RREADY),
        .S00_AXI_rresp(zynq_ps_M_AXI_con_RRESP),
        .S00_AXI_rvalid(zynq_ps_M_AXI_con_RVALID),
        .S00_AXI_wdata(zynq_ps_M_AXI_con_WDATA),
        .S00_AXI_wlast(zynq_ps_M_AXI_con_WLAST),
        .S00_AXI_wready(zynq_ps_M_AXI_con_WREADY),
        .S00_AXI_wstrb(zynq_ps_M_AXI_con_WSTRB),
        .S00_AXI_wvalid(zynq_ps_M_AXI_con_WVALID));
  system_axi_inter1_0 axi_inter1
       (.ACLK(clk_wiz_clk_out1),
        .ARESETN(sys_ret_peripheral_aresetn),
        .M00_ACLK(clk_wiz_clk_out1),
        .M00_ARESETN(sys_ret_peripheral_aresetn),
        .M00_AXI_araddr(axi_inter1_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_inter1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_inter1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_inter1_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_inter1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_inter1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_inter1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_inter1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_inter1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_inter1_M00_AXI_RDATA),
        .M00_AXI_rready(axi_inter1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_inter1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_inter1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_inter1_M00_AXI_WDATA),
        .M00_AXI_wready(axi_inter1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_inter1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_inter1_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_clk_out1),
        .M01_ARESETN(sys_ret_peripheral_aresetn),
        .M01_AXI_araddr(axi_inter1_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_inter1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_inter1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_inter1_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_inter1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_inter1_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_inter1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_inter1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_inter1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_inter1_M01_AXI_RDATA),
        .M01_AXI_rready(axi_inter1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_inter1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_inter1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_inter1_M01_AXI_WDATA),
        .M01_AXI_wready(axi_inter1_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_inter1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_inter1_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_clk_out1),
        .M02_ARESETN(sys_ret_peripheral_aresetn),
        .M02_AXI_araddr(axi_inter1_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_inter1_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_inter1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_inter1_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_inter1_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_inter1_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_inter1_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_inter1_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_inter1_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_inter1_M02_AXI_RDATA),
        .M02_AXI_rready(axi_inter1_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_inter1_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_inter1_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_inter1_M02_AXI_WDATA),
        .M02_AXI_wready(axi_inter1_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_inter1_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_inter1_M02_AXI_WVALID),
        .M03_ACLK(clk_wiz_clk_out1),
        .M03_ARESETN(sys_ret_peripheral_aresetn),
        .M03_AXI_araddr(axi_inter1_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_inter1_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_inter1_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_inter1_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_inter1_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_inter1_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_inter1_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_inter1_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_inter1_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_inter1_M03_AXI_RDATA),
        .M03_AXI_rready(axi_inter1_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_inter1_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_inter1_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_inter1_M03_AXI_WDATA),
        .M03_AXI_wready(axi_inter1_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_inter1_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_inter1_M03_AXI_WVALID),
        .S00_ACLK(clk_wiz_clk_out1),
        .S00_ARESETN(sys_ret_peripheral_aresetn),
        .S00_AXI_araddr(axi_inter_M00_AXI_ARADDR),
        .S00_AXI_arburst(axi_inter_M00_AXI_ARBURST),
        .S00_AXI_arcache(axi_inter_M00_AXI_ARCACHE),
        .S00_AXI_arid(axi_inter_M00_AXI_ARID),
        .S00_AXI_arlen(axi_inter_M00_AXI_ARLEN),
        .S00_AXI_arlock(axi_inter_M00_AXI_ARLOCK),
        .S00_AXI_arprot(axi_inter_M00_AXI_ARPROT),
        .S00_AXI_arqos(axi_inter_M00_AXI_ARQOS),
        .S00_AXI_arready(axi_inter_M00_AXI_ARREADY),
        .S00_AXI_arsize(axi_inter_M00_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_inter_M00_AXI_ARVALID),
        .S00_AXI_awaddr(axi_inter_M00_AXI_AWADDR),
        .S00_AXI_awburst(axi_inter_M00_AXI_AWBURST),
        .S00_AXI_awcache(axi_inter_M00_AXI_AWCACHE),
        .S00_AXI_awid(axi_inter_M00_AXI_AWID),
        .S00_AXI_awlen(axi_inter_M00_AXI_AWLEN),
        .S00_AXI_awlock(axi_inter_M00_AXI_AWLOCK),
        .S00_AXI_awprot(axi_inter_M00_AXI_AWPROT),
        .S00_AXI_awqos(axi_inter_M00_AXI_AWQOS),
        .S00_AXI_awready(axi_inter_M00_AXI_AWREADY),
        .S00_AXI_awsize(axi_inter_M00_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_inter_M00_AXI_AWVALID),
        .S00_AXI_bid(axi_inter_M00_AXI_BID),
        .S00_AXI_bready(axi_inter_M00_AXI_BREADY),
        .S00_AXI_bresp(axi_inter_M00_AXI_BRESP),
        .S00_AXI_bvalid(axi_inter_M00_AXI_BVALID),
        .S00_AXI_rdata(axi_inter_M00_AXI_RDATA),
        .S00_AXI_rid(axi_inter_M00_AXI_RID),
        .S00_AXI_rlast(axi_inter_M00_AXI_RLAST),
        .S00_AXI_rready(axi_inter_M00_AXI_RREADY),
        .S00_AXI_rresp(axi_inter_M00_AXI_RRESP),
        .S00_AXI_rvalid(axi_inter_M00_AXI_RVALID),
        .S00_AXI_wdata(axi_inter_M00_AXI_WDATA),
        .S00_AXI_wlast(axi_inter_M00_AXI_WLAST),
        .S00_AXI_wready(axi_inter_M00_AXI_WREADY),
        .S00_AXI_wstrb(axi_inter_M00_AXI_WSTRB),
        .S00_AXI_wvalid(axi_inter_M00_AXI_WVALID));
  system_axi_io_0 axi_io
       (.gpio2_io_i(stepper_state_dout),
        .gpio_io_o(axi_io_gpio_io_o),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(axi_inter1_M02_AXI_ARADDR[8:0]),
        .s_axi_aresetn(sys_ret_peripheral_aresetn),
        .s_axi_arready(axi_inter1_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_inter1_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_inter1_M02_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_inter1_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_inter1_M02_AXI_AWVALID),
        .s_axi_bready(axi_inter1_M02_AXI_BREADY),
        .s_axi_bresp(axi_inter1_M02_AXI_BRESP),
        .s_axi_bvalid(axi_inter1_M02_AXI_BVALID),
        .s_axi_rdata(axi_inter1_M02_AXI_RDATA),
        .s_axi_rready(axi_inter1_M02_AXI_RREADY),
        .s_axi_rresp(axi_inter1_M02_AXI_RRESP),
        .s_axi_rvalid(axi_inter1_M02_AXI_RVALID),
        .s_axi_wdata(axi_inter1_M02_AXI_WDATA),
        .s_axi_wready(axi_inter1_M02_AXI_WREADY),
        .s_axi_wstrb(axi_inter1_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_inter1_M02_AXI_WVALID));
  system_clk_wiz_0 clk_wiz
       (.clk_in1(zynq_ps_pl_clk0),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .resetn(zynq_ps_pl_resetn0));
  system_cmd_bit_0 cmd_bit
       (.Din(axi_io_gpio_io_o),
        .Dout(cmd_bit_Dout));
  system_fce_ena_bit_0 fce_ena_bit
       (.Din(axi_io_gpio_io_o),
        .Dout(fce_ena_bit_Dout));
  system_latch_bit_0 latch_bit
       (.Din(axi_io_gpio_io_o),
        .Dout(latch_bit_Dout));
  system_pwm_0_0 pwm
       (.clk(divider_0_clk_out),
        .fill(temp2pwm_0_pwm),
        .rst(sys_ret_peripheral_aresetn),
        .state(pwm_0_state));
  system_divider_0_0 pwm_div
       (.clk_in(clk_wiz_clk_out1),
        .clk_out(divider_0_clk_out),
        .rst(sys_ret_peripheral_aresetn));
  system_stepper_0 stepper
       (.busy(stepper_busy),
        .clk(stepper_div1_clk_out),
        .cmd(cmd_bit_Dout),
        .dir(stepper_dir),
        .ena(stepper_ena),
        .force_ena(fce_ena_bit_Dout),
        .latch(latch_bit_Dout),
        .step(stepper_step),
        .stop1(stop1_1),
        .stop2(stop2_1));
  system_stepper_div_0 stepper_div
       (.clk_in(clk_wiz_clk_out1),
        .clk_out(stepper_div_clk_out),
        .rst(sys_ret_peripheral_aresetn));
  system_stepper_div_1 stepper_div1
       (.clk_in(stepper_div_clk_out),
        .clk_out(stepper_div1_clk_out),
        .rst(sys_ret_peripheral_aresetn));
  system_stepper_state_0 stepper_state
       (.In0(stepper_busy),
        .In1(stop1_1),
        .In2(stop2_1),
        .dout(stepper_state_dout));
  system_sys_ret200_0 sys_ret200
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(zynq_ps_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(sys_ret_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_out1));
  system_system_management_wiz_0_0 system_management_wiz_0
       (.eos_out(system_management_wiz_0_eos_out),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(axi_inter1_M03_AXI_ARADDR[12:0]),
        .s_axi_aresetn(sys_ret_peripheral_aresetn),
        .s_axi_arready(axi_inter1_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_inter1_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_inter1_M03_AXI_AWADDR[12:0]),
        .s_axi_awready(axi_inter1_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_inter1_M03_AXI_AWVALID),
        .s_axi_bready(axi_inter1_M03_AXI_BREADY),
        .s_axi_bresp(axi_inter1_M03_AXI_BRESP),
        .s_axi_bvalid(axi_inter1_M03_AXI_BVALID),
        .s_axi_rdata(axi_inter1_M03_AXI_RDATA),
        .s_axi_rready(axi_inter1_M03_AXI_RREADY),
        .s_axi_rresp(axi_inter1_M03_AXI_RRESP),
        .s_axi_rvalid(axi_inter1_M03_AXI_RVALID),
        .s_axi_wdata(axi_inter1_M03_AXI_WDATA),
        .s_axi_wready(axi_inter1_M03_AXI_WREADY),
        .s_axi_wstrb(axi_inter1_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_inter1_M03_AXI_WVALID),
        .temp_out(system_management_wiz_0_temp_out));
  system_temp2pwm_0_0 temp2pwm
       (.pwm(temp2pwm_0_pwm),
        .rdy(system_management_wiz_0_eos_out),
        .temp(system_management_wiz_0_temp_out));
  system_zynq_ps_0 zynq_ps
       (.maxigp2_araddr(zynq_ps_M_AXI_con_ARADDR),
        .maxigp2_arburst(zynq_ps_M_AXI_con_ARBURST),
        .maxigp2_arcache(zynq_ps_M_AXI_con_ARCACHE),
        .maxigp2_arid(zynq_ps_M_AXI_con_ARID),
        .maxigp2_arlen(zynq_ps_M_AXI_con_ARLEN),
        .maxigp2_arlock(zynq_ps_M_AXI_con_ARLOCK),
        .maxigp2_arprot(zynq_ps_M_AXI_con_ARPROT),
        .maxigp2_arqos(zynq_ps_M_AXI_con_ARQOS),
        .maxigp2_arready(zynq_ps_M_AXI_con_ARREADY),
        .maxigp2_arsize(zynq_ps_M_AXI_con_ARSIZE),
        .maxigp2_arvalid(zynq_ps_M_AXI_con_ARVALID),
        .maxigp2_awaddr(zynq_ps_M_AXI_con_AWADDR),
        .maxigp2_awburst(zynq_ps_M_AXI_con_AWBURST),
        .maxigp2_awcache(zynq_ps_M_AXI_con_AWCACHE),
        .maxigp2_awid(zynq_ps_M_AXI_con_AWID),
        .maxigp2_awlen(zynq_ps_M_AXI_con_AWLEN),
        .maxigp2_awlock(zynq_ps_M_AXI_con_AWLOCK),
        .maxigp2_awprot(zynq_ps_M_AXI_con_AWPROT),
        .maxigp2_awqos(zynq_ps_M_AXI_con_AWQOS),
        .maxigp2_awready(zynq_ps_M_AXI_con_AWREADY),
        .maxigp2_awsize(zynq_ps_M_AXI_con_AWSIZE),
        .maxigp2_awvalid(zynq_ps_M_AXI_con_AWVALID),
        .maxigp2_bid(zynq_ps_M_AXI_con_BID),
        .maxigp2_bready(zynq_ps_M_AXI_con_BREADY),
        .maxigp2_bresp(zynq_ps_M_AXI_con_BRESP),
        .maxigp2_bvalid(zynq_ps_M_AXI_con_BVALID),
        .maxigp2_rdata(zynq_ps_M_AXI_con_RDATA),
        .maxigp2_rid(zynq_ps_M_AXI_con_RID),
        .maxigp2_rlast(zynq_ps_M_AXI_con_RLAST),
        .maxigp2_rready(zynq_ps_M_AXI_con_RREADY),
        .maxigp2_rresp(zynq_ps_M_AXI_con_RRESP),
        .maxigp2_rvalid(zynq_ps_M_AXI_con_RVALID),
        .maxigp2_wdata(zynq_ps_M_AXI_con_WDATA),
        .maxigp2_wlast(zynq_ps_M_AXI_con_WLAST),
        .maxigp2_wready(zynq_ps_M_AXI_con_WREADY),
        .maxigp2_wstrb(zynq_ps_M_AXI_con_WSTRB),
        .maxigp2_wvalid(zynq_ps_M_AXI_con_WVALID),
        .maxihpm0_lpd_aclk(clk_wiz_clk_out1),
        .pl_clk0(zynq_ps_pl_clk0),
        .pl_ps_irq0(axi_intc_irq),
        .pl_resetn0(zynq_ps_pl_resetn0));
endmodule

module system_axi_inter1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [39:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [39:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [39:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [39:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [39:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [39:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_inter1_ACLK_net;
  wire axi_inter1_ARESETN_net;
  wire [39:0]axi_inter1_to_s00_couplers_ARADDR;
  wire [1:0]axi_inter1_to_s00_couplers_ARBURST;
  wire [3:0]axi_inter1_to_s00_couplers_ARCACHE;
  wire [15:0]axi_inter1_to_s00_couplers_ARID;
  wire [7:0]axi_inter1_to_s00_couplers_ARLEN;
  wire axi_inter1_to_s00_couplers_ARLOCK;
  wire [2:0]axi_inter1_to_s00_couplers_ARPROT;
  wire [3:0]axi_inter1_to_s00_couplers_ARQOS;
  wire axi_inter1_to_s00_couplers_ARREADY;
  wire [2:0]axi_inter1_to_s00_couplers_ARSIZE;
  wire axi_inter1_to_s00_couplers_ARVALID;
  wire [39:0]axi_inter1_to_s00_couplers_AWADDR;
  wire [1:0]axi_inter1_to_s00_couplers_AWBURST;
  wire [3:0]axi_inter1_to_s00_couplers_AWCACHE;
  wire [15:0]axi_inter1_to_s00_couplers_AWID;
  wire [7:0]axi_inter1_to_s00_couplers_AWLEN;
  wire axi_inter1_to_s00_couplers_AWLOCK;
  wire [2:0]axi_inter1_to_s00_couplers_AWPROT;
  wire [3:0]axi_inter1_to_s00_couplers_AWQOS;
  wire axi_inter1_to_s00_couplers_AWREADY;
  wire [2:0]axi_inter1_to_s00_couplers_AWSIZE;
  wire axi_inter1_to_s00_couplers_AWVALID;
  wire [15:0]axi_inter1_to_s00_couplers_BID;
  wire axi_inter1_to_s00_couplers_BREADY;
  wire [1:0]axi_inter1_to_s00_couplers_BRESP;
  wire axi_inter1_to_s00_couplers_BVALID;
  wire [31:0]axi_inter1_to_s00_couplers_RDATA;
  wire [15:0]axi_inter1_to_s00_couplers_RID;
  wire axi_inter1_to_s00_couplers_RLAST;
  wire axi_inter1_to_s00_couplers_RREADY;
  wire [1:0]axi_inter1_to_s00_couplers_RRESP;
  wire axi_inter1_to_s00_couplers_RVALID;
  wire [31:0]axi_inter1_to_s00_couplers_WDATA;
  wire axi_inter1_to_s00_couplers_WLAST;
  wire axi_inter1_to_s00_couplers_WREADY;
  wire [3:0]axi_inter1_to_s00_couplers_WSTRB;
  wire axi_inter1_to_s00_couplers_WVALID;
  wire [39:0]m00_couplers_to_axi_inter1_ARADDR;
  wire [0:0]m00_couplers_to_axi_inter1_ARREADY;
  wire [0:0]m00_couplers_to_axi_inter1_ARVALID;
  wire [39:0]m00_couplers_to_axi_inter1_AWADDR;
  wire [0:0]m00_couplers_to_axi_inter1_AWREADY;
  wire [0:0]m00_couplers_to_axi_inter1_AWVALID;
  wire [0:0]m00_couplers_to_axi_inter1_BREADY;
  wire [1:0]m00_couplers_to_axi_inter1_BRESP;
  wire [0:0]m00_couplers_to_axi_inter1_BVALID;
  wire [31:0]m00_couplers_to_axi_inter1_RDATA;
  wire [0:0]m00_couplers_to_axi_inter1_RREADY;
  wire [1:0]m00_couplers_to_axi_inter1_RRESP;
  wire [0:0]m00_couplers_to_axi_inter1_RVALID;
  wire [31:0]m00_couplers_to_axi_inter1_WDATA;
  wire [0:0]m00_couplers_to_axi_inter1_WREADY;
  wire [3:0]m00_couplers_to_axi_inter1_WSTRB;
  wire [0:0]m00_couplers_to_axi_inter1_WVALID;
  wire [39:0]m01_couplers_to_axi_inter1_ARADDR;
  wire [0:0]m01_couplers_to_axi_inter1_ARREADY;
  wire [0:0]m01_couplers_to_axi_inter1_ARVALID;
  wire [39:0]m01_couplers_to_axi_inter1_AWADDR;
  wire [0:0]m01_couplers_to_axi_inter1_AWREADY;
  wire [0:0]m01_couplers_to_axi_inter1_AWVALID;
  wire [0:0]m01_couplers_to_axi_inter1_BREADY;
  wire [1:0]m01_couplers_to_axi_inter1_BRESP;
  wire [0:0]m01_couplers_to_axi_inter1_BVALID;
  wire [31:0]m01_couplers_to_axi_inter1_RDATA;
  wire [0:0]m01_couplers_to_axi_inter1_RREADY;
  wire [1:0]m01_couplers_to_axi_inter1_RRESP;
  wire [0:0]m01_couplers_to_axi_inter1_RVALID;
  wire [31:0]m01_couplers_to_axi_inter1_WDATA;
  wire [0:0]m01_couplers_to_axi_inter1_WREADY;
  wire [3:0]m01_couplers_to_axi_inter1_WSTRB;
  wire [0:0]m01_couplers_to_axi_inter1_WVALID;
  wire [39:0]m02_couplers_to_axi_inter1_ARADDR;
  wire m02_couplers_to_axi_inter1_ARREADY;
  wire m02_couplers_to_axi_inter1_ARVALID;
  wire [39:0]m02_couplers_to_axi_inter1_AWADDR;
  wire m02_couplers_to_axi_inter1_AWREADY;
  wire m02_couplers_to_axi_inter1_AWVALID;
  wire m02_couplers_to_axi_inter1_BREADY;
  wire [1:0]m02_couplers_to_axi_inter1_BRESP;
  wire m02_couplers_to_axi_inter1_BVALID;
  wire [31:0]m02_couplers_to_axi_inter1_RDATA;
  wire m02_couplers_to_axi_inter1_RREADY;
  wire [1:0]m02_couplers_to_axi_inter1_RRESP;
  wire m02_couplers_to_axi_inter1_RVALID;
  wire [31:0]m02_couplers_to_axi_inter1_WDATA;
  wire m02_couplers_to_axi_inter1_WREADY;
  wire [3:0]m02_couplers_to_axi_inter1_WSTRB;
  wire m02_couplers_to_axi_inter1_WVALID;
  wire [39:0]m03_couplers_to_axi_inter1_ARADDR;
  wire m03_couplers_to_axi_inter1_ARREADY;
  wire m03_couplers_to_axi_inter1_ARVALID;
  wire [39:0]m03_couplers_to_axi_inter1_AWADDR;
  wire m03_couplers_to_axi_inter1_AWREADY;
  wire m03_couplers_to_axi_inter1_AWVALID;
  wire m03_couplers_to_axi_inter1_BREADY;
  wire [1:0]m03_couplers_to_axi_inter1_BRESP;
  wire m03_couplers_to_axi_inter1_BVALID;
  wire [31:0]m03_couplers_to_axi_inter1_RDATA;
  wire m03_couplers_to_axi_inter1_RREADY;
  wire [1:0]m03_couplers_to_axi_inter1_RRESP;
  wire m03_couplers_to_axi_inter1_RVALID;
  wire [31:0]m03_couplers_to_axi_inter1_WDATA;
  wire m03_couplers_to_axi_inter1_WREADY;
  wire [3:0]m03_couplers_to_axi_inter1_WSTRB;
  wire m03_couplers_to_axi_inter1_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [159:120]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [159:120]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;

  assign M00_AXI_araddr[39:0] = m00_couplers_to_axi_inter1_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_inter1_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_axi_inter1_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_inter1_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_inter1_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_inter1_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_inter1_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_inter1_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_inter1_WVALID;
  assign M01_AXI_araddr[39:0] = m01_couplers_to_axi_inter1_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_inter1_ARVALID;
  assign M01_AXI_awaddr[39:0] = m01_couplers_to_axi_inter1_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_inter1_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_inter1_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_inter1_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_inter1_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_inter1_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_inter1_WVALID;
  assign M02_AXI_araddr[39:0] = m02_couplers_to_axi_inter1_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_inter1_ARVALID;
  assign M02_AXI_awaddr[39:0] = m02_couplers_to_axi_inter1_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_inter1_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_inter1_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_inter1_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_inter1_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_inter1_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_inter1_WVALID;
  assign M03_AXI_araddr[39:0] = m03_couplers_to_axi_inter1_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_axi_inter1_ARVALID;
  assign M03_AXI_awaddr[39:0] = m03_couplers_to_axi_inter1_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_axi_inter1_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_inter1_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_inter1_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_inter1_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_inter1_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_inter1_WVALID;
  assign S00_AXI_arready = axi_inter1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_inter1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = axi_inter1_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_inter1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_inter1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_inter1_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = axi_inter1_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_inter1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_inter1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_inter1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_inter1_to_s00_couplers_WREADY;
  assign axi_inter1_ACLK_net = ACLK;
  assign axi_inter1_ARESETN_net = ARESETN;
  assign axi_inter1_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign axi_inter1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_inter1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_inter1_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign axi_inter1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_inter1_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_inter1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_inter1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_inter1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_inter1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_inter1_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign axi_inter1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_inter1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_inter1_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign axi_inter1_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_inter1_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_inter1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_inter1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_inter1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_inter1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_inter1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_inter1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_inter1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_inter1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_inter1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_inter1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_inter1_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_inter1_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_inter1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_inter1_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_inter1_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_inter1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_inter1_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_inter1_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_inter1_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_inter1_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_inter1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_inter1_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_inter1_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_inter1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_inter1_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_inter1_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_axi_inter1_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_inter1_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_inter1_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_inter1_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_inter1_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_inter1_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_inter1_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_inter1_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_inter1_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_inter1_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_inter1_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_inter1_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_inter1_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_inter1_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_inter1_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_inter1_WREADY = M03_AXI_wready;
  m00_couplers_imp_1FFJOHT m00_couplers
       (.M_ACLK(axi_inter1_ACLK_net),
        .M_ARESETN(axi_inter1_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_inter1_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_inter1_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_inter1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_inter1_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_inter1_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_inter1_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_inter1_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_inter1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_inter1_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_inter1_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_inter1_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_inter1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_inter1_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_inter1_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_inter1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_inter1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_inter1_WVALID),
        .S_ACLK(axi_inter1_ACLK_net),
        .S_ARESETN(axi_inter1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_6FTVM8 m01_couplers
       (.M_ACLK(axi_inter1_ACLK_net),
        .M_ARESETN(axi_inter1_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_inter1_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_inter1_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_inter1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_inter1_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_inter1_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_inter1_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_inter1_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_inter1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_inter1_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_inter1_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_inter1_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_inter1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_inter1_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_inter1_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_inter1_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_inter1_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_inter1_WVALID),
        .S_ACLK(axi_inter1_ACLK_net),
        .S_ARESETN(axi_inter1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_HH6ILE m02_couplers
       (.M_ACLK(axi_inter1_ACLK_net),
        .M_ARESETN(axi_inter1_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_inter1_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_inter1_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_inter1_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_inter1_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_inter1_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_inter1_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_inter1_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_inter1_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_inter1_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_inter1_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_inter1_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_inter1_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_inter1_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_inter1_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_inter1_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_inter1_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_inter1_WVALID),
        .S_ACLK(axi_inter1_ACLK_net),
        .S_ARESETN(axi_inter1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1447R5F m03_couplers
       (.M_ACLK(axi_inter1_ACLK_net),
        .M_ARESETN(axi_inter1_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_inter1_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_inter1_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_inter1_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_inter1_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_inter1_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_inter1_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_inter1_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_inter1_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_inter1_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_inter1_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_inter1_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_inter1_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_inter1_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_inter1_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_inter1_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_inter1_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_inter1_WVALID),
        .S_ACLK(axi_inter1_ACLK_net),
        .S_ARESETN(axi_inter1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_13MN6MO s00_couplers
       (.M_ACLK(axi_inter1_ACLK_net),
        .M_ARESETN(axi_inter1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_inter1_ACLK_net),
        .S_ARESETN(axi_inter1_ARESETN_net),
        .S_AXI_araddr(axi_inter1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_inter1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_inter1_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_inter1_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_inter1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_inter1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_inter1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_inter1_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_inter1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_inter1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_inter1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_inter1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_inter1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_inter1_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_inter1_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_inter1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_inter1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_inter1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_inter1_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_inter1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_inter1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_inter1_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_inter1_to_s00_couplers_BID),
        .S_AXI_bready(axi_inter1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_inter1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_inter1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_inter1_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_inter1_to_s00_couplers_RID),
        .S_AXI_rlast(axi_inter1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_inter1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_inter1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_inter1_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_inter1_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_inter1_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_inter1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_inter1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_inter1_to_s00_couplers_WVALID));
  system_xbar_0 xbar
       (.aclk(axi_inter1_ACLK_net),
        .aresetn(axi_inter1_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module system_axi_inter_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [15:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [15:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [15:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input [15:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_inter_ACLK_net;
  wire axi_inter_ARESETN_net;
  wire [39:0]axi_inter_to_s00_couplers_ARADDR;
  wire [1:0]axi_inter_to_s00_couplers_ARBURST;
  wire [3:0]axi_inter_to_s00_couplers_ARCACHE;
  wire [15:0]axi_inter_to_s00_couplers_ARID;
  wire [7:0]axi_inter_to_s00_couplers_ARLEN;
  wire axi_inter_to_s00_couplers_ARLOCK;
  wire [2:0]axi_inter_to_s00_couplers_ARPROT;
  wire [3:0]axi_inter_to_s00_couplers_ARQOS;
  wire axi_inter_to_s00_couplers_ARREADY;
  wire [2:0]axi_inter_to_s00_couplers_ARSIZE;
  wire axi_inter_to_s00_couplers_ARVALID;
  wire [39:0]axi_inter_to_s00_couplers_AWADDR;
  wire [1:0]axi_inter_to_s00_couplers_AWBURST;
  wire [3:0]axi_inter_to_s00_couplers_AWCACHE;
  wire [15:0]axi_inter_to_s00_couplers_AWID;
  wire [7:0]axi_inter_to_s00_couplers_AWLEN;
  wire axi_inter_to_s00_couplers_AWLOCK;
  wire [2:0]axi_inter_to_s00_couplers_AWPROT;
  wire [3:0]axi_inter_to_s00_couplers_AWQOS;
  wire axi_inter_to_s00_couplers_AWREADY;
  wire [2:0]axi_inter_to_s00_couplers_AWSIZE;
  wire axi_inter_to_s00_couplers_AWVALID;
  wire [15:0]axi_inter_to_s00_couplers_BID;
  wire axi_inter_to_s00_couplers_BREADY;
  wire [1:0]axi_inter_to_s00_couplers_BRESP;
  wire axi_inter_to_s00_couplers_BVALID;
  wire [31:0]axi_inter_to_s00_couplers_RDATA;
  wire [15:0]axi_inter_to_s00_couplers_RID;
  wire axi_inter_to_s00_couplers_RLAST;
  wire axi_inter_to_s00_couplers_RREADY;
  wire [1:0]axi_inter_to_s00_couplers_RRESP;
  wire axi_inter_to_s00_couplers_RVALID;
  wire [31:0]axi_inter_to_s00_couplers_WDATA;
  wire axi_inter_to_s00_couplers_WLAST;
  wire axi_inter_to_s00_couplers_WREADY;
  wire [3:0]axi_inter_to_s00_couplers_WSTRB;
  wire axi_inter_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_axi_inter_ARADDR;
  wire [1:0]s00_couplers_to_axi_inter_ARBURST;
  wire [3:0]s00_couplers_to_axi_inter_ARCACHE;
  wire [15:0]s00_couplers_to_axi_inter_ARID;
  wire [7:0]s00_couplers_to_axi_inter_ARLEN;
  wire s00_couplers_to_axi_inter_ARLOCK;
  wire [2:0]s00_couplers_to_axi_inter_ARPROT;
  wire [3:0]s00_couplers_to_axi_inter_ARQOS;
  wire s00_couplers_to_axi_inter_ARREADY;
  wire [2:0]s00_couplers_to_axi_inter_ARSIZE;
  wire s00_couplers_to_axi_inter_ARVALID;
  wire [39:0]s00_couplers_to_axi_inter_AWADDR;
  wire [1:0]s00_couplers_to_axi_inter_AWBURST;
  wire [3:0]s00_couplers_to_axi_inter_AWCACHE;
  wire [15:0]s00_couplers_to_axi_inter_AWID;
  wire [7:0]s00_couplers_to_axi_inter_AWLEN;
  wire s00_couplers_to_axi_inter_AWLOCK;
  wire [2:0]s00_couplers_to_axi_inter_AWPROT;
  wire [3:0]s00_couplers_to_axi_inter_AWQOS;
  wire s00_couplers_to_axi_inter_AWREADY;
  wire [2:0]s00_couplers_to_axi_inter_AWSIZE;
  wire s00_couplers_to_axi_inter_AWVALID;
  wire [15:0]s00_couplers_to_axi_inter_BID;
  wire s00_couplers_to_axi_inter_BREADY;
  wire [1:0]s00_couplers_to_axi_inter_BRESP;
  wire s00_couplers_to_axi_inter_BVALID;
  wire [31:0]s00_couplers_to_axi_inter_RDATA;
  wire [15:0]s00_couplers_to_axi_inter_RID;
  wire s00_couplers_to_axi_inter_RLAST;
  wire s00_couplers_to_axi_inter_RREADY;
  wire [1:0]s00_couplers_to_axi_inter_RRESP;
  wire s00_couplers_to_axi_inter_RVALID;
  wire [31:0]s00_couplers_to_axi_inter_WDATA;
  wire s00_couplers_to_axi_inter_WLAST;
  wire s00_couplers_to_axi_inter_WREADY;
  wire [3:0]s00_couplers_to_axi_inter_WSTRB;
  wire s00_couplers_to_axi_inter_WVALID;

  assign M00_AXI_araddr[39:0] = s00_couplers_to_axi_inter_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_inter_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_inter_ARCACHE;
  assign M00_AXI_arid[15:0] = s00_couplers_to_axi_inter_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_inter_ARLEN;
  assign M00_AXI_arlock = s00_couplers_to_axi_inter_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_inter_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_inter_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_inter_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_inter_ARVALID;
  assign M00_AXI_awaddr[39:0] = s00_couplers_to_axi_inter_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_inter_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_inter_AWCACHE;
  assign M00_AXI_awid[15:0] = s00_couplers_to_axi_inter_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_inter_AWLEN;
  assign M00_AXI_awlock = s00_couplers_to_axi_inter_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_inter_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_inter_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_inter_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_inter_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_inter_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_inter_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_inter_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_inter_WLAST;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_inter_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_inter_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_inter_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_inter_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = axi_inter_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_inter_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_inter_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_inter_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = axi_inter_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_inter_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_inter_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_inter_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_inter_to_s00_couplers_WREADY;
  assign axi_inter_ACLK_net = M00_ACLK;
  assign axi_inter_ARESETN_net = M00_ARESETN;
  assign axi_inter_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign axi_inter_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_inter_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_inter_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign axi_inter_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_inter_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_inter_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_inter_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_inter_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_inter_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_inter_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign axi_inter_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_inter_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_inter_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign axi_inter_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_inter_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_inter_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_inter_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_inter_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_inter_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_inter_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_inter_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_inter_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_inter_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_inter_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_inter_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_inter_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_inter_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_inter_BID = M00_AXI_bid[15:0];
  assign s00_couplers_to_axi_inter_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_inter_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_inter_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_inter_RID = M00_AXI_rid[15:0];
  assign s00_couplers_to_axi_inter_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_inter_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_inter_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_inter_WREADY = M00_AXI_wready;
  s00_couplers_imp_1IVSNKI s00_couplers
       (.M_ACLK(axi_inter_ACLK_net),
        .M_ARESETN(axi_inter_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_inter_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_inter_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_inter_ARCACHE),
        .M_AXI_arid(s00_couplers_to_axi_inter_ARID),
        .M_AXI_arlen(s00_couplers_to_axi_inter_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_inter_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_inter_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_inter_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_inter_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_inter_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_inter_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_inter_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_inter_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_inter_AWCACHE),
        .M_AXI_awid(s00_couplers_to_axi_inter_AWID),
        .M_AXI_awlen(s00_couplers_to_axi_inter_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_inter_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_inter_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_inter_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_inter_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_inter_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_inter_AWVALID),
        .M_AXI_bid(s00_couplers_to_axi_inter_BID),
        .M_AXI_bready(s00_couplers_to_axi_inter_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_inter_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_inter_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_inter_RDATA),
        .M_AXI_rid(s00_couplers_to_axi_inter_RID),
        .M_AXI_rlast(s00_couplers_to_axi_inter_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_inter_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_inter_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_inter_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_inter_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_inter_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_inter_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_inter_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_inter_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_inter_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_inter_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_inter_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_inter_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_inter_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_inter_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_inter_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_inter_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_inter_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_inter_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_inter_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_inter_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_inter_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_inter_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_inter_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_inter_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_inter_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_inter_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_inter_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_inter_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_inter_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_inter_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_inter_to_s00_couplers_BID),
        .S_AXI_bready(axi_inter_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_inter_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_inter_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_inter_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_inter_to_s00_couplers_RID),
        .S_AXI_rlast(axi_inter_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_inter_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_inter_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_inter_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_inter_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_inter_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_inter_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_inter_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_inter_to_s00_couplers_WVALID));
endmodule
