set moduleName hwmm_layer1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {hwmm_layer1}
set C_modelType { void 0 }
set C_modelArgList {
	{ AXI_DATA int 8 regular {axi_master 0}  }
	{ input_r int 64 regular  }
	{ output_0 float 32 regular {array 32 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AXI_DATA", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 60
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_AXI_DATA_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_AXI_DATA_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_AWLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_AXI_DATA_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_AXI_DATA_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_AXI_DATA_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_ARLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_AXI_DATA_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_AXI_DATA_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_AXI_DATA_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_DATA_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_AXI_DATA_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_AXI_DATA_BUSER sc_in sc_lv 1 signal 0 } 
	{ input_r sc_in sc_lv 64 signal 1 } 
	{ output_0_address0 sc_out sc_lv 5 signal 2 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ output_0_we0 sc_out sc_logic 1 signal 2 } 
	{ output_0_d0 sc_out sc_lv 32 signal 2 } 
	{ grp_fu_1804_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1804_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1804_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1804_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_AXI_DATA_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWVALID" }} , 
 	{ "name": "m_axi_AXI_DATA_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWREADY" }} , 
 	{ "name": "m_axi_AXI_DATA_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWADDR" }} , 
 	{ "name": "m_axi_AXI_DATA_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWID" }} , 
 	{ "name": "m_axi_AXI_DATA_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_AXI_DATA_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "WDATA" }} , 
 	{ "name": "m_axi_AXI_DATA_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "WSTRB" }} , 
 	{ "name": "m_axi_AXI_DATA_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "WLAST" }} , 
 	{ "name": "m_axi_AXI_DATA_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "WID" }} , 
 	{ "name": "m_axi_AXI_DATA_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "WUSER" }} , 
 	{ "name": "m_axi_AXI_DATA_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARVALID" }} , 
 	{ "name": "m_axi_AXI_DATA_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARREADY" }} , 
 	{ "name": "m_axi_AXI_DATA_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARADDR" }} , 
 	{ "name": "m_axi_AXI_DATA_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARID" }} , 
 	{ "name": "m_axi_AXI_DATA_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_AXI_DATA_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "RDATA" }} , 
 	{ "name": "m_axi_AXI_DATA_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "RLAST" }} , 
 	{ "name": "m_axi_AXI_DATA_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "RID" }} , 
 	{ "name": "m_axi_AXI_DATA_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "RUSER" }} , 
 	{ "name": "m_axi_AXI_DATA_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "RRESP" }} , 
 	{ "name": "m_axi_AXI_DATA_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "BVALID" }} , 
 	{ "name": "m_axi_AXI_DATA_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "BREADY" }} , 
 	{ "name": "m_axi_AXI_DATA_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "BRESP" }} , 
 	{ "name": "m_axi_AXI_DATA_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "BID" }} , 
 	{ "name": "m_axi_AXI_DATA_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "BUSER" }} , 
 	{ "name": "input_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_r", "role": "default" }} , 
 	{ "name": "output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_0", "role": "address0" }} , 
 	{ "name": "output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce0" }} , 
 	{ "name": "output_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we0" }} , 
 	{ "name": "output_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0", "role": "d0" }} , 
 	{ "name": "grp_fu_1804_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1804_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1804_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1804_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1804_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1804_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1804_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1804_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_weights_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_10_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.uitofp_32ns_32_4_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U9", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U10", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U11", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U12", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U13", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U14", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U15", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U16", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U17", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U18", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U19", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U20", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U21", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U22", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U23", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U24", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U25", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U26", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U27", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U28", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U29", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U30", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U31", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U32", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U33", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U34", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.facc_32ns_32ns_1ns_32_3_no_dsp_1_U35", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "4128", "Max" : "4128"}
	, {"Name" : "Interval", "Min" : "4128", "Max" : "4128"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
	{"Pipeline" : "7", "EnableSignal" : "ap_enable_pp7"}
	{"Pipeline" : "8", "EnableSignal" : "ap_enable_pp8"}
	{"Pipeline" : "9", "EnableSignal" : "ap_enable_pp9"}
	{"Pipeline" : "10", "EnableSignal" : "ap_enable_pp10"}
	{"Pipeline" : "11", "EnableSignal" : "ap_enable_pp11"}
	{"Pipeline" : "12", "EnableSignal" : "ap_enable_pp12"}
	{"Pipeline" : "13", "EnableSignal" : "ap_enable_pp13"}
	{"Pipeline" : "14", "EnableSignal" : "ap_enable_pp14"}
	{"Pipeline" : "15", "EnableSignal" : "ap_enable_pp15"}
	{"Pipeline" : "16", "EnableSignal" : "ap_enable_pp16"}
	{"Pipeline" : "17", "EnableSignal" : "ap_enable_pp17"}
	{"Pipeline" : "18", "EnableSignal" : "ap_enable_pp18"}
	{"Pipeline" : "19", "EnableSignal" : "ap_enable_pp19"}
	{"Pipeline" : "20", "EnableSignal" : "ap_enable_pp20"}
	{"Pipeline" : "21", "EnableSignal" : "ap_enable_pp21"}
	{"Pipeline" : "22", "EnableSignal" : "ap_enable_pp22"}
	{"Pipeline" : "23", "EnableSignal" : "ap_enable_pp23"}
	{"Pipeline" : "24", "EnableSignal" : "ap_enable_pp24"}
	{"Pipeline" : "25", "EnableSignal" : "ap_enable_pp25"}
	{"Pipeline" : "26", "EnableSignal" : "ap_enable_pp26"}
	{"Pipeline" : "27", "EnableSignal" : "ap_enable_pp27"}
	{"Pipeline" : "28", "EnableSignal" : "ap_enable_pp28"}
	{"Pipeline" : "29", "EnableSignal" : "ap_enable_pp29"}
	{"Pipeline" : "30", "EnableSignal" : "ap_enable_pp30"}
	{"Pipeline" : "31", "EnableSignal" : "ap_enable_pp31"}
]}

set Spec2ImplPortList { 
	AXI_DATA { m_axi {  { m_axi_AXI_DATA_AWVALID VALID 1 1 }  { m_axi_AXI_DATA_AWREADY READY 0 1 }  { m_axi_AXI_DATA_AWADDR ADDR 1 64 }  { m_axi_AXI_DATA_AWID ID 1 1 }  { m_axi_AXI_DATA_AWLEN LEN 1 32 }  { m_axi_AXI_DATA_AWSIZE SIZE 1 3 }  { m_axi_AXI_DATA_AWBURST BURST 1 2 }  { m_axi_AXI_DATA_AWLOCK LOCK 1 2 }  { m_axi_AXI_DATA_AWCACHE CACHE 1 4 }  { m_axi_AXI_DATA_AWPROT PROT 1 3 }  { m_axi_AXI_DATA_AWQOS QOS 1 4 }  { m_axi_AXI_DATA_AWREGION REGION 1 4 }  { m_axi_AXI_DATA_AWUSER USER 1 1 }  { m_axi_AXI_DATA_WVALID VALID 1 1 }  { m_axi_AXI_DATA_WREADY READY 0 1 }  { m_axi_AXI_DATA_WDATA DATA 1 8 }  { m_axi_AXI_DATA_WSTRB STRB 1 1 }  { m_axi_AXI_DATA_WLAST LAST 1 1 }  { m_axi_AXI_DATA_WID ID 1 1 }  { m_axi_AXI_DATA_WUSER USER 1 1 }  { m_axi_AXI_DATA_ARVALID VALID 1 1 }  { m_axi_AXI_DATA_ARREADY READY 0 1 }  { m_axi_AXI_DATA_ARADDR ADDR 1 64 }  { m_axi_AXI_DATA_ARID ID 1 1 }  { m_axi_AXI_DATA_ARLEN LEN 1 32 }  { m_axi_AXI_DATA_ARSIZE SIZE 1 3 }  { m_axi_AXI_DATA_ARBURST BURST 1 2 }  { m_axi_AXI_DATA_ARLOCK LOCK 1 2 }  { m_axi_AXI_DATA_ARCACHE CACHE 1 4 }  { m_axi_AXI_DATA_ARPROT PROT 1 3 }  { m_axi_AXI_DATA_ARQOS QOS 1 4 }  { m_axi_AXI_DATA_ARREGION REGION 1 4 }  { m_axi_AXI_DATA_ARUSER USER 1 1 }  { m_axi_AXI_DATA_RVALID VALID 0 1 }  { m_axi_AXI_DATA_RREADY READY 1 1 }  { m_axi_AXI_DATA_RDATA DATA 0 8 }  { m_axi_AXI_DATA_RLAST LAST 0 1 }  { m_axi_AXI_DATA_RID ID 0 1 }  { m_axi_AXI_DATA_RUSER USER 0 1 }  { m_axi_AXI_DATA_RRESP RESP 0 2 }  { m_axi_AXI_DATA_BVALID VALID 0 1 }  { m_axi_AXI_DATA_BREADY READY 1 1 }  { m_axi_AXI_DATA_BRESP RESP 0 2 }  { m_axi_AXI_DATA_BID ID 0 1 }  { m_axi_AXI_DATA_BUSER USER 0 1 } } }
	input_r { ap_none {  { input_r in_data 0 64 } } }
	output_0 { ap_memory {  { output_0_address0 mem_address 1 5 }  { output_0_ce0 mem_ce 1 1 }  { output_0_we0 mem_we 1 1 }  { output_0_d0 mem_din 1 32 } } }
}
