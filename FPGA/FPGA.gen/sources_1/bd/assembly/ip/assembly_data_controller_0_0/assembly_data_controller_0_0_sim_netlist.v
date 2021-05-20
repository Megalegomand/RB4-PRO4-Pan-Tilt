// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu May 20 21:56:25 2021
// Host        : lenovo-v330 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/megalegomand/OneDrive/Uni/4Semester/PRO4/FPGA/FPGA.gen/sources_1/bd/assembly/ip/assembly_data_controller_0_0/assembly_data_controller_0_0_sim_netlist.v
// Design      : assembly_data_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "assembly_data_controller_0_0,data_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "data_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module assembly_data_controller_0_0
   (clk,
    rst,
    pan_in,
    tilt_in,
    spi_rx,
    pan_out,
    tilt_out,
    spi_tx);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [8:0]pan_in;
  input [8:0]tilt_in;
  input [15:0]spi_rx;
  output [8:0]pan_out;
  output [8:0]tilt_out;
  output [15:0]spi_tx;

  wire \<const0> ;
  wire clk;
  wire [8:0]pan_in;
  wire [8:0]pan_out;
  wire [15:0]spi_rx;
  wire [15:0]\^spi_tx ;
  wire [8:0]tilt_in;
  wire [8:0]tilt_out;

  assign spi_tx[15:4] = \^spi_tx [15:4];
  assign spi_tx[3] = \<const0> ;
  assign spi_tx[2:0] = \^spi_tx [2:0];
  GND GND
       (.G(\<const0> ));
  assembly_data_controller_0_0_data_controller U0
       (.clk(clk),
        .pan_in(pan_in),
        .pan_out(pan_out),
        .spi_rx({spi_rx[15:3],spi_rx[1:0]}),
        .spi_tx({\^spi_tx [15:4],\^spi_tx [2:0]}),
        .tilt_in(tilt_in),
        .tilt_out(tilt_out));
endmodule

(* ORIG_REF_NAME = "data_controller" *) 
module assembly_data_controller_0_0_data_controller
   (pan_out,
    tilt_out,
    spi_tx,
    spi_rx,
    clk,
    pan_in,
    tilt_in);
  output [8:0]pan_out;
  output [8:0]tilt_out;
  output [14:0]spi_tx;
  input [14:0]spi_rx;
  input clk;
  input [8:0]pan_in;
  input [8:0]tilt_in;

  wire clk;
  wire [8:0]data_tx;
  wire [1:0]data_tx_id;
  wire data_tx_id__0;
  wire \data_tx_id_reg[1]_i_2_n_0 ;
  wire \data_tx_id_reg[1]_i_3_n_0 ;
  wire [8:0]pan_in;
  wire [8:0]pan_out;
  wire \pan_out_reg[8]_i_1_n_0 ;
  wire \pan_out_reg[8]_i_2_n_0 ;
  wire \pan_out_reg[8]_i_3_n_0 ;
  wire \pan_out_reg[8]_i_4_n_0 ;
  wire parity_bits20_in;
  wire [14:0]spi_rx;
  wire [14:0]spi_tx;
  wire \spi_tx[0]_i_1_n_0 ;
  wire \spi_tx[10]_i_1_n_0 ;
  wire \spi_tx[11]_i_1_n_0 ;
  wire \spi_tx[12]_i_1_n_0 ;
  wire \spi_tx[13]_i_1_n_0 ;
  wire \spi_tx[14]_i_1_n_0 ;
  wire \spi_tx[15]_i_1_n_0 ;
  wire \spi_tx[1]_i_1_n_0 ;
  wire \spi_tx[1]_i_2_n_0 ;
  wire \spi_tx[2]_i_2_n_0 ;
  wire \spi_tx[2]_i_3_n_0 ;
  wire \spi_tx[7]_i_1_n_0 ;
  wire \spi_tx[8]_i_1_n_0 ;
  wire \spi_tx[9]_i_1_n_0 ;
  wire [8:0]tilt_in;
  wire [8:0]tilt_out;
  wire \tilt_out_reg[8]_i_1_n_0 ;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_tx_id_reg[0] 
       (.CLR(1'b0),
        .D(spi_rx[2]),
        .G(data_tx_id__0),
        .GE(1'b1),
        .Q(data_tx_id[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_tx_id_reg[1] 
       (.CLR(1'b0),
        .D(spi_rx[3]),
        .G(data_tx_id__0),
        .GE(1'b1),
        .Q(data_tx_id[1]));
  LUT6 #(
    .INIT(64'h0000001400000041)) 
    \data_tx_id_reg[1]_i_1 
       (.I0(\pan_out_reg[8]_i_2_n_0 ),
        .I1(spi_rx[6]),
        .I2(spi_rx[8]),
        .I3(\data_tx_id_reg[1]_i_2_n_0 ),
        .I4(\data_tx_id_reg[1]_i_3_n_0 ),
        .I5(spi_rx[7]),
        .O(data_tx_id__0));
  LUT2 #(
    .INIT(4'h6)) 
    \data_tx_id_reg[1]_i_2 
       (.I0(spi_rx[5]),
        .I1(spi_rx[4]),
        .O(\data_tx_id_reg[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_tx_id_reg[1]_i_3 
       (.I0(spi_rx[2]),
        .I1(spi_rx[3]),
        .O(\data_tx_id_reg[1]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pan_out_reg[0] 
       (.CLR(1'b0),
        .D(spi_rx[6]),
        .G(\pan_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pan_out[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pan_out_reg[1] 
       (.CLR(1'b0),
        .D(spi_rx[7]),
        .G(\pan_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pan_out[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pan_out_reg[2] 
       (.CLR(1'b0),
        .D(spi_rx[8]),
        .G(\pan_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pan_out[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pan_out_reg[3] 
       (.CLR(1'b0),
        .D(spi_rx[9]),
        .G(\pan_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pan_out[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pan_out_reg[4] 
       (.CLR(1'b0),
        .D(spi_rx[10]),
        .G(\pan_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pan_out[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pan_out_reg[5] 
       (.CLR(1'b0),
        .D(spi_rx[11]),
        .G(\pan_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pan_out[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pan_out_reg[6] 
       (.CLR(1'b0),
        .D(spi_rx[12]),
        .G(\pan_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pan_out[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pan_out_reg[7] 
       (.CLR(1'b0),
        .D(spi_rx[13]),
        .G(\pan_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pan_out[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pan_out_reg[8] 
       (.CLR(1'b0),
        .D(spi_rx[14]),
        .G(\pan_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(pan_out[8]));
  LUT6 #(
    .INIT(64'h0000000000000009)) 
    \pan_out_reg[8]_i_1 
       (.I0(spi_rx[2]),
        .I1(spi_rx[3]),
        .I2(spi_rx[5]),
        .I3(spi_rx[4]),
        .I4(\pan_out_reg[8]_i_2_n_0 ),
        .I5(\pan_out_reg[8]_i_3_n_0 ),
        .O(\pan_out_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF69966996FFFF)) 
    \pan_out_reg[8]_i_2 
       (.I0(\pan_out_reg[8]_i_4_n_0 ),
        .I1(spi_rx[12]),
        .I2(spi_rx[14]),
        .I3(spi_rx[13]),
        .I4(spi_rx[0]),
        .I5(spi_rx[1]),
        .O(\pan_out_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \pan_out_reg[8]_i_3 
       (.I0(spi_rx[6]),
        .I1(spi_rx[8]),
        .I2(spi_rx[5]),
        .I3(spi_rx[4]),
        .I4(\data_tx_id_reg[1]_i_3_n_0 ),
        .I5(spi_rx[7]),
        .O(\pan_out_reg[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \pan_out_reg[8]_i_4 
       (.I0(spi_rx[9]),
        .I1(spi_rx[8]),
        .I2(spi_rx[11]),
        .I3(spi_rx[10]),
        .O(\pan_out_reg[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \spi_tx[0]_i_1 
       (.I0(\spi_tx[2]_i_2_n_0 ),
        .I1(\spi_tx[8]_i_1_n_0 ),
        .I2(\spi_tx[1]_i_2_n_0 ),
        .I3(data_tx_id[0]),
        .I4(data_tx_id[1]),
        .O(\spi_tx[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCAAFCAA0)) 
    \spi_tx[10]_i_1 
       (.I0(data_tx[3]),
        .I1(tilt_in[3]),
        .I2(data_tx_id[1]),
        .I3(data_tx_id[0]),
        .I4(pan_in[3]),
        .O(\spi_tx[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCA00C)) 
    \spi_tx[11]_i_1 
       (.I0(tilt_in[4]),
        .I1(pan_in[4]),
        .I2(data_tx_id[0]),
        .I3(data_tx_id[1]),
        .I4(data_tx[4]),
        .O(\spi_tx[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCA00C)) 
    \spi_tx[12]_i_1 
       (.I0(tilt_in[5]),
        .I1(pan_in[5]),
        .I2(data_tx_id[0]),
        .I3(data_tx_id[1]),
        .I4(data_tx[5]),
        .O(\spi_tx[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCAAFCAA0)) 
    \spi_tx[13]_i_1 
       (.I0(data_tx[6]),
        .I1(tilt_in[6]),
        .I2(data_tx_id[1]),
        .I3(data_tx_id[0]),
        .I4(pan_in[6]),
        .O(\spi_tx[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE3EC202)) 
    \spi_tx[14]_i_1 
       (.I0(pan_in[7]),
        .I1(data_tx_id[0]),
        .I2(data_tx_id[1]),
        .I3(tilt_in[7]),
        .I4(data_tx[7]),
        .O(\spi_tx[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCAAFCAA0)) 
    \spi_tx[15]_i_1 
       (.I0(data_tx[8]),
        .I1(tilt_in[8]),
        .I2(data_tx_id[1]),
        .I3(data_tx_id[0]),
        .I4(pan_in[8]),
        .O(\spi_tx[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \spi_tx[1]_i_1 
       (.I0(\spi_tx[2]_i_2_n_0 ),
        .I1(\spi_tx[8]_i_1_n_0 ),
        .I2(\spi_tx[1]_i_2_n_0 ),
        .I3(data_tx_id[0]),
        .I4(data_tx_id[1]),
        .O(\spi_tx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3550355F)) 
    \spi_tx[1]_i_2 
       (.I0(data_tx[0]),
        .I1(tilt_in[0]),
        .I2(data_tx_id[1]),
        .I3(data_tx_id[0]),
        .I4(pan_in[0]),
        .O(\spi_tx[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \spi_tx[2]_i_1 
       (.I0(\spi_tx[12]_i_1_n_0 ),
        .I1(\spi_tx[11]_i_1_n_0 ),
        .I2(\spi_tx[10]_i_1_n_0 ),
        .I3(\spi_tx[2]_i_2_n_0 ),
        .I4(\spi_tx[2]_i_3_n_0 ),
        .I5(\spi_tx[13]_i_1_n_0 ),
        .O(parity_bits20_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h3550355F)) 
    \spi_tx[2]_i_2 
       (.I0(data_tx[2]),
        .I1(tilt_in[2]),
        .I2(data_tx_id[1]),
        .I3(data_tx_id[0]),
        .I4(pan_in[2]),
        .O(\spi_tx[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA95AA9A5595559)) 
    \spi_tx[2]_i_3 
       (.I0(\spi_tx[15]_i_1_n_0 ),
        .I1(pan_in[7]),
        .I2(data_tx_id[0]),
        .I3(data_tx_id[1]),
        .I4(tilt_in[7]),
        .I5(data_tx[7]),
        .O(\spi_tx[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFE3EC202)) 
    \spi_tx[7]_i_1 
       (.I0(pan_in[0]),
        .I1(data_tx_id[0]),
        .I2(data_tx_id[1]),
        .I3(tilt_in[0]),
        .I4(data_tx[0]),
        .O(\spi_tx[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCAAFCAA0)) 
    \spi_tx[8]_i_1 
       (.I0(data_tx[1]),
        .I1(tilt_in[1]),
        .I2(data_tx_id[1]),
        .I3(data_tx_id[0]),
        .I4(pan_in[1]),
        .O(\spi_tx[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFE3EC202)) 
    \spi_tx[9]_i_1 
       (.I0(pan_in[2]),
        .I1(data_tx_id[0]),
        .I2(data_tx_id[1]),
        .I3(tilt_in[2]),
        .I4(data_tx[2]),
        .O(\spi_tx[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_process.data_tx_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[7]_i_1_n_0 ),
        .Q(data_tx[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_process.data_tx_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[8]_i_1_n_0 ),
        .Q(data_tx[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_process.data_tx_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[9]_i_1_n_0 ),
        .Q(data_tx[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_process.data_tx_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[10]_i_1_n_0 ),
        .Q(data_tx[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_process.data_tx_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[11]_i_1_n_0 ),
        .Q(data_tx[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_process.data_tx_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[12]_i_1_n_0 ),
        .Q(data_tx[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_process.data_tx_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[13]_i_1_n_0 ),
        .Q(data_tx[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_process.data_tx_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[14]_i_1_n_0 ),
        .Q(data_tx[7]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_process.data_tx_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[15]_i_1_n_0 ),
        .Q(data_tx[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[0]_i_1_n_0 ),
        .Q(spi_tx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[10]_i_1_n_0 ),
        .Q(spi_tx[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[11]_i_1_n_0 ),
        .Q(spi_tx[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[12]_i_1_n_0 ),
        .Q(spi_tx[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[13]_i_1_n_0 ),
        .Q(spi_tx[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[14]_i_1_n_0 ),
        .Q(spi_tx[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[15]_i_1_n_0 ),
        .Q(spi_tx[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[1]_i_1_n_0 ),
        .Q(spi_tx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(parity_bits20_in),
        .Q(spi_tx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(spi_tx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data_tx_id[0]),
        .Q(spi_tx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data_tx_id[1]),
        .Q(spi_tx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[7]_i_1_n_0 ),
        .Q(spi_tx[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[8]_i_1_n_0 ),
        .Q(spi_tx[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\spi_tx[9]_i_1_n_0 ),
        .Q(spi_tx[8]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tilt_out_reg[0] 
       (.CLR(1'b0),
        .D(spi_rx[6]),
        .G(\tilt_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tilt_out[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tilt_out_reg[1] 
       (.CLR(1'b0),
        .D(spi_rx[7]),
        .G(\tilt_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tilt_out[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tilt_out_reg[2] 
       (.CLR(1'b0),
        .D(spi_rx[8]),
        .G(\tilt_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tilt_out[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tilt_out_reg[3] 
       (.CLR(1'b0),
        .D(spi_rx[9]),
        .G(\tilt_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tilt_out[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tilt_out_reg[4] 
       (.CLR(1'b0),
        .D(spi_rx[10]),
        .G(\tilt_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tilt_out[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tilt_out_reg[5] 
       (.CLR(1'b0),
        .D(spi_rx[11]),
        .G(\tilt_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tilt_out[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tilt_out_reg[6] 
       (.CLR(1'b0),
        .D(spi_rx[12]),
        .G(\tilt_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tilt_out[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tilt_out_reg[7] 
       (.CLR(1'b0),
        .D(spi_rx[13]),
        .G(\tilt_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tilt_out[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tilt_out_reg[8] 
       (.CLR(1'b0),
        .D(spi_rx[14]),
        .G(\tilt_out_reg[8]_i_1_n_0 ),
        .GE(1'b1),
        .Q(tilt_out[8]));
  LUT6 #(
    .INIT(64'h0000000000009000)) 
    \tilt_out_reg[8]_i_1 
       (.I0(spi_rx[2]),
        .I1(spi_rx[3]),
        .I2(spi_rx[5]),
        .I3(spi_rx[4]),
        .I4(\pan_out_reg[8]_i_2_n_0 ),
        .I5(\pan_out_reg[8]_i_3_n_0 ),
        .O(\tilt_out_reg[8]_i_1_n_0 ));
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
