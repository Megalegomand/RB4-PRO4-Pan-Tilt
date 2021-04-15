// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Apr 15 18:02:08 2021
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
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
       (.clk(clk),
        .data_in(data_in),
        .data_out(data_out),
        .rst(rst),
        .sclk(sclk),
        .sdi(sdi),
        .sdo(sdo),
        .ss(ss),
        .state(state));
endmodule

(* ORIG_REF_NAME = "spi" *) 
module assembly_spi_0_0_spi
   (state,
    sdo,
    data_out,
    ss,
    sclk,
    clk,
    rst,
    sdi,
    data_in);
  output [3:0]state;
  output sdo;
  output [7:0]data_out;
  input ss;
  input sclk;
  input clk;
  input rst;
  input sdi;
  input [7:0]data_in;

  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire clk;
  wire [1:0]current_state;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire data_out_t;
  wire \data_out_t_reg_n_0_[0] ;
  wire \data_out_t_reg_n_0_[1] ;
  wire \data_out_t_reg_n_0_[2] ;
  wire \data_out_t_reg_n_0_[3] ;
  wire \data_out_t_reg_n_0_[4] ;
  wire \data_out_t_reg_n_0_[5] ;
  wire \data_out_t_reg_n_0_[6] ;
  wire \data_out_t_reg_n_0_[7] ;
  wire [1:0]next_state__0;
  wire [0:0]next_state__0__0;
  wire [7:1]p_0_in;
  wire p_0_in__0;
  wire [7:0]\reg ;
  wire \reg[7]_i_1_n_0 ;
  wire [2:2]reg_n;
  wire \reg_n[0]_i_1_n_0 ;
  wire \reg_n[1]_i_1_n_0 ;
  wire \reg_n[2]_i_1_n_0 ;
  wire \reg_n[2]_i_4_n_0 ;
  wire \reg_n[2]_i_5_n_0 ;
  wire \reg_n_reg_n_0_[0] ;
  wire \reg_n_reg_n_0_[1] ;
  wire \reg_n_reg_n_0_[2] ;
  wire rst;
  wire sclk;
  wire sdi;
  wire sdo;
  wire sdo_reg_i_1_n_0;
  wire sdo_t_i_1_n_0;
  wire sdo_t_reg_n_0;
  wire ss;
  wire [3:0]state;

  LUT6 #(
    .INIT(64'h0000000001117777)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[0]),
        .I1(sclk),
        .I2(\reg_n_reg_n_0_[1] ),
        .I3(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I4(current_state[1]),
        .I5(ss),
        .O(next_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(\reg_n_reg_n_0_[2] ),
        .I1(\reg_n_reg_n_0_[0] ),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0600)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(ss),
        .I3(sclk),
        .O(next_state__0[1]));
  (* FSM_ENCODED_STATES = "s_high:10,s_low:01,s_rst:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state__0[0]),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "s_high:10,s_low:01,s_rst:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state__0[1]),
        .Q(current_state[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.CLR(1'b0),
        .D(\data_out_t_reg_n_0_[0] ),
        .G(sdo_reg_i_1_n_0),
        .GE(1'b1),
        .Q(data_out[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.CLR(1'b0),
        .D(\data_out_t_reg_n_0_[1] ),
        .G(sdo_reg_i_1_n_0),
        .GE(1'b1),
        .Q(data_out[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.CLR(1'b0),
        .D(\data_out_t_reg_n_0_[2] ),
        .G(sdo_reg_i_1_n_0),
        .GE(1'b1),
        .Q(data_out[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.CLR(1'b0),
        .D(\data_out_t_reg_n_0_[3] ),
        .G(sdo_reg_i_1_n_0),
        .GE(1'b1),
        .Q(data_out[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.CLR(1'b0),
        .D(\data_out_t_reg_n_0_[4] ),
        .G(sdo_reg_i_1_n_0),
        .GE(1'b1),
        .Q(data_out[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.CLR(1'b0),
        .D(\data_out_t_reg_n_0_[5] ),
        .G(sdo_reg_i_1_n_0),
        .GE(1'b1),
        .Q(data_out[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.CLR(1'b0),
        .D(\data_out_t_reg_n_0_[6] ),
        .G(sdo_reg_i_1_n_0),
        .GE(1'b1),
        .Q(data_out[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.CLR(1'b0),
        .D(\data_out_t_reg_n_0_[7] ),
        .G(sdo_reg_i_1_n_0),
        .GE(1'b1),
        .Q(data_out[7]));
  LUT6 #(
    .INIT(64'h000000008888C888)) 
    \data_out_t[7]_i_1 
       (.I0(ss),
        .I1(current_state[1]),
        .I2(\reg_n_reg_n_0_[1] ),
        .I3(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I4(sclk),
        .I5(current_state[0]),
        .O(data_out_t));
  FDCE \data_out_t_reg[0] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(sdi),
        .Q(\data_out_t_reg_n_0_[0] ));
  FDCE \data_out_t_reg[1] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(\data_out_t_reg_n_0_[1] ));
  FDCE \data_out_t_reg[2] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(p_0_in[2]),
        .Q(\data_out_t_reg_n_0_[2] ));
  FDCE \data_out_t_reg[3] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(p_0_in[3]),
        .Q(\data_out_t_reg_n_0_[3] ));
  FDCE \data_out_t_reg[4] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(p_0_in[4]),
        .Q(\data_out_t_reg_n_0_[4] ));
  FDCE \data_out_t_reg[5] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(p_0_in[5]),
        .Q(\data_out_t_reg_n_0_[5] ));
  FDCE \data_out_t_reg[6] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(p_0_in[6]),
        .Q(\data_out_t_reg_n_0_[6] ));
  FDCE \data_out_t_reg[7] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(p_0_in[7]),
        .Q(\data_out_t_reg_n_0_[7] ));
  LUT3 #(
    .INIT(8'hE4)) 
    \reg[0]_i_1 
       (.I0(current_state[1]),
        .I1(data_in[0]),
        .I2(sdi),
        .O(\reg [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \reg[1]_i_1 
       (.I0(current_state[1]),
        .I1(data_in[1]),
        .I2(p_0_in[1]),
        .O(\reg [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \reg[2]_i_1 
       (.I0(current_state[1]),
        .I1(data_in[2]),
        .I2(p_0_in[2]),
        .O(\reg [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \reg[3]_i_1 
       (.I0(current_state[1]),
        .I1(data_in[3]),
        .I2(p_0_in[3]),
        .O(\reg [3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \reg[4]_i_1 
       (.I0(current_state[1]),
        .I1(data_in[4]),
        .I2(p_0_in[4]),
        .O(\reg [4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \reg[5]_i_1 
       (.I0(current_state[1]),
        .I1(data_in[5]),
        .I2(p_0_in[5]),
        .O(\reg [5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \reg[6]_i_1 
       (.I0(current_state[1]),
        .I1(data_in[6]),
        .I2(p_0_in[6]),
        .O(\reg [6]));
  LUT6 #(
    .INIT(64'h0000000011131313)) 
    \reg[7]_i_1 
       (.I0(current_state[1]),
        .I1(ss),
        .I2(sclk),
        .I3(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I4(\reg_n_reg_n_0_[1] ),
        .I5(current_state[0]),
        .O(\reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \reg[7]_i_2 
       (.I0(current_state[1]),
        .I1(data_in[7]),
        .I2(p_0_in[7]),
        .O(\reg [7]));
  LUT6 #(
    .INIT(64'hFFFFFBFF000004F0)) 
    \reg_n[0]_i_1 
       (.I0(ss),
        .I1(sclk),
        .I2(next_state__0__0),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(\reg_n_reg_n_0_[0] ),
        .O(\reg_n[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FF00000830)) 
    \reg_n[1]_i_1 
       (.I0(\reg_n_reg_n_0_[0] ),
        .I1(next_state__0[1]),
        .I2(next_state__0__0),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(\reg_n_reg_n_0_[1] ),
        .O(\reg_n[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBEF00000820)) 
    \reg_n[2]_i_1 
       (.I0(reg_n),
        .I1(next_state__0[1]),
        .I2(next_state__0__0),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(\reg_n_reg_n_0_[2] ),
        .O(\reg_n[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h15405555)) 
    \reg_n[2]_i_2 
       (.I0(current_state[1]),
        .I1(\reg_n_reg_n_0_[0] ),
        .I2(\reg_n_reg_n_0_[1] ),
        .I3(\reg_n_reg_n_0_[2] ),
        .I4(current_state[0]),
        .O(reg_n));
  LUT6 #(
    .INIT(64'h000000001555FFFF)) 
    \reg_n[2]_i_4 
       (.I0(sclk),
        .I1(\reg_n_reg_n_0_[0] ),
        .I2(\reg_n_reg_n_0_[2] ),
        .I3(\reg_n_reg_n_0_[1] ),
        .I4(current_state[1]),
        .I5(ss),
        .O(\reg_n[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \reg_n[2]_i_5 
       (.I0(ss),
        .I1(sclk),
        .I2(current_state[1]),
        .O(\reg_n[2]_i_5_n_0 ));
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
  MUXF7 \reg_n_reg[2]_i_3 
       (.I0(\reg_n[2]_i_4_n_0 ),
        .I1(\reg_n[2]_i_5_n_0 ),
        .O(next_state__0__0),
        .S(current_state[0]));
  FDCE \reg_reg[0] 
       (.C(clk),
        .CE(\reg[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\reg [0]),
        .Q(p_0_in[1]));
  FDCE \reg_reg[1] 
       (.C(clk),
        .CE(\reg[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\reg [1]),
        .Q(p_0_in[2]));
  FDCE \reg_reg[2] 
       (.C(clk),
        .CE(\reg[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\reg [2]),
        .Q(p_0_in[3]));
  FDCE \reg_reg[3] 
       (.C(clk),
        .CE(\reg[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\reg [3]),
        .Q(p_0_in[4]));
  FDCE \reg_reg[4] 
       (.C(clk),
        .CE(\reg[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\reg [4]),
        .Q(p_0_in[5]));
  FDCE \reg_reg[5] 
       (.C(clk),
        .CE(\reg[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\reg [5]),
        .Q(p_0_in[6]));
  FDCE \reg_reg[6] 
       (.C(clk),
        .CE(\reg[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\reg [6]),
        .Q(p_0_in[7]));
  FDCE \reg_reg[7] 
       (.C(clk),
        .CE(\reg[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\reg [7]),
        .Q(p_0_in__0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    sdo_reg
       (.CLR(1'b0),
        .D(sdo_t_reg_n_0),
        .G(sdo_reg_i_1_n_0),
        .GE(1'b1),
        .Q(sdo));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    sdo_reg_i_1
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(sdo_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFEFFC00002000)) 
    sdo_t_i_1
       (.I0(p_0_in__0),
        .I1(next_state__0__0),
        .I2(next_state__0[1]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(sdo_t_reg_n_0),
        .O(sdo_t_i_1_n_0));
  FDCE sdo_t_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(sdo_t_i_1_n_0),
        .Q(sdo_t_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[0]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state[1]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[2]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(state[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \state[3]_INST_0 
       (.I0(current_state[0]),
        .O(state[3]));
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
