############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project nn_inference
set_top nn_inference
add_files matmul.cpp
add_files matmul.hpp
add_files -tb matmul_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-i}
create_clock -period 10 -name default
#source "./nn_inference/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -output /home/vincent/Embedded-System/turbo-train-EMB2/HLS_IP/good/nn_inference.zip
