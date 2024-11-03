/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "ximage_processing.h"
#include "xstatus.h"
#include "xil_cache.h"

#define ARRAY_LENGTH 3000

XImage_processing_Config* ImageProcessor_ConfgPtr;
XImage_processing XmageProcessor;

volatile int input[ARRAY_LENGTH];
volatile int output[ARRAY_LENGTH];

int main()
{
    init_platform();

    print("Hello World\n\r");


    ImageProcessor_ConfgPtr=XImage_processing_LookupConfig(XPAR_IMAGE_PROCESSING_0_DEVICE_ID);
    int status=XImage_processing_CfgInitialize(&XmageProcessor, ImageProcessor_ConfgPtr);
    if(status!=XST_SUCCESS){
    	print("error Occured while initializing Config Ptr\r\n");
    }

    status=XImage_processing_Initialize(&XmageProcessor, XPAR_IMAGE_PROCESSING_0_DEVICE_ID);
    if(status!=XST_SUCCESS){
		print("error Occured while initializing Image Processor\r\n");
	}



    for(int i=0;i<ARRAY_LENGTH;i++){
    	input[i]=rand();
    }

    Xil_DCacheFlush();

    while(!XImage_processing_IsReady(&XmageProcessor)){}

    XImage_processing_Set_in_r(&XmageProcessor, input);
    XImage_processing_Set_out_r(&XmageProcessor, output);


	int value=XImage_processing_Get_in_r(&XmageProcessor);
	xil_printf("Address value %d \r\n",input);
	//XImage_processing_DisableAutoRestart(&XmageProcessor);
	XImage_processing_Start(&XmageProcessor);

	while(!XImage_processing_IsDone(&XmageProcessor)){}


	Xil_DCacheInvalidate();

	int passed=1;
	for(int i = 0; i < ARRAY_LENGTH; i++) {
	    if(input[i] != output[i]) {
	        xil_printf("Mismatch at index %d: input=%d, output=%d\n", i, input[i], output[i]);
	        passed = 0;
	    }
	}

	if (passed){
		xil_printf("Test Passed %d",passed);
	}else{
		xil_printf("Test not passed %d",passed);
	}

	print("Successfully ran Hello World application");

    cleanup_platform();
    return 0;
}
