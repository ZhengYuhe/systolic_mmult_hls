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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "19", "21", "87", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156"],
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
					{"ID" : "87", "SubInstance" : "grp_krnl_mmult_Pipeline_writeC_writeC_inner_fu_1765", "Port" : "gmem", "Inst_start_state" : "158", "Inst_end_state" : "159"},
					{"ID" : "17", "SubInstance" : "grp_krnl_mmult_Pipeline_readA_readA_inner_fu_1519", "Port" : "gmem", "Inst_start_state" : "73", "Inst_end_state" : "74"},
					{"ID" : "19", "SubInstance" : "grp_krnl_mmult_Pipeline_readB_readB_inner_fu_1536", "Port" : "gmem", "Inst_start_state" : "154", "Inst_end_state" : "155"}]},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_row", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_col", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_col", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "fill_C_inner", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "159", "FirstState" : "ap_ST_fsm_state76", "LastState" : ["ap_ST_fsm_state76"], "QuitState" : ["ap_ST_fsm_state76"], "PreState" : ["ap_ST_fsm_state75"], "PostState" : ["ap_ST_fsm_state77"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state76_blk"}},
			{"Name" : "fill_C_inner", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "159", "FirstState" : "ap_ST_fsm_state77", "LastState" : ["ap_ST_fsm_state77"], "QuitState" : ["ap_ST_fsm_state77"], "PreState" : ["ap_ST_fsm_state76"], "PostState" : ["ap_ST_fsm_state78"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state77_blk"}},
			{"Name" : "fill_C_inner", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "159", "FirstState" : "ap_ST_fsm_state78", "LastState" : ["ap_ST_fsm_state78"], "QuitState" : ["ap_ST_fsm_state78"], "PreState" : ["ap_ST_fsm_state77"], "PostState" : ["ap_ST_fsm_state79"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state78_blk"}},
			{"Name" : "fill_C_inner", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "159", "FirstState" : "ap_ST_fsm_state79", "LastState" : ["ap_ST_fsm_state79"], "QuitState" : ["ap_ST_fsm_state79"], "PreState" : ["ap_ST_fsm_state78"], "PostState" : ["ap_ST_fsm_state80"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state79_blk"}},
			{"Name" : "fill_C_inner", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "159", "FirstState" : "ap_ST_fsm_state80", "LastState" : ["ap_ST_fsm_state80"], "QuitState" : ["ap_ST_fsm_state80"], "PreState" : ["ap_ST_fsm_state79"], "PostState" : ["ap_ST_fsm_state81"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state80_blk"}},
			{"Name" : "fill_C_inner", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "159", "FirstState" : "ap_ST_fsm_state81", "LastState" : ["ap_ST_fsm_state81"], "QuitState" : ["ap_ST_fsm_state81"], "PreState" : ["ap_ST_fsm_state80"], "PostState" : ["ap_ST_fsm_state82"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state81_blk"}},
			{"Name" : "fill_C_inner", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "159", "FirstState" : "ap_ST_fsm_state82", "LastState" : ["ap_ST_fsm_state82"], "QuitState" : ["ap_ST_fsm_state82"], "PreState" : ["ap_ST_fsm_state81"], "PostState" : ["ap_ST_fsm_state83"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state82_blk"}},
			{"Name" : "fill_C_inner", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "159", "FirstState" : "ap_ST_fsm_state83", "LastState" : ["ap_ST_fsm_state83"], "QuitState" : ["ap_ST_fsm_state83"], "PreState" : ["ap_ST_fsm_state82"], "PostState" : ["ap_ST_fsm_state84"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state83_blk"}},
			{"Name" : "outer_j", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "159", "FirstState" : "ap_ST_fsm_state75", "LastState" : ["ap_ST_fsm_state159"], "QuitState" : ["ap_ST_fsm_state75"], "PreState" : ["ap_ST_fsm_state74"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "outer_i", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "159", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state75"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localA_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_0_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_4_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_5_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_6_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localB_7_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_readA_readA_inner_fu_1519", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "krnl_mmult_Pipeline_readA_readA_inner",
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
			{"Name" : "zext_ln265", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln198", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln195", "Type" : "None", "Direction" : "I"},
			{"Name" : "localA_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localA_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "readA_readA_inner", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_readA_readA_inner_fu_1519.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_readB_readB_inner_fu_1536", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "krnl_mmult_Pipeline_readB_readB_inner",
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
			{"Name" : "zext_ln212_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln221", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound29", "Type" : "None", "Direction" : "I"},
			{"Name" : "localB_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "localB_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "readB_readB_inner", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_readB_readB_inner_fu_1536.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553", "Parent" : "0", "Child" : ["22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86"],
		"CDFG" : "krnl_mmult_Pipeline_systolic1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4114", "EstimateLatencyMax" : "4114",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "localC_7_7_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_6_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_5_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_4_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_3_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_2_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_1_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_0_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_7_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_6_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_5_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_4_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_3_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_2_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_1_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_0_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_7_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_6_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_5_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_4_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_3_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_2_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_1_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_0_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_7_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_6_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_5_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_4_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_3_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_2_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_1_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_0_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_7_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_6_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_5_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_4_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_3_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_2_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_1_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_0_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_7_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_6_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_5_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_4_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_3_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_2_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_1_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_0_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_7_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_6_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_5_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_4_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_3_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_2_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_1_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_0_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_7_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_6_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_5_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_4_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_3_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_2_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "localA_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localA_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localB_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "localC_7_7_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_7_6_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_7_5_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_7_4_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_7_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_7_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_7_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_7_0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_6_7_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_6_6_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_6_5_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_6_4_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_6_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_6_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_6_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_6_0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_5_7_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_5_6_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_5_5_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_5_4_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_5_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_5_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_5_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_5_0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_4_7_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_4_6_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_4_5_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_4_4_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_4_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_4_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_4_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_4_0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_3_7_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_3_6_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_3_5_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_3_4_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_3_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_3_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_3_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_3_0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_7_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_6_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_5_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_4_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_2_0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_7_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_6_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_5_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_4_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_1_0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_7_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_6_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_5_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_4_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_3_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_1_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localC_0_0_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "systolic1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U25", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U26", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U27", "Parent" : "21"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U28", "Parent" : "21"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U29", "Parent" : "21"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U30", "Parent" : "21"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U31", "Parent" : "21"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U32", "Parent" : "21"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U33", "Parent" : "21"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U34", "Parent" : "21"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U35", "Parent" : "21"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U36", "Parent" : "21"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U37", "Parent" : "21"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U38", "Parent" : "21"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U39", "Parent" : "21"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U40", "Parent" : "21"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U41", "Parent" : "21"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U42", "Parent" : "21"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U43", "Parent" : "21"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U44", "Parent" : "21"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U45", "Parent" : "21"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U46", "Parent" : "21"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U47", "Parent" : "21"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U48", "Parent" : "21"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U49", "Parent" : "21"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U50", "Parent" : "21"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U51", "Parent" : "21"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U52", "Parent" : "21"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U53", "Parent" : "21"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U54", "Parent" : "21"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U55", "Parent" : "21"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U56", "Parent" : "21"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U57", "Parent" : "21"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U58", "Parent" : "21"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U59", "Parent" : "21"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U60", "Parent" : "21"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U61", "Parent" : "21"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U62", "Parent" : "21"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U63", "Parent" : "21"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U64", "Parent" : "21"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U65", "Parent" : "21"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U66", "Parent" : "21"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U67", "Parent" : "21"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U68", "Parent" : "21"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U69", "Parent" : "21"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U70", "Parent" : "21"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U71", "Parent" : "21"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U72", "Parent" : "21"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U73", "Parent" : "21"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U74", "Parent" : "21"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U75", "Parent" : "21"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U76", "Parent" : "21"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U77", "Parent" : "21"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U78", "Parent" : "21"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U79", "Parent" : "21"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U80", "Parent" : "21"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U81", "Parent" : "21"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U82", "Parent" : "21"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U83", "Parent" : "21"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U84", "Parent" : "21"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U85", "Parent" : "21"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U86", "Parent" : "21"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U87", "Parent" : "21"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.mul_32s_32s_32_1_1_U88", "Parent" : "21"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_systolic1_fu_1553.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_writeC_writeC_inner_fu_1765", "Parent" : "0", "Child" : ["88", "89"],
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
			{"Name" : "zext_ln265", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln212_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln212", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound66", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln212_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_0_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_1_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_2_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_3_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_4_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_5_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_6_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_0_7_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_4_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_5_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_6_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_1_7_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_4_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_5_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_6_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_2_7_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_4_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_5_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_6_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_3_7_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_4_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_5_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_6_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_4_7_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_4_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_5_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_6_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_5_7_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_4_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_5_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_6_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_6_7_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_3_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_4_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_5_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_6_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "localC_7_7_2_reload", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_writeC_writeC_inner_fu_1765.mux_647_32_1_1_U234", "Parent" : "87"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_mmult_Pipeline_writeC_writeC_inner_fu_1765.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U309", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U310", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U311", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U312", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U313", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U314", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U315", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U316", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U317", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U318", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U319", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U320", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U321", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U322", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U323", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U324", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U325", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U326", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U327", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U328", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U329", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U330", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U331", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U332", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U333", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U334", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U335", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U336", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U337", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U338", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U339", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U340", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U341", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U342", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U343", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U344", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U345", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U346", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U347", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U348", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U349", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U350", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U351", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U352", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U353", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U354", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U355", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U356", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U357", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U358", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U359", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U360", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U361", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U362", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U363", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U364", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U365", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U366", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U367", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U368", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U369", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U370", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U371", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U372", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U373", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	krnl_mmult {
		gmem {Type IO LastRead 83 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		a_row {Type I LastRead -1 FirstWrite -1}
		a_col {Type I LastRead -1 FirstWrite -1}
		b_col {Type I LastRead -1 FirstWrite -1}}
	krnl_mmult_Pipeline_readA_readA_inner {
		zext_ln265 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 2 FirstWrite -1}
		sext_ln198 {Type I LastRead 0 FirstWrite -1}
		zext_ln195 {Type I LastRead 0 FirstWrite -1}
		localA_0 {Type O LastRead -1 FirstWrite 3}
		localA_1 {Type O LastRead -1 FirstWrite 3}
		localA_2 {Type O LastRead -1 FirstWrite 3}
		localA_3 {Type O LastRead -1 FirstWrite 3}
		localA_4 {Type O LastRead -1 FirstWrite 3}
		localA_5 {Type O LastRead -1 FirstWrite 3}
		localA_6 {Type O LastRead -1 FirstWrite 3}
		localA_7 {Type O LastRead -1 FirstWrite 3}}
	krnl_mmult_Pipeline_readB_readB_inner {
		zext_ln212_1 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 2 FirstWrite -1}
		sext_ln221 {Type I LastRead 0 FirstWrite -1}
		bound29 {Type I LastRead 0 FirstWrite -1}
		localB_0 {Type O LastRead -1 FirstWrite 3}
		localB_1 {Type O LastRead -1 FirstWrite 3}
		localB_2 {Type O LastRead -1 FirstWrite 3}
		localB_3 {Type O LastRead -1 FirstWrite 3}
		localB_4 {Type O LastRead -1 FirstWrite 3}
		localB_5 {Type O LastRead -1 FirstWrite 3}
		localB_6 {Type O LastRead -1 FirstWrite 3}
		localB_7 {Type O LastRead -1 FirstWrite 3}}
	krnl_mmult_Pipeline_systolic1 {
		localC_7_7_4 {Type I LastRead 0 FirstWrite -1}
		localC_7_6_4 {Type I LastRead 0 FirstWrite -1}
		localC_7_5_4 {Type I LastRead 0 FirstWrite -1}
		localC_7_4_4 {Type I LastRead 0 FirstWrite -1}
		localC_7_3_4 {Type I LastRead 0 FirstWrite -1}
		localC_7_2_4 {Type I LastRead 0 FirstWrite -1}
		localC_7_1_4 {Type I LastRead 0 FirstWrite -1}
		localC_7_0_4 {Type I LastRead 0 FirstWrite -1}
		localC_6_7_4 {Type I LastRead 0 FirstWrite -1}
		localC_6_6_4 {Type I LastRead 0 FirstWrite -1}
		localC_6_5_4 {Type I LastRead 0 FirstWrite -1}
		localC_6_4_4 {Type I LastRead 0 FirstWrite -1}
		localC_6_3_4 {Type I LastRead 0 FirstWrite -1}
		localC_6_2_4 {Type I LastRead 0 FirstWrite -1}
		localC_6_1_4 {Type I LastRead 0 FirstWrite -1}
		localC_6_0_4 {Type I LastRead 0 FirstWrite -1}
		localC_5_7_4 {Type I LastRead 0 FirstWrite -1}
		localC_5_6_4 {Type I LastRead 0 FirstWrite -1}
		localC_5_5_4 {Type I LastRead 0 FirstWrite -1}
		localC_5_4_4 {Type I LastRead 0 FirstWrite -1}
		localC_5_3_4 {Type I LastRead 0 FirstWrite -1}
		localC_5_2_4 {Type I LastRead 0 FirstWrite -1}
		localC_5_1_4 {Type I LastRead 0 FirstWrite -1}
		localC_5_0_4 {Type I LastRead 0 FirstWrite -1}
		localC_4_7_4 {Type I LastRead 0 FirstWrite -1}
		localC_4_6_4 {Type I LastRead 0 FirstWrite -1}
		localC_4_5_4 {Type I LastRead 0 FirstWrite -1}
		localC_4_4_4 {Type I LastRead 0 FirstWrite -1}
		localC_4_3_4 {Type I LastRead 0 FirstWrite -1}
		localC_4_2_4 {Type I LastRead 0 FirstWrite -1}
		localC_4_1_4 {Type I LastRead 0 FirstWrite -1}
		localC_4_0_4 {Type I LastRead 0 FirstWrite -1}
		localC_3_7_4 {Type I LastRead 0 FirstWrite -1}
		localC_3_6_4 {Type I LastRead 0 FirstWrite -1}
		localC_3_5_4 {Type I LastRead 0 FirstWrite -1}
		localC_3_4_4 {Type I LastRead 0 FirstWrite -1}
		localC_3_3_4 {Type I LastRead 0 FirstWrite -1}
		localC_3_2_4 {Type I LastRead 0 FirstWrite -1}
		localC_3_1_4 {Type I LastRead 0 FirstWrite -1}
		localC_3_0_4 {Type I LastRead 0 FirstWrite -1}
		localC_2_7_4 {Type I LastRead 0 FirstWrite -1}
		localC_2_6_4 {Type I LastRead 0 FirstWrite -1}
		localC_2_5_4 {Type I LastRead 0 FirstWrite -1}
		localC_2_4_4 {Type I LastRead 0 FirstWrite -1}
		localC_2_3_4 {Type I LastRead 0 FirstWrite -1}
		localC_2_2_4 {Type I LastRead 0 FirstWrite -1}
		localC_2_1_4 {Type I LastRead 0 FirstWrite -1}
		localC_2_0_4 {Type I LastRead 0 FirstWrite -1}
		localC_1_7_4 {Type I LastRead 0 FirstWrite -1}
		localC_1_6_4 {Type I LastRead 0 FirstWrite -1}
		localC_1_5_4 {Type I LastRead 0 FirstWrite -1}
		localC_1_4_4 {Type I LastRead 0 FirstWrite -1}
		localC_1_3_4 {Type I LastRead 0 FirstWrite -1}
		localC_1_2_4 {Type I LastRead 0 FirstWrite -1}
		localC_1_1_4 {Type I LastRead 0 FirstWrite -1}
		localC_1_0_4 {Type I LastRead 0 FirstWrite -1}
		localC_0_7_2 {Type I LastRead 0 FirstWrite -1}
		localC_0_6_2 {Type I LastRead 0 FirstWrite -1}
		localC_0_5_2 {Type I LastRead 0 FirstWrite -1}
		localC_0_4_2 {Type I LastRead 0 FirstWrite -1}
		localC_0_3_2 {Type I LastRead 0 FirstWrite -1}
		localC_0_2_2 {Type I LastRead 0 FirstWrite -1}
		localC_0_1_2 {Type I LastRead 0 FirstWrite -1}
		localC_0_0_2 {Type I LastRead 0 FirstWrite -1}
		localA_7 {Type I LastRead 0 FirstWrite -1}
		localA_6 {Type I LastRead 0 FirstWrite -1}
		localA_5 {Type I LastRead 0 FirstWrite -1}
		localA_4 {Type I LastRead 0 FirstWrite -1}
		localA_3 {Type I LastRead 0 FirstWrite -1}
		localA_2 {Type I LastRead 0 FirstWrite -1}
		localA_1 {Type I LastRead 0 FirstWrite -1}
		localA_0 {Type I LastRead 0 FirstWrite -1}
		localB_7 {Type I LastRead 0 FirstWrite -1}
		localB_6 {Type I LastRead 0 FirstWrite -1}
		localB_5 {Type I LastRead 0 FirstWrite -1}
		localB_4 {Type I LastRead 0 FirstWrite -1}
		localB_3 {Type I LastRead 0 FirstWrite -1}
		localB_2 {Type I LastRead 0 FirstWrite -1}
		localB_1 {Type I LastRead 0 FirstWrite -1}
		localB_0 {Type I LastRead 0 FirstWrite -1}
		localC_7_7_2_out {Type O LastRead -1 FirstWrite 1}
		localC_7_6_2_out {Type O LastRead -1 FirstWrite 1}
		localC_7_5_2_out {Type O LastRead -1 FirstWrite 1}
		localC_7_4_2_out {Type O LastRead -1 FirstWrite 1}
		localC_7_3_2_out {Type O LastRead -1 FirstWrite 1}
		localC_7_2_2_out {Type O LastRead -1 FirstWrite 1}
		localC_7_1_2_out {Type O LastRead -1 FirstWrite 1}
		localC_7_0_2_out {Type O LastRead -1 FirstWrite 1}
		localC_6_7_2_out {Type O LastRead -1 FirstWrite 1}
		localC_6_6_2_out {Type O LastRead -1 FirstWrite 1}
		localC_6_5_2_out {Type O LastRead -1 FirstWrite 1}
		localC_6_4_2_out {Type O LastRead -1 FirstWrite 1}
		localC_6_3_2_out {Type O LastRead -1 FirstWrite 1}
		localC_6_2_2_out {Type O LastRead -1 FirstWrite 1}
		localC_6_1_2_out {Type O LastRead -1 FirstWrite 1}
		localC_6_0_2_out {Type O LastRead -1 FirstWrite 1}
		localC_5_7_2_out {Type O LastRead -1 FirstWrite 1}
		localC_5_6_2_out {Type O LastRead -1 FirstWrite 1}
		localC_5_5_2_out {Type O LastRead -1 FirstWrite 1}
		localC_5_4_2_out {Type O LastRead -1 FirstWrite 1}
		localC_5_3_2_out {Type O LastRead -1 FirstWrite 1}
		localC_5_2_2_out {Type O LastRead -1 FirstWrite 1}
		localC_5_1_2_out {Type O LastRead -1 FirstWrite 1}
		localC_5_0_2_out {Type O LastRead -1 FirstWrite 1}
		localC_4_7_2_out {Type O LastRead -1 FirstWrite 1}
		localC_4_6_2_out {Type O LastRead -1 FirstWrite 1}
		localC_4_5_2_out {Type O LastRead -1 FirstWrite 1}
		localC_4_4_2_out {Type O LastRead -1 FirstWrite 1}
		localC_4_3_2_out {Type O LastRead -1 FirstWrite 1}
		localC_4_2_2_out {Type O LastRead -1 FirstWrite 1}
		localC_4_1_2_out {Type O LastRead -1 FirstWrite 1}
		localC_4_0_2_out {Type O LastRead -1 FirstWrite 1}
		localC_3_7_2_out {Type O LastRead -1 FirstWrite 1}
		localC_3_6_2_out {Type O LastRead -1 FirstWrite 1}
		localC_3_5_2_out {Type O LastRead -1 FirstWrite 1}
		localC_3_4_2_out {Type O LastRead -1 FirstWrite 1}
		localC_3_3_2_out {Type O LastRead -1 FirstWrite 1}
		localC_3_2_2_out {Type O LastRead -1 FirstWrite 1}
		localC_3_1_2_out {Type O LastRead -1 FirstWrite 1}
		localC_3_0_2_out {Type O LastRead -1 FirstWrite 1}
		localC_2_7_2_out {Type O LastRead -1 FirstWrite 1}
		localC_2_6_2_out {Type O LastRead -1 FirstWrite 1}
		localC_2_5_2_out {Type O LastRead -1 FirstWrite 1}
		localC_2_4_2_out {Type O LastRead -1 FirstWrite 1}
		localC_2_3_2_out {Type O LastRead -1 FirstWrite 1}
		localC_2_2_2_out {Type O LastRead -1 FirstWrite 1}
		localC_2_1_2_out {Type O LastRead -1 FirstWrite 1}
		localC_2_0_2_out {Type O LastRead -1 FirstWrite 1}
		localC_1_7_2_out {Type O LastRead -1 FirstWrite 1}
		localC_1_6_2_out {Type O LastRead -1 FirstWrite 1}
		localC_1_5_2_out {Type O LastRead -1 FirstWrite 1}
		localC_1_4_2_out {Type O LastRead -1 FirstWrite 1}
		localC_1_3_2_out {Type O LastRead -1 FirstWrite 1}
		localC_1_2_2_out {Type O LastRead -1 FirstWrite 1}
		localC_1_1_2_out {Type O LastRead -1 FirstWrite 1}
		localC_1_0_2_out {Type O LastRead -1 FirstWrite 1}
		localC_0_7_4_out {Type O LastRead -1 FirstWrite 1}
		localC_0_6_4_out {Type O LastRead -1 FirstWrite 1}
		localC_0_5_4_out {Type O LastRead -1 FirstWrite 1}
		localC_0_4_4_out {Type O LastRead -1 FirstWrite 1}
		localC_0_3_4_out {Type O LastRead -1 FirstWrite 1}
		localC_0_2_4_out {Type O LastRead -1 FirstWrite 1}
		localC_0_1_4_out {Type O LastRead -1 FirstWrite 1}
		localC_0_0_4_out {Type O LastRead -1 FirstWrite 1}}
	krnl_mmult_Pipeline_writeC_writeC_inner {
		zext_ln265 {Type I LastRead 0 FirstWrite -1}
		zext_ln212_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln212 {Type I LastRead 0 FirstWrite -1}
		tmp_10 {Type I LastRead 0 FirstWrite -1}
		bound66 {Type I LastRead 0 FirstWrite -1}
		zext_ln212_2 {Type I LastRead 0 FirstWrite -1}
		localC_0_0_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_0_1_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_0_2_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_0_3_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_0_4_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_0_5_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_0_6_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_0_7_4_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_0_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_1_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_2_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_3_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_4_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_5_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_6_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_1_7_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_0_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_1_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_2_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_3_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_4_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_5_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_6_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_2_7_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_0_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_1_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_2_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_3_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_4_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_5_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_6_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_3_7_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_4_0_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_4_1_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_4_2_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_4_3_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_4_4_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_4_5_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_4_6_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_4_7_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_5_0_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_5_1_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_5_2_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_5_3_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_5_4_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_5_5_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_5_6_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_5_7_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_6_0_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_6_1_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_6_2_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_6_3_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_6_4_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_6_5_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_6_6_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_6_7_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_7_0_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_7_1_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_7_2_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_7_3_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_7_4_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_7_5_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_7_6_2_reload {Type I LastRead 0 FirstWrite -1}
		localC_7_7_2_reload {Type I LastRead 0 FirstWrite -1}
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
