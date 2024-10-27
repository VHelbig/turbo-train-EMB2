set moduleName image_processing
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
set C_modelName {image_processing}
set C_modelType { void 0 }
set C_modelArgList {
	{ AXI_DATA int 32 regular {axi_master 2}  }
	{ in_r int 64 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AXI_DATA", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "out","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "in_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 65
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"image_processing","role":"start","value":"0","valid_bit":"0"},{"name":"image_processing","role":"continue","value":"0","valid_bit":"4"},{"name":"image_processing","role":"auto_start","value":"0","valid_bit":"7"},{"name":"in_r","role":"data","value":"16"},{"name":"out_r","role":"data","value":"28"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"image_processing","role":"start","value":"0","valid_bit":"0"},{"name":"image_processing","role":"done","value":"0","valid_bit":"1"},{"name":"image_processing","role":"idle","value":"0","valid_bit":"2"},{"name":"image_processing","role":"ready","value":"0","valid_bit":"3"},{"name":"image_processing","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_AXI_DATA_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_DATA", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "image_processing",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3014", "EstimateLatencyMax" : "3014",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AXI_DATA", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "AXI_DATA_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "AXI_DATA_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "AXI_DATA_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "AXI_DATA_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "AXI_DATA_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXI_DATA_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	image_processing {
		AXI_DATA {Type IO LastRead 10 FirstWrite 10}
		in_r {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3014", "Max" : "3014"}
	, {"Name" : "Interval", "Min" : "3015", "Max" : "3015"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	AXI_DATA { m_axi {  { m_axi_AXI_DATA_AWVALID VALID 1 1 }  { m_axi_AXI_DATA_AWREADY READY 0 1 }  { m_axi_AXI_DATA_AWADDR ADDR 1 64 }  { m_axi_AXI_DATA_AWID ID 1 1 }  { m_axi_AXI_DATA_AWLEN LEN 1 8 }  { m_axi_AXI_DATA_AWSIZE SIZE 1 3 }  { m_axi_AXI_DATA_AWBURST BURST 1 2 }  { m_axi_AXI_DATA_AWLOCK LOCK 1 2 }  { m_axi_AXI_DATA_AWCACHE CACHE 1 4 }  { m_axi_AXI_DATA_AWPROT PROT 1 3 }  { m_axi_AXI_DATA_AWQOS QOS 1 4 }  { m_axi_AXI_DATA_AWREGION REGION 1 4 }  { m_axi_AXI_DATA_AWUSER USER 1 1 }  { m_axi_AXI_DATA_WVALID VALID 1 1 }  { m_axi_AXI_DATA_WREADY READY 0 1 }  { m_axi_AXI_DATA_WDATA DATA 1 32 }  { m_axi_AXI_DATA_WSTRB STRB 1 4 }  { m_axi_AXI_DATA_WLAST LAST 1 1 }  { m_axi_AXI_DATA_WID ID 1 1 }  { m_axi_AXI_DATA_WUSER USER 1 1 }  { m_axi_AXI_DATA_ARVALID VALID 1 1 }  { m_axi_AXI_DATA_ARREADY READY 0 1 }  { m_axi_AXI_DATA_ARADDR ADDR 1 64 }  { m_axi_AXI_DATA_ARID ID 1 1 }  { m_axi_AXI_DATA_ARLEN LEN 1 8 }  { m_axi_AXI_DATA_ARSIZE SIZE 1 3 }  { m_axi_AXI_DATA_ARBURST BURST 1 2 }  { m_axi_AXI_DATA_ARLOCK LOCK 1 2 }  { m_axi_AXI_DATA_ARCACHE CACHE 1 4 }  { m_axi_AXI_DATA_ARPROT PROT 1 3 }  { m_axi_AXI_DATA_ARQOS QOS 1 4 }  { m_axi_AXI_DATA_ARREGION REGION 1 4 }  { m_axi_AXI_DATA_ARUSER USER 1 1 }  { m_axi_AXI_DATA_RVALID VALID 0 1 }  { m_axi_AXI_DATA_RREADY READY 1 1 }  { m_axi_AXI_DATA_RDATA DATA 0 32 }  { m_axi_AXI_DATA_RLAST LAST 0 1 }  { m_axi_AXI_DATA_RID ID 0 1 }  { m_axi_AXI_DATA_RUSER USER 0 1 }  { m_axi_AXI_DATA_RRESP RESP 0 2 }  { m_axi_AXI_DATA_BVALID VALID 0 1 }  { m_axi_AXI_DATA_BREADY READY 1 1 }  { m_axi_AXI_DATA_BRESP RESP 0 2 }  { m_axi_AXI_DATA_BID ID 0 1 }  { m_axi_AXI_DATA_BUSER USER 0 1 } } }
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
