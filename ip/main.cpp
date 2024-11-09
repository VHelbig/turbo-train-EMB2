#include <stdint.h>

#define DATA_SIZE 1000*3
#define BUFFER_SIZE 100

// Function to perform vector addition
void image_processing(volatile int in[DATA_SIZE], volatile int out[DATA_SIZE]) {
	#pragma HLS INTERFACE s_axilite port=return
	#pragma HLS INTERFACE m_axi port=in offset=slave bundle=AXI_DATA
	#pragma HLS INTERFACE m_axi port=out offset=slave bundle=AXI_DATA

	int data_segment[BUFFER_SIZE];
	int data_processed[BUFFER_SIZE];
	int array_offset = 0;
	

	loop2:for(int i = 0; i<DATA_SIZE;i++){
		#pragma HLS UNROLL factor=10
		if(in[i] > 127){
			out[i] = 255;
		}else{
			out[i] = 0;
		}
	}

	/*for(int j = 0 ; j < DATA_SIZE/BUFFER_SIZE; j++){
		//Load data into buffer
		loop1:for(int i = 0; i < BUFFER_SIZE; i++){
			data_segment[i] = in[i+array_offset];
		}

		//do thresholding
		loop2:for(int i = 0; i<BUFFER_SIZE;i++){
			#pragma HLS UNROLL factor=100
			if(data_segment[i] > 127){
				data_processed[i] = 255;
			}else{
				data_processed[i] = 0;
			}
		}
		//write to output
		loop3:for(int i = 0; i < BUFFER_SIZE; i++){
			out[i+array_offset] = data_processed[i];
		}
		//increment offset
		array_offset = array_offset + BUFFER_SIZE;
	}*/

}
