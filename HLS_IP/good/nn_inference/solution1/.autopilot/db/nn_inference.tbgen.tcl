set moduleName nn_inference
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {nn_inference}
set C_modelType { void 0 }
set C_modelArgList {
	{ AXI_DATA int 8 regular {axi_master 2}  }
	{ input_img int 64 regular {axi_slave 0}  }
	{ output_bus int 64 regular {axi_slave 0}  }
	{ out_wire int 8 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AXI_DATA", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input_img","cData": "char","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "input_img","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "output_bus","cData": "char","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "output_bus","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "input_img", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "output_bus", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "out_wire", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_wire","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 67
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_AXI_DATA_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_AXI_DATA_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_AXI_DATA_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_AXI_DATA_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_AXI_DATA_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_AXI_DATA_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_DATA_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_AXI_DATA_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_DATA_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_DATA_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_AXI_DATA_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_DATA_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_AXI_DATA_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_AXI_DATA_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_AXI_DATA_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_AXI_DATA_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_AXI_DATA_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_DATA_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_AXI_DATA_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_DATA_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_DATA_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_AXI_DATA_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_AXI_DATA_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_AXI_DATA_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_BUSER sc_in sc_lv 1 signal 0 } 
	{ out_wire sc_out sc_lv 8 signal 3 } 
	{ out_wire_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"nn_inference","role":"start","value":"0","valid_bit":"0"},{"name":"nn_inference","role":"continue","value":"0","valid_bit":"4"},{"name":"nn_inference","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_img","role":"data","value":"16"},{"name":"output_bus","role":"data","value":"28"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"nn_inference","role":"start","value":"0","valid_bit":"0"},{"name":"nn_inference","role":"done","value":"0","valid_bit":"1"},{"name":"nn_inference","role":"idle","value":"0","valid_bit":"2"},{"name":"nn_inference","role":"ready","value":"0","valid_bit":"3"},{"name":"nn_inference","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_AXI_DATA_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWVALID" }} , 
 	{ "name": "m_axi_AXI_DATA_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWREADY" }} , 
 	{ "name": "m_axi_AXI_DATA_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWADDR" }} , 
 	{ "name": "m_axi_AXI_DATA_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWID" }} , 
 	{ "name": "m_axi_AXI_DATA_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWLEN" }} , 
 	{ "name": "m_axi_AXI_DATA_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_AXI_DATA_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWBURST" }} , 
 	{ "name": "m_axi_AXI_DATA_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_AXI_DATA_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_AXI_DATA_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWPROT" }} , 
 	{ "name": "m_axi_AXI_DATA_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWQOS" }} , 
 	{ "name": "m_axi_AXI_DATA_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWREGION" }} , 
 	{ "name": "m_axi_AXI_DATA_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWUSER" }} , 
 	{ "name": "m_axi_AXI_DATA_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "WVALID" }} , 
 	{ "name": "m_axi_AXI_DATA_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "WREADY" }} , 
 	{ "name": "m_axi_AXI_DATA_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "WDATA" }} , 
 	{ "name": "m_axi_AXI_DATA_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "WSTRB" }} , 
 	{ "name": "m_axi_AXI_DATA_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "WLAST" }} , 
 	{ "name": "m_axi_AXI_DATA_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "WID" }} , 
 	{ "name": "m_axi_AXI_DATA_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "WUSER" }} , 
 	{ "name": "m_axi_AXI_DATA_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARVALID" }} , 
 	{ "name": "m_axi_AXI_DATA_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARREADY" }} , 
 	{ "name": "m_axi_AXI_DATA_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARADDR" }} , 
 	{ "name": "m_axi_AXI_DATA_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARID" }} , 
 	{ "name": "m_axi_AXI_DATA_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARLEN" }} , 
 	{ "name": "m_axi_AXI_DATA_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_AXI_DATA_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARBURST" }} , 
 	{ "name": "m_axi_AXI_DATA_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_AXI_DATA_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_AXI_DATA_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARPROT" }} , 
 	{ "name": "m_axi_AXI_DATA_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARQOS" }} , 
 	{ "name": "m_axi_AXI_DATA_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARREGION" }} , 
 	{ "name": "m_axi_AXI_DATA_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARUSER" }} , 
 	{ "name": "m_axi_AXI_DATA_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "RVALID" }} , 
 	{ "name": "m_axi_AXI_DATA_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "RREADY" }} , 
 	{ "name": "m_axi_AXI_DATA_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "RDATA" }} , 
 	{ "name": "m_axi_AXI_DATA_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "RLAST" }} , 
 	{ "name": "m_axi_AXI_DATA_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "RID" }} , 
 	{ "name": "m_axi_AXI_DATA_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "RUSER" }} , 
 	{ "name": "m_axi_AXI_DATA_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "RRESP" }} , 
 	{ "name": "m_axi_AXI_DATA_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "BVALID" }} , 
 	{ "name": "m_axi_AXI_DATA_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "BREADY" }} , 
 	{ "name": "m_axi_AXI_DATA_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "BRESP" }} , 
 	{ "name": "m_axi_AXI_DATA_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "BID" }} , 
 	{ "name": "m_axi_AXI_DATA_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "BUSER" }} , 
 	{ "name": "out_wire", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_wire", "role": "default" }} , 
 	{ "name": "out_wire_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_wire", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185"],
		"CDFG" : "nn_inference",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4576", "EstimateLatencyMax" : "4576",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AXI_DATA", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "AXI_DATA_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "AXI_DATA_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "AXI_DATA_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "AXI_DATA"}]},
			{"Name" : "input_img", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_bus", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_wire", "Type" : "OVld", "Direction" : "O"},
			{"Name" : "layer1_weights_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_0"}]},
			{"Name" : "layer1_weights_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_1"}]},
			{"Name" : "layer1_weights_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_2"}]},
			{"Name" : "layer1_weights_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_3"}]},
			{"Name" : "layer1_weights_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_4"}]},
			{"Name" : "layer1_weights_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_5"}]},
			{"Name" : "layer1_weights_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_6"}]},
			{"Name" : "layer1_weights_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_7"}]},
			{"Name" : "layer1_weights_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_8"}]},
			{"Name" : "layer1_weights_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_9"}]},
			{"Name" : "layer1_weights_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_10"}]},
			{"Name" : "layer1_weights_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_11"}]},
			{"Name" : "layer1_weights_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_12"}]},
			{"Name" : "layer1_weights_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_13"}]},
			{"Name" : "layer1_weights_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_14"}]},
			{"Name" : "layer1_weights_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_15"}]},
			{"Name" : "layer1_weights_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_16"}]},
			{"Name" : "layer1_weights_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_17"}]},
			{"Name" : "layer1_weights_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_18"}]},
			{"Name" : "layer1_weights_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_19"}]},
			{"Name" : "layer1_weights_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_20"}]},
			{"Name" : "layer1_weights_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_21"}]},
			{"Name" : "layer1_weights_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_22"}]},
			{"Name" : "layer1_weights_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_23"}]},
			{"Name" : "layer1_weights_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_24"}]},
			{"Name" : "layer1_weights_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_25"}]},
			{"Name" : "layer1_weights_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_26"}]},
			{"Name" : "layer1_weights_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_27"}]},
			{"Name" : "layer1_weights_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_28"}]},
			{"Name" : "layer1_weights_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_29"}]},
			{"Name" : "layer1_weights_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_30"}]},
			{"Name" : "layer1_weights_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_hwmm_layer1_fu_1601", "Port" : "layer1_weights_31"}]},
			{"Name" : "layer2_weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_15", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_14_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_15_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXI_DATA_m_axi_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_output_0_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_output2_0_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_output3_0_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601", "Parent" : "0", "Child" : ["55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120"],
		"CDFG" : "hwmm_layer1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4128", "EstimateLatencyMax" : "4128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AXI_DATA", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_DATA_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "AXI_DATA_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "layer1_weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer1_weights_31", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_0_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_1_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_2_U", "Parent" : "54"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_3_U", "Parent" : "54"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_4_U", "Parent" : "54"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_5_U", "Parent" : "54"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_6_U", "Parent" : "54"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_7_U", "Parent" : "54"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_8_U", "Parent" : "54"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_9_U", "Parent" : "54"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_10_U", "Parent" : "54"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_11_U", "Parent" : "54"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_12_U", "Parent" : "54"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_13_U", "Parent" : "54"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_14_U", "Parent" : "54"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_15_U", "Parent" : "54"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_16_U", "Parent" : "54"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_17_U", "Parent" : "54"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_18_U", "Parent" : "54"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_19_U", "Parent" : "54"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_20_U", "Parent" : "54"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_21_U", "Parent" : "54"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_22_U", "Parent" : "54"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_23_U", "Parent" : "54"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_24_U", "Parent" : "54"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_25_U", "Parent" : "54"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_26_U", "Parent" : "54"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_27_U", "Parent" : "54"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_28_U", "Parent" : "54"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_29_U", "Parent" : "54"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_30_U", "Parent" : "54"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.layer1_weights_31_U", "Parent" : "54"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.fdiv_32ns_32ns_32_10_no_dsp_1_U2", "Parent" : "54"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.uitofp_32ns_32_4_no_dsp_1_U3", "Parent" : "54"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U4", "Parent" : "54"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U5", "Parent" : "54"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U6", "Parent" : "54"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U7", "Parent" : "54"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U8", "Parent" : "54"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U9", "Parent" : "54"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U10", "Parent" : "54"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U11", "Parent" : "54"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U12", "Parent" : "54"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U13", "Parent" : "54"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U14", "Parent" : "54"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U15", "Parent" : "54"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U16", "Parent" : "54"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U17", "Parent" : "54"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U18", "Parent" : "54"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U19", "Parent" : "54"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U20", "Parent" : "54"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U21", "Parent" : "54"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U22", "Parent" : "54"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U23", "Parent" : "54"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U24", "Parent" : "54"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U25", "Parent" : "54"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U26", "Parent" : "54"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U27", "Parent" : "54"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U28", "Parent" : "54"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U29", "Parent" : "54"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U30", "Parent" : "54"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U31", "Parent" : "54"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U32", "Parent" : "54"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U33", "Parent" : "54"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U34", "Parent" : "54"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hwmm_layer1_fu_1601.facc_32ns_32ns_1ns_32_3_no_dsp_1_U35", "Parent" : "54"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U75", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U76", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U77", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U78", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U79", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U80", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U81", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U82", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U83", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U84", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U85", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U86", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U87", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U88", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U89", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U90", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U91", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U92", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U93", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U94", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U95", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U96", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U97", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U98", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U99", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U100", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U101", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U102", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U103", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U104", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U105", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U106", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U107", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U108", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U109", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U110", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U111", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U112", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U113", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U114", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U115", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U116", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U117", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U118", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U119", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U120", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U121", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U122", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U123", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U124", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U125", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U126", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U127", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U128", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U129", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U130", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U131", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U132", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U133", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U134", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U135", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U136", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U137", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U138", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U139", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nn_inference {
		AXI_DATA {Type IO LastRead 256 FirstWrite -1}
		input_img {Type I LastRead 0 FirstWrite -1}
		output_bus {Type I LastRead 0 FirstWrite -1}
		out_wire {Type O LastRead -1 FirstWrite 42}
		layer1_weights_0 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_1 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_2 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_3 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_4 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_5 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_6 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_7 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_8 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_9 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_10 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_11 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_12 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_13 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_14 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_15 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_16 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_17 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_18 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_19 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_20 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_21 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_22 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_23 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_24 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_25 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_26 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_27 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_28 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_29 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_30 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_31 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_0 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_1 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_2 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_3 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_4 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_5 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_6 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_7 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_8 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_9 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_10 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_11 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_12 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_13 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_14 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_15 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_16 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_17 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_18 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_19 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_20 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_21 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_22 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_23 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_24 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_25 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_26 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_27 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_28 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_29 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_30 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_31 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_0 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_1 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_2 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_3 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_4 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_5 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_6 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_7 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_8 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_9 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_10 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_11 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_12 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_13 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_14 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_15 {Type I LastRead -1 FirstWrite -1}}
	hwmm_layer1 {
		AXI_DATA {Type I LastRead 256 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		output_0 {Type O LastRead -1 FirstWrite 8}
		layer1_weights_0 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_1 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_2 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_3 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_4 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_5 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_6 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_7 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_8 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_9 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_10 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_11 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_12 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_13 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_14 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_15 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_16 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_17 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_18 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_19 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_20 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_21 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_22 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_23 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_24 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_25 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_26 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_27 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_28 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_29 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_30 {Type I LastRead -1 FirstWrite -1}
		layer1_weights_31 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4576", "Max" : "4576"}
	, {"Name" : "Interval", "Min" : "4577", "Max" : "4577"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
	{"Pipeline" : "7", "EnableSignal" : "ap_enable_pp7"}
]}

set Spec2ImplPortList { 
	AXI_DATA { m_axi {  { m_axi_AXI_DATA_AWVALID VALID 1 1 }  { m_axi_AXI_DATA_AWREADY READY 0 1 }  { m_axi_AXI_DATA_AWADDR ADDR 1 64 }  { m_axi_AXI_DATA_AWID ID 1 1 }  { m_axi_AXI_DATA_AWLEN LEN 1 8 }  { m_axi_AXI_DATA_AWSIZE SIZE 1 3 }  { m_axi_AXI_DATA_AWBURST BURST 1 2 }  { m_axi_AXI_DATA_AWLOCK LOCK 1 2 }  { m_axi_AXI_DATA_AWCACHE CACHE 1 4 }  { m_axi_AXI_DATA_AWPROT PROT 1 3 }  { m_axi_AXI_DATA_AWQOS QOS 1 4 }  { m_axi_AXI_DATA_AWREGION REGION 1 4 }  { m_axi_AXI_DATA_AWUSER USER 1 1 }  { m_axi_AXI_DATA_WVALID VALID 1 1 }  { m_axi_AXI_DATA_WREADY READY 0 1 }  { m_axi_AXI_DATA_WDATA DATA 1 32 }  { m_axi_AXI_DATA_WSTRB STRB 1 4 }  { m_axi_AXI_DATA_WLAST LAST 1 1 }  { m_axi_AXI_DATA_WID ID 1 1 }  { m_axi_AXI_DATA_WUSER USER 1 1 }  { m_axi_AXI_DATA_ARVALID VALID 1 1 }  { m_axi_AXI_DATA_ARREADY READY 0 1 }  { m_axi_AXI_DATA_ARADDR ADDR 1 64 }  { m_axi_AXI_DATA_ARID ID 1 1 }  { m_axi_AXI_DATA_ARLEN LEN 1 8 }  { m_axi_AXI_DATA_ARSIZE SIZE 1 3 }  { m_axi_AXI_DATA_ARBURST BURST 1 2 }  { m_axi_AXI_DATA_ARLOCK LOCK 1 2 }  { m_axi_AXI_DATA_ARCACHE CACHE 1 4 }  { m_axi_AXI_DATA_ARPROT PROT 1 3 }  { m_axi_AXI_DATA_ARQOS QOS 1 4 }  { m_axi_AXI_DATA_ARREGION REGION 1 4 }  { m_axi_AXI_DATA_ARUSER USER 1 1 }  { m_axi_AXI_DATA_RVALID VALID 0 1 }  { m_axi_AXI_DATA_RREADY READY 1 1 }  { m_axi_AXI_DATA_RDATA DATA 0 32 }  { m_axi_AXI_DATA_RLAST LAST 0 1 }  { m_axi_AXI_DATA_RID ID 0 1 }  { m_axi_AXI_DATA_RUSER USER 0 1 }  { m_axi_AXI_DATA_RRESP RESP 0 2 }  { m_axi_AXI_DATA_BVALID VALID 0 1 }  { m_axi_AXI_DATA_BREADY READY 1 1 }  { m_axi_AXI_DATA_BRESP RESP 0 2 }  { m_axi_AXI_DATA_BID ID 0 1 }  { m_axi_AXI_DATA_BUSER USER 0 1 } } }
	out_wire { ap_ovld {  { out_wire out_data 1 8 }  { out_wire_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
	{ AXI_DATA { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ AXI_DATA 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ AXI_DATA 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
