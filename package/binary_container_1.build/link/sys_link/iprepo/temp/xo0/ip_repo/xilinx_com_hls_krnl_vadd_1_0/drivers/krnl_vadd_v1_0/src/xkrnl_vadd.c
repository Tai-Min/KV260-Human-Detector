// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xkrnl_vadd.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKrnl_vadd_CfgInitialize(XKrnl_vadd *InstancePtr, XKrnl_vadd_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKrnl_vadd_Start(XKrnl_vadd *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKrnl_vadd_IsDone(XKrnl_vadd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKrnl_vadd_IsIdle(XKrnl_vadd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKrnl_vadd_IsReady(XKrnl_vadd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKrnl_vadd_Continue(XKrnl_vadd *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XKrnl_vadd_EnableAutoRestart(XKrnl_vadd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XKrnl_vadd_DisableAutoRestart(XKrnl_vadd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_AP_CTRL, 0);
}

void XKrnl_vadd_Set_in1(XKrnl_vadd *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_IN1_DATA, (u32)(Data));
    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_IN1_DATA + 4, (u32)(Data >> 32));
}

u64 XKrnl_vadd_Get_in1(XKrnl_vadd *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_IN1_DATA);
    Data += (u64)XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_IN1_DATA + 4) << 32;
    return Data;
}

void XKrnl_vadd_Set_in2(XKrnl_vadd *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_IN2_DATA, (u32)(Data));
    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_IN2_DATA + 4, (u32)(Data >> 32));
}

u64 XKrnl_vadd_Get_in2(XKrnl_vadd *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_IN2_DATA);
    Data += (u64)XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_IN2_DATA + 4) << 32;
    return Data;
}

void XKrnl_vadd_Set_out_r(XKrnl_vadd *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XKrnl_vadd_Get_out_r(XKrnl_vadd *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XKrnl_vadd_Set_size(XKrnl_vadd *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_SIZE_DATA, Data);
}

u32 XKrnl_vadd_Get_size(XKrnl_vadd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_SIZE_DATA);
    return Data;
}

void XKrnl_vadd_InterruptGlobalEnable(XKrnl_vadd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_GIE, 1);
}

void XKrnl_vadd_InterruptGlobalDisable(XKrnl_vadd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_GIE, 0);
}

void XKrnl_vadd_InterruptEnable(XKrnl_vadd *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_IER);
    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_IER, Register | Mask);
}

void XKrnl_vadd_InterruptDisable(XKrnl_vadd *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_IER);
    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_IER, Register & (~Mask));
}

void XKrnl_vadd_InterruptClear(XKrnl_vadd *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_vadd_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_ISR, Mask);
}

u32 XKrnl_vadd_InterruptGetEnabled(XKrnl_vadd *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_IER);
}

u32 XKrnl_vadd_InterruptGetStatus(XKrnl_vadd *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKrnl_vadd_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_VADD_CONTROL_ADDR_ISR);
}

