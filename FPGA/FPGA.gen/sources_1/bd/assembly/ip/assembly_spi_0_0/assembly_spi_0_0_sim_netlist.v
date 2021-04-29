// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Apr 19 10:36:53 2021
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
    sclk,
    ss,
    sdi,
    data_in,
    sdo,
    state,
    data_out);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input sclk;
  input ss;
  input sdi;
  input [7:0]data_in;
  output sdo;
  output [3:0]state;
  output [7:0]data_out;

  wire \<const0> ;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire rst;
  wire sclk;
  wire sdi;
  wire sdo;
  wire ss;

  assign state[3] = \<const0> ;
  assign state[2] = \<const0> ;
  assign state[1] = \<const0> ;
  assign state[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  assembly_spi_0_0_spi U0
       (.data_in(data_in),
        .data_out(data_out),
        .rst(rst),
        .sclk(sclk),
        .sdi(sdi),
        .sdo(sdo),
        .ss(ss));
endmodule

(* ORIG_REF_NAME = "spi" *) 
module assembly_spi_0_0_spi
   (sdo,
    data_out,
    ss,
    rst,
    sclk,
    sdi,
    data_in);
  output sdo;
  output [7:0]data_out;
  input ss;
  input rst;
  input sclk;
  input sdi;
  input [7:0]data_in;

  wire [7:0]data_in;
  wire [7:0]data_out;
  wire \data_out[7]_i_1_n_0 ;
  wire [7:0]p_0_in;
  wire [7:0]p_1_in;
  wire [7:1]p_1_in__0;
  wire p_1_in__0_0;
  wire [2:0]plusOp;
  wire reg1_n_0;
  wire \reg_cnt_reg[0]_LDC_i_1_n_0 ;
  wire \reg_cnt_reg[0]_LDC_i_2_n_0 ;
  wire \reg_cnt_reg[0]_LDC_n_0 ;
  wire \reg_cnt_reg[0]_P_n_0 ;
  wire \reg_cnt_reg[1]_LDC_i_1_n_0 ;
  wire \reg_cnt_reg[1]_LDC_i_2_n_0 ;
  wire \reg_cnt_reg[1]_LDC_n_0 ;
  wire \reg_cnt_reg[1]_P_n_0 ;
  wire \reg_cnt_reg[2]_LDC_i_1_n_0 ;
  wire \reg_cnt_reg[2]_LDC_i_2_n_0 ;
  wire \reg_cnt_reg[2]_LDC_n_0 ;
  wire \reg_cnt_reg[2]_P_n_0 ;
  wire \reg_cnt_reg_n_0_[0] ;
  wire \reg_cnt_reg_n_0_[1] ;
  wire \reg_cnt_reg_n_0_[2] ;
  wire [7:0]reg_reg;
  wire rst;
  wire sclk;
  wire sdi;
  wire sdo;
  wire sdo_i_1_n_0;
  wire sdo_i_2_n_0;
  wire ss;

  LUT2 #(
    .INIT(4'h1)) 
    \data_out[7]_i_1 
       (.I0(ss),
        .I1(reg1_n_0),
        .O(\data_out[7]_i_1_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[0] 
       (.C(sclk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(sdi),
        .Q(data_out[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[1] 
       (.C(sclk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in__0[1]),
        .Q(data_out[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[2] 
       (.C(sclk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in__0[2]),
        .Q(data_out[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[3] 
       (.C(sclk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in__0[3]),
        .Q(data_out[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[4] 
       (.C(sclk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in__0[4]),
        .Q(data_out[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[5] 
       (.C(sclk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in__0[5]),
        .Q(data_out[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[6] 
       (.C(sclk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in__0[6]),
        .Q(data_out[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[7] 
       (.C(sclk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in__0[7]),
        .Q(data_out[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    reg1
       (.I0(\reg_cnt_reg[0]_P_n_0 ),
        .I1(\reg_cnt_reg[0]_LDC_n_0 ),
        .I2(\reg_cnt_reg[2]_LDC_n_0 ),
        .I3(\reg_cnt_reg[2]_P_n_0 ),
        .I4(\reg_cnt_reg[1]_LDC_n_0 ),
        .I5(\reg_cnt_reg[1]_P_n_0 ),
        .O(reg1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[0]__0_i_1 
       (.I0(sdi),
        .I1(reg_reg[0]),
        .I2(reg1_n_0),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[0]_i_1 
       (.I0(p_1_in__0[1]),
        .I1(data_in[0]),
        .I2(reg1_n_0),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[1]__0_i_1 
       (.I0(p_1_in__0[1]),
        .I1(reg_reg[1]),
        .I2(reg1_n_0),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[1]_i_1 
       (.I0(p_1_in__0[2]),
        .I1(data_in[1]),
        .I2(reg1_n_0),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[2]__0_i_1 
       (.I0(p_1_in__0[2]),
        .I1(reg_reg[2]),
        .I2(reg1_n_0),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[2]_i_1 
       (.I0(p_1_in__0[3]),
        .I1(data_in[2]),
        .I2(reg1_n_0),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[3]__0_i_1 
       (.I0(p_1_in__0[3]),
        .I1(reg_reg[3]),
        .I2(reg1_n_0),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[3]_i_1 
       (.I0(p_1_in__0[4]),
        .I1(data_in[3]),
        .I2(reg1_n_0),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[4]__0_i_1 
       (.I0(p_1_in__0[4]),
        .I1(reg_reg[4]),
        .I2(reg1_n_0),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[4]_i_1 
       (.I0(p_1_in__0[5]),
        .I1(data_in[4]),
        .I2(reg1_n_0),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[5]__0_i_1 
       (.I0(p_1_in__0[5]),
        .I1(reg_reg[5]),
        .I2(reg1_n_0),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[5]_i_1 
       (.I0(p_1_in__0[6]),
        .I1(data_in[5]),
        .I2(reg1_n_0),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[6]__0_i_1 
       (.I0(p_1_in__0[6]),
        .I1(reg_reg[6]),
        .I2(reg1_n_0),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[6]_i_1 
       (.I0(p_1_in__0[7]),
        .I1(data_in[6]),
        .I2(reg1_n_0),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[7]__0_i_1 
       (.I0(p_1_in__0[7]),
        .I1(reg_reg[7]),
        .I2(reg1_n_0),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg[7]_i_1 
       (.I0(p_1_in__0_0),
        .I1(data_in[7]),
        .I2(reg1_n_0),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \reg_cnt[0]_i_1 
       (.I0(\reg_cnt_reg[0]_P_n_0 ),
        .I1(\reg_cnt_reg[0]_LDC_n_0 ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \reg_cnt[1]_i_1 
       (.I0(\reg_cnt_reg[0]_P_n_0 ),
        .I1(\reg_cnt_reg[0]_LDC_n_0 ),
        .I2(\reg_cnt_reg[1]_P_n_0 ),
        .I3(\reg_cnt_reg[1]_LDC_n_0 ),
        .O(plusOp[1]));
  LUT6 #(
    .INIT(64'h7FFF800080008000)) 
    \reg_cnt[2]_i_1 
       (.I0(\reg_cnt_reg[0]_LDC_n_0 ),
        .I1(\reg_cnt_reg[0]_P_n_0 ),
        .I2(\reg_cnt_reg[1]_LDC_n_0 ),
        .I3(\reg_cnt_reg[1]_P_n_0 ),
        .I4(\reg_cnt_reg[2]_P_n_0 ),
        .I5(\reg_cnt_reg[2]_LDC_n_0 ),
        .O(plusOp[2]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_cnt_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\reg_cnt_reg_n_0_[0] ),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_cnt_reg[0]_LDC 
       (.CLR(\reg_cnt_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\reg_cnt_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\reg_cnt_reg[0]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \reg_cnt_reg[0]_LDC_i_1 
       (.I0(rst),
        .I1(\reg_cnt_reg_n_0_[0] ),
        .I2(ss),
        .O(\reg_cnt_reg[0]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \reg_cnt_reg[0]_LDC_i_2 
       (.I0(rst),
        .I1(\reg_cnt_reg_n_0_[0] ),
        .I2(ss),
        .O(\reg_cnt_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_cnt_reg[0]_P 
       (.C(ss),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\reg_cnt_reg[0]_LDC_i_1_n_0 ),
        .Q(\reg_cnt_reg[0]_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_cnt_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\reg_cnt_reg_n_0_[1] ),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_cnt_reg[1]_LDC 
       (.CLR(\reg_cnt_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\reg_cnt_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\reg_cnt_reg[1]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \reg_cnt_reg[1]_LDC_i_1 
       (.I0(rst),
        .I1(\reg_cnt_reg_n_0_[1] ),
        .I2(ss),
        .O(\reg_cnt_reg[1]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \reg_cnt_reg[1]_LDC_i_2 
       (.I0(rst),
        .I1(\reg_cnt_reg_n_0_[1] ),
        .I2(ss),
        .O(\reg_cnt_reg[1]_LDC_i_2_n_0 ));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_cnt_reg[1]_P 
       (.C(ss),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\reg_cnt_reg[1]_LDC_i_1_n_0 ),
        .Q(\reg_cnt_reg[1]_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_cnt_reg[2] 
       (.C(sclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\reg_cnt_reg_n_0_[2] ),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_cnt_reg[2]_LDC 
       (.CLR(\reg_cnt_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\reg_cnt_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\reg_cnt_reg[2]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \reg_cnt_reg[2]_LDC_i_1 
       (.I0(rst),
        .I1(\reg_cnt_reg_n_0_[2] ),
        .I2(ss),
        .O(\reg_cnt_reg[2]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \reg_cnt_reg[2]_LDC_i_2 
       (.I0(rst),
        .I1(\reg_cnt_reg_n_0_[2] ),
        .I2(ss),
        .O(\reg_cnt_reg[2]_LDC_i_2_n_0 ));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_cnt_reg[2]_P 
       (.C(ss),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\reg_cnt_reg[2]_LDC_i_1_n_0 ),
        .Q(\reg_cnt_reg[2]_P_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(reg_reg[0]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[0]__0 
       (.C(sclk),
        .CE(sdo_i_1_n_0),
        .CLR(rst),
        .D(p_1_in[0]),
        .Q(p_1_in__0[1]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(reg_reg[1]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[1]__0 
       (.C(sclk),
        .CE(sdo_i_1_n_0),
        .CLR(rst),
        .D(p_1_in[1]),
        .Q(p_1_in__0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[2] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(reg_reg[2]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[2]__0 
       (.C(sclk),
        .CE(sdo_i_1_n_0),
        .CLR(rst),
        .D(p_1_in[2]),
        .Q(p_1_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[3] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(reg_reg[3]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[3]__0 
       (.C(sclk),
        .CE(sdo_i_1_n_0),
        .CLR(rst),
        .D(p_1_in[3]),
        .Q(p_1_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[4] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(reg_reg[4]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[4]__0 
       (.C(sclk),
        .CE(sdo_i_1_n_0),
        .CLR(rst),
        .D(p_1_in[4]),
        .Q(p_1_in__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[5] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(reg_reg[5]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[5]__0 
       (.C(sclk),
        .CE(sdo_i_1_n_0),
        .CLR(rst),
        .D(p_1_in[5]),
        .Q(p_1_in__0[6]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[6] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(reg_reg[6]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[6]__0 
       (.C(sclk),
        .CE(sdo_i_1_n_0),
        .CLR(rst),
        .D(p_1_in[6]),
        .Q(p_1_in__0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[7] 
       (.C(sclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(reg_reg[7]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[7]__0 
       (.C(sclk),
        .CE(sdo_i_1_n_0),
        .CLR(rst),
        .D(p_1_in[7]),
        .Q(p_1_in__0_0));
  LUT1 #(
    .INIT(2'h1)) 
    sdo_i_1
       (.I0(ss),
        .O(sdo_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    sdo_i_2
       (.I0(p_1_in__0_0),
        .I1(reg1_n_0),
        .I2(data_in[7]),
        .O(sdo_i_2_n_0));
  FDCE sdo_reg
       (.C(sclk),
        .CE(sdo_i_1_n_0),
        .CLR(rst),
        .D(sdo_i_2_n_0),
        .Q(sdo));
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
