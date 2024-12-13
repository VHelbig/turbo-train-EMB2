#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void nn_inference(char*, int, int, volatile void *);
extern "C" void apatb_nn_inference_hw(volatile void * __xlx_apatb_param_input_img, volatile void * __xlx_apatb_param_output_bus, volatile void * __xlx_apatb_param_out_wire) {
  // Collect __xlx_input_img_output_bus__tmp_vec
  vector<sc_bv<8> >__xlx_input_img_output_bus__tmp_vec;
  for (int j = 0, e = 100; j != e; ++j) {
    __xlx_input_img_output_bus__tmp_vec.push_back(((char*)__xlx_apatb_param_input_img)[j]);
  }
  int __xlx_size_param_input_img = 100;
  int __xlx_offset_param_input_img = 0;
  int __xlx_offset_byte_param_input_img = 0*1;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_input_img_output_bus__tmp_vec.push_back(((char*)__xlx_apatb_param_output_bus)[j]);
  }
  int __xlx_size_param_output_bus = 1;
  int __xlx_offset_param_output_bus = 100;
  int __xlx_offset_byte_param_output_bus = 100*1;
  char* __xlx_input_img_output_bus__input_buffer= new char[__xlx_input_img_output_bus__tmp_vec.size()];
  for (int i = 0; i < __xlx_input_img_output_bus__tmp_vec.size(); ++i) {
    __xlx_input_img_output_bus__input_buffer[i] = __xlx_input_img_output_bus__tmp_vec[i].range(7, 0).to_uint64();
  }
  // DUT call
  nn_inference(__xlx_input_img_output_bus__input_buffer, __xlx_offset_byte_param_input_img, __xlx_offset_byte_param_output_bus, __xlx_apatb_param_out_wire);
// print __xlx_apatb_param_input_img
  sc_bv<8>*__xlx_input_img_output_buffer = new sc_bv<8>[__xlx_size_param_input_img];
  for (int i = 0; i < __xlx_size_param_input_img; ++i) {
    __xlx_input_img_output_buffer[i] = __xlx_input_img_output_bus__input_buffer[i+__xlx_offset_param_input_img];
  }
  for (int i = 0; i < __xlx_size_param_input_img; ++i) {
    ((char*)__xlx_apatb_param_input_img)[i] = __xlx_input_img_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_output_bus
  sc_bv<8>*__xlx_output_bus_output_buffer = new sc_bv<8>[__xlx_size_param_output_bus];
  for (int i = 0; i < __xlx_size_param_output_bus; ++i) {
    __xlx_output_bus_output_buffer[i] = __xlx_input_img_output_bus__input_buffer[i+__xlx_offset_param_output_bus];
  }
  for (int i = 0; i < __xlx_size_param_output_bus; ++i) {
    ((char*)__xlx_apatb_param_output_bus)[i] = __xlx_output_bus_output_buffer[i].to_uint64();
  }
}
