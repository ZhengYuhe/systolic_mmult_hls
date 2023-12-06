set moduleName krnl_mmult
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {krnl_mmult}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 512 regular {axi_master 2}  }
	{ a int 64 regular {axi_slave 0}  }
	{ b int 64 regular {axi_slave 0}  }
	{ c int 64 regular {axi_slave 0}  }
	{ a_row int 32 unused {axi_slave 0}  }
	{ a_col int 32 unused {axi_slave 0}  }
	{ b_col int 32 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "a","offset": { "type": "dynamic","port_name": "a","bundle": "control"},"direction": "READONLY"},{"cName": "b","offset": { "type": "dynamic","port_name": "b","bundle": "control"},"direction": "READONLY"},{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "a", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "b", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "c", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "a_row", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":59}} , 
 	{ "Name" : "a_col", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":60}, "offset_end" : {"in":67}} , 
 	{ "Name" : "b_col", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":68}, "offset_end" : {"in":75}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"krnl_mmult","role":"start","value":"0","valid_bit":"0"},{"name":"krnl_mmult","role":"continue","value":"0","valid_bit":"4"},{"name":"krnl_mmult","role":"auto_start","value":"0","valid_bit":"7"},{"name":"a","role":"data","value":"16"},{"name":"b","role":"data","value":"28"},{"name":"c","role":"data","value":"40"},{"name":"a_row","role":"data","value":"52"},{"name":"a_col","role":"data","value":"60"},{"name":"b_col","role":"data","value":"68"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"krnl_mmult","role":"start","value":"0","valid_bit":"0"},{"name":"krnl_mmult","role":"done","value":"0","valid_bit":"1"},{"name":"krnl_mmult","role":"idle","value":"0","valid_bit":"2"},{"name":"krnl_mmult","role":"ready","value":"0","valid_bit":"3"},{"name":"krnl_mmult","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "35", "37", "39", "105", "123", "126", "127", "128"],
		"CDFG" : "krnl_mmult",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_krnl_mmult_Pipeline_readB_readB_j_readB_k_fu_865", "Port" : "gmem", "Inst_start_state" : "146", "Inst_end_state" : "147"},
					{"ID" : "123", "SubInstance" : "grp_krnl_mmult_Pipeline_writeC_writeC_inner_fu_1090", "Port" : "gmem", "Inst_start_state" : "152", "Inst_end_state" : "153"},
					{"ID" : "33", "SubInstance" : "grp_krnl_mmult_Pipeline_readA_readA_i_readA_k_fu_804", "Port" : "gmem", "Inst_start_state" : "73", "Inst_end_state" : "74"}]},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_row", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_col", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_col", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "outer_j", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "153", "FirstState" : "ap_ST_fsm_state75", "LastState" : ["ap_ST_fsm_state153"], "QuitState" : ["ap_ST_fsm_state75"], "PreState" : ["ap_ST_fsm_state74"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "outer_i", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "153", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state75"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_0_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_0_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_1_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_1_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_1_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_1_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_2_0_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_2_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_2_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_2_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_3_0_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_3_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_3_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_3_3_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_0_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_0_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_0_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_0_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_1_0_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_1_1_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_1_2_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_1_3_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_2_0_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_2_1_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_2_2_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_2_3_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_3_0_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_3_1_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_3_2_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_3_3_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_readA_readA_i_readA_k_fu_804", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "krnl_mmult_Pipeline_readA_readA_i_readA_k",
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
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln214", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln202_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "localA_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_0_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_0_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_0_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_1_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_1_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_2_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_2_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_2_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_3_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_3_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_3_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_3_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "readA_readA_i_readA_k", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_readA_readA_i_readA_k_fu_804.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_fill_localC_fill_localC_inner_fu_829", "Parent" : "0", "Child" : ["36"],
		"CDFG" : "krnl_mmult_Pipeline_fill_localC_fill_localC_inner",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "localC_3_3_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_2_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_3_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_2_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_3_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_2_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_3_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_2_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_3_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_3_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_3_0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_0_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "fill_localC_fill_localC_inner", "PipelineType" : "NotSupport"}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_fill_localC_fill_localC_inner_fu_829.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_readB_readB_j_readB_k_fu_865", "Parent" : "0", "Child" : ["38"],
		"CDFG" : "krnl_mmult_Pipeline_readB_readB_j_readB_k",
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
			{"Name" : "zext_ln226_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln265", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln238_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "localB_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_0_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_0_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_0_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_1_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_1_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_2_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_2_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_2_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_3_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_3_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_3_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_3_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "readB_readB_j_readB_k", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_readB_readB_j_readB_k_fu_865.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890", "Parent" : "0", "Child" : ["40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104"],
		"CDFG" : "krnl_mmult_Pipeline_systolick",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1034", "EstimateLatencyMax" : "1034",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "localA_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bufC_3_3_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_3_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_3_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_3_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_2_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_2_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_2_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_2_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_1_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_1_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_1_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_1_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_0_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_0_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_0_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_3_0_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_3_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_3_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_3_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_3_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_2_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_2_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_2_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_2_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_1_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_1_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_1_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_1_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_0_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_0_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_0_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_2_0_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_3_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_3_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_3_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_3_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_2_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_2_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_2_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_2_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_1_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_1_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_1_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_1_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_0_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_0_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_0_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_1_0_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_3_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_3_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_3_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_3_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_2_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_2_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_2_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_2_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_1_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_1_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_1_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_1_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_0_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_0_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_0_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bufC_0_0_0_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "systolick", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U73", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U74", "Parent" : "39"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U75", "Parent" : "39"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U76", "Parent" : "39"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U77", "Parent" : "39"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U78", "Parent" : "39"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U79", "Parent" : "39"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U80", "Parent" : "39"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U81", "Parent" : "39"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U82", "Parent" : "39"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U83", "Parent" : "39"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U84", "Parent" : "39"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U85", "Parent" : "39"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U86", "Parent" : "39"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U87", "Parent" : "39"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U88", "Parent" : "39"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U89", "Parent" : "39"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U90", "Parent" : "39"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U91", "Parent" : "39"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U92", "Parent" : "39"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U93", "Parent" : "39"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U94", "Parent" : "39"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U95", "Parent" : "39"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U96", "Parent" : "39"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U97", "Parent" : "39"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U98", "Parent" : "39"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U99", "Parent" : "39"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U100", "Parent" : "39"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U101", "Parent" : "39"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U102", "Parent" : "39"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U103", "Parent" : "39"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U104", "Parent" : "39"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U105", "Parent" : "39"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U106", "Parent" : "39"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U107", "Parent" : "39"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U108", "Parent" : "39"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U109", "Parent" : "39"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U110", "Parent" : "39"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U111", "Parent" : "39"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U112", "Parent" : "39"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U113", "Parent" : "39"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U114", "Parent" : "39"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U115", "Parent" : "39"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U116", "Parent" : "39"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U117", "Parent" : "39"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U118", "Parent" : "39"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U119", "Parent" : "39"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U120", "Parent" : "39"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U121", "Parent" : "39"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U122", "Parent" : "39"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U123", "Parent" : "39"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U124", "Parent" : "39"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U125", "Parent" : "39"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U126", "Parent" : "39"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U127", "Parent" : "39"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U128", "Parent" : "39"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U129", "Parent" : "39"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U130", "Parent" : "39"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U131", "Parent" : "39"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U132", "Parent" : "39"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U133", "Parent" : "39"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U134", "Parent" : "39"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U135", "Parent" : "39"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.mul_32s_32s_32_1_1_U136", "Parent" : "39"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolick_fu_890.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990", "Parent" : "0", "Child" : ["106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122"],
		"CDFG" : "krnl_mmult_Pipeline_Accum_C",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "localC_3_3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_0_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_0_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_0_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_0_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_0_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_0_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_0_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_0_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_0_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_0_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_0_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_0_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_0_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_0_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_0_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_0_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_1_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_1_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_1_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_1_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_1_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_1_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_1_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_1_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_1_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_1_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_1_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_1_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_1_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_1_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_1_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_1_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_2_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_2_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_2_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_2_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_2_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_2_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_2_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_2_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_2_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_2_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_2_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_2_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_2_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_2_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_2_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_2_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_3_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_3_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_3_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_3_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_3_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_3_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_3_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_3_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_3_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_3_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_3_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_3_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_0_3_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_1_3_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_2_3_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bufC_3_3_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_3_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_3_2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_3_1_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_3_0_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_3_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_1_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_0_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_3_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_1_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_0_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_3_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_1_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_0_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Accum_C", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U234", "Parent" : "105"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U235", "Parent" : "105"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U236", "Parent" : "105"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U237", "Parent" : "105"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U238", "Parent" : "105"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U239", "Parent" : "105"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U240", "Parent" : "105"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U241", "Parent" : "105"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U242", "Parent" : "105"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U243", "Parent" : "105"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U244", "Parent" : "105"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U245", "Parent" : "105"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U246", "Parent" : "105"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U247", "Parent" : "105"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U248", "Parent" : "105"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.mux_42_32_1_1_U249", "Parent" : "105"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_Accum_C_fu_990.flow_control_loop_pipe_sequential_init_U", "Parent" : "105"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_writeC_writeC_inner_fu_1090", "Parent" : "0", "Child" : ["124", "125"],
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
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_writeC_writeC_inner_fu_1090.mux_165_32_1_1_U347", "Parent" : "123"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_writeC_writeC_inner_fu_1090.flow_control_loop_pipe_sequential_init_U", "Parent" : "123"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U374", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	krnl_mmult {
		gmem {Type IO LastRead 75 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		a_row {Type I LastRead -1 FirstWrite -1}
		a_col {Type I LastRead -1 FirstWrite -1}
		b_col {Type I LastRead -1 FirstWrite -1}}
	krnl_mmult_Pipeline_readA_readA_i_readA_k {
		zext_ln202 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 2 FirstWrite -1}
		sext_ln214 {Type I LastRead 0 FirstWrite -1}
		zext_ln202_1 {Type I LastRead 0 FirstWrite -1}
		localA_0_0 {Type O LastRead -1 FirstWrite 3}
		localA_0_1 {Type O LastRead -1 FirstWrite 3}
		localA_0_2 {Type O LastRead -1 FirstWrite 3}
		localA_0_3 {Type O LastRead -1 FirstWrite 3}
		localA_1_0 {Type O LastRead -1 FirstWrite 3}
		localA_1_1 {Type O LastRead -1 FirstWrite 3}
		localA_1_2 {Type O LastRead -1 FirstWrite 3}
		localA_1_3 {Type O LastRead -1 FirstWrite 3}
		localA_2_0 {Type O LastRead -1 FirstWrite 3}
		localA_2_1 {Type O LastRead -1 FirstWrite 3}
		localA_2_2 {Type O LastRead -1 FirstWrite 3}
		localA_2_3 {Type O LastRead -1 FirstWrite 3}
		localA_3_0 {Type O LastRead -1 FirstWrite 3}
		localA_3_1 {Type O LastRead -1 FirstWrite 3}
		localA_3_2 {Type O LastRead -1 FirstWrite 3}
		localA_3_3 {Type O LastRead -1 FirstWrite 3}}
	krnl_mmult_Pipeline_fill_localC_fill_localC_inner {
		localC_3_3_5 {Type I LastRead 0 FirstWrite -1}
		localC_3_2_5 {Type I LastRead 0 FirstWrite -1}
		localC_3_1_5 {Type I LastRead 0 FirstWrite -1}
		localC_3_0_5 {Type I LastRead 0 FirstWrite -1}
		localC_2_3_5 {Type I LastRead 0 FirstWrite -1}
		localC_2_2_5 {Type I LastRead 0 FirstWrite -1}
		localC_2_1_5 {Type I LastRead 0 FirstWrite -1}
		localC_2_0_5 {Type I LastRead 0 FirstWrite -1}
		localC_1_3_5 {Type I LastRead 0 FirstWrite -1}
		localC_1_2_5 {Type I LastRead 0 FirstWrite -1}
		localC_1_1_5 {Type I LastRead 0 FirstWrite -1}
		localC_1_0_5 {Type I LastRead 0 FirstWrite -1}
		localC_0_3_5 {Type I LastRead 0 FirstWrite -1}
		localC_0_2_5 {Type I LastRead 0 FirstWrite -1}
		localC_0_1_5 {Type I LastRead 0 FirstWrite -1}
		localC_0_0_5 {Type I LastRead 0 FirstWrite -1}
		localC_3_3_2_out {Type O LastRead -1 FirstWrite 0}
		localC_3_2_2_out {Type O LastRead -1 FirstWrite 0}
		localC_3_1_2_out {Type O LastRead -1 FirstWrite 0}
		localC_3_0_2_out {Type O LastRead -1 FirstWrite 0}
		localC_2_3_2_out {Type O LastRead -1 FirstWrite 0}
		localC_2_2_2_out {Type O LastRead -1 FirstWrite 0}
		localC_2_1_2_out {Type O LastRead -1 FirstWrite 0}
		localC_2_0_2_out {Type O LastRead -1 FirstWrite 0}
		localC_1_3_2_out {Type O LastRead -1 FirstWrite 0}
		localC_1_2_2_out {Type O LastRead -1 FirstWrite 0}
		localC_1_1_2_out {Type O LastRead -1 FirstWrite 0}
		localC_1_0_2_out {Type O LastRead -1 FirstWrite 0}
		localC_0_3_2_out {Type O LastRead -1 FirstWrite 0}
		localC_0_2_2_out {Type O LastRead -1 FirstWrite 0}
		localC_0_1_2_out {Type O LastRead -1 FirstWrite 0}
		localC_0_0_2_out {Type O LastRead -1 FirstWrite 0}}
	krnl_mmult_Pipeline_readB_readB_j_readB_k {
		zext_ln226_1 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 2 FirstWrite -1}
		sext_ln265 {Type I LastRead 0 FirstWrite -1}
		zext_ln238_2 {Type I LastRead 0 FirstWrite -1}
		localB_0_0 {Type O LastRead -1 FirstWrite 3}
		localB_0_1 {Type O LastRead -1 FirstWrite 3}
		localB_0_2 {Type O LastRead -1 FirstWrite 3}
		localB_0_3 {Type O LastRead -1 FirstWrite 3}
		localB_1_0 {Type O LastRead -1 FirstWrite 3}
		localB_1_1 {Type O LastRead -1 FirstWrite 3}
		localB_1_2 {Type O LastRead -1 FirstWrite 3}
		localB_1_3 {Type O LastRead -1 FirstWrite 3}
		localB_2_0 {Type O LastRead -1 FirstWrite 3}
		localB_2_1 {Type O LastRead -1 FirstWrite 3}
		localB_2_2 {Type O LastRead -1 FirstWrite 3}
		localB_2_3 {Type O LastRead -1 FirstWrite 3}
		localB_3_0 {Type O LastRead -1 FirstWrite 3}
		localB_3_1 {Type O LastRead -1 FirstWrite 3}
		localB_3_2 {Type O LastRead -1 FirstWrite 3}
		localB_3_3 {Type O LastRead -1 FirstWrite 3}}
	krnl_mmult_Pipeline_systolick {
		localA_0_3 {Type I LastRead 0 FirstWrite -1}
		localA_0_2 {Type I LastRead 0 FirstWrite -1}
		localA_0_1 {Type I LastRead 0 FirstWrite -1}
		localA_0_0 {Type I LastRead 0 FirstWrite -1}
		localB_0_3 {Type I LastRead 0 FirstWrite -1}
		localB_0_2 {Type I LastRead 0 FirstWrite -1}
		localB_0_1 {Type I LastRead 0 FirstWrite -1}
		localB_0_0 {Type I LastRead 0 FirstWrite -1}
		localA_1_3 {Type I LastRead 0 FirstWrite -1}
		localA_1_2 {Type I LastRead 0 FirstWrite -1}
		localA_1_1 {Type I LastRead 0 FirstWrite -1}
		localA_1_0 {Type I LastRead 0 FirstWrite -1}
		localB_1_3 {Type I LastRead 0 FirstWrite -1}
		localB_1_2 {Type I LastRead 0 FirstWrite -1}
		localB_1_1 {Type I LastRead 0 FirstWrite -1}
		localB_1_0 {Type I LastRead 0 FirstWrite -1}
		localA_2_3 {Type I LastRead 0 FirstWrite -1}
		localA_2_2 {Type I LastRead 0 FirstWrite -1}
		localA_2_1 {Type I LastRead 0 FirstWrite -1}
		localA_2_0 {Type I LastRead 0 FirstWrite -1}
		localB_2_3 {Type I LastRead 0 FirstWrite -1}
		localB_2_2 {Type I LastRead 0 FirstWrite -1}
		localB_2_1 {Type I LastRead 0 FirstWrite -1}
		localB_2_0 {Type I LastRead 0 FirstWrite -1}
		localA_3_3 {Type I LastRead 0 FirstWrite -1}
		localA_3_2 {Type I LastRead 0 FirstWrite -1}
		localA_3_1 {Type I LastRead 0 FirstWrite -1}
		localA_3_0 {Type I LastRead 0 FirstWrite -1}
		localB_3_3 {Type I LastRead 0 FirstWrite -1}
		localB_3_2 {Type I LastRead 0 FirstWrite -1}
		localB_3_1 {Type I LastRead 0 FirstWrite -1}
		localB_3_0 {Type I LastRead 0 FirstWrite -1}
		bufC_3_3_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_3_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_3_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_3_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_2_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_2_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_2_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_2_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_1_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_1_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_1_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_1_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_0_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_0_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_0_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_3_0_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_3_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_3_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_3_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_3_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_2_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_2_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_2_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_2_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_1_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_1_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_1_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_1_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_0_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_0_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_0_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_2_0_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_3_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_3_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_3_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_3_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_2_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_2_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_2_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_2_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_1_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_1_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_1_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_1_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_0_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_0_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_0_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_1_0_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_3_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_3_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_3_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_3_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_2_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_2_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_2_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_2_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_1_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_1_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_1_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_1_0_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_0_3_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_0_2_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_0_1_0_out {Type O LastRead -1 FirstWrite 1}
		bufC_0_0_0_0_out {Type O LastRead -1 FirstWrite 1}}
	krnl_mmult_Pipeline_Accum_C {
		localC_3_3_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_2_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_1_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_0_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_3_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_2_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_1_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_0_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_3_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_2_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_1_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_0_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_0_3_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_0_2_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_0_1_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_0_0_2_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_0_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_0_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_0_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_0_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_0_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_0_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_0_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_0_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_0_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_0_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_0_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_0_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_0_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_0_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_0_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_0_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_1_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_1_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_1_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_1_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_1_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_1_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_1_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_1_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_1_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_1_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_1_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_1_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_1_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_1_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_1_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_1_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_2_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_2_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_2_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_2_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_2_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_2_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_2_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_2_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_2_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_2_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_2_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_2_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_2_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_2_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_2_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_2_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_3_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_3_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_3_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_3_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_3_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_3_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_3_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_3_1_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_3_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_3_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_3_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_3_2_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_0_3_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_1_3_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_2_3_3_0_reload {Type I LastRead 0 FirstWrite -1}
		bufC_3_3_3_0_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_3_4_out {Type O LastRead -1 FirstWrite 1}
		localC_3_2_4_out {Type O LastRead -1 FirstWrite 1}
		localC_3_1_4_out {Type O LastRead -1 FirstWrite 1}
		localC_3_0_4_out {Type O LastRead -1 FirstWrite 1}
		localC_2_3_4_out {Type O LastRead -1 FirstWrite 1}
		localC_2_2_4_out {Type O LastRead -1 FirstWrite 1}
		localC_2_1_4_out {Type O LastRead -1 FirstWrite 1}
		localC_2_0_4_out {Type O LastRead -1 FirstWrite 1}
		localC_1_3_4_out {Type O LastRead -1 FirstWrite 1}
		localC_1_2_4_out {Type O LastRead -1 FirstWrite 1}
		localC_1_1_4_out {Type O LastRead -1 FirstWrite 1}
		localC_1_0_4_out {Type O LastRead -1 FirstWrite 1}
		localC_0_3_4_out {Type O LastRead -1 FirstWrite 1}
		localC_0_2_4_out {Type O LastRead -1 FirstWrite 1}
		localC_0_1_4_out {Type O LastRead -1 FirstWrite 1}
		localC_0_0_4_out {Type O LastRead -1 FirstWrite 1}}
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 8 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 8 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmem { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
