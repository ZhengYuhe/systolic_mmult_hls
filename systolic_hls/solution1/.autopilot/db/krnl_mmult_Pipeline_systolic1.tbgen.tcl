set moduleName krnl_mmult_Pipeline_systolic1
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
set C_modelName {krnl_mmult_Pipeline_systolic1}
set C_modelType { void 0 }
set C_modelArgList {
	{ localC_7_7_4 int 32 regular  }
	{ localC_7_6_4 int 32 regular  }
	{ localC_7_5_4 int 32 regular  }
	{ localC_7_4_4 int 32 regular  }
	{ localC_7_3_4 int 32 regular  }
	{ localC_7_2_4 int 32 regular  }
	{ localC_7_1_4 int 32 regular  }
	{ localC_7_0_4 int 32 regular  }
	{ localC_6_7_4 int 32 regular  }
	{ localC_6_6_4 int 32 regular  }
	{ localC_6_5_4 int 32 regular  }
	{ localC_6_4_4 int 32 regular  }
	{ localC_6_3_4 int 32 regular  }
	{ localC_6_2_4 int 32 regular  }
	{ localC_6_1_4 int 32 regular  }
	{ localC_6_0_4 int 32 regular  }
	{ localC_5_7_4 int 32 regular  }
	{ localC_5_6_4 int 32 regular  }
	{ localC_5_5_4 int 32 regular  }
	{ localC_5_4_4 int 32 regular  }
	{ localC_5_3_4 int 32 regular  }
	{ localC_5_2_4 int 32 regular  }
	{ localC_5_1_4 int 32 regular  }
	{ localC_5_0_4 int 32 regular  }
	{ localC_4_7_4 int 32 regular  }
	{ localC_4_6_4 int 32 regular  }
	{ localC_4_5_4 int 32 regular  }
	{ localC_4_4_4 int 32 regular  }
	{ localC_4_3_4 int 32 regular  }
	{ localC_4_2_4 int 32 regular  }
	{ localC_4_1_4 int 32 regular  }
	{ localC_4_0_4 int 32 regular  }
	{ localC_3_7_4 int 32 regular  }
	{ localC_3_6_4 int 32 regular  }
	{ localC_3_5_4 int 32 regular  }
	{ localC_3_4_4 int 32 regular  }
	{ localC_3_3_4 int 32 regular  }
	{ localC_3_2_4 int 32 regular  }
	{ localC_3_1_4 int 32 regular  }
	{ localC_3_0_4 int 32 regular  }
	{ localC_2_7_4 int 32 regular  }
	{ localC_2_6_4 int 32 regular  }
	{ localC_2_5_4 int 32 regular  }
	{ localC_2_4_4 int 32 regular  }
	{ localC_2_3_4 int 32 regular  }
	{ localC_2_2_4 int 32 regular  }
	{ localC_2_1_4 int 32 regular  }
	{ localC_2_0_4 int 32 regular  }
	{ localC_1_7_4 int 32 regular  }
	{ localC_1_6_4 int 32 regular  }
	{ localC_1_5_4 int 32 regular  }
	{ localC_1_4_4 int 32 regular  }
	{ localC_1_3_4 int 32 regular  }
	{ localC_1_2_4 int 32 regular  }
	{ localC_1_1_4 int 32 regular  }
	{ localC_1_0_4 int 32 regular  }
	{ localC_0_7_2 int 32 regular  }
	{ localC_0_6_2 int 32 regular  }
	{ localC_0_5_2 int 32 regular  }
	{ localC_0_4_2 int 32 regular  }
	{ localC_0_3_2 int 32 regular  }
	{ localC_0_2_2 int 32 regular  }
	{ localC_0_1_2 int 32 regular  }
	{ localC_0_0_2 int 32 regular  }
	{ localA_7 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localA_6 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localA_5 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localA_4 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localA_3 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localA_2 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localA_1 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localA_0 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localB_7 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localB_6 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localB_5 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localB_4 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localB_3 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localB_2 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localB_1 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localB_0 int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ localC_7_7_2_out int 32 regular {pointer 1}  }
	{ localC_7_6_2_out int 32 regular {pointer 1}  }
	{ localC_7_5_2_out int 32 regular {pointer 1}  }
	{ localC_7_4_2_out int 32 regular {pointer 1}  }
	{ localC_7_3_2_out int 32 regular {pointer 1}  }
	{ localC_7_2_2_out int 32 regular {pointer 1}  }
	{ localC_7_1_2_out int 32 regular {pointer 1}  }
	{ localC_7_0_2_out int 32 regular {pointer 1}  }
	{ localC_6_7_2_out int 32 regular {pointer 1}  }
	{ localC_6_6_2_out int 32 regular {pointer 1}  }
	{ localC_6_5_2_out int 32 regular {pointer 1}  }
	{ localC_6_4_2_out int 32 regular {pointer 1}  }
	{ localC_6_3_2_out int 32 regular {pointer 1}  }
	{ localC_6_2_2_out int 32 regular {pointer 1}  }
	{ localC_6_1_2_out int 32 regular {pointer 1}  }
	{ localC_6_0_2_out int 32 regular {pointer 1}  }
	{ localC_5_7_2_out int 32 regular {pointer 1}  }
	{ localC_5_6_2_out int 32 regular {pointer 1}  }
	{ localC_5_5_2_out int 32 regular {pointer 1}  }
	{ localC_5_4_2_out int 32 regular {pointer 1}  }
	{ localC_5_3_2_out int 32 regular {pointer 1}  }
	{ localC_5_2_2_out int 32 regular {pointer 1}  }
	{ localC_5_1_2_out int 32 regular {pointer 1}  }
	{ localC_5_0_2_out int 32 regular {pointer 1}  }
	{ localC_4_7_2_out int 32 regular {pointer 1}  }
	{ localC_4_6_2_out int 32 regular {pointer 1}  }
	{ localC_4_5_2_out int 32 regular {pointer 1}  }
	{ localC_4_4_2_out int 32 regular {pointer 1}  }
	{ localC_4_3_2_out int 32 regular {pointer 1}  }
	{ localC_4_2_2_out int 32 regular {pointer 1}  }
	{ localC_4_1_2_out int 32 regular {pointer 1}  }
	{ localC_4_0_2_out int 32 regular {pointer 1}  }
	{ localC_3_7_2_out int 32 regular {pointer 1}  }
	{ localC_3_6_2_out int 32 regular {pointer 1}  }
	{ localC_3_5_2_out int 32 regular {pointer 1}  }
	{ localC_3_4_2_out int 32 regular {pointer 1}  }
	{ localC_3_3_2_out int 32 regular {pointer 1}  }
	{ localC_3_2_2_out int 32 regular {pointer 1}  }
	{ localC_3_1_2_out int 32 regular {pointer 1}  }
	{ localC_3_0_2_out int 32 regular {pointer 1}  }
	{ localC_2_7_2_out int 32 regular {pointer 1}  }
	{ localC_2_6_2_out int 32 regular {pointer 1}  }
	{ localC_2_5_2_out int 32 regular {pointer 1}  }
	{ localC_2_4_2_out int 32 regular {pointer 1}  }
	{ localC_2_3_2_out int 32 regular {pointer 1}  }
	{ localC_2_2_2_out int 32 regular {pointer 1}  }
	{ localC_2_1_2_out int 32 regular {pointer 1}  }
	{ localC_2_0_2_out int 32 regular {pointer 1}  }
	{ localC_1_7_2_out int 32 regular {pointer 1}  }
	{ localC_1_6_2_out int 32 regular {pointer 1}  }
	{ localC_1_5_2_out int 32 regular {pointer 1}  }
	{ localC_1_4_2_out int 32 regular {pointer 1}  }
	{ localC_1_3_2_out int 32 regular {pointer 1}  }
	{ localC_1_2_2_out int 32 regular {pointer 1}  }
	{ localC_1_1_2_out int 32 regular {pointer 1}  }
	{ localC_1_0_2_out int 32 regular {pointer 1}  }
	{ localC_0_7_4_out int 32 regular {pointer 1}  }
	{ localC_0_6_4_out int 32 regular {pointer 1}  }
	{ localC_0_5_4_out int 32 regular {pointer 1}  }
	{ localC_0_4_4_out int 32 regular {pointer 1}  }
	{ localC_0_3_4_out int 32 regular {pointer 1}  }
	{ localC_0_2_4_out int 32 regular {pointer 1}  }
	{ localC_0_1_4_out int 32 regular {pointer 1}  }
	{ localC_0_0_4_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "localC_7_7_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_7_6_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_7_5_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_7_4_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_7_3_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_7_2_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_7_1_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_7_0_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_6_7_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_6_6_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_6_5_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_6_4_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_6_3_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_6_2_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_6_1_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_6_0_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_5_7_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_5_6_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_5_5_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_5_4_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_5_3_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_5_2_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_5_1_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_5_0_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_4_7_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_4_6_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_4_5_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_4_4_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_4_3_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_4_2_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_4_1_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_4_0_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_3_7_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_3_6_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_3_5_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_3_4_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_3_3_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_3_2_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_3_1_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_3_0_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_2_7_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_2_6_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_2_5_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_2_4_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_2_3_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_2_2_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_2_1_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_2_0_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_1_7_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_1_6_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_1_5_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_1_4_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_1_3_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_1_2_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_1_1_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_1_0_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_0_7_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_0_6_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_0_5_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_0_4_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_0_3_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_0_2_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_0_1_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_0_0_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localA_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localA_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localA_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localA_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localA_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localA_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localA_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localA_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localB_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localB_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localB_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localB_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localB_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localB_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localB_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localB_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localC_7_7_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_7_6_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_7_5_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_7_4_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_7_3_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_7_2_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_7_1_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_7_0_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_6_7_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_6_6_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_6_5_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_6_4_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_6_3_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_6_2_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_6_1_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_6_0_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_5_7_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_5_6_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_5_5_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_5_4_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_5_3_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_5_2_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_5_1_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_5_0_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_4_7_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_4_6_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_4_5_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_4_4_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_4_3_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_4_2_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_4_1_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_4_0_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_3_7_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_3_6_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_3_5_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_3_4_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_3_3_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_3_2_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_3_1_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_3_0_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_2_7_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_2_6_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_2_5_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_2_4_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_2_3_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_2_2_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_2_1_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_2_0_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_1_7_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_1_6_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_1_5_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_1_4_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_1_3_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_1_2_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_1_1_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_1_0_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_0_7_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_0_6_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_0_5_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_0_4_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_0_3_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_0_2_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_0_1_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "localC_0_0_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 246
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ localC_7_7_4 sc_in sc_lv 32 signal 0 } 
	{ localC_7_6_4 sc_in sc_lv 32 signal 1 } 
	{ localC_7_5_4 sc_in sc_lv 32 signal 2 } 
	{ localC_7_4_4 sc_in sc_lv 32 signal 3 } 
	{ localC_7_3_4 sc_in sc_lv 32 signal 4 } 
	{ localC_7_2_4 sc_in sc_lv 32 signal 5 } 
	{ localC_7_1_4 sc_in sc_lv 32 signal 6 } 
	{ localC_7_0_4 sc_in sc_lv 32 signal 7 } 
	{ localC_6_7_4 sc_in sc_lv 32 signal 8 } 
	{ localC_6_6_4 sc_in sc_lv 32 signal 9 } 
	{ localC_6_5_4 sc_in sc_lv 32 signal 10 } 
	{ localC_6_4_4 sc_in sc_lv 32 signal 11 } 
	{ localC_6_3_4 sc_in sc_lv 32 signal 12 } 
	{ localC_6_2_4 sc_in sc_lv 32 signal 13 } 
	{ localC_6_1_4 sc_in sc_lv 32 signal 14 } 
	{ localC_6_0_4 sc_in sc_lv 32 signal 15 } 
	{ localC_5_7_4 sc_in sc_lv 32 signal 16 } 
	{ localC_5_6_4 sc_in sc_lv 32 signal 17 } 
	{ localC_5_5_4 sc_in sc_lv 32 signal 18 } 
	{ localC_5_4_4 sc_in sc_lv 32 signal 19 } 
	{ localC_5_3_4 sc_in sc_lv 32 signal 20 } 
	{ localC_5_2_4 sc_in sc_lv 32 signal 21 } 
	{ localC_5_1_4 sc_in sc_lv 32 signal 22 } 
	{ localC_5_0_4 sc_in sc_lv 32 signal 23 } 
	{ localC_4_7_4 sc_in sc_lv 32 signal 24 } 
	{ localC_4_6_4 sc_in sc_lv 32 signal 25 } 
	{ localC_4_5_4 sc_in sc_lv 32 signal 26 } 
	{ localC_4_4_4 sc_in sc_lv 32 signal 27 } 
	{ localC_4_3_4 sc_in sc_lv 32 signal 28 } 
	{ localC_4_2_4 sc_in sc_lv 32 signal 29 } 
	{ localC_4_1_4 sc_in sc_lv 32 signal 30 } 
	{ localC_4_0_4 sc_in sc_lv 32 signal 31 } 
	{ localC_3_7_4 sc_in sc_lv 32 signal 32 } 
	{ localC_3_6_4 sc_in sc_lv 32 signal 33 } 
	{ localC_3_5_4 sc_in sc_lv 32 signal 34 } 
	{ localC_3_4_4 sc_in sc_lv 32 signal 35 } 
	{ localC_3_3_4 sc_in sc_lv 32 signal 36 } 
	{ localC_3_2_4 sc_in sc_lv 32 signal 37 } 
	{ localC_3_1_4 sc_in sc_lv 32 signal 38 } 
	{ localC_3_0_4 sc_in sc_lv 32 signal 39 } 
	{ localC_2_7_4 sc_in sc_lv 32 signal 40 } 
	{ localC_2_6_4 sc_in sc_lv 32 signal 41 } 
	{ localC_2_5_4 sc_in sc_lv 32 signal 42 } 
	{ localC_2_4_4 sc_in sc_lv 32 signal 43 } 
	{ localC_2_3_4 sc_in sc_lv 32 signal 44 } 
	{ localC_2_2_4 sc_in sc_lv 32 signal 45 } 
	{ localC_2_1_4 sc_in sc_lv 32 signal 46 } 
	{ localC_2_0_4 sc_in sc_lv 32 signal 47 } 
	{ localC_1_7_4 sc_in sc_lv 32 signal 48 } 
	{ localC_1_6_4 sc_in sc_lv 32 signal 49 } 
	{ localC_1_5_4 sc_in sc_lv 32 signal 50 } 
	{ localC_1_4_4 sc_in sc_lv 32 signal 51 } 
	{ localC_1_3_4 sc_in sc_lv 32 signal 52 } 
	{ localC_1_2_4 sc_in sc_lv 32 signal 53 } 
	{ localC_1_1_4 sc_in sc_lv 32 signal 54 } 
	{ localC_1_0_4 sc_in sc_lv 32 signal 55 } 
	{ localC_0_7_2 sc_in sc_lv 32 signal 56 } 
	{ localC_0_6_2 sc_in sc_lv 32 signal 57 } 
	{ localC_0_5_2 sc_in sc_lv 32 signal 58 } 
	{ localC_0_4_2 sc_in sc_lv 32 signal 59 } 
	{ localC_0_3_2 sc_in sc_lv 32 signal 60 } 
	{ localC_0_2_2 sc_in sc_lv 32 signal 61 } 
	{ localC_0_1_2 sc_in sc_lv 32 signal 62 } 
	{ localC_0_0_2 sc_in sc_lv 32 signal 63 } 
	{ localA_7_address0 sc_out sc_lv 12 signal 64 } 
	{ localA_7_ce0 sc_out sc_logic 1 signal 64 } 
	{ localA_7_q0 sc_in sc_lv 32 signal 64 } 
	{ localA_6_address0 sc_out sc_lv 12 signal 65 } 
	{ localA_6_ce0 sc_out sc_logic 1 signal 65 } 
	{ localA_6_q0 sc_in sc_lv 32 signal 65 } 
	{ localA_5_address0 sc_out sc_lv 12 signal 66 } 
	{ localA_5_ce0 sc_out sc_logic 1 signal 66 } 
	{ localA_5_q0 sc_in sc_lv 32 signal 66 } 
	{ localA_4_address0 sc_out sc_lv 12 signal 67 } 
	{ localA_4_ce0 sc_out sc_logic 1 signal 67 } 
	{ localA_4_q0 sc_in sc_lv 32 signal 67 } 
	{ localA_3_address0 sc_out sc_lv 12 signal 68 } 
	{ localA_3_ce0 sc_out sc_logic 1 signal 68 } 
	{ localA_3_q0 sc_in sc_lv 32 signal 68 } 
	{ localA_2_address0 sc_out sc_lv 12 signal 69 } 
	{ localA_2_ce0 sc_out sc_logic 1 signal 69 } 
	{ localA_2_q0 sc_in sc_lv 32 signal 69 } 
	{ localA_1_address0 sc_out sc_lv 12 signal 70 } 
	{ localA_1_ce0 sc_out sc_logic 1 signal 70 } 
	{ localA_1_q0 sc_in sc_lv 32 signal 70 } 
	{ localA_0_address0 sc_out sc_lv 12 signal 71 } 
	{ localA_0_ce0 sc_out sc_logic 1 signal 71 } 
	{ localA_0_q0 sc_in sc_lv 32 signal 71 } 
	{ localB_7_address0 sc_out sc_lv 12 signal 72 } 
	{ localB_7_ce0 sc_out sc_logic 1 signal 72 } 
	{ localB_7_q0 sc_in sc_lv 32 signal 72 } 
	{ localB_6_address0 sc_out sc_lv 12 signal 73 } 
	{ localB_6_ce0 sc_out sc_logic 1 signal 73 } 
	{ localB_6_q0 sc_in sc_lv 32 signal 73 } 
	{ localB_5_address0 sc_out sc_lv 12 signal 74 } 
	{ localB_5_ce0 sc_out sc_logic 1 signal 74 } 
	{ localB_5_q0 sc_in sc_lv 32 signal 74 } 
	{ localB_4_address0 sc_out sc_lv 12 signal 75 } 
	{ localB_4_ce0 sc_out sc_logic 1 signal 75 } 
	{ localB_4_q0 sc_in sc_lv 32 signal 75 } 
	{ localB_3_address0 sc_out sc_lv 12 signal 76 } 
	{ localB_3_ce0 sc_out sc_logic 1 signal 76 } 
	{ localB_3_q0 sc_in sc_lv 32 signal 76 } 
	{ localB_2_address0 sc_out sc_lv 12 signal 77 } 
	{ localB_2_ce0 sc_out sc_logic 1 signal 77 } 
	{ localB_2_q0 sc_in sc_lv 32 signal 77 } 
	{ localB_1_address0 sc_out sc_lv 12 signal 78 } 
	{ localB_1_ce0 sc_out sc_logic 1 signal 78 } 
	{ localB_1_q0 sc_in sc_lv 32 signal 78 } 
	{ localB_0_address0 sc_out sc_lv 12 signal 79 } 
	{ localB_0_ce0 sc_out sc_logic 1 signal 79 } 
	{ localB_0_q0 sc_in sc_lv 32 signal 79 } 
	{ localC_7_7_2_out sc_out sc_lv 32 signal 80 } 
	{ localC_7_7_2_out_ap_vld sc_out sc_logic 1 outvld 80 } 
	{ localC_7_6_2_out sc_out sc_lv 32 signal 81 } 
	{ localC_7_6_2_out_ap_vld sc_out sc_logic 1 outvld 81 } 
	{ localC_7_5_2_out sc_out sc_lv 32 signal 82 } 
	{ localC_7_5_2_out_ap_vld sc_out sc_logic 1 outvld 82 } 
	{ localC_7_4_2_out sc_out sc_lv 32 signal 83 } 
	{ localC_7_4_2_out_ap_vld sc_out sc_logic 1 outvld 83 } 
	{ localC_7_3_2_out sc_out sc_lv 32 signal 84 } 
	{ localC_7_3_2_out_ap_vld sc_out sc_logic 1 outvld 84 } 
	{ localC_7_2_2_out sc_out sc_lv 32 signal 85 } 
	{ localC_7_2_2_out_ap_vld sc_out sc_logic 1 outvld 85 } 
	{ localC_7_1_2_out sc_out sc_lv 32 signal 86 } 
	{ localC_7_1_2_out_ap_vld sc_out sc_logic 1 outvld 86 } 
	{ localC_7_0_2_out sc_out sc_lv 32 signal 87 } 
	{ localC_7_0_2_out_ap_vld sc_out sc_logic 1 outvld 87 } 
	{ localC_6_7_2_out sc_out sc_lv 32 signal 88 } 
	{ localC_6_7_2_out_ap_vld sc_out sc_logic 1 outvld 88 } 
	{ localC_6_6_2_out sc_out sc_lv 32 signal 89 } 
	{ localC_6_6_2_out_ap_vld sc_out sc_logic 1 outvld 89 } 
	{ localC_6_5_2_out sc_out sc_lv 32 signal 90 } 
	{ localC_6_5_2_out_ap_vld sc_out sc_logic 1 outvld 90 } 
	{ localC_6_4_2_out sc_out sc_lv 32 signal 91 } 
	{ localC_6_4_2_out_ap_vld sc_out sc_logic 1 outvld 91 } 
	{ localC_6_3_2_out sc_out sc_lv 32 signal 92 } 
	{ localC_6_3_2_out_ap_vld sc_out sc_logic 1 outvld 92 } 
	{ localC_6_2_2_out sc_out sc_lv 32 signal 93 } 
	{ localC_6_2_2_out_ap_vld sc_out sc_logic 1 outvld 93 } 
	{ localC_6_1_2_out sc_out sc_lv 32 signal 94 } 
	{ localC_6_1_2_out_ap_vld sc_out sc_logic 1 outvld 94 } 
	{ localC_6_0_2_out sc_out sc_lv 32 signal 95 } 
	{ localC_6_0_2_out_ap_vld sc_out sc_logic 1 outvld 95 } 
	{ localC_5_7_2_out sc_out sc_lv 32 signal 96 } 
	{ localC_5_7_2_out_ap_vld sc_out sc_logic 1 outvld 96 } 
	{ localC_5_6_2_out sc_out sc_lv 32 signal 97 } 
	{ localC_5_6_2_out_ap_vld sc_out sc_logic 1 outvld 97 } 
	{ localC_5_5_2_out sc_out sc_lv 32 signal 98 } 
	{ localC_5_5_2_out_ap_vld sc_out sc_logic 1 outvld 98 } 
	{ localC_5_4_2_out sc_out sc_lv 32 signal 99 } 
	{ localC_5_4_2_out_ap_vld sc_out sc_logic 1 outvld 99 } 
	{ localC_5_3_2_out sc_out sc_lv 32 signal 100 } 
	{ localC_5_3_2_out_ap_vld sc_out sc_logic 1 outvld 100 } 
	{ localC_5_2_2_out sc_out sc_lv 32 signal 101 } 
	{ localC_5_2_2_out_ap_vld sc_out sc_logic 1 outvld 101 } 
	{ localC_5_1_2_out sc_out sc_lv 32 signal 102 } 
	{ localC_5_1_2_out_ap_vld sc_out sc_logic 1 outvld 102 } 
	{ localC_5_0_2_out sc_out sc_lv 32 signal 103 } 
	{ localC_5_0_2_out_ap_vld sc_out sc_logic 1 outvld 103 } 
	{ localC_4_7_2_out sc_out sc_lv 32 signal 104 } 
	{ localC_4_7_2_out_ap_vld sc_out sc_logic 1 outvld 104 } 
	{ localC_4_6_2_out sc_out sc_lv 32 signal 105 } 
	{ localC_4_6_2_out_ap_vld sc_out sc_logic 1 outvld 105 } 
	{ localC_4_5_2_out sc_out sc_lv 32 signal 106 } 
	{ localC_4_5_2_out_ap_vld sc_out sc_logic 1 outvld 106 } 
	{ localC_4_4_2_out sc_out sc_lv 32 signal 107 } 
	{ localC_4_4_2_out_ap_vld sc_out sc_logic 1 outvld 107 } 
	{ localC_4_3_2_out sc_out sc_lv 32 signal 108 } 
	{ localC_4_3_2_out_ap_vld sc_out sc_logic 1 outvld 108 } 
	{ localC_4_2_2_out sc_out sc_lv 32 signal 109 } 
	{ localC_4_2_2_out_ap_vld sc_out sc_logic 1 outvld 109 } 
	{ localC_4_1_2_out sc_out sc_lv 32 signal 110 } 
	{ localC_4_1_2_out_ap_vld sc_out sc_logic 1 outvld 110 } 
	{ localC_4_0_2_out sc_out sc_lv 32 signal 111 } 
	{ localC_4_0_2_out_ap_vld sc_out sc_logic 1 outvld 111 } 
	{ localC_3_7_2_out sc_out sc_lv 32 signal 112 } 
	{ localC_3_7_2_out_ap_vld sc_out sc_logic 1 outvld 112 } 
	{ localC_3_6_2_out sc_out sc_lv 32 signal 113 } 
	{ localC_3_6_2_out_ap_vld sc_out sc_logic 1 outvld 113 } 
	{ localC_3_5_2_out sc_out sc_lv 32 signal 114 } 
	{ localC_3_5_2_out_ap_vld sc_out sc_logic 1 outvld 114 } 
	{ localC_3_4_2_out sc_out sc_lv 32 signal 115 } 
	{ localC_3_4_2_out_ap_vld sc_out sc_logic 1 outvld 115 } 
	{ localC_3_3_2_out sc_out sc_lv 32 signal 116 } 
	{ localC_3_3_2_out_ap_vld sc_out sc_logic 1 outvld 116 } 
	{ localC_3_2_2_out sc_out sc_lv 32 signal 117 } 
	{ localC_3_2_2_out_ap_vld sc_out sc_logic 1 outvld 117 } 
	{ localC_3_1_2_out sc_out sc_lv 32 signal 118 } 
	{ localC_3_1_2_out_ap_vld sc_out sc_logic 1 outvld 118 } 
	{ localC_3_0_2_out sc_out sc_lv 32 signal 119 } 
	{ localC_3_0_2_out_ap_vld sc_out sc_logic 1 outvld 119 } 
	{ localC_2_7_2_out sc_out sc_lv 32 signal 120 } 
	{ localC_2_7_2_out_ap_vld sc_out sc_logic 1 outvld 120 } 
	{ localC_2_6_2_out sc_out sc_lv 32 signal 121 } 
	{ localC_2_6_2_out_ap_vld sc_out sc_logic 1 outvld 121 } 
	{ localC_2_5_2_out sc_out sc_lv 32 signal 122 } 
	{ localC_2_5_2_out_ap_vld sc_out sc_logic 1 outvld 122 } 
	{ localC_2_4_2_out sc_out sc_lv 32 signal 123 } 
	{ localC_2_4_2_out_ap_vld sc_out sc_logic 1 outvld 123 } 
	{ localC_2_3_2_out sc_out sc_lv 32 signal 124 } 
	{ localC_2_3_2_out_ap_vld sc_out sc_logic 1 outvld 124 } 
	{ localC_2_2_2_out sc_out sc_lv 32 signal 125 } 
	{ localC_2_2_2_out_ap_vld sc_out sc_logic 1 outvld 125 } 
	{ localC_2_1_2_out sc_out sc_lv 32 signal 126 } 
	{ localC_2_1_2_out_ap_vld sc_out sc_logic 1 outvld 126 } 
	{ localC_2_0_2_out sc_out sc_lv 32 signal 127 } 
	{ localC_2_0_2_out_ap_vld sc_out sc_logic 1 outvld 127 } 
	{ localC_1_7_2_out sc_out sc_lv 32 signal 128 } 
	{ localC_1_7_2_out_ap_vld sc_out sc_logic 1 outvld 128 } 
	{ localC_1_6_2_out sc_out sc_lv 32 signal 129 } 
	{ localC_1_6_2_out_ap_vld sc_out sc_logic 1 outvld 129 } 
	{ localC_1_5_2_out sc_out sc_lv 32 signal 130 } 
	{ localC_1_5_2_out_ap_vld sc_out sc_logic 1 outvld 130 } 
	{ localC_1_4_2_out sc_out sc_lv 32 signal 131 } 
	{ localC_1_4_2_out_ap_vld sc_out sc_logic 1 outvld 131 } 
	{ localC_1_3_2_out sc_out sc_lv 32 signal 132 } 
	{ localC_1_3_2_out_ap_vld sc_out sc_logic 1 outvld 132 } 
	{ localC_1_2_2_out sc_out sc_lv 32 signal 133 } 
	{ localC_1_2_2_out_ap_vld sc_out sc_logic 1 outvld 133 } 
	{ localC_1_1_2_out sc_out sc_lv 32 signal 134 } 
	{ localC_1_1_2_out_ap_vld sc_out sc_logic 1 outvld 134 } 
	{ localC_1_0_2_out sc_out sc_lv 32 signal 135 } 
	{ localC_1_0_2_out_ap_vld sc_out sc_logic 1 outvld 135 } 
	{ localC_0_7_4_out sc_out sc_lv 32 signal 136 } 
	{ localC_0_7_4_out_ap_vld sc_out sc_logic 1 outvld 136 } 
	{ localC_0_6_4_out sc_out sc_lv 32 signal 137 } 
	{ localC_0_6_4_out_ap_vld sc_out sc_logic 1 outvld 137 } 
	{ localC_0_5_4_out sc_out sc_lv 32 signal 138 } 
	{ localC_0_5_4_out_ap_vld sc_out sc_logic 1 outvld 138 } 
	{ localC_0_4_4_out sc_out sc_lv 32 signal 139 } 
	{ localC_0_4_4_out_ap_vld sc_out sc_logic 1 outvld 139 } 
	{ localC_0_3_4_out sc_out sc_lv 32 signal 140 } 
	{ localC_0_3_4_out_ap_vld sc_out sc_logic 1 outvld 140 } 
	{ localC_0_2_4_out sc_out sc_lv 32 signal 141 } 
	{ localC_0_2_4_out_ap_vld sc_out sc_logic 1 outvld 141 } 
	{ localC_0_1_4_out sc_out sc_lv 32 signal 142 } 
	{ localC_0_1_4_out_ap_vld sc_out sc_logic 1 outvld 142 } 
	{ localC_0_0_4_out sc_out sc_lv 32 signal 143 } 
	{ localC_0_0_4_out_ap_vld sc_out sc_logic 1 outvld 143 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "localC_7_7_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_7_4", "role": "default" }} , 
 	{ "name": "localC_7_6_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_6_4", "role": "default" }} , 
 	{ "name": "localC_7_5_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_5_4", "role": "default" }} , 
 	{ "name": "localC_7_4_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_4_4", "role": "default" }} , 
 	{ "name": "localC_7_3_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_3_4", "role": "default" }} , 
 	{ "name": "localC_7_2_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_2_4", "role": "default" }} , 
 	{ "name": "localC_7_1_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_1_4", "role": "default" }} , 
 	{ "name": "localC_7_0_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_0_4", "role": "default" }} , 
 	{ "name": "localC_6_7_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_7_4", "role": "default" }} , 
 	{ "name": "localC_6_6_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_6_4", "role": "default" }} , 
 	{ "name": "localC_6_5_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_5_4", "role": "default" }} , 
 	{ "name": "localC_6_4_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_4_4", "role": "default" }} , 
 	{ "name": "localC_6_3_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_3_4", "role": "default" }} , 
 	{ "name": "localC_6_2_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_2_4", "role": "default" }} , 
 	{ "name": "localC_6_1_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_1_4", "role": "default" }} , 
 	{ "name": "localC_6_0_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_0_4", "role": "default" }} , 
 	{ "name": "localC_5_7_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_7_4", "role": "default" }} , 
 	{ "name": "localC_5_6_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_6_4", "role": "default" }} , 
 	{ "name": "localC_5_5_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_5_4", "role": "default" }} , 
 	{ "name": "localC_5_4_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_4_4", "role": "default" }} , 
 	{ "name": "localC_5_3_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_3_4", "role": "default" }} , 
 	{ "name": "localC_5_2_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_2_4", "role": "default" }} , 
 	{ "name": "localC_5_1_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_1_4", "role": "default" }} , 
 	{ "name": "localC_5_0_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_0_4", "role": "default" }} , 
 	{ "name": "localC_4_7_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_7_4", "role": "default" }} , 
 	{ "name": "localC_4_6_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_6_4", "role": "default" }} , 
 	{ "name": "localC_4_5_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_5_4", "role": "default" }} , 
 	{ "name": "localC_4_4_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_4_4", "role": "default" }} , 
 	{ "name": "localC_4_3_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_3_4", "role": "default" }} , 
 	{ "name": "localC_4_2_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_2_4", "role": "default" }} , 
 	{ "name": "localC_4_1_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_1_4", "role": "default" }} , 
 	{ "name": "localC_4_0_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_0_4", "role": "default" }} , 
 	{ "name": "localC_3_7_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_7_4", "role": "default" }} , 
 	{ "name": "localC_3_6_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_6_4", "role": "default" }} , 
 	{ "name": "localC_3_5_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_5_4", "role": "default" }} , 
 	{ "name": "localC_3_4_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_4_4", "role": "default" }} , 
 	{ "name": "localC_3_3_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_3_4", "role": "default" }} , 
 	{ "name": "localC_3_2_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_2_4", "role": "default" }} , 
 	{ "name": "localC_3_1_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_1_4", "role": "default" }} , 
 	{ "name": "localC_3_0_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_0_4", "role": "default" }} , 
 	{ "name": "localC_2_7_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_7_4", "role": "default" }} , 
 	{ "name": "localC_2_6_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_6_4", "role": "default" }} , 
 	{ "name": "localC_2_5_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_5_4", "role": "default" }} , 
 	{ "name": "localC_2_4_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_4_4", "role": "default" }} , 
 	{ "name": "localC_2_3_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_3_4", "role": "default" }} , 
 	{ "name": "localC_2_2_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_2_4", "role": "default" }} , 
 	{ "name": "localC_2_1_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_1_4", "role": "default" }} , 
 	{ "name": "localC_2_0_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_0_4", "role": "default" }} , 
 	{ "name": "localC_1_7_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_7_4", "role": "default" }} , 
 	{ "name": "localC_1_6_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_6_4", "role": "default" }} , 
 	{ "name": "localC_1_5_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_5_4", "role": "default" }} , 
 	{ "name": "localC_1_4_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_4_4", "role": "default" }} , 
 	{ "name": "localC_1_3_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_3_4", "role": "default" }} , 
 	{ "name": "localC_1_2_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_2_4", "role": "default" }} , 
 	{ "name": "localC_1_1_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_1_4", "role": "default" }} , 
 	{ "name": "localC_1_0_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_0_4", "role": "default" }} , 
 	{ "name": "localC_0_7_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_7_2", "role": "default" }} , 
 	{ "name": "localC_0_6_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_6_2", "role": "default" }} , 
 	{ "name": "localC_0_5_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_5_2", "role": "default" }} , 
 	{ "name": "localC_0_4_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_4_2", "role": "default" }} , 
 	{ "name": "localC_0_3_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_3_2", "role": "default" }} , 
 	{ "name": "localC_0_2_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_2_2", "role": "default" }} , 
 	{ "name": "localC_0_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_1_2", "role": "default" }} , 
 	{ "name": "localC_0_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_0_2", "role": "default" }} , 
 	{ "name": "localA_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localA_7", "role": "address0" }} , 
 	{ "name": "localA_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localA_7", "role": "ce0" }} , 
 	{ "name": "localA_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localA_7", "role": "q0" }} , 
 	{ "name": "localA_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localA_6", "role": "address0" }} , 
 	{ "name": "localA_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localA_6", "role": "ce0" }} , 
 	{ "name": "localA_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localA_6", "role": "q0" }} , 
 	{ "name": "localA_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localA_5", "role": "address0" }} , 
 	{ "name": "localA_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localA_5", "role": "ce0" }} , 
 	{ "name": "localA_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localA_5", "role": "q0" }} , 
 	{ "name": "localA_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localA_4", "role": "address0" }} , 
 	{ "name": "localA_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localA_4", "role": "ce0" }} , 
 	{ "name": "localA_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localA_4", "role": "q0" }} , 
 	{ "name": "localA_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localA_3", "role": "address0" }} , 
 	{ "name": "localA_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localA_3", "role": "ce0" }} , 
 	{ "name": "localA_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localA_3", "role": "q0" }} , 
 	{ "name": "localA_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localA_2", "role": "address0" }} , 
 	{ "name": "localA_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localA_2", "role": "ce0" }} , 
 	{ "name": "localA_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localA_2", "role": "q0" }} , 
 	{ "name": "localA_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localA_1", "role": "address0" }} , 
 	{ "name": "localA_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localA_1", "role": "ce0" }} , 
 	{ "name": "localA_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localA_1", "role": "q0" }} , 
 	{ "name": "localA_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localA_0", "role": "address0" }} , 
 	{ "name": "localA_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localA_0", "role": "ce0" }} , 
 	{ "name": "localA_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localA_0", "role": "q0" }} , 
 	{ "name": "localB_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localB_7", "role": "address0" }} , 
 	{ "name": "localB_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_7", "role": "ce0" }} , 
 	{ "name": "localB_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_7", "role": "q0" }} , 
 	{ "name": "localB_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localB_6", "role": "address0" }} , 
 	{ "name": "localB_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_6", "role": "ce0" }} , 
 	{ "name": "localB_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_6", "role": "q0" }} , 
 	{ "name": "localB_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localB_5", "role": "address0" }} , 
 	{ "name": "localB_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_5", "role": "ce0" }} , 
 	{ "name": "localB_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_5", "role": "q0" }} , 
 	{ "name": "localB_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localB_4", "role": "address0" }} , 
 	{ "name": "localB_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_4", "role": "ce0" }} , 
 	{ "name": "localB_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_4", "role": "q0" }} , 
 	{ "name": "localB_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localB_3", "role": "address0" }} , 
 	{ "name": "localB_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_3", "role": "ce0" }} , 
 	{ "name": "localB_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_3", "role": "q0" }} , 
 	{ "name": "localB_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localB_2", "role": "address0" }} , 
 	{ "name": "localB_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_2", "role": "ce0" }} , 
 	{ "name": "localB_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_2", "role": "q0" }} , 
 	{ "name": "localB_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localB_1", "role": "address0" }} , 
 	{ "name": "localB_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_1", "role": "ce0" }} , 
 	{ "name": "localB_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_1", "role": "q0" }} , 
 	{ "name": "localB_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "localB_0", "role": "address0" }} , 
 	{ "name": "localB_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localB_0", "role": "ce0" }} , 
 	{ "name": "localB_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localB_0", "role": "q0" }} , 
 	{ "name": "localC_7_7_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_7_2_out", "role": "default" }} , 
 	{ "name": "localC_7_7_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_7_7_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_7_6_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_6_2_out", "role": "default" }} , 
 	{ "name": "localC_7_6_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_7_6_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_7_5_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_5_2_out", "role": "default" }} , 
 	{ "name": "localC_7_5_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_7_5_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_7_4_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_4_2_out", "role": "default" }} , 
 	{ "name": "localC_7_4_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_7_4_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_7_3_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_3_2_out", "role": "default" }} , 
 	{ "name": "localC_7_3_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_7_3_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_7_2_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_2_2_out", "role": "default" }} , 
 	{ "name": "localC_7_2_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_7_2_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_7_1_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_1_2_out", "role": "default" }} , 
 	{ "name": "localC_7_1_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_7_1_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_7_0_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_7_0_2_out", "role": "default" }} , 
 	{ "name": "localC_7_0_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_7_0_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_6_7_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_7_2_out", "role": "default" }} , 
 	{ "name": "localC_6_7_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_6_7_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_6_6_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_6_2_out", "role": "default" }} , 
 	{ "name": "localC_6_6_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_6_6_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_6_5_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_5_2_out", "role": "default" }} , 
 	{ "name": "localC_6_5_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_6_5_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_6_4_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_4_2_out", "role": "default" }} , 
 	{ "name": "localC_6_4_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_6_4_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_6_3_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_3_2_out", "role": "default" }} , 
 	{ "name": "localC_6_3_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_6_3_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_6_2_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_2_2_out", "role": "default" }} , 
 	{ "name": "localC_6_2_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_6_2_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_6_1_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_1_2_out", "role": "default" }} , 
 	{ "name": "localC_6_1_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_6_1_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_6_0_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_6_0_2_out", "role": "default" }} , 
 	{ "name": "localC_6_0_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_6_0_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_5_7_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_7_2_out", "role": "default" }} , 
 	{ "name": "localC_5_7_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_5_7_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_5_6_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_6_2_out", "role": "default" }} , 
 	{ "name": "localC_5_6_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_5_6_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_5_5_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_5_2_out", "role": "default" }} , 
 	{ "name": "localC_5_5_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_5_5_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_5_4_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_4_2_out", "role": "default" }} , 
 	{ "name": "localC_5_4_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_5_4_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_5_3_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_3_2_out", "role": "default" }} , 
 	{ "name": "localC_5_3_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_5_3_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_5_2_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_2_2_out", "role": "default" }} , 
 	{ "name": "localC_5_2_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_5_2_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_5_1_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_1_2_out", "role": "default" }} , 
 	{ "name": "localC_5_1_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_5_1_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_5_0_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_5_0_2_out", "role": "default" }} , 
 	{ "name": "localC_5_0_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_5_0_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_4_7_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_7_2_out", "role": "default" }} , 
 	{ "name": "localC_4_7_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_4_7_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_4_6_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_6_2_out", "role": "default" }} , 
 	{ "name": "localC_4_6_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_4_6_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_4_5_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_5_2_out", "role": "default" }} , 
 	{ "name": "localC_4_5_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_4_5_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_4_4_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_4_2_out", "role": "default" }} , 
 	{ "name": "localC_4_4_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_4_4_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_4_3_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_3_2_out", "role": "default" }} , 
 	{ "name": "localC_4_3_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_4_3_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_4_2_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_2_2_out", "role": "default" }} , 
 	{ "name": "localC_4_2_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_4_2_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_4_1_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_1_2_out", "role": "default" }} , 
 	{ "name": "localC_4_1_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_4_1_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_4_0_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_4_0_2_out", "role": "default" }} , 
 	{ "name": "localC_4_0_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_4_0_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_3_7_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_7_2_out", "role": "default" }} , 
 	{ "name": "localC_3_7_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_3_7_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_3_6_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_6_2_out", "role": "default" }} , 
 	{ "name": "localC_3_6_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_3_6_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_3_5_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_5_2_out", "role": "default" }} , 
 	{ "name": "localC_3_5_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_3_5_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_3_4_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_4_2_out", "role": "default" }} , 
 	{ "name": "localC_3_4_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_3_4_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_3_3_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_3_2_out", "role": "default" }} , 
 	{ "name": "localC_3_3_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_3_3_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_3_2_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_2_2_out", "role": "default" }} , 
 	{ "name": "localC_3_2_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_3_2_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_3_1_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_1_2_out", "role": "default" }} , 
 	{ "name": "localC_3_1_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_3_1_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_3_0_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_3_0_2_out", "role": "default" }} , 
 	{ "name": "localC_3_0_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_3_0_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_2_7_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_7_2_out", "role": "default" }} , 
 	{ "name": "localC_2_7_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_2_7_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_2_6_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_6_2_out", "role": "default" }} , 
 	{ "name": "localC_2_6_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_2_6_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_2_5_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_5_2_out", "role": "default" }} , 
 	{ "name": "localC_2_5_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_2_5_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_2_4_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_4_2_out", "role": "default" }} , 
 	{ "name": "localC_2_4_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_2_4_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_2_3_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_3_2_out", "role": "default" }} , 
 	{ "name": "localC_2_3_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_2_3_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_2_2_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_2_2_out", "role": "default" }} , 
 	{ "name": "localC_2_2_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_2_2_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_2_1_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_1_2_out", "role": "default" }} , 
 	{ "name": "localC_2_1_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_2_1_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_2_0_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_2_0_2_out", "role": "default" }} , 
 	{ "name": "localC_2_0_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_2_0_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_1_7_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_7_2_out", "role": "default" }} , 
 	{ "name": "localC_1_7_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_1_7_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_1_6_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_6_2_out", "role": "default" }} , 
 	{ "name": "localC_1_6_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_1_6_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_1_5_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_5_2_out", "role": "default" }} , 
 	{ "name": "localC_1_5_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_1_5_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_1_4_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_4_2_out", "role": "default" }} , 
 	{ "name": "localC_1_4_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_1_4_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_1_3_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_3_2_out", "role": "default" }} , 
 	{ "name": "localC_1_3_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_1_3_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_1_2_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_2_2_out", "role": "default" }} , 
 	{ "name": "localC_1_2_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_1_2_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_1_1_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_1_2_out", "role": "default" }} , 
 	{ "name": "localC_1_1_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_1_1_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_1_0_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_1_0_2_out", "role": "default" }} , 
 	{ "name": "localC_1_0_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_1_0_2_out", "role": "ap_vld" }} , 
 	{ "name": "localC_0_7_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_7_4_out", "role": "default" }} , 
 	{ "name": "localC_0_7_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_0_7_4_out", "role": "ap_vld" }} , 
 	{ "name": "localC_0_6_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_6_4_out", "role": "default" }} , 
 	{ "name": "localC_0_6_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_0_6_4_out", "role": "ap_vld" }} , 
 	{ "name": "localC_0_5_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_5_4_out", "role": "default" }} , 
 	{ "name": "localC_0_5_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_0_5_4_out", "role": "ap_vld" }} , 
 	{ "name": "localC_0_4_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_4_4_out", "role": "default" }} , 
 	{ "name": "localC_0_4_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_0_4_4_out", "role": "ap_vld" }} , 
 	{ "name": "localC_0_3_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_3_4_out", "role": "default" }} , 
 	{ "name": "localC_0_3_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_0_3_4_out", "role": "ap_vld" }} , 
 	{ "name": "localC_0_2_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_2_4_out", "role": "default" }} , 
 	{ "name": "localC_0_2_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_0_2_4_out", "role": "ap_vld" }} , 
 	{ "name": "localC_0_1_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_1_4_out", "role": "default" }} , 
 	{ "name": "localC_0_1_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_0_1_4_out", "role": "ap_vld" }} , 
 	{ "name": "localC_0_0_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localC_0_0_4_out", "role": "default" }} , 
 	{ "name": "localC_0_0_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "localC_0_0_4_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U25", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U26", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U27", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U28", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U29", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U30", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U31", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U32", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U33", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U34", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U35", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U36", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U37", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U38", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U39", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U40", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U41", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U42", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U43", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U44", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U45", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U46", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U47", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U48", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U49", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U50", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U51", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U52", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U53", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U54", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U55", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U56", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U57", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U58", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U59", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U60", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U61", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U62", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U63", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U64", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U65", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U66", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U67", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U68", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U69", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U70", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U71", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U72", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U73", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U74", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U75", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U76", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U77", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U78", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U79", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U80", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U81", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U82", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U83", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U84", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U85", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U86", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U87", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U88", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		localC_0_0_4_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4114", "Max" : "4114"}
	, {"Name" : "Interval", "Min" : "4114", "Max" : "4114"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	localC_7_7_4 { ap_none {  { localC_7_7_4 in_data 0 32 } } }
	localC_7_6_4 { ap_none {  { localC_7_6_4 in_data 0 32 } } }
	localC_7_5_4 { ap_none {  { localC_7_5_4 in_data 0 32 } } }
	localC_7_4_4 { ap_none {  { localC_7_4_4 in_data 0 32 } } }
	localC_7_3_4 { ap_none {  { localC_7_3_4 in_data 0 32 } } }
	localC_7_2_4 { ap_none {  { localC_7_2_4 in_data 0 32 } } }
	localC_7_1_4 { ap_none {  { localC_7_1_4 in_data 0 32 } } }
	localC_7_0_4 { ap_none {  { localC_7_0_4 in_data 0 32 } } }
	localC_6_7_4 { ap_none {  { localC_6_7_4 in_data 0 32 } } }
	localC_6_6_4 { ap_none {  { localC_6_6_4 in_data 0 32 } } }
	localC_6_5_4 { ap_none {  { localC_6_5_4 in_data 0 32 } } }
	localC_6_4_4 { ap_none {  { localC_6_4_4 in_data 0 32 } } }
	localC_6_3_4 { ap_none {  { localC_6_3_4 in_data 0 32 } } }
	localC_6_2_4 { ap_none {  { localC_6_2_4 in_data 0 32 } } }
	localC_6_1_4 { ap_none {  { localC_6_1_4 in_data 0 32 } } }
	localC_6_0_4 { ap_none {  { localC_6_0_4 in_data 0 32 } } }
	localC_5_7_4 { ap_none {  { localC_5_7_4 in_data 0 32 } } }
	localC_5_6_4 { ap_none {  { localC_5_6_4 in_data 0 32 } } }
	localC_5_5_4 { ap_none {  { localC_5_5_4 in_data 0 32 } } }
	localC_5_4_4 { ap_none {  { localC_5_4_4 in_data 0 32 } } }
	localC_5_3_4 { ap_none {  { localC_5_3_4 in_data 0 32 } } }
	localC_5_2_4 { ap_none {  { localC_5_2_4 in_data 0 32 } } }
	localC_5_1_4 { ap_none {  { localC_5_1_4 in_data 0 32 } } }
	localC_5_0_4 { ap_none {  { localC_5_0_4 in_data 0 32 } } }
	localC_4_7_4 { ap_none {  { localC_4_7_4 in_data 0 32 } } }
	localC_4_6_4 { ap_none {  { localC_4_6_4 in_data 0 32 } } }
	localC_4_5_4 { ap_none {  { localC_4_5_4 in_data 0 32 } } }
	localC_4_4_4 { ap_none {  { localC_4_4_4 in_data 0 32 } } }
	localC_4_3_4 { ap_none {  { localC_4_3_4 in_data 0 32 } } }
	localC_4_2_4 { ap_none {  { localC_4_2_4 in_data 0 32 } } }
	localC_4_1_4 { ap_none {  { localC_4_1_4 in_data 0 32 } } }
	localC_4_0_4 { ap_none {  { localC_4_0_4 in_data 0 32 } } }
	localC_3_7_4 { ap_none {  { localC_3_7_4 in_data 0 32 } } }
	localC_3_6_4 { ap_none {  { localC_3_6_4 in_data 0 32 } } }
	localC_3_5_4 { ap_none {  { localC_3_5_4 in_data 0 32 } } }
	localC_3_4_4 { ap_none {  { localC_3_4_4 in_data 0 32 } } }
	localC_3_3_4 { ap_none {  { localC_3_3_4 in_data 0 32 } } }
	localC_3_2_4 { ap_none {  { localC_3_2_4 in_data 0 32 } } }
	localC_3_1_4 { ap_none {  { localC_3_1_4 in_data 0 32 } } }
	localC_3_0_4 { ap_none {  { localC_3_0_4 in_data 0 32 } } }
	localC_2_7_4 { ap_none {  { localC_2_7_4 in_data 0 32 } } }
	localC_2_6_4 { ap_none {  { localC_2_6_4 in_data 0 32 } } }
	localC_2_5_4 { ap_none {  { localC_2_5_4 in_data 0 32 } } }
	localC_2_4_4 { ap_none {  { localC_2_4_4 in_data 0 32 } } }
	localC_2_3_4 { ap_none {  { localC_2_3_4 in_data 0 32 } } }
	localC_2_2_4 { ap_none {  { localC_2_2_4 in_data 0 32 } } }
	localC_2_1_4 { ap_none {  { localC_2_1_4 in_data 0 32 } } }
	localC_2_0_4 { ap_none {  { localC_2_0_4 in_data 0 32 } } }
	localC_1_7_4 { ap_none {  { localC_1_7_4 in_data 0 32 } } }
	localC_1_6_4 { ap_none {  { localC_1_6_4 in_data 0 32 } } }
	localC_1_5_4 { ap_none {  { localC_1_5_4 in_data 0 32 } } }
	localC_1_4_4 { ap_none {  { localC_1_4_4 in_data 0 32 } } }
	localC_1_3_4 { ap_none {  { localC_1_3_4 in_data 0 32 } } }
	localC_1_2_4 { ap_none {  { localC_1_2_4 in_data 0 32 } } }
	localC_1_1_4 { ap_none {  { localC_1_1_4 in_data 0 32 } } }
	localC_1_0_4 { ap_none {  { localC_1_0_4 in_data 0 32 } } }
	localC_0_7_2 { ap_none {  { localC_0_7_2 in_data 0 32 } } }
	localC_0_6_2 { ap_none {  { localC_0_6_2 in_data 0 32 } } }
	localC_0_5_2 { ap_none {  { localC_0_5_2 in_data 0 32 } } }
	localC_0_4_2 { ap_none {  { localC_0_4_2 in_data 0 32 } } }
	localC_0_3_2 { ap_none {  { localC_0_3_2 in_data 0 32 } } }
	localC_0_2_2 { ap_none {  { localC_0_2_2 in_data 0 32 } } }
	localC_0_1_2 { ap_none {  { localC_0_1_2 in_data 0 32 } } }
	localC_0_0_2 { ap_none {  { localC_0_0_2 in_data 0 32 } } }
	localA_7 { ap_memory {  { localA_7_address0 mem_address 1 12 }  { localA_7_ce0 mem_ce 1 1 }  { localA_7_q0 mem_dout 0 32 } } }
	localA_6 { ap_memory {  { localA_6_address0 mem_address 1 12 }  { localA_6_ce0 mem_ce 1 1 }  { localA_6_q0 mem_dout 0 32 } } }
	localA_5 { ap_memory {  { localA_5_address0 mem_address 1 12 }  { localA_5_ce0 mem_ce 1 1 }  { localA_5_q0 mem_dout 0 32 } } }
	localA_4 { ap_memory {  { localA_4_address0 mem_address 1 12 }  { localA_4_ce0 mem_ce 1 1 }  { localA_4_q0 mem_dout 0 32 } } }
	localA_3 { ap_memory {  { localA_3_address0 mem_address 1 12 }  { localA_3_ce0 mem_ce 1 1 }  { localA_3_q0 mem_dout 0 32 } } }
	localA_2 { ap_memory {  { localA_2_address0 mem_address 1 12 }  { localA_2_ce0 mem_ce 1 1 }  { localA_2_q0 mem_dout 0 32 } } }
	localA_1 { ap_memory {  { localA_1_address0 mem_address 1 12 }  { localA_1_ce0 mem_ce 1 1 }  { localA_1_q0 mem_dout 0 32 } } }
	localA_0 { ap_memory {  { localA_0_address0 mem_address 1 12 }  { localA_0_ce0 mem_ce 1 1 }  { localA_0_q0 mem_dout 0 32 } } }
	localB_7 { ap_memory {  { localB_7_address0 mem_address 1 12 }  { localB_7_ce0 mem_ce 1 1 }  { localB_7_q0 mem_dout 0 32 } } }
	localB_6 { ap_memory {  { localB_6_address0 mem_address 1 12 }  { localB_6_ce0 mem_ce 1 1 }  { localB_6_q0 mem_dout 0 32 } } }
	localB_5 { ap_memory {  { localB_5_address0 mem_address 1 12 }  { localB_5_ce0 mem_ce 1 1 }  { localB_5_q0 mem_dout 0 32 } } }
	localB_4 { ap_memory {  { localB_4_address0 mem_address 1 12 }  { localB_4_ce0 mem_ce 1 1 }  { localB_4_q0 mem_dout 0 32 } } }
	localB_3 { ap_memory {  { localB_3_address0 mem_address 1 12 }  { localB_3_ce0 mem_ce 1 1 }  { localB_3_q0 mem_dout 0 32 } } }
	localB_2 { ap_memory {  { localB_2_address0 mem_address 1 12 }  { localB_2_ce0 mem_ce 1 1 }  { localB_2_q0 mem_dout 0 32 } } }
	localB_1 { ap_memory {  { localB_1_address0 mem_address 1 12 }  { localB_1_ce0 mem_ce 1 1 }  { localB_1_q0 mem_dout 0 32 } } }
	localB_0 { ap_memory {  { localB_0_address0 mem_address 1 12 }  { localB_0_ce0 mem_ce 1 1 }  { localB_0_q0 mem_dout 0 32 } } }
	localC_7_7_2_out { ap_vld {  { localC_7_7_2_out out_data 1 32 }  { localC_7_7_2_out_ap_vld out_vld 1 1 } } }
	localC_7_6_2_out { ap_vld {  { localC_7_6_2_out out_data 1 32 }  { localC_7_6_2_out_ap_vld out_vld 1 1 } } }
	localC_7_5_2_out { ap_vld {  { localC_7_5_2_out out_data 1 32 }  { localC_7_5_2_out_ap_vld out_vld 1 1 } } }
	localC_7_4_2_out { ap_vld {  { localC_7_4_2_out out_data 1 32 }  { localC_7_4_2_out_ap_vld out_vld 1 1 } } }
	localC_7_3_2_out { ap_vld {  { localC_7_3_2_out out_data 1 32 }  { localC_7_3_2_out_ap_vld out_vld 1 1 } } }
	localC_7_2_2_out { ap_vld {  { localC_7_2_2_out out_data 1 32 }  { localC_7_2_2_out_ap_vld out_vld 1 1 } } }
	localC_7_1_2_out { ap_vld {  { localC_7_1_2_out out_data 1 32 }  { localC_7_1_2_out_ap_vld out_vld 1 1 } } }
	localC_7_0_2_out { ap_vld {  { localC_7_0_2_out out_data 1 32 }  { localC_7_0_2_out_ap_vld out_vld 1 1 } } }
	localC_6_7_2_out { ap_vld {  { localC_6_7_2_out out_data 1 32 }  { localC_6_7_2_out_ap_vld out_vld 1 1 } } }
	localC_6_6_2_out { ap_vld {  { localC_6_6_2_out out_data 1 32 }  { localC_6_6_2_out_ap_vld out_vld 1 1 } } }
	localC_6_5_2_out { ap_vld {  { localC_6_5_2_out out_data 1 32 }  { localC_6_5_2_out_ap_vld out_vld 1 1 } } }
	localC_6_4_2_out { ap_vld {  { localC_6_4_2_out out_data 1 32 }  { localC_6_4_2_out_ap_vld out_vld 1 1 } } }
	localC_6_3_2_out { ap_vld {  { localC_6_3_2_out out_data 1 32 }  { localC_6_3_2_out_ap_vld out_vld 1 1 } } }
	localC_6_2_2_out { ap_vld {  { localC_6_2_2_out out_data 1 32 }  { localC_6_2_2_out_ap_vld out_vld 1 1 } } }
	localC_6_1_2_out { ap_vld {  { localC_6_1_2_out out_data 1 32 }  { localC_6_1_2_out_ap_vld out_vld 1 1 } } }
	localC_6_0_2_out { ap_vld {  { localC_6_0_2_out out_data 1 32 }  { localC_6_0_2_out_ap_vld out_vld 1 1 } } }
	localC_5_7_2_out { ap_vld {  { localC_5_7_2_out out_data 1 32 }  { localC_5_7_2_out_ap_vld out_vld 1 1 } } }
	localC_5_6_2_out { ap_vld {  { localC_5_6_2_out out_data 1 32 }  { localC_5_6_2_out_ap_vld out_vld 1 1 } } }
	localC_5_5_2_out { ap_vld {  { localC_5_5_2_out out_data 1 32 }  { localC_5_5_2_out_ap_vld out_vld 1 1 } } }
	localC_5_4_2_out { ap_vld {  { localC_5_4_2_out out_data 1 32 }  { localC_5_4_2_out_ap_vld out_vld 1 1 } } }
	localC_5_3_2_out { ap_vld {  { localC_5_3_2_out out_data 1 32 }  { localC_5_3_2_out_ap_vld out_vld 1 1 } } }
	localC_5_2_2_out { ap_vld {  { localC_5_2_2_out out_data 1 32 }  { localC_5_2_2_out_ap_vld out_vld 1 1 } } }
	localC_5_1_2_out { ap_vld {  { localC_5_1_2_out out_data 1 32 }  { localC_5_1_2_out_ap_vld out_vld 1 1 } } }
	localC_5_0_2_out { ap_vld {  { localC_5_0_2_out out_data 1 32 }  { localC_5_0_2_out_ap_vld out_vld 1 1 } } }
	localC_4_7_2_out { ap_vld {  { localC_4_7_2_out out_data 1 32 }  { localC_4_7_2_out_ap_vld out_vld 1 1 } } }
	localC_4_6_2_out { ap_vld {  { localC_4_6_2_out out_data 1 32 }  { localC_4_6_2_out_ap_vld out_vld 1 1 } } }
	localC_4_5_2_out { ap_vld {  { localC_4_5_2_out out_data 1 32 }  { localC_4_5_2_out_ap_vld out_vld 1 1 } } }
	localC_4_4_2_out { ap_vld {  { localC_4_4_2_out out_data 1 32 }  { localC_4_4_2_out_ap_vld out_vld 1 1 } } }
	localC_4_3_2_out { ap_vld {  { localC_4_3_2_out out_data 1 32 }  { localC_4_3_2_out_ap_vld out_vld 1 1 } } }
	localC_4_2_2_out { ap_vld {  { localC_4_2_2_out out_data 1 32 }  { localC_4_2_2_out_ap_vld out_vld 1 1 } } }
	localC_4_1_2_out { ap_vld {  { localC_4_1_2_out out_data 1 32 }  { localC_4_1_2_out_ap_vld out_vld 1 1 } } }
	localC_4_0_2_out { ap_vld {  { localC_4_0_2_out out_data 1 32 }  { localC_4_0_2_out_ap_vld out_vld 1 1 } } }
	localC_3_7_2_out { ap_vld {  { localC_3_7_2_out out_data 1 32 }  { localC_3_7_2_out_ap_vld out_vld 1 1 } } }
	localC_3_6_2_out { ap_vld {  { localC_3_6_2_out out_data 1 32 }  { localC_3_6_2_out_ap_vld out_vld 1 1 } } }
	localC_3_5_2_out { ap_vld {  { localC_3_5_2_out out_data 1 32 }  { localC_3_5_2_out_ap_vld out_vld 1 1 } } }
	localC_3_4_2_out { ap_vld {  { localC_3_4_2_out out_data 1 32 }  { localC_3_4_2_out_ap_vld out_vld 1 1 } } }
	localC_3_3_2_out { ap_vld {  { localC_3_3_2_out out_data 1 32 }  { localC_3_3_2_out_ap_vld out_vld 1 1 } } }
	localC_3_2_2_out { ap_vld {  { localC_3_2_2_out out_data 1 32 }  { localC_3_2_2_out_ap_vld out_vld 1 1 } } }
	localC_3_1_2_out { ap_vld {  { localC_3_1_2_out out_data 1 32 }  { localC_3_1_2_out_ap_vld out_vld 1 1 } } }
	localC_3_0_2_out { ap_vld {  { localC_3_0_2_out out_data 1 32 }  { localC_3_0_2_out_ap_vld out_vld 1 1 } } }
	localC_2_7_2_out { ap_vld {  { localC_2_7_2_out out_data 1 32 }  { localC_2_7_2_out_ap_vld out_vld 1 1 } } }
	localC_2_6_2_out { ap_vld {  { localC_2_6_2_out out_data 1 32 }  { localC_2_6_2_out_ap_vld out_vld 1 1 } } }
	localC_2_5_2_out { ap_vld {  { localC_2_5_2_out out_data 1 32 }  { localC_2_5_2_out_ap_vld out_vld 1 1 } } }
	localC_2_4_2_out { ap_vld {  { localC_2_4_2_out out_data 1 32 }  { localC_2_4_2_out_ap_vld out_vld 1 1 } } }
	localC_2_3_2_out { ap_vld {  { localC_2_3_2_out out_data 1 32 }  { localC_2_3_2_out_ap_vld out_vld 1 1 } } }
	localC_2_2_2_out { ap_vld {  { localC_2_2_2_out out_data 1 32 }  { localC_2_2_2_out_ap_vld out_vld 1 1 } } }
	localC_2_1_2_out { ap_vld {  { localC_2_1_2_out out_data 1 32 }  { localC_2_1_2_out_ap_vld out_vld 1 1 } } }
	localC_2_0_2_out { ap_vld {  { localC_2_0_2_out out_data 1 32 }  { localC_2_0_2_out_ap_vld out_vld 1 1 } } }
	localC_1_7_2_out { ap_vld {  { localC_1_7_2_out out_data 1 32 }  { localC_1_7_2_out_ap_vld out_vld 1 1 } } }
	localC_1_6_2_out { ap_vld {  { localC_1_6_2_out out_data 1 32 }  { localC_1_6_2_out_ap_vld out_vld 1 1 } } }
	localC_1_5_2_out { ap_vld {  { localC_1_5_2_out out_data 1 32 }  { localC_1_5_2_out_ap_vld out_vld 1 1 } } }
	localC_1_4_2_out { ap_vld {  { localC_1_4_2_out out_data 1 32 }  { localC_1_4_2_out_ap_vld out_vld 1 1 } } }
	localC_1_3_2_out { ap_vld {  { localC_1_3_2_out out_data 1 32 }  { localC_1_3_2_out_ap_vld out_vld 1 1 } } }
	localC_1_2_2_out { ap_vld {  { localC_1_2_2_out out_data 1 32 }  { localC_1_2_2_out_ap_vld out_vld 1 1 } } }
	localC_1_1_2_out { ap_vld {  { localC_1_1_2_out out_data 1 32 }  { localC_1_1_2_out_ap_vld out_vld 1 1 } } }
	localC_1_0_2_out { ap_vld {  { localC_1_0_2_out out_data 1 32 }  { localC_1_0_2_out_ap_vld out_vld 1 1 } } }
	localC_0_7_4_out { ap_vld {  { localC_0_7_4_out out_data 1 32 }  { localC_0_7_4_out_ap_vld out_vld 1 1 } } }
	localC_0_6_4_out { ap_vld {  { localC_0_6_4_out out_data 1 32 }  { localC_0_6_4_out_ap_vld out_vld 1 1 } } }
	localC_0_5_4_out { ap_vld {  { localC_0_5_4_out out_data 1 32 }  { localC_0_5_4_out_ap_vld out_vld 1 1 } } }
	localC_0_4_4_out { ap_vld {  { localC_0_4_4_out out_data 1 32 }  { localC_0_4_4_out_ap_vld out_vld 1 1 } } }
	localC_0_3_4_out { ap_vld {  { localC_0_3_4_out out_data 1 32 }  { localC_0_3_4_out_ap_vld out_vld 1 1 } } }
	localC_0_2_4_out { ap_vld {  { localC_0_2_4_out out_data 1 32 }  { localC_0_2_4_out_ap_vld out_vld 1 1 } } }
	localC_0_1_4_out { ap_vld {  { localC_0_1_4_out out_data 1 32 }  { localC_0_1_4_out_ap_vld out_vld 1 1 } } }
	localC_0_0_4_out { ap_vld {  { localC_0_0_4_out out_data 1 32 }  { localC_0_0_4_out_ap_vld out_vld 1 1 } } }
}
