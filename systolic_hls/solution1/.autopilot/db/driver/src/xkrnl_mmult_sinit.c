// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xkrnl_mmult.h"

extern XKrnl_mmult_Config XKrnl_mmult_ConfigTable[];

XKrnl_mmult_Config *XKrnl_mmult_LookupConfig(u16 DeviceId) {
	XKrnl_mmult_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKRNL_MMULT_NUM_INSTANCES; Index++) {
		if (XKrnl_mmult_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKrnl_mmult_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKrnl_mmult_Initialize(XKrnl_mmult *InstancePtr, u16 DeviceId) {
	XKrnl_mmult_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKrnl_mmult_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKrnl_mmult_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

