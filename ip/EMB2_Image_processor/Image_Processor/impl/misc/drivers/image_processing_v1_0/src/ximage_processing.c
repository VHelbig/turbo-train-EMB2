// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "ximage_processing.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XImage_processing_CfgInitialize(XImage_processing *InstancePtr, XImage_processing_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XImage_processing_Set_in_r(XImage_processing *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_processing_WriteReg(InstancePtr->Control_BaseAddress, XIMAGE_PROCESSING_CONTROL_ADDR_IN_R_DATA, (u32)(Data));
    XImage_processing_WriteReg(InstancePtr->Control_BaseAddress, XIMAGE_PROCESSING_CONTROL_ADDR_IN_R_DATA + 4, (u32)(Data >> 32));
}

u64 XImage_processing_Get_in_r(XImage_processing *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_processing_ReadReg(InstancePtr->Control_BaseAddress, XIMAGE_PROCESSING_CONTROL_ADDR_IN_R_DATA);
    Data += (u64)XImage_processing_ReadReg(InstancePtr->Control_BaseAddress, XIMAGE_PROCESSING_CONTROL_ADDR_IN_R_DATA + 4) << 32;
    return Data;
}

void XImage_processing_Set_out_r(XImage_processing *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_processing_WriteReg(InstancePtr->Control_BaseAddress, XIMAGE_PROCESSING_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XImage_processing_WriteReg(InstancePtr->Control_BaseAddress, XIMAGE_PROCESSING_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XImage_processing_Get_out_r(XImage_processing *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_processing_ReadReg(InstancePtr->Control_BaseAddress, XIMAGE_PROCESSING_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XImage_processing_ReadReg(InstancePtr->Control_BaseAddress, XIMAGE_PROCESSING_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

