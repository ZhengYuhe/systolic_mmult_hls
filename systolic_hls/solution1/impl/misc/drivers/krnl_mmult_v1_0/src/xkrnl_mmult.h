// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XKRNL_MMULT_H
#define XKRNL_MMULT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xkrnl_mmult_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XKrnl_mmult_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XKrnl_mmult;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKrnl_mmult_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKrnl_mmult_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKrnl_mmult_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKrnl_mmult_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XKrnl_mmult_Initialize(XKrnl_mmult *InstancePtr, u16 DeviceId);
XKrnl_mmult_Config* XKrnl_mmult_LookupConfig(u16 DeviceId);
int XKrnl_mmult_CfgInitialize(XKrnl_mmult *InstancePtr, XKrnl_mmult_Config *ConfigPtr);
#else
int XKrnl_mmult_Initialize(XKrnl_mmult *InstancePtr, const char* InstanceName);
int XKrnl_mmult_Release(XKrnl_mmult *InstancePtr);
#endif

void XKrnl_mmult_Start(XKrnl_mmult *InstancePtr);
u32 XKrnl_mmult_IsDone(XKrnl_mmult *InstancePtr);
u32 XKrnl_mmult_IsIdle(XKrnl_mmult *InstancePtr);
u32 XKrnl_mmult_IsReady(XKrnl_mmult *InstancePtr);
void XKrnl_mmult_Continue(XKrnl_mmult *InstancePtr);
void XKrnl_mmult_EnableAutoRestart(XKrnl_mmult *InstancePtr);
void XKrnl_mmult_DisableAutoRestart(XKrnl_mmult *InstancePtr);

void XKrnl_mmult_Set_a(XKrnl_mmult *InstancePtr, u64 Data);
u64 XKrnl_mmult_Get_a(XKrnl_mmult *InstancePtr);
void XKrnl_mmult_Set_b(XKrnl_mmult *InstancePtr, u64 Data);
u64 XKrnl_mmult_Get_b(XKrnl_mmult *InstancePtr);
void XKrnl_mmult_Set_c(XKrnl_mmult *InstancePtr, u64 Data);
u64 XKrnl_mmult_Get_c(XKrnl_mmult *InstancePtr);
void XKrnl_mmult_Set_a_row(XKrnl_mmult *InstancePtr, u32 Data);
u32 XKrnl_mmult_Get_a_row(XKrnl_mmult *InstancePtr);
void XKrnl_mmult_Set_a_col(XKrnl_mmult *InstancePtr, u32 Data);
u32 XKrnl_mmult_Get_a_col(XKrnl_mmult *InstancePtr);
void XKrnl_mmult_Set_b_col(XKrnl_mmult *InstancePtr, u32 Data);
u32 XKrnl_mmult_Get_b_col(XKrnl_mmult *InstancePtr);

void XKrnl_mmult_InterruptGlobalEnable(XKrnl_mmult *InstancePtr);
void XKrnl_mmult_InterruptGlobalDisable(XKrnl_mmult *InstancePtr);
void XKrnl_mmult_InterruptEnable(XKrnl_mmult *InstancePtr, u32 Mask);
void XKrnl_mmult_InterruptDisable(XKrnl_mmult *InstancePtr, u32 Mask);
void XKrnl_mmult_InterruptClear(XKrnl_mmult *InstancePtr, u32 Mask);
u32 XKrnl_mmult_InterruptGetEnabled(XKrnl_mmult *InstancePtr);
u32 XKrnl_mmult_InterruptGetStatus(XKrnl_mmult *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
