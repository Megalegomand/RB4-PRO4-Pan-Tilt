// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue May 18 15:20:02 2021
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
   (clk,
    rst,
    sclk,
    sdi,
    data_in,
    ss,
    sdo,
    data_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input sclk;
  input sdi;
  input [15:0]data_in;
  input ss;
  output sdo;
  output [15:0]data_out;

  wire clk;
  wire [15:0]data_in;
  wire [15:0]data_out;
  wire rst;
  wire sclk;
  wire sdi;
  wire sdo;
  wire ss;

  assembly_spi_0_0_spi U0
       (.clk(clk),
        .data_in(data_in),
        .data_out(data_out),
        .rst(rst),
        .sclk(sclk),
        .sdi(sdi),
        .sdo(sdo),
        .ss(ss));
endmodule

(* ORIG_REF_NAME = "spi" *) 
module assembly_spi_0_0_spi
   (data_out,
    sdo,
    clk,
    rst,
    sdi,
    ss,
    sclk,
    data_in);
  output [15:0]data_out;
  output sdo;
  input clk;
  input rst;
  input sdi;
  input ss;
  input sclk;
  input [15:0]data_in;

  wire clk;
  wire [1:0]current_state;
  wire [15:0]data_in;
  wire [15:0]data_out;
  wire data_out_t;
  wire \data_out_t[15]_i_2_n_0 ;
  wire [1:0]next_state__0;
  wire p_0_in__0;
  wire [15:0]\reg ;
  wire reg_0;
  wire reg_cnt;
  wire \reg_cnt[0]_i_1_n_0 ;
  wire \reg_cnt[1]_i_1_n_0 ;
  wire \reg_cnt[2]_i_1_n_0 ;
  wire \reg_cnt[3]_i_2_n_0 ;
  wire \reg_cnt_reg_n_0_[0] ;
  wire \reg_cnt_reg_n_0_[1] ;
  wire \reg_cnt_reg_n_0_[2] ;
  wire \reg_cnt_reg_n_0_[3] ;
  wire \reg_reg_n_0_[0] ;
  wire \reg_reg_n_0_[10] ;
  wire \reg_reg_n_0_[11] ;
  wire \reg_reg_n_0_[12] ;
  wire \reg_reg_n_0_[13] ;
  wire \reg_reg_n_0_[14] ;
  wire \reg_reg_n_0_[1] ;
  wire \reg_reg_n_0_[2] ;
  wire \reg_reg_n_0_[3] ;
  wire \reg_reg_n_0_[4] ;
  wire \reg_reg_n_0_[5] ;
  wire \reg_reg_n_0_[6] ;
  wire \reg_reg_n_0_[7] ;
  wire \reg_reg_n_0_[8] ;
  wire \reg_reg_n_0_[9] ;
  wire rst;
  wire sclk;
  wire sdi;
  wire sdo;
  wire sdo_t_i_1_n_0;
  wire sdo_t_reg_n_0;
  wire ss;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008F3F)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\data_out_t[15]_i_2_n_0 ),
        .I1(current_state[0]),
        .I2(sclk),
        .I3(current_state[1]),
        .I4(ss),
        .O(next_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h06080E0C)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(ss),
        .I3(sclk),
        .I4(\data_out_t[15]_i_2_n_0 ),
        .O(next_state__0[1]));
  (* FSM_ENCODED_STATES = "s_rst:00,s_low:11,s_high:10,s_wait:01" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state__0[0]),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "s_rst:00,s_low:11,s_high:10,s_wait:01" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state__0[1]),
        .Q(current_state[1]));
  LUT5 #(
    .INIT(32'h08040000)) 
    \data_out_t[15]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(ss),
        .I3(sclk),
        .I4(\data_out_t[15]_i_2_n_0 ),
        .O(data_out_t));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_out_t[15]_i_2 
       (.I0(\reg_cnt_reg_n_0_[1] ),
        .I1(\reg_cnt_reg_n_0_[0] ),
        .I2(\reg_cnt_reg_n_0_[3] ),
        .I3(\reg_cnt_reg_n_0_[2] ),
        .O(\data_out_t[15]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[0] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(sdi),
        .Q(data_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[10] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[9] ),
        .Q(data_out[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[11] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[10] ),
        .Q(data_out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[12] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[11] ),
        .Q(data_out[12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[13] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[12] ),
        .Q(data_out[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[14] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[13] ),
        .Q(data_out[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[15] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[14] ),
        .Q(data_out[15]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[1] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[0] ),
        .Q(data_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[2] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[1] ),
        .Q(data_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[3] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[2] ),
        .Q(data_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[4] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[3] ),
        .Q(data_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[5] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[4] ),
        .Q(data_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[6] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[5] ),
        .Q(data_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[7] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[6] ),
        .Q(data_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[8] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[7] ),
        .Q(data_out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_t_reg[9] 
       (.C(clk),
        .CE(data_out_t),
        .CLR(rst),
        .D(\reg_reg_n_0_[8] ),
        .Q(data_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[0]_i_1 
       (.I0(sdi),
        .I1(data_in[0]),
        .I2(current_state[1]),
        .O(\reg [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[10]_i_1 
       (.I0(\reg_reg_n_0_[9] ),
        .I1(data_in[10]),
        .I2(current_state[1]),
        .O(\reg [10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[11]_i_1 
       (.I0(\reg_reg_n_0_[10] ),
        .I1(data_in[11]),
        .I2(current_state[1]),
        .O(\reg [11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[12]_i_1 
       (.I0(\reg_reg_n_0_[11] ),
        .I1(data_in[12]),
        .I2(current_state[1]),
        .O(\reg [12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[13]_i_1 
       (.I0(\reg_reg_n_0_[12] ),
        .I1(data_in[13]),
        .I2(current_state[1]),
        .O(\reg [13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[14]_i_1 
       (.I0(\reg_reg_n_0_[13] ),
        .I1(data_in[14]),
        .I2(current_state[1]),
        .O(\reg [14]));
  LUT5 #(
    .INIT(32'h02000204)) 
    \reg[15]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(ss),
        .I3(sclk),
        .I4(\data_out_t[15]_i_2_n_0 ),
        .O(reg_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[15]_i_2 
       (.I0(\reg_reg_n_0_[14] ),
        .I1(data_in[15]),
        .I2(current_state[1]),
        .O(\reg [15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[1]_i_1 
       (.I0(\reg_reg_n_0_[0] ),
        .I1(data_in[1]),
        .I2(current_state[1]),
        .O(\reg [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[2]_i_1 
       (.I0(\reg_reg_n_0_[1] ),
        .I1(data_in[2]),
        .I2(current_state[1]),
        .O(\reg [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[3]_i_1 
       (.I0(\reg_reg_n_0_[2] ),
        .I1(data_in[3]),
        .I2(current_state[1]),
        .O(\reg [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[4]_i_1 
       (.I0(\reg_reg_n_0_[3] ),
        .I1(data_in[4]),
        .I2(current_state[1]),
        .O(\reg [4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[5]_i_1 
       (.I0(\reg_reg_n_0_[4] ),
        .I1(data_in[5]),
        .I2(current_state[1]),
        .O(\reg [5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[6]_i_1 
       (.I0(\reg_reg_n_0_[5] ),
        .I1(data_in[6]),
        .I2(current_state[1]),
        .O(\reg [6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[7]_i_1 
       (.I0(\reg_reg_n_0_[6] ),
        .I1(data_in[7]),
        .I2(current_state[1]),
        .O(\reg [7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[8]_i_1 
       (.I0(\reg_reg_n_0_[7] ),
        .I1(data_in[8]),
        .I2(current_state[1]),
        .O(\reg [8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[9]_i_1 
       (.I0(\reg_reg_n_0_[8] ),
        .I1(data_in[9]),
        .I2(current_state[1]),
        .O(\reg [9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_cnt[0]_i_1 
       (.I0(current_state[1]),
        .I1(\reg_cnt_reg_n_0_[0] ),
        .O(\reg_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \reg_cnt[1]_i_1 
       (.I0(current_state[1]),
        .I1(\reg_cnt_reg_n_0_[1] ),
        .I2(\reg_cnt_reg_n_0_[0] ),
        .O(\reg_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \reg_cnt[2]_i_1 
       (.I0(current_state[1]),
        .I1(\reg_cnt_reg_n_0_[2] ),
        .I2(\reg_cnt_reg_n_0_[0] ),
        .I3(\reg_cnt_reg_n_0_[1] ),
        .O(\reg_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000040C0)) 
    \reg_cnt[3]_i_1 
       (.I0(\data_out_t[15]_i_2_n_0 ),
        .I1(current_state[0]),
        .I2(sclk),
        .I3(current_state[1]),
        .I4(ss),
        .O(reg_cnt));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \reg_cnt[3]_i_2 
       (.I0(current_state[1]),
        .I1(\reg_cnt_reg_n_0_[3] ),
        .I2(\reg_cnt_reg_n_0_[2] ),
        .I3(\reg_cnt_reg_n_0_[1] ),
        .I4(\reg_cnt_reg_n_0_[0] ),
        .O(\reg_cnt[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_cnt_reg[0] 
       (.C(clk),
        .CE(reg_cnt),
        .CLR(rst),
        .D(\reg_cnt[0]_i_1_n_0 ),
        .Q(\reg_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_cnt_reg[1] 
       (.C(clk),
        .CE(reg_cnt),
        .CLR(rst),
        .D(\reg_cnt[1]_i_1_n_0 ),
        .Q(\reg_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_cnt_reg[2] 
       (.C(clk),
        .CE(reg_cnt),
        .CLR(rst),
        .D(\reg_cnt[2]_i_1_n_0 ),
        .Q(\reg_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_cnt_reg[3] 
       (.C(clk),
        .CE(reg_cnt),
        .CLR(rst),
        .D(\reg_cnt[3]_i_2_n_0 ),
        .Q(\reg_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[0] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [0]),
        .Q(\reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[10] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [10]),
        .Q(\reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[11] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [11]),
        .Q(\reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[12] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [12]),
        .Q(\reg_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[13] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [13]),
        .Q(\reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[14] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [14]),
        .Q(\reg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[15] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [15]),
        .Q(p_0_in__0));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[1] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [1]),
        .Q(\reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[2] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [2]),
        .Q(\reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[3] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [3]),
        .Q(\reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[4] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [4]),
        .Q(\reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[5] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [5]),
        .Q(\reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[6] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [6]),
        .Q(\reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[7] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [7]),
        .Q(\reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[8] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [8]),
        .Q(\reg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[9] 
       (.C(clk),
        .CE(reg_0),
        .CLR(rst),
        .D(\reg [9]),
        .Q(\reg_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    sdo_INST_0
       (.I0(sdo_t_reg_n_0),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(sdo));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    sdo_t_i_1
       (.I0(p_0_in__0),
        .I1(current_state[1]),
        .I2(data_in[15]),
        .I3(reg_cnt),
        .I4(rst),
        .I5(sdo_t_reg_n_0),
        .O(sdo_t_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sdo_t_reg
       (.C(clk),
        .CE(1'b1),
        .D(sdo_t_i_1_n_0),
        .Q(sdo_t_reg_n_0),
        .R(1'b0));
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
