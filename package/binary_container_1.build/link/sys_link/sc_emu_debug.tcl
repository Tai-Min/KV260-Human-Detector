set trace_signals(kernel_group) {
  krnl_vadd_1 {s_axi_control*ARADDR s_axi_control*RDATA s_axi_control*RVALID s_axi_control*RREADY s_axi_control*AWADDR s_axi_control*WDATA s_axi_control*WVALID s_axi_control*WREADY m_axi_gmem*ARADDR m_axi_gmem*RDATA m_axi_gmem*RVALID m_axi_gmem*RREADY m_axi_gmem*AWADDR m_axi_gmem*WDATA m_axi_gmem*WVALID m_axi_gmem*WREADY} {}
}

set trace_signals(kernel) {
  ap_start ap_ready ap_done
}

set trace_signals(adapter) {
  *axis_*tdata *axis_*tvalid *axis_*tready S*WADDR S*WDATA S*ARADDR S*RDATA
}

set trace_signals(datamover) {
  stream_t* reg_bus_awaddr reg_bus_wdata
}
