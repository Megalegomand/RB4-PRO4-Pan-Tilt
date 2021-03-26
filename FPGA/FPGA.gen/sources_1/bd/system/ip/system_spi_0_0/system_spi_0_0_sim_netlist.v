// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Mar 26 20:46:20 2021
// Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/system/ip/system_spi_0_0/system_spi_0_0_sim_netlist.v
// Design      : system_spi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_spi_0_0,spi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "spi,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_spi_0_0
   (rst,
    data_in,
    data_out,
    sclk,
    ss,
    mosi,
    miso);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]data_in;
  output [7:0]data_out;
  input sclk;
  input ss;
  input mosi;
  output miso;

  wire [7:0]data_in;
  wire [7:0]data_out;
  wire miso;
  wire mosi;
  wire rst;
  wire sclk;
  wire ss;

  system_spi_0_0_spi U0
       (.data_in(data_in),
        .data_out(data_out),
        .miso(miso),
        .mosi(mosi),
        .rst(rst),
        .sclk(sclk),
        .ss(ss));
endmodule

(* ORIG_REF_NAME = "spi" *) 
module system_spi_0_0_spi
   (data_out,
    miso,
    rst,
    ss,
    sclk,
    data_in,
    mosi);
  output [7:0]data_out;
  output miso;
  input rst;
  input ss;
  input sclk;
  input [7:0]data_in;
  input mosi;

  wire \current_state[0]__0_i_1_n_0 ;
  wire \current_state[0]_i_1_n_0 ;
  wire \current_state[1]__0_i_1_n_0 ;
  wire \current_state[1]_i_1_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state_reg[0]__0_n_0 ;
  wire \current_state_reg[1]__0_n_0 ;
  wire \current_state_reg_n_0_[0] ;
  wire \current_state_reg_n_0_[1] ;
  wire [7:0]data_in;
  wire [6:0]data_in_t;
  wire \data_in_t[6]_i_1_n_0 ;
  wire [7:0]data_out;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out[7]_i_3_n_0 ;
  wire miso;
  wire miso_i_1_n_0;
  wire miso_i_2_n_0;
  wire mosi;
  wire [7:1]p_0_in1_in;
  wire p_1_in;
  wire \reg[1]_i_1_n_0 ;
  wire \reg[2]_i_1_n_0 ;
  wire \reg[3]_i_1_n_0 ;
  wire \reg[4]_i_1_n_0 ;
  wire \reg[5]_i_1_n_0 ;
  wire \reg[6]_i_1_n_0 ;
  wire \reg[7]_i_1_n_0 ;
  wire \reg[7]_i_2_n_0 ;
  wire \reg_n[0]_i_1_n_0 ;
  wire \reg_n[1]_i_1_n_0 ;
  wire \reg_n[2]_i_1_n_0 ;
  wire \reg_n[2]_i_2_n_0 ;
  wire \reg_n[2]_i_3_n_0 ;
  wire \reg_n_reg_n_0_[0] ;
  wire \reg_n_reg_n_0_[1] ;
  wire \reg_n_reg_n_0_[2] ;
  wire rst;
  wire sclk;
  wire ss;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \current_state[0]__0_i_1 
       (.I0(rst),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[1] ),
        .O(\current_state[0]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \current_state[0]_i_1 
       (.I0(\current_state_reg[0]__0_n_0 ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .O(\current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h3005)) 
    \current_state[1]__0_i_1 
       (.I0(ss),
        .I1(rst),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[1] ),
        .O(\current_state[1]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8ABABABA)) 
    \current_state[1]_i_1 
       (.I0(\current_state_reg[1]__0_n_0 ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(ss),
        .I4(\current_state[1]_i_2_n_0 ),
        .O(\current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \current_state[1]_i_2 
       (.I0(\reg_n_reg_n_0_[1] ),
        .I1(\reg_n_reg_n_0_[2] ),
        .I2(\reg_n_reg_n_0_[0] ),
        .O(\current_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \current_state_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(\current_state[0]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[0]__0 
       (.C(sclk),
        .CE(1'b1),
        .D(\current_state[0]__0_i_1_n_0 ),
        .Q(\current_state_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \current_state_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(\current_state[1]_i_1_n_0 ),
        .Q(\current_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1]__0 
       (.C(sclk),
        .CE(1'b1),
        .D(\current_state[1]__0_i_1_n_0 ),
        .Q(\current_state_reg[1]__0_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40000000)) 
    \data_in_t[6]_i_1 
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\reg_n_reg_n_0_[0] ),
        .I2(\reg_n_reg_n_0_[2] ),
        .I3(\reg_n_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[1] ),
        .O(\data_in_t[6]_i_1_n_0 ));
  FDRE \data_in_t_reg[0] 
       (.C(sclk),
        .CE(\data_in_t[6]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(data_in_t[0]),
        .R(1'b0));
  FDRE \data_in_t_reg[1] 
       (.C(sclk),
        .CE(\data_in_t[6]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(data_in_t[1]),
        .R(1'b0));
  FDRE \data_in_t_reg[2] 
       (.C(sclk),
        .CE(\data_in_t[6]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(data_in_t[2]),
        .R(1'b0));
  FDRE \data_in_t_reg[3] 
       (.C(sclk),
        .CE(\data_in_t[6]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(data_in_t[3]),
        .R(1'b0));
  FDRE \data_in_t_reg[4] 
       (.C(sclk),
        .CE(\data_in_t[6]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(data_in_t[4]),
        .R(1'b0));
  FDRE \data_in_t_reg[5] 
       (.C(sclk),
        .CE(\data_in_t[6]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(data_in_t[5]),
        .R(1'b0));
  FDRE \data_in_t_reg[6] 
       (.C(sclk),
        .CE(\data_in_t[6]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(data_in_t[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_out[0]_i_1 
       (.I0(\reg_n_reg_n_0_[0] ),
        .I1(\reg_n_reg_n_0_[2] ),
        .I2(\reg_n_reg_n_0_[1] ),
        .I3(mosi),
        .O(\data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_out[1]_i_1 
       (.I0(\reg_n_reg_n_0_[0] ),
        .I1(\reg_n_reg_n_0_[2] ),
        .I2(\reg_n_reg_n_0_[1] ),
        .I3(p_0_in1_in[1]),
        .O(\data_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_out[2]_i_1 
       (.I0(\reg_n_reg_n_0_[0] ),
        .I1(\reg_n_reg_n_0_[2] ),
        .I2(\reg_n_reg_n_0_[1] ),
        .I3(p_0_in1_in[2]),
        .O(\data_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_out[3]_i_1 
       (.I0(\reg_n_reg_n_0_[0] ),
        .I1(\reg_n_reg_n_0_[2] ),
        .I2(\reg_n_reg_n_0_[1] ),
        .I3(p_0_in1_in[3]),
        .O(\data_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_out[4]_i_1 
       (.I0(\reg_n_reg_n_0_[0] ),
        .I1(\reg_n_reg_n_0_[2] ),
        .I2(\reg_n_reg_n_0_[1] ),
        .I3(p_0_in1_in[4]),
        .O(\data_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_out[5]_i_1 
       (.I0(\reg_n_reg_n_0_[0] ),
        .I1(\reg_n_reg_n_0_[2] ),
        .I2(\reg_n_reg_n_0_[1] ),
        .I3(p_0_in1_in[5]),
        .O(\data_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_out[6]_i_1 
       (.I0(\reg_n_reg_n_0_[0] ),
        .I1(\reg_n_reg_n_0_[2] ),
        .I2(\reg_n_reg_n_0_[1] ),
        .I3(p_0_in1_in[6]),
        .O(\data_out[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \data_out[7]_i_1 
       (.I0(rst),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .O(\data_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \data_out[7]_i_2 
       (.I0(\reg_n_reg_n_0_[0] ),
        .I1(\reg_n_reg_n_0_[2] ),
        .I2(\reg_n_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(rst),
        .O(\data_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_out[7]_i_3 
       (.I0(\reg_n_reg_n_0_[0] ),
        .I1(\reg_n_reg_n_0_[2] ),
        .I2(\reg_n_reg_n_0_[1] ),
        .I3(p_0_in1_in[7]),
        .O(\data_out[7]_i_3_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[0] 
       (.C(sclk),
        .CE(\data_out[7]_i_2_n_0 ),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(data_out[0]),
        .R(\data_out[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[1] 
       (.C(sclk),
        .CE(\data_out[7]_i_2_n_0 ),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(data_out[1]),
        .R(\data_out[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[2] 
       (.C(sclk),
        .CE(\data_out[7]_i_2_n_0 ),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(data_out[2]),
        .R(\data_out[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[3] 
       (.C(sclk),
        .CE(\data_out[7]_i_2_n_0 ),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(data_out[3]),
        .R(\data_out[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[4] 
       (.C(sclk),
        .CE(\data_out[7]_i_2_n_0 ),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(data_out[4]),
        .R(\data_out[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[5] 
       (.C(sclk),
        .CE(\data_out[7]_i_2_n_0 ),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(data_out[5]),
        .R(\data_out[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[6] 
       (.C(sclk),
        .CE(\data_out[7]_i_2_n_0 ),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(data_out[6]),
        .R(\data_out[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[7] 
       (.C(sclk),
        .CE(\data_out[7]_i_2_n_0 ),
        .D(\data_out[7]_i_3_n_0 ),
        .Q(data_out[7]),
        .R(\data_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h35370504)) 
    miso_i_1
       (.I0(miso_i_2_n_0),
        .I1(rst),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(miso),
        .O(miso_i_1_n_0));
  LUT6 #(
    .INIT(64'h57777777F7777777)) 
    miso_i_2
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(p_1_in),
        .I2(\reg_n_reg_n_0_[1] ),
        .I3(\reg_n_reg_n_0_[2] ),
        .I4(\reg_n_reg_n_0_[0] ),
        .I5(data_in[7]),
        .O(miso_i_2_n_0));
  FDRE miso_reg
       (.C(sclk),
        .CE(1'b1),
        .D(miso_i_1_n_0),
        .Q(miso),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \reg[1]_i_1 
       (.I0(p_0_in1_in[1]),
        .I1(\reg_n_reg_n_0_[0] ),
        .I2(\reg_n_reg_n_0_[2] ),
        .I3(\reg_n_reg_n_0_[1] ),
        .I4(data_in_t[0]),
        .O(\reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \reg[2]_i_1 
       (.I0(p_0_in1_in[2]),
        .I1(\reg_n_reg_n_0_[0] ),
        .I2(\reg_n_reg_n_0_[2] ),
        .I3(\reg_n_reg_n_0_[1] ),
        .I4(data_in_t[1]),
        .O(\reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \reg[3]_i_1 
       (.I0(p_0_in1_in[3]),
        .I1(\reg_n_reg_n_0_[0] ),
        .I2(\reg_n_reg_n_0_[2] ),
        .I3(\reg_n_reg_n_0_[1] ),
        .I4(data_in_t[2]),
        .O(\reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \reg[4]_i_1 
       (.I0(p_0_in1_in[4]),
        .I1(\reg_n_reg_n_0_[0] ),
        .I2(\reg_n_reg_n_0_[2] ),
        .I3(\reg_n_reg_n_0_[1] ),
        .I4(data_in_t[3]),
        .O(\reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \reg[5]_i_1 
       (.I0(p_0_in1_in[5]),
        .I1(\reg_n_reg_n_0_[0] ),
        .I2(\reg_n_reg_n_0_[2] ),
        .I3(\reg_n_reg_n_0_[1] ),
        .I4(data_in_t[4]),
        .O(\reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \reg[6]_i_1 
       (.I0(p_0_in1_in[6]),
        .I1(\reg_n_reg_n_0_[0] ),
        .I2(\reg_n_reg_n_0_[2] ),
        .I3(\reg_n_reg_n_0_[1] ),
        .I4(data_in_t[5]),
        .O(\reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04444444)) 
    \reg[7]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\reg_n_reg_n_0_[0] ),
        .I3(\reg_n_reg_n_0_[2] ),
        .I4(\reg_n_reg_n_0_[1] ),
        .O(\reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \reg[7]_i_2 
       (.I0(p_0_in1_in[7]),
        .I1(\reg_n_reg_n_0_[0] ),
        .I2(\reg_n_reg_n_0_[2] ),
        .I3(\reg_n_reg_n_0_[1] ),
        .I4(data_in_t[6]),
        .O(\reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE5EEE5EF)) 
    \reg_n[0]_i_1 
       (.I0(\reg_n_reg_n_0_[0] ),
        .I1(rst),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(ss),
        .O(\reg_n[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE5AEEEEEE5AEEFF)) 
    \reg_n[1]_i_1 
       (.I0(\reg_n_reg_n_0_[1] ),
        .I1(rst),
        .I2(\reg_n_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(ss),
        .O(\reg_n[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF76BABABA)) 
    \reg_n[2]_i_1 
       (.I0(\reg_n_reg_n_0_[2] ),
        .I1(\reg_n[2]_i_2_n_0 ),
        .I2(rst),
        .I3(\reg_n_reg_n_0_[1] ),
        .I4(\reg_n_reg_n_0_[0] ),
        .I5(\reg_n[2]_i_3_n_0 ),
        .O(\reg_n[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_n[2]_i_2 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[0] ),
        .O(\reg_n[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \reg_n[2]_i_3 
       (.I0(ss),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .O(\reg_n[2]_i_3_n_0 ));
  FDRE \reg_n_reg[0] 
       (.C(sclk),
        .CE(1'b1),
        .D(\reg_n[0]_i_1_n_0 ),
        .Q(\reg_n_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \reg_n_reg[1] 
       (.C(sclk),
        .CE(1'b1),
        .D(\reg_n[1]_i_1_n_0 ),
        .Q(\reg_n_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \reg_n_reg[2] 
       (.C(sclk),
        .CE(1'b1),
        .D(\reg_n[2]_i_1_n_0 ),
        .Q(\reg_n_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[0] 
       (.C(sclk),
        .CE(\reg[7]_i_1_n_0 ),
        .D(mosi),
        .Q(p_0_in1_in[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[1] 
       (.C(sclk),
        .CE(\reg[7]_i_1_n_0 ),
        .D(\reg[1]_i_1_n_0 ),
        .Q(p_0_in1_in[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[2] 
       (.C(sclk),
        .CE(\reg[7]_i_1_n_0 ),
        .D(\reg[2]_i_1_n_0 ),
        .Q(p_0_in1_in[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[3] 
       (.C(sclk),
        .CE(\reg[7]_i_1_n_0 ),
        .D(\reg[3]_i_1_n_0 ),
        .Q(p_0_in1_in[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[4] 
       (.C(sclk),
        .CE(\reg[7]_i_1_n_0 ),
        .D(\reg[4]_i_1_n_0 ),
        .Q(p_0_in1_in[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[5] 
       (.C(sclk),
        .CE(\reg[7]_i_1_n_0 ),
        .D(\reg[5]_i_1_n_0 ),
        .Q(p_0_in1_in[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[6] 
       (.C(sclk),
        .CE(\reg[7]_i_1_n_0 ),
        .D(\reg[6]_i_1_n_0 ),
        .Q(p_0_in1_in[7]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_reg[7] 
       (.C(sclk),
        .CE(\reg[7]_i_1_n_0 ),
        .D(\reg[7]_i_2_n_0 ),
        .Q(p_1_in),
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
