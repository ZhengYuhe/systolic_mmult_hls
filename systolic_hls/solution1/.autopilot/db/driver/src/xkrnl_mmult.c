// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xkrnl_mmult.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKrnl_mmult_CfgInitialize(XKrnl_mmult *InstancePtr, XKrnl_mmult_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKrnl_mmult_Start(XKrnl_mmult *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKrnl_mmult_IsDone(XKrnl_mmult *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKrnl_mmult_IsIdle(XKrnl_mmult *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKrnl_mmult_IsReady(XKrnl_mmult *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKrnl_mmult_Continue(XKrnl_mmult *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XKrnl_mmult_EnableAutoRestart(XKrnl_mmult *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XKrnl_mmult_DisableAutoRestart(XKrnl_mmult *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_AP_CTRL, 0);
}

void XKrnl_mmult_Set_a(XKrnl_mmult *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_A_DATA, (u32)(Data));
    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XKrnl_mmult_Get_a(XKrnl_mmult *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_A_DATA);
    Data += (u64)XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XKrnl_mmult_Set_b(XKrnl_mmult *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_B_DATA, (u32)(Data));
    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_B_DATA + 4, (u32)(Data >> 32));
}

u64 XKrnl_mmult_Get_b(XKrnl_mmult *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_B_DATA);
    Data += (u64)XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_B_DATA + 4) << 32;
    return Data;
}

void XKrnl_mmult_Set_c(XKrnl_mmult *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_C_DATA, (u32)(Data));
    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_C_DATA + 4, (u32)(Data >> 32));
}

u64 XKrnl_mmult_Get_c(XKrnl_mmult *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_C_DATA);
    Data += (u64)XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_C_DATA + 4) << 32;
    return Data;
}

void XKrnl_mmult_Set_a_row(XKrnl_mmult *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_A_ROW_DATA, Data);
}

u32 XKrnl_mmult_Get_a_row(XKrnl_mmult *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_A_ROW_DATA);
    return Data;
}

void XKrnl_mmult_Set_a_col(XKrnl_mmult *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_A_COL_DATA, Data);
}

u32 XKrnl_mmult_Get_a_col(XKrnl_mmult *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_A_COL_DATA);
    return Data;
}

void XKrnl_mmult_Set_b_col(XKrnl_mmult *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_B_COL_DATA, Data);
}

u32 XKrnl_mmult_Get_b_col(XKrnl_mmult *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_B_COL_DATA);
    return Data;
}

void XKrnl_mmult_InterruptGlobalEnable(XKrnl_mmult *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_GIE, 1);
}

void XKrnl_mmult_InterruptGlobalDisable(XKrnl_mmult *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_GIE, 0);
}

void XKrnl_mmult_InterruptEnable(XKrnl_mmult *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_IER);
    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_IER, Register | Mask);
}

void XKrnl_mmult_InterruptDisable(XKrnl_mmult *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_IER);
    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XKrnl_mmult_InterruptClear(XKrnl_mmult *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_mmult_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_ISR, Mask);
}

u32 XKrnl_mmult_InterruptGetEnabled(XKrnl_mmult *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_IER);
}

u32 XKrnl_mmult_InterruptGetStatus(XKrnl_mmult *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKrnl_mmult_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_MMULT_CONTROL_ADDR_ISR);
}

