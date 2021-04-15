// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Apr 15 16:25:01 2021
// Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_spi_0_0/assembly_spi_0_0_sim_netlist.v
// Design      : assembly_spi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "assembly_spi_0_0,spi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "spi,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module assembly_spi_0_0
   (rst,
    clk,
    sclk,
    ss,
    sdi,
    data_in,
    sdo,
    state,
    data_out);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN assembly_clk_0, INSERT_VIP 0" *) input clk;
  input sclk;
  input ss;
  input sdi;
  input [7:0]data_in;
  output sdo;
  output [3:0]state;
  output [7:0]data_out;

  wire clk;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire rst;
  wire sclk;
  wire sdi;
  wire sdo;
  wire ss;
  wire [3:0]state;

  assembly_spi_0_0_spi U0
       (.Q({state[2],state[0]}),
        .clk(clk),
        .data_in(data_in),
        .data_out(data_out),
        .rst(rst),
        .sclk(sclk),
        .sdi(sdi),
        .sdo(sdo),
        .ss(ss),
        .state({state[3],state[1]}));
endmodule

(* ORIG_REF_NAME = "spi" *) 
module assembly_spi_0_0_spi
   (Q,
    data_out,
    sdo,
    state,
    clk,
    rst,
    sdi,
    ss,
    sclk,
    data_in);
  output [1:0]Q;
  output [7:0]data_out;
  output sdo;
  output [1:0]state;
  input clk;
  input rst;
  input sdi;
  input ss;
  input sclk;
  input [7:0]data_in;

  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[1]_i_2_n_0 ;
  wire \FSM_onehot_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire clk;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire data_out_t;
  wire next_state;
  wire [7:1]p_0_in;
  wire p_0_in__0;
  wire \reg ;
  wire \reg[0]_i_1_n_0 ;
  wire \reg[1]_i_1_n_0 ;
  wire \reg[2]_i_1_n_0 ;
  wire \reg[3]_i_1_n_0 ;
  wire \reg[4]_i_1_n_0 ;
  wire \reg[5]_i_1_n_0 ;
  wire \reg[6]_i_1_n_0 ;
  wire \reg[7]_i_2_n_0 ;
  wire reg_n;
  wire \reg_n[0]_i_1_n_0 ;
  wire \reg_n[1]_i_1_n_0 ;
  wire \reg_n[2]_i_1_n_0 ;
  wire \reg_n_reg_n_0_[0] ;
  wire \reg_n_reg_n_0_[1] ;
  wire \reg_n_reg_n_0_[2] ;
  wire rst;
  wire sclk;
  wire sdi;
  wire sdo;
  wire sdo_t_i_1_n_0;
  wire sdo_t_reg_n_0;
  wire ss;
  wire [1:0]state;

  (* FSM_ENCODED_STATES = "s_high:100,s_low:010,s_rst:001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .PRE(rst),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "s_high:100,s_low:010,s_rst:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "s_high:100,s_low:010,s_rst:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[0]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hF0E0F0E0F0E0FFE0)) 
    \FSM_onehot_next_state_reg[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(ss),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(sclk),
        .I5(\FSM_onehot_next_state_reg[1]_i_2_n_0 ),
        .O(\FSM_onehot_next_state_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[1]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'h0C0C0C0C0F0E0E0E)) 
    \FSM_onehot_next_state_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(ss),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_next_state_reg[1]_i_2_n_0 ),
        .I5(sclk),
        .O(\FSM_onehot_next_state_reg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_onehot_next_state_reg[1]_i_2 
       (.I0(\reg_n_reg_n_0_[1] ),
        .I1(\reg_n_reg_n_0_[0] ),
        .I2(\reg_n_reg_n_0_[2] ),
        .O(\FSM_onehot_next_state_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[2]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0C08)) 
    \FSM_onehot_next_state_reg[2]_i_1 
       (.I0(Q[1]),
        .I1(sclk),
        .I2(ss),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_next_state_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_next_state_reg[2]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(next_state));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out_t[7]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_next_state_reg_n_0_[0] ),
        .O(data_out_t));
  FDCE \data_out_t_reg[0] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(sdi),
        .Q(data_out[0]));
  FDCE \data_out_t_reg[1] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(data_out[1]));
  FDCE \data_out_t_reg[2] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(p_0_in[2]),
        .Q(data_out[2]));
  FDCE \data_out_t_reg[3] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(p_0_in[3]),
        .Q(data_out[3]));
  FDCE \data_out_t_reg[4] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(p_0_in[4]),
        .Q(data_out[4]));
  FDCE \data_out_t_reg[5] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(p_0_in[5]),
        .Q(data_out[5]));
  FDCE \data_out_t_reg[6] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(p_0_in[6]),
        .Q(data_out[6]));
  FDCE \data_out_t_reg[7] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(p_0_in[7]),
        .Q(data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg[0]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(sdi),
        .I3(Q[0]),
        .I4(data_in[0]),
        .O(\reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg[1]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(p_0_in[1]),
        .I3(Q[0]),
        .I4(data_in[1]),
        .O(\reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg[2]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(p_0_in[2]),
        .I3(Q[0]),
        .I4(data_in[2]),
        .O(\reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg[3]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(p_0_in[3]),
        .I3(Q[0]),
        .I4(data_in[3]),
        .O(\reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg[4]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(p_0_in[4]),
        .I3(Q[0]),
        .I4(data_in[4]),
        .O(\reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg[5]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(p_0_in[5]),
        .I3(Q[0]),
        .I4(data_in[5]),
        .O(\reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg[6]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(p_0_in[6]),
        .I3(Q[0]),
        .I4(data_in[6]),
        .O(\reg[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \reg[7]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_next_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\reg ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg[7]_i_2 
       (.I0(Q[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(p_0_in[7]),
        .I3(Q[0]),
        .I4(data_in[7]),
        .O(\reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCFFFF888)) 
    \reg_n[0]_i_1 
       (.I0(\FSM_onehot_next_state_reg_n_0_[1] ),
        .I1(Q[0]),
        .I2(\FSM_onehot_next_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\reg_n_reg_n_0_[0] ),
        .O(\reg_n[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF5FFFFFFFAC0C0C0)) 
    \reg_n[1]_i_1 
       (.I0(\reg_n_reg_n_0_[0] ),
        .I1(\FSM_onehot_next_state_reg_n_0_[1] ),
        .I2(Q[0]),
        .I3(\FSM_onehot_next_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\reg_n_reg_n_0_[1] ),
        .O(\reg_n[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAFFFFEAAA0000)) 
    \reg_n[2]_i_1 
       (.I0(Q[0]),
        .I1(\reg_n_reg_n_0_[0] ),
        .I2(\reg_n_reg_n_0_[1] ),
        .I3(Q[1]),
        .I4(reg_n),
        .I5(\reg_n_reg_n_0_[2] ),
        .O(\reg_n[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_n[2]_i_2 
       (.I0(\FSM_onehot_next_state_reg_n_0_[1] ),
        .I1(Q[0]),
        .I2(\FSM_onehot_next_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .O(reg_n));
  FDPE \reg_n_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_n[0]_i_1_n_0 ),
        .PRE(rst),
        .Q(\reg_n_reg_n_0_[0] ));
  FDPE \reg_n_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_n[1]_i_1_n_0 ),
        .PRE(rst),
        .Q(\reg_n_reg_n_0_[1] ));
  FDPE \reg_n_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_n[2]_i_1_n_0 ),
        .PRE(rst),
        .Q(\reg_n_reg_n_0_[2] ));
  FDCE \reg_reg[0] 
       (.C(clk),
        .CE(\reg ),
        .CLR(rst),
        .D(\reg[0]_i_1_n_0 ),
        .Q(p_0_in[1]));
  FDCE \reg_reg[1] 
       (.C(clk),
        .CE(\reg ),
        .CLR(rst),
        .D(\reg[1]_i_1_n_0 ),
        .Q(p_0_in[2]));
  FDCE \reg_reg[2] 
       (.C(clk),
        .CE(\reg ),
        .CLR(rst),
        .D(\reg[2]_i_1_n_0 ),
        .Q(p_0_in[3]));
  FDCE \reg_reg[3] 
       (.C(clk),
        .CE(\reg ),
        .CLR(rst),
        .D(\reg[3]_i_1_n_0 ),
        .Q(p_0_in[4]));
  FDCE \reg_reg[4] 
       (.C(clk),
        .CE(\reg ),
        .CLR(rst),
        .D(\reg[4]_i_1_n_0 ),
        .Q(p_0_in[5]));
  FDCE \reg_reg[5] 
       (.C(clk),
        .CE(\reg ),
        .CLR(rst),
        .D(\reg[5]_i_1_n_0 ),
        .Q(p_0_in[6]));
  FDCE \reg_reg[6] 
       (.C(clk),
        .CE(\reg ),
        .CLR(rst),
        .D(\reg[6]_i_1_n_0 ),
        .Q(p_0_in[7]));
  FDCE \reg_reg[7] 
       (.C(clk),
        .CE(\reg ),
        .CLR(rst),
        .D(\reg[7]_i_2_n_0 ),
        .Q(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    sdo_INST_0
       (.I0(sdo_t_reg_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .O(sdo));
  LUT6 #(
    .INIT(64'hAABF3F3FAA800000)) 
    sdo_t_i_1
       (.I0(p_0_in__0),
        .I1(\FSM_onehot_next_state_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(\FSM_onehot_next_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(sdo_t_reg_n_0),
        .O(sdo_t_i_1_n_0));
  FDCE sdo_t_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(sdo_t_i_1_n_0),
        .Q(sdo_t_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[1]_INST_0 
       (.I0(Q[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[3]_INST_0 
       (.I0(Q[0]),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(state[1]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
