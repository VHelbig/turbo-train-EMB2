#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_AXI_DATA "../tv/cdatafile/c.nn_inference.autotvin_AXI_DATA.dat"
#define AUTOTB_TVOUT_AXI_DATA "../tv/cdatafile/c.nn_inference.autotvout_AXI_DATA.dat"
// wrapc file define:
#define AUTOTB_TVIN_input_img "../tv/cdatafile/c.nn_inference.autotvin_input_img.dat"
#define AUTOTB_TVOUT_input_img "../tv/cdatafile/c.nn_inference.autotvout_input_img.dat"
// wrapc file define:
#define AUTOTB_TVIN_output_bus "../tv/cdatafile/c.nn_inference.autotvin_output_bus.dat"
#define AUTOTB_TVOUT_output_bus "../tv/cdatafile/c.nn_inference.autotvout_output_bus.dat"
// wrapc file define:
#define AUTOTB_TVIN_out_wire "../tv/cdatafile/c.nn_inference.autotvin_out_wire.dat"
#define AUTOTB_TVOUT_out_wire "../tv/cdatafile/c.nn_inference.autotvout_out_wire.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_AXI_DATA "../tv/rtldatafile/rtl.nn_inference.autotvout_AXI_DATA.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_input_img "../tv/rtldatafile/rtl.nn_inference.autotvout_input_img.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_output_bus "../tv/rtldatafile/rtl.nn_inference.autotvout_output_bus.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out_wire "../tv/rtldatafile/rtl.nn_inference.autotvout_out_wire.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  AXI_DATA_depth = 0;
  input_img_depth = 0;
  output_bus_depth = 0;
  out_wire_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{AXI_DATA " << AXI_DATA_depth << "}\n";
  total_list << "{input_img " << input_img_depth << "}\n";
  total_list << "{output_bus " << output_bus_depth << "}\n";
  total_list << "{out_wire " << out_wire_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int AXI_DATA_depth;
    int input_img_depth;
    int output_bus_depth;
    int out_wire_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void nn_inference_hw_stub_wrapper(volatile void *, volatile void *, volatile void *);

extern "C" void apatb_nn_inference_hw(volatile void * __xlx_apatb_param_input_img, volatile void * __xlx_apatb_param_output_bus, volatile void * __xlx_apatb_param_out_wire) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_AXI_DATA);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > AXI_DATA_pc_buffer(101);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "AXI_DATA");
  
            // push token into output port buffer
            if (AESL_token != "") {
              AXI_DATA_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 100; j < e; j += 1, ++i) {
            ((char*)__xlx_apatb_param_input_img)[j] = AXI_DATA_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 1; j < e; j += 1, ++i) {
            ((char*)__xlx_apatb_param_output_bus)[j] = AXI_DATA_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_wire);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > out_wire_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "out_wire");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_wire_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((char*)__xlx_apatb_param_out_wire)[0] = out_wire_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//AXI_DATA
aesl_fh.touch(AUTOTB_TVIN_AXI_DATA);
aesl_fh.touch(AUTOTB_TVOUT_AXI_DATA);
//input_img
aesl_fh.touch(AUTOTB_TVIN_input_img);
aesl_fh.touch(AUTOTB_TVOUT_input_img);
//output_bus
aesl_fh.touch(AUTOTB_TVIN_output_bus);
aesl_fh.touch(AUTOTB_TVOUT_output_bus);
//out_wire
aesl_fh.touch(AUTOTB_TVIN_out_wire);
aesl_fh.touch(AUTOTB_TVOUT_out_wire);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_input_img = 0;
unsigned __xlx_offset_byte_param_output_bus = 0;
// print AXI_DATA Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_AXI_DATA, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_input_img = 0*1;
  if (__xlx_apatb_param_input_img) {
    for (int j = 0  - 0, e = 100 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_input_img)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_AXI_DATA, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_output_bus = 100*1;
  if (__xlx_apatb_param_output_bus) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_output_bus)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_AXI_DATA, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(101, &tcl_file.AXI_DATA_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_AXI_DATA, __xlx_sprintf_buffer.data());
}
// print input_img Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_input_img, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_input_img;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_input_img, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.input_img_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_input_img, __xlx_sprintf_buffer.data());
}
// print output_bus Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_output_bus, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_output_bus;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_output_bus, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.output_bus_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_output_bus, __xlx_sprintf_buffer.data());
}
// print out_wire Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_out_wire, __xlx_sprintf_buffer.data());
  {
    sc_bv<8> __xlx_tmp_lv = *((char*)__xlx_apatb_param_out_wire);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_out_wire, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.out_wire_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_out_wire, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
nn_inference_hw_stub_wrapper(__xlx_apatb_param_input_img, __xlx_apatb_param_output_bus, __xlx_apatb_param_out_wire);
CodeState = DUMP_OUTPUTS;
// print AXI_DATA Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_AXI_DATA, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_input_img = 0*1;
  if (__xlx_apatb_param_input_img) {
    for (int j = 0  - 0, e = 100 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_input_img)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_AXI_DATA, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_output_bus = 100*1;
  if (__xlx_apatb_param_output_bus) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_output_bus)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_AXI_DATA, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(101, &tcl_file.AXI_DATA_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_AXI_DATA, __xlx_sprintf_buffer.data());
}
// print out_wire Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_out_wire, __xlx_sprintf_buffer.data());
  {
    sc_bv<8> __xlx_tmp_lv = *((char*)__xlx_apatb_param_out_wire);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_out_wire, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.out_wire_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_out_wire, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
