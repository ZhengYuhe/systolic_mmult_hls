set moduleName krnl_mmult_Pipeline_writeC_writeC_inner
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {krnl_mmult_Pipeline_writeC_writeC_inner}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln202 int 12 regular  }
	{ zext_ln226_1 int 12 regular  }
	{ zext_ln226 int 24 regular  }
	{ tmp_24 int 10 regular  }
	{ mul_ln238 int 128 regular  }
	{ zext_ln265 int 13 regular  }
	{ localC_0_0_4_reload int 32 regular  }
	{ localC_0_1_4_reload int 32 regular  }
	{ localC_0_2_4_reload int 32 regular  }
	{ localC_0_3_4_reload int 32 regular  }
	{ localC_1_0_4_reload int 32 regular  }
	{ localC_1_1_4_reload int 32 regular  }
	{ localC_1_2_4_reload int 32 regular  }
	{ localC_1_3_4_reload int 32 regular  }
	{ localC_2_0_4_reload int 32 regular  }
	{ localC_2_1_4_reload int 32 regular  }
	{ localC_2_2_4_reload int 32 regular  }
	{ localC_2_3_4_reload int 32 regular  }
	{ localC_3_0_4_reload int 32 regular  }
	{ localC_3_1_4_reload int 32 regular  }
	{ localC_3_2_4_reload int 32 regular  }
	{ localC_3_3_4_reload int 32 regular  }
	{ c int 64 regular  }
	{ c_cast int 6 regular  }
	{ gmem int 512 regular {axi_master 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln202", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln226_1", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln226", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_24", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln238", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln265", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "localC_0_0_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_0_1_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_0_2_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_0_3_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_1_0_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_1_1_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_1_2_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_1_3_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_2_0_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_2_1_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_2_2_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_2_3_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_3_0_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_3_1_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_3_2_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_3_3_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c_cast", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "a","offset": { "type": "dynamic","port_name": "a","bundle": "control"},"direction": "READONLY"},{"cName": "b","offset": { "type": "dynamic","port_name": "b","bundle": "control"},"direction": "READONLY"},{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "control"},"direction": "WRITEONLY"}]}]} ]}
# RTL Port declarations: 
set portNum 75
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 24 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 24 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 24 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 24 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 24 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 24 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 24 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 24 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 24 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 24 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 24 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 24 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 24 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 24 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 24 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 24 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 24 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 24 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 24 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 24 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 24 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 24 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 24 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 24 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 24 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 24 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 24 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 24 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 24 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 24 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 24 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 24 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 24 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 24 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 24 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 24 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 24 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 24 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 24 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 24 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 24 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 24 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 24 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 24 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 24 } 
	{ zext_ln202 sc_in sc_lv 12 signal 0 } 
	{ zext_ln226_1 sc_in sc_lv 12 signal 1 } 
	{ zext_ln226 sc_in sc_lv 24 signal 2 } 
	{ tmp_24 sc_in sc_lv 10 signal 3 } 
	{ mul_ln238 sc_in sc_lv 128 signal 4 } 
	{ zext_ln265 sc_in sc_lv 13 signal 5 } 
	{ localC_0_0_4_reload sc_in sc_lv 32 signal 6 } 
	{ localC_0_1_4_reload sc_in sc_lv 32 signal 7 } 
	{ localC_0_2_4_reload sc_in sc_lv 32 signal 8 } 
	{ localC_0_3_4_reload sc_in sc_lv 32 signal 9 } 
	{ localC_1_0_4_reload sc_in sc_lv 32 signal 10 } 
	{ localC_1_1_4_reload sc_in sc_lv 32 signal 11 } 
	{ localC_1_2_4_reload sc_in sc_lv 32 signal 12 } 
	{ localC_1_3_4_reload sc_in sc_lv 32 signal 13 } 
	{ localC_2_0_4_reload sc_in sc_lv 32 signal 14 } 
	{ localC_2_1_4_reload sc_in sc_lv 32 signal 15 } 
	{ localC_2_2_4_reload sc_in sc_lv 32 signal 16 } 
	{ localC_2_3_4_reload sc_in sc_lv 32 signal 17 } 
	{ localC_3_0_4_reload sc_in sc_lv 32 signal 18 } 
	{ localC_3_1_4_reload sc_in sc_lv 32 signal 19 } 
	{ localC_3_2_4_reload sc_in sc_lv 32 signal 20 } 
	{ localC_3_3_4_reload sc_in sc_lv 32 signal 21 } 
	{ c sc_in sc_lv 64 signal 22 } 
	{ c_cast sc_in sc_lv 6 signal 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "zext_ln202", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln202", "role": "default" }} , 
 	{ "name": "zext_ln226_1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln226_1", "role": "default" }} , 
 	{ "name": "zext_ln226", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "zext_ln226", "role": "default" }} , 
 	{ "name": "tmp_24", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "tmp_24", "role": "default" }} , 
 	{ "name": "mul_ln238", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "mul_ln238", "role": "default" }} , 
 	{ "name": "zext_ln265", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "zext_ln265", "role": "default" }} , 
 	{ "name": "localC_0_0_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_0_4_reload", "role": "default" }} , 
 	{ "name": "localC_0_1_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_1_4_reload", "role": "default" }} , 
 	{ "name": "localC_0_2_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_2_4_reload", "role": "default" }} , 
 	{ "name": "localC_0_3_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_3_4_reload", "role": "default" }} , 
 	{ "name": "localC_1_0_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_0_4_reload", "role": "default" }} , 
 	{ "name": "localC_1_1_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_1_4_reload", "role": "default" }} , 
 	{ "name": "localC_1_2_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_2_4_reload", "role": "default" }} , 
 	{ "name": "localC_1_3_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_3_4_reload", "role": "default" }} , 
 	{ "name": "localC_2_0_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_0_4_reload", "role": "default" }} , 
 	{ "name": "localC_2_1_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_1_4_reload", "role": "default" }} , 
 	{ "name": "localC_2_2_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_2_4_reload", "role": "default" }} , 
 	{ "name": "localC_2_3_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_3_4_reload", "role": "default" }} , 
 	{ "name": "localC_3_0_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_0_4_reload", "role": "default" }} , 
 	{ "name": "localC_3_1_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_1_4_reload", "role": "default" }} , 
 	{ "name": "localC_3_2_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_2_4_reload", "role": "default" }} , 
 	{ "name": "localC_3_3_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_3_4_reload", "role": "default" }} , 
 	{ "name": "c", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "default" }} , 
 	{ "name": "c_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_cast", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "krnl_mmult_Pipeline_writeC_writeC_inner",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "zext_ln202", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln226_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln226", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln238", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln265", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_0_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_1_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_2_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_3_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_0_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_1_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_2_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_3_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_0_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_1_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_2_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_3_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_0_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_1_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_2_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_3_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "writeC_writeC_inner", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter71", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter71", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_165_32_1_1_U347", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	krnl_mmult_Pipeline_writeC_writeC_inner {
		zext_ln202 {Type I LastRead 0 FirstWrite -1}
		zext_ln226_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln226 {Type I LastRead 0 FirstWrite -1}
		tmp_24 {Type I LastRead 0 FirstWrite -1}
		mul_ln238 {Type I LastRead 0 FirstWrite -1}
		zext_ln265 {Type I LastRead 0 FirstWrite -1}
		localC_0_0_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_0_1_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_0_2_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_0_3_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_0_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_1_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_2_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_3_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_0_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_1_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_2_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_3_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_0_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_1_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_2_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_3_4_reload {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		c_cast {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 4 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln202 { ap_none {  { zext_ln202 in_data 0 12 } } }
	zext_ln226_1 { ap_none {  { zext_ln226_1 in_data 0 12 } } }
	zext_ln226 { ap_none {  { zext_ln226 in_data 0 24 } } }
	tmp_24 { ap_none {  { tmp_24 in_data 0 10 } } }
	mul_ln238 { ap_none {  { mul_ln238 in_data 0 128 } } }
	zext_ln265 { ap_none {  { zext_ln265 in_data 0 13 } } }
	localC_0_0_4_reload { ap_none {  { localC_0_0_4_reload in_data 0 32 } } }
	localC_0_1_4_reload { ap_none {  { localC_0_1_4_reload in_data 0 32 } } }
	localC_0_2_4_reload { ap_none {  { localC_0_2_4_reload in_data 0 32 } } }
	localC_0_3_4_reload { ap_none {  { localC_0_3_4_reload in_data 0 32 } } }
	localC_1_0_4_reload { ap_none {  { localC_1_0_4_reload in_data 0 32 } } }
	localC_1_1_4_reload { ap_none {  { localC_1_1_4_reload in_data 0 32 } } }
	localC_1_2_4_reload { ap_none {  { localC_1_2_4_reload in_data 0 32 } } }
	localC_1_3_4_reload { ap_none {  { localC_1_3_4_reload in_data 0 32 } } }
	localC_2_0_4_reload { ap_none {  { localC_2_0_4_reload in_data 0 32 } } }
	localC_2_1_4_reload { ap_none {  { localC_2_1_4_reload in_data 0 32 } } }
	localC_2_2_4_reload { ap_none {  { localC_2_2_4_reload in_data 0 32 } } }
	localC_2_3_4_reload { ap_none {  { localC_2_3_4_reload in_data 0 32 } } }
	localC_3_0_4_reload { ap_none {  { localC_3_0_4_reload in_data 0 32 } } }
	localC_3_1_4_reload { ap_none {  { localC_3_1_4_reload in_data 0 32 } } }
	localC_3_2_4_reload { ap_none {  { localC_3_2_4_reload in_data 0 32 } } }
	localC_3_3_4_reload { ap_none {  { localC_3_3_4_reload in_data 0 32 } } }
	c { ap_none {  { c in_data 0 64 } } }
	c_cast { ap_none {  { c_cast in_data 0 6 } } }
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 32 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 32 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
}
