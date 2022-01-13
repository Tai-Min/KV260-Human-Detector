// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XKRNL_VADD_H
#define XKRNL_VADD_H

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
#include "xkrnl_vadd_hw.h"

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
} XKrnl_vadd_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XKrnl_vadd;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKrnl_vadd_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKrnl_vadd_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKrnl_vadd_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKrnl_vadd_ReadReg(BaseAddress, RegOffset) \
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
int XKrnl_vadd_Initialize(XKrnl_vadd *InstancePtr, u16 DeviceId);
XKrnl_vadd_Config* XKrnl_vadd_LookupConfig(u16 DeviceId);
int XKrnl_vadd_CfgInitialize(XKrnl_vadd *InstancePtr, XKrnl_vadd_Config *ConfigPtr);
#else
int XKrnl_vadd_Initialize(XKrnl_vadd *InstancePtr, const char* InstanceName);
int XKrnl_vadd_Release(XKrnl_vadd *InstancePtr);
#endif

void XKrnl_vadd_Start(XKrnl_vadd *InstancePtr);
u32 XKrnl_vadd_IsDone(XKrnl_vadd *InstancePtr);
u32 XKrnl_vadd_IsIdle(XKrnl_vadd *InstancePtr);
u32 XKrnl_vadd_IsReady(XKrnl_vadd *InstancePtr);
void XKrnl_vadd_Continue(XKrnl_vadd *InstancePtr);
void XKrnl_vadd_EnableAutoRestart(XKrnl_vadd *InstancePtr);
void XKrnl_vadd_DisableAutoRestart(XKrnl_vadd *InstancePtr);

void XKrnl_vadd_Set_in1(XKrnl_vadd *InstancePtr, u64 Data);
u64 XKrnl_vadd_Get_in1(XKrnl_vadd *InstancePtr);
void XKrnl_vadd_Set_in2(XKrnl_vadd *InstancePtr, u64 Data);
u64 XKrnl_vadd_Get_in2(XKrnl_vadd *InstancePtr);
void XKrnl_vadd_Set_out_r(XKrnl_vadd *InstancePtr, u64 Data);
u64 XKrnl_vadd_Get_out_r(XKrnl_vadd *InstancePtr);
void XKrnl_vadd_Set_size(XKrnl_vadd *InstancePtr, u32 Data);
u32 XKrnl_vadd_Get_size(XKrnl_vadd *InstancePtr);

void XKrnl_vadd_InterruptGlobalEnable(XKrnl_vadd *InstancePtr);
void XKrnl_vadd_InterruptGlobalDisable(XKrnl_vadd *InstancePtr);
void XKrnl_vadd_InterruptEnable(XKrnl_vadd *InstancePtr, u32 Mask);
void XKrnl_vadd_InterruptDisable(XKrnl_vadd *InstancePtr, u32 Mask);
void XKrnl_vadd_InterruptClear(XKrnl_vadd *InstancePtr, u32 Mask);
u32 XKrnl_vadd_InterruptGetEnabled(XKrnl_vadd *InstancePtr);
u32 XKrnl_vadd_InterruptGetStatus(XKrnl_vadd *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
