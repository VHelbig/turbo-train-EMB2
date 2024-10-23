#include <stdint.h>

#define DATA_SIZE 1000*3

// Function to perform vector addition
void image_processing(volatile int in[DATA_SIZE], volatile int out[DATA_SIZE]) {
	#pragma HLS INTERFACE m_axi port=in offset=slave
	#pragma HLS INTERFACE m_axi port=out offset=slave
	//#pragma HLS INTERFACE s_axilite port=return bundle=AXI_CPU

	// Add the vectors
	for (int i = 0; i < DATA_SIZE; i++) {
		//Insert pragma to utilize FPGA cons
		out[i]=in[i];
	}

}
