############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project EMB2_Image_processor
set_top image_processing
add_files main.cpp
add_files -tb main_test_bench.cpp
open_solution "Image_Processor" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
#source "./EMB2_Image_processor/Image_Processor/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -output /home/vincent/Embedded-System/turbo-train-EMB2/ip/EMB2_Image_processor/Image_Processor/image_processing.zip
