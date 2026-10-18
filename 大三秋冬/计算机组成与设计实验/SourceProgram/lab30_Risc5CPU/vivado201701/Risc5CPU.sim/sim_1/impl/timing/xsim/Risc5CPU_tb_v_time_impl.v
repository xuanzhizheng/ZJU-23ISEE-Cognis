// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Nov 23 14:18:00 2025
// Host        : LAPTOP-V15JOVGD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/zzx/Desktop/SourceProgram/lab30_Risc5CPU/vivado201701/Risc5CPU.sim/sim_1/impl/timing/xsim/Risc5CPU_tb_v_time_impl.v
// Design      : PipelineCPUTest
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD63
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD64
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD65
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD66
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD67
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD68
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD69
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD70
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD71
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD72
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD73
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM64X1S_UNIQ_BASE_
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD32
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD33
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD34
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD35
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD36
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD37
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD38
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD39
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD40
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD41
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD42
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD43
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD44
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD45
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD46
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD47
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD48
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD49
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD50
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD51
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD52
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD53
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD54
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD55
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD56
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD57
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD58
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD59
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD60
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD61
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD62
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module CSR
   (\q_reg[114] ,
    Q,
    \q_reg[145] ,
    \mepc_reg[31]_0 ,
    \mtvec_reg[31]_0 ,
    \q_reg[115] ,
    \q_reg[116] ,
    D,
    \q_reg[120] ,
    \q_reg[122] ,
    \q_reg[123] ,
    \q_reg[3] ,
    \q_reg[3]_0 ,
    \q_reg[21] ,
    SR,
    E,
    \mtvec_reg[31]_1 ,
    cpu_clk_BUFG,
    \q_reg[20] ,
    \q_reg[63] ,
    \q_reg[21]_0 ,
    \mcause_reg[31]_0 ,
    \q_reg[3]_1 ,
    \mstatus_reg[31]_0 );
  output \q_reg[114] ;
  output [31:0]Q;
  output [31:0]\q_reg[145] ;
  output [31:0]\mepc_reg[31]_0 ;
  output [31:0]\mtvec_reg[31]_0 ;
  output \q_reg[115] ;
  output \q_reg[116] ;
  output [25:0]D;
  output \q_reg[120] ;
  output \q_reg[122] ;
  output \q_reg[123] ;
  input \q_reg[3] ;
  input \q_reg[3]_0 ;
  input \q_reg[21] ;
  input [0:0]SR;
  input [0:0]E;
  input [31:0]\mtvec_reg[31]_1 ;
  input cpu_clk_BUFG;
  input [0:0]\q_reg[20] ;
  input [31:0]\q_reg[63] ;
  input [0:0]\q_reg[21]_0 ;
  input [31:0]\mcause_reg[31]_0 ;
  input [0:0]\q_reg[3]_1 ;
  input [31:0]\mstatus_reg[31]_0 ;

  wire [25:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire cpu_clk_BUFG;
  wire [31:0]\mcause_reg[31]_0 ;
  wire [31:0]\mepc_reg[31]_0 ;
  wire [31:0]\mstatus_reg[31]_0 ;
  wire [31:0]\mtvec_reg[31]_0 ;
  wire [31:0]\mtvec_reg[31]_1 ;
  wire \q[117]_i_2_n_0 ;
  wire \q[118]_i_2_n_0 ;
  wire \q[119]_i_2_n_0 ;
  wire \q[121]_i_2_n_0 ;
  wire \q[124]_i_2_n_0 ;
  wire \q[125]_i_2_n_0 ;
  wire \q[126]_i_2_n_0 ;
  wire \q[127]_i_2_n_0 ;
  wire \q[128]_i_2_n_0 ;
  wire \q[129]_i_2_n_0 ;
  wire \q[130]_i_2_n_0 ;
  wire \q[131]_i_2_n_0 ;
  wire \q[132]_i_2_n_0 ;
  wire \q[133]_i_2_n_0 ;
  wire \q[134]_i_2_n_0 ;
  wire \q[135]_i_2_n_0 ;
  wire \q[136]_i_2_n_0 ;
  wire \q[137]_i_2_n_0 ;
  wire \q[138]_i_2_n_0 ;
  wire \q[139]_i_2_n_0 ;
  wire \q[140]_i_2_n_0 ;
  wire \q[141]_i_2_n_0 ;
  wire \q[142]_i_2_n_0 ;
  wire \q[143]_i_2_n_0 ;
  wire \q[144]_i_2_n_0 ;
  wire \q[145]_i_2_n_0 ;
  wire \q_reg[114] ;
  wire \q_reg[115] ;
  wire \q_reg[116] ;
  wire \q_reg[120] ;
  wire \q_reg[122] ;
  wire \q_reg[123] ;
  wire [31:0]\q_reg[145] ;
  wire [0:0]\q_reg[20] ;
  wire \q_reg[21] ;
  wire [0:0]\q_reg[21]_0 ;
  wire \q_reg[3] ;
  wire \q_reg[3]_0 ;
  wire [0:0]\q_reg[3]_1 ;
  wire [31:0]\q_reg[63] ;

  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[0] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [0]),
        .Q(\q_reg[145] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[10] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [10]),
        .Q(\q_reg[145] [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[11] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [11]),
        .Q(\q_reg[145] [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[12] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [12]),
        .Q(\q_reg[145] [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[13] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [13]),
        .Q(\q_reg[145] [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[14] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [14]),
        .Q(\q_reg[145] [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[15] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [15]),
        .Q(\q_reg[145] [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[16] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [16]),
        .Q(\q_reg[145] [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[17] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [17]),
        .Q(\q_reg[145] [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[18] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [18]),
        .Q(\q_reg[145] [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[19] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [19]),
        .Q(\q_reg[145] [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[1] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [1]),
        .Q(\q_reg[145] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[20] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [20]),
        .Q(\q_reg[145] [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[21] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [21]),
        .Q(\q_reg[145] [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[22] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [22]),
        .Q(\q_reg[145] [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[23] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [23]),
        .Q(\q_reg[145] [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[24] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [24]),
        .Q(\q_reg[145] [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[25] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [25]),
        .Q(\q_reg[145] [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[26] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [26]),
        .Q(\q_reg[145] [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[27] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [27]),
        .Q(\q_reg[145] [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[28] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [28]),
        .Q(\q_reg[145] [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[29] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [29]),
        .Q(\q_reg[145] [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[2] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [2]),
        .Q(\q_reg[145] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[30] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [30]),
        .Q(\q_reg[145] [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[31] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [31]),
        .Q(\q_reg[145] [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[3] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [3]),
        .Q(\q_reg[145] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[4] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [4]),
        .Q(\q_reg[145] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[5] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [5]),
        .Q(\q_reg[145] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[6] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [6]),
        .Q(\q_reg[145] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[7] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [7]),
        .Q(\q_reg[145] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[8] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [8]),
        .Q(\q_reg[145] [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mcause_reg[9] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[21]_0 ),
        .D(\mcause_reg[31]_0 [9]),
        .Q(\q_reg[145] [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[0] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [0]),
        .Q(\mepc_reg[31]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[10] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [10]),
        .Q(\mepc_reg[31]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[11] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [11]),
        .Q(\mepc_reg[31]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[12] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [12]),
        .Q(\mepc_reg[31]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[13] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [13]),
        .Q(\mepc_reg[31]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[14] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [14]),
        .Q(\mepc_reg[31]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[15] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [15]),
        .Q(\mepc_reg[31]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[16] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [16]),
        .Q(\mepc_reg[31]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[17] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [17]),
        .Q(\mepc_reg[31]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[18] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [18]),
        .Q(\mepc_reg[31]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[19] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [19]),
        .Q(\mepc_reg[31]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[1] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [1]),
        .Q(\mepc_reg[31]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[20] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [20]),
        .Q(\mepc_reg[31]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[21] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [21]),
        .Q(\mepc_reg[31]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[22] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [22]),
        .Q(\mepc_reg[31]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[23] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [23]),
        .Q(\mepc_reg[31]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[24] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [24]),
        .Q(\mepc_reg[31]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[25] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [25]),
        .Q(\mepc_reg[31]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[26] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [26]),
        .Q(\mepc_reg[31]_0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[27] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [27]),
        .Q(\mepc_reg[31]_0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[28] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [28]),
        .Q(\mepc_reg[31]_0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[29] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [29]),
        .Q(\mepc_reg[31]_0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[2] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [2]),
        .Q(\mepc_reg[31]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[30] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [30]),
        .Q(\mepc_reg[31]_0 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[31] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [31]),
        .Q(\mepc_reg[31]_0 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[3] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [3]),
        .Q(\mepc_reg[31]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[4] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [4]),
        .Q(\mepc_reg[31]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[5] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [5]),
        .Q(\mepc_reg[31]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[6] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [6]),
        .Q(\mepc_reg[31]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[7] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [7]),
        .Q(\mepc_reg[31]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[8] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [8]),
        .Q(\mepc_reg[31]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mepc_reg[9] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[20] ),
        .D(\q_reg[63] [9]),
        .Q(\mepc_reg[31]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[0] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[10] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[11] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[12] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[13] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[14] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[15] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[16] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[17] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[18] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[19] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [19]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[1] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[20] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[21] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[22] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[23] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[24] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[25] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[26] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[27] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[28] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[29] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[2] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[30] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [30]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[31] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [31]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[3] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[4] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[5] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[6] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[7] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[8] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mstatus_reg[9] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[3]_1 ),
        .D(\mstatus_reg[31]_0 [9]),
        .Q(Q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[0] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [0]),
        .Q(\mtvec_reg[31]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[10] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [10]),
        .Q(\mtvec_reg[31]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[11] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [11]),
        .Q(\mtvec_reg[31]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[12] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [12]),
        .Q(\mtvec_reg[31]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[13] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [13]),
        .Q(\mtvec_reg[31]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[14] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [14]),
        .Q(\mtvec_reg[31]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[15] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [15]),
        .Q(\mtvec_reg[31]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[16] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [16]),
        .Q(\mtvec_reg[31]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[17] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [17]),
        .Q(\mtvec_reg[31]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[18] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [18]),
        .Q(\mtvec_reg[31]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[19] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [19]),
        .Q(\mtvec_reg[31]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[1] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [1]),
        .Q(\mtvec_reg[31]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[20] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [20]),
        .Q(\mtvec_reg[31]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[21] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [21]),
        .Q(\mtvec_reg[31]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[22] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [22]),
        .Q(\mtvec_reg[31]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[23] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [23]),
        .Q(\mtvec_reg[31]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[24] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [24]),
        .Q(\mtvec_reg[31]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[25] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [25]),
        .Q(\mtvec_reg[31]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[26] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [26]),
        .Q(\mtvec_reg[31]_0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[27] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [27]),
        .Q(\mtvec_reg[31]_0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[28] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [28]),
        .Q(\mtvec_reg[31]_0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[29] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [29]),
        .Q(\mtvec_reg[31]_0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[2] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [2]),
        .Q(\mtvec_reg[31]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[30] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [30]),
        .Q(\mtvec_reg[31]_0 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[31] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [31]),
        .Q(\mtvec_reg[31]_0 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[3] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [3]),
        .Q(\mtvec_reg[31]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[4] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [4]),
        .Q(\mtvec_reg[31]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[5] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [5]),
        .Q(\mtvec_reg[31]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[6] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [6]),
        .Q(\mtvec_reg[31]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[7] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [7]),
        .Q(\mtvec_reg[31]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[8] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [8]),
        .Q(\mtvec_reg[31]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mtvec_reg[9] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(\mtvec_reg[31]_1 [9]),
        .Q(\mtvec_reg[31]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[114]_i_2 
       (.I0(Q[0]),
        .I1(\q_reg[145] [0]),
        .I2(\q_reg[3] ),
        .I3(\mepc_reg[31]_0 [0]),
        .I4(\q_reg[3]_0 ),
        .I5(\mtvec_reg[31]_0 [0]),
        .O(\q_reg[114] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[115]_i_2 
       (.I0(Q[1]),
        .I1(\q_reg[145] [1]),
        .I2(\q_reg[3] ),
        .I3(\mepc_reg[31]_0 [1]),
        .I4(\q_reg[3]_0 ),
        .I5(\mtvec_reg[31]_0 [1]),
        .O(\q_reg[115] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[116]_i_3 
       (.I0(Q[2]),
        .I1(\q_reg[145] [2]),
        .I2(\q_reg[3] ),
        .I3(\mepc_reg[31]_0 [2]),
        .I4(\q_reg[3]_0 ),
        .I5(\mtvec_reg[31]_0 [2]),
        .O(\q_reg[116] ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[117]_i_1 
       (.I0(\q[117]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [3]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[3]),
        .I5(\q_reg[21] ),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[117]_i_2 
       (.I0(\mepc_reg[31]_0 [3]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [3]),
        .O(\q[117]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[118]_i_1 
       (.I0(\q[118]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [4]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[4]),
        .I5(\q_reg[21] ),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[118]_i_2 
       (.I0(\mepc_reg[31]_0 [4]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [4]),
        .O(\q[118]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[119]_i_1 
       (.I0(\q[119]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [5]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[5]),
        .I5(\q_reg[21] ),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[119]_i_2 
       (.I0(\mepc_reg[31]_0 [5]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [5]),
        .O(\q[119]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[120]_i_2 
       (.I0(Q[6]),
        .I1(\q_reg[145] [6]),
        .I2(\q_reg[3] ),
        .I3(\mepc_reg[31]_0 [6]),
        .I4(\q_reg[3]_0 ),
        .I5(\mtvec_reg[31]_0 [6]),
        .O(\q_reg[120] ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[121]_i_1 
       (.I0(\q[121]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [7]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[7]),
        .I5(\q_reg[21] ),
        .O(D[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[121]_i_2 
       (.I0(\mepc_reg[31]_0 [7]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [7]),
        .O(\q[121]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[122]_i_2 
       (.I0(Q[8]),
        .I1(\q_reg[145] [8]),
        .I2(\q_reg[3] ),
        .I3(\mepc_reg[31]_0 [8]),
        .I4(\q_reg[3]_0 ),
        .I5(\mtvec_reg[31]_0 [8]),
        .O(\q_reg[122] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \q[123]_i_3 
       (.I0(Q[9]),
        .I1(\q_reg[145] [9]),
        .I2(\q_reg[3] ),
        .I3(\mepc_reg[31]_0 [9]),
        .I4(\q_reg[3]_0 ),
        .I5(\mtvec_reg[31]_0 [9]),
        .O(\q_reg[123] ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[124]_i_1 
       (.I0(\q[124]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [10]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[10]),
        .I5(\q_reg[21] ),
        .O(D[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[124]_i_2 
       (.I0(\mepc_reg[31]_0 [10]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [10]),
        .O(\q[124]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[125]_i_1 
       (.I0(\q[125]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [11]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[11]),
        .I5(\q_reg[21] ),
        .O(D[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[125]_i_2 
       (.I0(\mepc_reg[31]_0 [11]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [11]),
        .O(\q[125]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[126]_i_1 
       (.I0(\q[126]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [12]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[12]),
        .I5(\q_reg[21] ),
        .O(D[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[126]_i_2 
       (.I0(\mepc_reg[31]_0 [12]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [12]),
        .O(\q[126]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[127]_i_1 
       (.I0(\q[127]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [13]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[13]),
        .I5(\q_reg[21] ),
        .O(D[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[127]_i_2 
       (.I0(\mepc_reg[31]_0 [13]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [13]),
        .O(\q[127]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[128]_i_1 
       (.I0(\q[128]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [14]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[14]),
        .I5(\q_reg[21] ),
        .O(D[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[128]_i_2 
       (.I0(\mepc_reg[31]_0 [14]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [14]),
        .O(\q[128]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[129]_i_1 
       (.I0(\q[129]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [15]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[15]),
        .I5(\q_reg[21] ),
        .O(D[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[129]_i_2 
       (.I0(\mepc_reg[31]_0 [15]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [15]),
        .O(\q[129]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[130]_i_1 
       (.I0(\q[130]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [16]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[16]),
        .I5(\q_reg[21] ),
        .O(D[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[130]_i_2 
       (.I0(\mepc_reg[31]_0 [16]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [16]),
        .O(\q[130]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[131]_i_1 
       (.I0(\q[131]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [17]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[17]),
        .I5(\q_reg[21] ),
        .O(D[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[131]_i_2 
       (.I0(\mepc_reg[31]_0 [17]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [17]),
        .O(\q[131]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[132]_i_1 
       (.I0(\q[132]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [18]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[18]),
        .I5(\q_reg[21] ),
        .O(D[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[132]_i_2 
       (.I0(\mepc_reg[31]_0 [18]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [18]),
        .O(\q[132]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[133]_i_1 
       (.I0(\q[133]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [19]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[19]),
        .I5(\q_reg[21] ),
        .O(D[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[133]_i_2 
       (.I0(\mepc_reg[31]_0 [19]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [19]),
        .O(\q[133]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[134]_i_1 
       (.I0(\q[134]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [20]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[20]),
        .I5(\q_reg[21] ),
        .O(D[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[134]_i_2 
       (.I0(\mepc_reg[31]_0 [20]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [20]),
        .O(\q[134]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[135]_i_1 
       (.I0(\q[135]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [21]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[21]),
        .I5(\q_reg[21] ),
        .O(D[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[135]_i_2 
       (.I0(\mepc_reg[31]_0 [21]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [21]),
        .O(\q[135]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[136]_i_1 
       (.I0(\q[136]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [22]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[22]),
        .I5(\q_reg[21] ),
        .O(D[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[136]_i_2 
       (.I0(\mepc_reg[31]_0 [22]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [22]),
        .O(\q[136]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[137]_i_1 
       (.I0(\q[137]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [23]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[23]),
        .I5(\q_reg[21] ),
        .O(D[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[137]_i_2 
       (.I0(\mepc_reg[31]_0 [23]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [23]),
        .O(\q[137]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[138]_i_1 
       (.I0(\q[138]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [24]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[24]),
        .I5(\q_reg[21] ),
        .O(D[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[138]_i_2 
       (.I0(\mepc_reg[31]_0 [24]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [24]),
        .O(\q[138]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[139]_i_1 
       (.I0(\q[139]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [25]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[25]),
        .I5(\q_reg[21] ),
        .O(D[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[139]_i_2 
       (.I0(\mepc_reg[31]_0 [25]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [25]),
        .O(\q[139]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[140]_i_1 
       (.I0(\q[140]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [26]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[26]),
        .I5(\q_reg[21] ),
        .O(D[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[140]_i_2 
       (.I0(\mepc_reg[31]_0 [26]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [26]),
        .O(\q[140]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[141]_i_1 
       (.I0(\q[141]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [27]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[27]),
        .I5(\q_reg[21] ),
        .O(D[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[141]_i_2 
       (.I0(\mepc_reg[31]_0 [27]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [27]),
        .O(\q[141]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[142]_i_1 
       (.I0(\q[142]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [28]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[28]),
        .I5(\q_reg[21] ),
        .O(D[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[142]_i_2 
       (.I0(\mepc_reg[31]_0 [28]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [28]),
        .O(\q[142]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[143]_i_1 
       (.I0(\q[143]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [29]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[29]),
        .I5(\q_reg[21] ),
        .O(D[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[143]_i_2 
       (.I0(\mepc_reg[31]_0 [29]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [29]),
        .O(\q[143]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[144]_i_1 
       (.I0(\q[144]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [30]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[30]),
        .I5(\q_reg[21] ),
        .O(D[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[144]_i_2 
       (.I0(\mepc_reg[31]_0 [30]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [30]),
        .O(\q[144]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \q[145]_i_1 
       (.I0(\q[145]_i_2_n_0 ),
        .I1(\q_reg[3] ),
        .I2(\q_reg[145] [31]),
        .I3(\q_reg[3]_0 ),
        .I4(Q[31]),
        .I5(\q_reg[21] ),
        .O(D[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[145]_i_2 
       (.I0(\mepc_reg[31]_0 [31]),
        .I1(\q_reg[3]_0 ),
        .I2(\mtvec_reg[31]_0 [31]),
        .O(\q[145]_i_2_n_0 ));
endmodule

module DCM_PLL
   (clk_out1,
    clk_out2,
    reset,
    locked,
    clk_in1,
    lopt);
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
  input clk_in1;
  output lopt;

  wire clk_in1;
  wire clk_out1;
  wire clk_out2;
  wire lopt;
  wire reset;
  wire NLW_inst_locked_UNCONNECTED;

  DCM_PLL_DCM_PLL_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .locked(NLW_inst_locked_UNCONNECTED),
        .lopt(lopt),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "DCM_PLL_clk_wiz" *) 
module DCM_PLL_DCM_PLL_clk_wiz
   (clk_out1,
    clk_out2,
    reset,
    locked,
    clk_in1,
    lopt);
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
  input clk_in1;
  output lopt;

  wire clk_in1;
  wire clk_in1_DCM_PLL;
  wire clk_out1;
  wire clk_out1_DCM_PLL;
  wire clk_out2_DCM_PLL;
  wire clkfbout_DCM_PLL;
  wire clkfbout_buf_DCM_PLL;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  assign clk_out2 = clk_out2_DCM_PLL;
  assign lopt = clk_out1;
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_DCM_PLL),
        .O(clkfbout_buf_DCM_PLL));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_DCM_PLL));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_DCM_PLL),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(40.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(4),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_DCM_PLL),
        .CLKFBOUT(clkfbout_DCM_PLL),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_DCM_PLL),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_DCM_PLL),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_out2_DCM_PLL),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module DFF
   (D,
    \PC_reg_reg[30] ,
    w_IF_flush,
    \q_reg[155] ,
    \TMDSn[2] ,
    \TMDSn[2]_0 ,
    \TMDSn[2]_1 ,
    \TMDSn[2]_2 ,
    \TMDSn[2]_3 ,
    \TMDSn[2]_4 ,
    Q,
    \mepc_reg[31] ,
    \mcause_reg[31] ,
    \mcause_reg[31]_0 ,
    \mstatus_reg[0] ,
    \q_reg[114] ,
    \q_reg[145] ,
    \PC_reg_reg[1] ,
    \PC_reg_reg[1]_0 ,
    \PC_reg_reg[1]_1 ,
    \PC_reg_reg[1]_2 ,
    \q_reg[51]_0 ,
    \PC_reg_reg[1]_3 ,
    \mepc_reg[31]_0 ,
    \mstatus_reg[0]_0 ,
    \q_reg[145]_0 ,
    \mstatus_reg[31] ,
    \mtvec_reg[31] ,
    E,
    \q_reg[112] ,
    \PC_reg_reg[31] ,
    PC_plus_4,
    SR,
    \PosX_reg_reg[4] ,
    \PosX_reg_reg[4]_0 ,
    \PosX_reg_reg[4]_1 ,
    \PosX_reg_reg[4]_2 ,
    \PosX_reg_reg[4]_3 ,
    \PosX_reg_reg[5] ,
    \PosX_reg_reg[4]_4 ,
    \PosX_reg_reg[4]_5 ,
    \PosX_reg_reg[4]_6 ,
    \PosX_reg_reg[5]_0 ,
    \PosX_reg_reg[4]_7 ,
    \PosX_reg_reg[5]_1 ,
    \q_reg[70] ,
    \mcause_reg[31]_1 ,
    \mepc_reg[31]_1 ,
    \mtvec_reg[31]_0 ,
    \mstatus_reg[0]_1 ,
    \mstatus_reg[1] ,
    \mstatus_reg[2] ,
    \mstatus_reg[6] ,
    \mstatus_reg[8] ,
    \mstatus_reg[9] ,
    \q_reg[53]_0 ,
    \q_reg[12]_0 ,
    \q_reg[69] ,
    ReadData20,
    \mstatus_reg[31]_0 ,
    \q_reg[37]_0 ,
    cpu_clk_BUFG);
  output [10:0]D;
  output [20:0]\PC_reg_reg[30] ;
  output w_IF_flush;
  output [56:0]\q_reg[155] ;
  output \TMDSn[2] ;
  output \TMDSn[2]_0 ;
  output \TMDSn[2]_1 ;
  output \TMDSn[2]_2 ;
  output \TMDSn[2]_3 ;
  output \TMDSn[2]_4 ;
  output [0:0]Q;
  output [0:0]\mepc_reg[31] ;
  output [0:0]\mcause_reg[31] ;
  output [31:0]\mcause_reg[31]_0 ;
  output \mstatus_reg[0] ;
  output \q_reg[114] ;
  output \q_reg[145] ;
  output \PC_reg_reg[1] ;
  output \PC_reg_reg[1]_0 ;
  output \PC_reg_reg[1]_1 ;
  output \PC_reg_reg[1]_2 ;
  output \q_reg[51]_0 ;
  output \PC_reg_reg[1]_3 ;
  output [31:0]\mepc_reg[31]_0 ;
  output [0:0]\mstatus_reg[0]_0 ;
  output \q_reg[145]_0 ;
  output [31:0]\mstatus_reg[31] ;
  output [31:0]\mtvec_reg[31] ;
  output [0:0]E;
  output \q_reg[112] ;
  input [47:0]\PC_reg_reg[31] ;
  input [7:0]PC_plus_4;
  input [0:0]SR;
  input \PosX_reg_reg[4] ;
  input \PosX_reg_reg[4]_0 ;
  input \PosX_reg_reg[4]_1 ;
  input \PosX_reg_reg[4]_2 ;
  input \PosX_reg_reg[4]_3 ;
  input \PosX_reg_reg[5] ;
  input \PosX_reg_reg[4]_4 ;
  input \PosX_reg_reg[4]_5 ;
  input \PosX_reg_reg[4]_6 ;
  input \PosX_reg_reg[5]_0 ;
  input \PosX_reg_reg[4]_7 ;
  input \PosX_reg_reg[5]_1 ;
  input [32:0]\q_reg[70] ;
  input [31:0]\mcause_reg[31]_1 ;
  input [31:0]\mepc_reg[31]_1 ;
  input [31:0]\mtvec_reg[31]_0 ;
  input \mstatus_reg[0]_1 ;
  input \mstatus_reg[1] ;
  input \mstatus_reg[2] ;
  input \mstatus_reg[6] ;
  input \mstatus_reg[8] ;
  input \mstatus_reg[9] ;
  input \q_reg[53]_0 ;
  input \q_reg[12]_0 ;
  input \q_reg[69] ;
  input [5:0]ReadData20;
  input [31:0]\mstatus_reg[31]_0 ;
  input [0:0]\q_reg[37]_0 ;
  input cpu_clk_BUFG;

  wire [10:0]D;
  wire [0:0]E;
  wire [26:0]Instruction_id;
  wire [1:0]JumpFlag;
  wire [7:0]PC_plus_4;
  wire \PC_reg[12]_i_4_n_0 ;
  wire \PC_reg[12]_i_5_n_0 ;
  wire \PC_reg[12]_i_6_n_0 ;
  wire \PC_reg[12]_i_7_n_0 ;
  wire \PC_reg[12]_i_8_n_0 ;
  wire \PC_reg[16]_i_4_n_0 ;
  wire \PC_reg[16]_i_5_n_0 ;
  wire \PC_reg[16]_i_6_n_0 ;
  wire \PC_reg[16]_i_7_n_0 ;
  wire \PC_reg[16]_i_8_n_0 ;
  wire \PC_reg[1]_i_3_n_0 ;
  wire \PC_reg[1]_i_4_n_0 ;
  wire \PC_reg[20]_i_4_n_0 ;
  wire \PC_reg[20]_i_5_n_0 ;
  wire \PC_reg[20]_i_6_n_0 ;
  wire \PC_reg[20]_i_7_n_0 ;
  wire \PC_reg[20]_i_8_n_0 ;
  wire \PC_reg[24]_i_10_n_0 ;
  wire \PC_reg[24]_i_11_n_0 ;
  wire \PC_reg[24]_i_4_n_0 ;
  wire \PC_reg[24]_i_5_n_0 ;
  wire \PC_reg[24]_i_6_n_0 ;
  wire \PC_reg[24]_i_7_n_0 ;
  wire \PC_reg[24]_i_8_n_0 ;
  wire \PC_reg[24]_i_9_n_0 ;
  wire \PC_reg[28]_i_10_n_0 ;
  wire \PC_reg[28]_i_11_n_0 ;
  wire \PC_reg[28]_i_4_n_0 ;
  wire \PC_reg[28]_i_5_n_0 ;
  wire \PC_reg[28]_i_6_n_0 ;
  wire \PC_reg[28]_i_7_n_0 ;
  wire \PC_reg[28]_i_8_n_0 ;
  wire \PC_reg[28]_i_9_n_0 ;
  wire \PC_reg[31]_i_11_n_0 ;
  wire \PC_reg[31]_i_13_n_0 ;
  wire \PC_reg[31]_i_14_n_0 ;
  wire \PC_reg[31]_i_16_n_0 ;
  wire \PC_reg[31]_i_18_n_0 ;
  wire \PC_reg[31]_i_19_n_0 ;
  wire \PC_reg[31]_i_20_n_0 ;
  wire \PC_reg[31]_i_21_n_0 ;
  wire \PC_reg[31]_i_22_n_0 ;
  wire \PC_reg[31]_i_23_n_0 ;
  wire \PC_reg[31]_i_24_n_0 ;
  wire \PC_reg[4]_i_5_n_0 ;
  wire \PC_reg[4]_i_6_n_0 ;
  wire \PC_reg[4]_i_7_n_0 ;
  wire \PC_reg[4]_i_8_n_0 ;
  wire \PC_reg[8]_i_4_n_0 ;
  wire \PC_reg[8]_i_5_n_0 ;
  wire \PC_reg[8]_i_6_n_0 ;
  wire \PC_reg[8]_i_7_n_0 ;
  wire \PC_reg[8]_i_8_n_0 ;
  wire \PC_reg[8]_i_9_n_0 ;
  wire \PC_reg_reg[12]_i_3_n_0 ;
  wire \PC_reg_reg[16]_i_3_n_0 ;
  wire \PC_reg_reg[1] ;
  wire \PC_reg_reg[1]_0 ;
  wire \PC_reg_reg[1]_1 ;
  wire \PC_reg_reg[1]_2 ;
  wire \PC_reg_reg[1]_3 ;
  wire \PC_reg_reg[20]_i_3_n_0 ;
  wire \PC_reg_reg[24]_i_3_n_0 ;
  wire \PC_reg_reg[28]_i_3_n_0 ;
  wire [20:0]\PC_reg_reg[30] ;
  wire [47:0]\PC_reg_reg[31] ;
  wire \PC_reg_reg[4]_i_3_n_0 ;
  wire \PC_reg_reg[8]_i_3_n_0 ;
  wire \PosX_reg_reg[4] ;
  wire \PosX_reg_reg[4]_0 ;
  wire \PosX_reg_reg[4]_1 ;
  wire \PosX_reg_reg[4]_2 ;
  wire \PosX_reg_reg[4]_3 ;
  wire \PosX_reg_reg[4]_4 ;
  wire \PosX_reg_reg[4]_5 ;
  wire \PosX_reg_reg[4]_6 ;
  wire \PosX_reg_reg[4]_7 ;
  wire \PosX_reg_reg[5] ;
  wire \PosX_reg_reg[5]_0 ;
  wire \PosX_reg_reg[5]_1 ;
  wire [0:0]Q;
  wire [5:0]ReadData20;
  wire [0:0]SR;
  wire \TMDSn[2] ;
  wire \TMDSn[2]_0 ;
  wire \TMDSn[2]_1 ;
  wire \TMDSn[2]_2 ;
  wire \TMDSn[2]_3 ;
  wire \TMDSn[2]_4 ;
  wire char_tab_i_112_n_0;
  wire char_tab_i_133_n_0;
  wire char_tab_i_139_n_0;
  wire char_tab_i_147_n_0;
  wire char_tab_i_158_n_0;
  wire cpu_clk_BUFG;
  wire \mcause[3]_i_2_n_0 ;
  wire \mcause[3]_i_3_n_0 ;
  wire [0:0]\mcause_reg[31] ;
  wire [31:0]\mcause_reg[31]_0 ;
  wire [31:0]\mcause_reg[31]_1 ;
  wire \mepc[31]_i_3_n_0 ;
  wire \mepc[31]_i_4_n_0 ;
  wire [0:0]\mepc_reg[31] ;
  wire [31:0]\mepc_reg[31]_0 ;
  wire [31:0]\mepc_reg[31]_1 ;
  wire \mstatus[31]_i_4_n_0 ;
  wire \mstatus_reg[0] ;
  wire [0:0]\mstatus_reg[0]_0 ;
  wire \mstatus_reg[0]_1 ;
  wire \mstatus_reg[1] ;
  wire \mstatus_reg[2] ;
  wire [31:0]\mstatus_reg[31] ;
  wire [31:0]\mstatus_reg[31]_0 ;
  wire \mstatus_reg[6] ;
  wire \mstatus_reg[8] ;
  wire \mstatus_reg[9] ;
  wire \mtvec[31]_i_3_n_0 ;
  wire \mtvec[31]_i_4_n_0 ;
  wire \mtvec[31]_i_5_n_0 ;
  wire [31:0]\mtvec_reg[31] ;
  wire [31:0]\mtvec_reg[31]_0 ;
  wire \q[116]_i_2_n_0 ;
  wire \q[123]_i_2_n_0 ;
  wire \q[63]_i_1__0_n_0 ;
  wire \q_reg[112] ;
  wire \q_reg[114] ;
  wire \q_reg[12]_0 ;
  wire \q_reg[145] ;
  wire \q_reg[145]_0 ;
  wire [56:0]\q_reg[155] ;
  wire [0:0]\q_reg[37]_0 ;
  wire \q_reg[51]_0 ;
  wire \q_reg[53]_0 ;
  wire \q_reg[69] ;
  wire [32:0]\q_reg[70] ;
  wire [31:2]\u_ID/JumpAddr_decode ;
  wire [3:3]\u_ID/offset_w ;
  wire w_IF_flush;
  wire [31:0]w_JumpAddr;
  wire [2:0]\NLW_PC_reg_reg[12]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_PC_reg_reg[16]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_PC_reg_reg[20]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_PC_reg_reg[24]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_PC_reg_reg[28]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_PC_reg_reg[31]_i_12_CO_UNCONNECTED ;
  wire [3:3]\NLW_PC_reg_reg[31]_i_12_O_UNCONNECTED ;
  wire [2:0]\NLW_PC_reg_reg[4]_i_3_CO_UNCONNECTED ;
  wire [0:0]\NLW_PC_reg_reg[4]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_PC_reg_reg[8]_i_3_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    \PC_reg[0]_i_1 
       (.I0(w_JumpAddr[0]),
        .I1(w_IF_flush),
        .I2(\PC_reg_reg[31] [16]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[0]_i_2 
       (.I0(\mepc_reg[31]_1 [0]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\q_reg[155] [3]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [0]),
        .O(w_JumpAddr[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[10]_i_2 
       (.I0(\mepc_reg[31]_1 [10]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [10]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [10]),
        .O(\PC_reg_reg[30] [5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[11]_i_3 
       (.I0(\mepc_reg[31]_1 [11]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [11]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [11]),
        .O(w_JumpAddr[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[12]_i_2 
       (.I0(\mepc_reg[31]_1 [12]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [12]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [12]),
        .O(\PC_reg_reg[30] [6]));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[12]_i_4 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \PC_reg[12]_i_5 
       (.I0(\q_reg[155] [0]),
        .I1(Instruction_id[4]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[0]),
        .I4(\q_reg[155] [2]),
        .I5(\q_reg[155] [15]),
        .O(\PC_reg[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h47FFB800)) 
    \PC_reg[12]_i_6 
       (.I0(\q_reg[155] [38]),
        .I1(\q_reg[155] [2]),
        .I2(\q_reg[155] [35]),
        .I3(\PC_reg[1]_i_4_n_0 ),
        .I4(\q_reg[155] [14]),
        .O(\PC_reg[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[12]_i_7 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [13]),
        .O(\PC_reg[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[12]_i_8 
       (.I0(Q),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [12]),
        .O(\PC_reg[12]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[13]_i_2 
       (.I0(\mepc_reg[31]_1 [13]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [13]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [13]),
        .O(\PC_reg_reg[30] [7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[14]_i_2 
       (.I0(\mepc_reg[31]_1 [14]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [14]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [14]),
        .O(\PC_reg_reg[30] [8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[15]_i_3 
       (.I0(\mepc_reg[31]_1 [15]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [15]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [15]),
        .O(w_JumpAddr[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[16]_i_2 
       (.I0(\mepc_reg[31]_1 [16]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [16]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [16]),
        .O(\PC_reg_reg[30] [9]));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[16]_i_4 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \PC_reg[16]_i_5 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .I4(\q_reg[155] [42]),
        .I5(\q_reg[155] [19]),
        .O(\PC_reg[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \PC_reg[16]_i_6 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .I4(\q_reg[155] [41]),
        .I5(\q_reg[155] [18]),
        .O(\PC_reg[16]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[16]_i_7 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [17]),
        .O(\PC_reg[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \PC_reg[16]_i_8 
       (.I0(\q_reg[155] [2]),
        .I1(\q_reg[155] [1]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[0]),
        .I4(Instruction_id[4]),
        .I5(\q_reg[155] [16]),
        .O(\PC_reg[16]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[17]_i_2 
       (.I0(\mepc_reg[31]_1 [17]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [17]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [17]),
        .O(\PC_reg_reg[30] [10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[18]_i_2 
       (.I0(\mepc_reg[31]_1 [18]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [18]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [18]),
        .O(\PC_reg_reg[30] [11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[19]_i_3 
       (.I0(\mepc_reg[31]_1 [19]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [19]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [19]),
        .O(w_JumpAddr[19]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \PC_reg[1]_i_1 
       (.I0(w_JumpAddr[1]),
        .I1(w_IF_flush),
        .I2(\PC_reg_reg[31] [17]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[1]_i_2 
       (.I0(\mepc_reg[31]_1 [1]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\PC_reg[1]_i_3_n_0 ),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [1]),
        .O(w_JumpAddr[1]));
  LUT5 #(
    .INIT(32'h47FFB800)) 
    \PC_reg[1]_i_3 
       (.I0(\q_reg[155] [39]),
        .I1(\q_reg[155] [2]),
        .I2(\q_reg[155] [36]),
        .I3(\PC_reg[1]_i_4_n_0 ),
        .I4(\q_reg[155] [4]),
        .O(\PC_reg[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \PC_reg[1]_i_4 
       (.I0(Instruction_id[6]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[4]),
        .O(\PC_reg[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[20]_i_2 
       (.I0(\mepc_reg[31]_1 [20]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [20]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [20]),
        .O(\PC_reg_reg[30] [12]));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[20]_i_4 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[20]_i_5 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [23]),
        .O(\PC_reg[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \PC_reg[20]_i_6 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .I4(\q_reg[155] [42]),
        .I5(\q_reg[155] [22]),
        .O(\PC_reg[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \PC_reg[20]_i_7 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .I4(\q_reg[155] [42]),
        .I5(\q_reg[155] [21]),
        .O(\PC_reg[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \PC_reg[20]_i_8 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .I4(\q_reg[155] [42]),
        .I5(\q_reg[155] [20]),
        .O(\PC_reg[20]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[21]_i_2 
       (.I0(\mepc_reg[31]_1 [21]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [21]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [21]),
        .O(\PC_reg_reg[30] [13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[22]_i_2 
       (.I0(\mepc_reg[31]_1 [22]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [22]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [22]),
        .O(\PC_reg_reg[30] [14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[23]_i_3 
       (.I0(\mepc_reg[31]_1 [23]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [23]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [23]),
        .O(w_JumpAddr[23]));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[24]_i_10 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [25]),
        .O(\PC_reg[24]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[24]_i_11 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [24]),
        .O(\PC_reg[24]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[24]_i_2 
       (.I0(\mepc_reg[31]_1 [24]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [24]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [24]),
        .O(\PC_reg_reg[30] [15]));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[24]_i_4 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[24]_i_5 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[24]_i_6 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[24]_i_7 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[24]_i_8 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [27]),
        .O(\PC_reg[24]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[24]_i_9 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [26]),
        .O(\PC_reg[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[25]_i_2 
       (.I0(\mepc_reg[31]_1 [25]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [25]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [25]),
        .O(\PC_reg_reg[30] [16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[26]_i_2 
       (.I0(\mepc_reg[31]_1 [26]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [26]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [26]),
        .O(\PC_reg_reg[30] [17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[27]_i_3 
       (.I0(\mepc_reg[31]_1 [27]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [27]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [27]),
        .O(w_JumpAddr[27]));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[28]_i_10 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [29]),
        .O(\PC_reg[28]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[28]_i_11 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [28]),
        .O(\PC_reg[28]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[28]_i_2 
       (.I0(\mepc_reg[31]_1 [28]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [28]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [28]),
        .O(\PC_reg_reg[30] [18]));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[28]_i_4 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[28]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[28]_i_5 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[28]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[28]_i_6 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[28]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[28]_i_7 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[28]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[28]_i_8 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [31]),
        .O(\PC_reg[28]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[28]_i_9 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [30]),
        .O(\PC_reg[28]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[29]_i_2 
       (.I0(\mepc_reg[31]_1 [29]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [29]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [29]),
        .O(\PC_reg_reg[30] [19]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \PC_reg[2]_i_1 
       (.I0(w_JumpAddr[2]),
        .I1(w_IF_flush),
        .I2(\PC_reg_reg[31] [18]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[2]_i_2 
       (.I0(\mepc_reg[31]_1 [2]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [2]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [2]),
        .O(w_JumpAddr[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[30]_i_2 
       (.I0(\mepc_reg[31]_1 [30]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [30]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [30]),
        .O(\PC_reg_reg[30] [20]));
  LUT6 #(
    .INIT(64'h2AAAAAAA22A2AAAA)) 
    \PC_reg[31]_i_10 
       (.I0(\PC_reg[31]_i_13_n_0 ),
        .I1(\PC_reg[31]_i_14_n_0 ),
        .I2(\q_reg[53]_0 ),
        .I3(\PC_reg[31]_i_16_n_0 ),
        .I4(\q_reg[12]_0 ),
        .I5(\PC_reg[31]_i_18_n_0 ),
        .O(JumpFlag[0]));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \PC_reg[31]_i_108 
       (.I0(\q_reg[155] [38]),
        .I1(\q_reg[155] [40]),
        .I2(\q_reg[155] [2]),
        .I3(\q_reg[155] [39]),
        .I4(ReadData20[5]),
        .O(\PC_reg_reg[1] ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \PC_reg[31]_i_109 
       (.I0(\q_reg[155] [38]),
        .I1(\q_reg[155] [40]),
        .I2(\q_reg[155] [2]),
        .I3(\q_reg[155] [39]),
        .I4(ReadData20[2]),
        .O(\PC_reg_reg[1]_2 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \PC_reg[31]_i_11 
       (.I0(\mcause[3]_i_3_n_0 ),
        .I1(\q_reg[155] [39]),
        .I2(Instruction_id[26]),
        .I3(Q),
        .I4(\PC_reg[31]_i_19_n_0 ),
        .O(\PC_reg[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \PC_reg[31]_i_115 
       (.I0(ReadData20[4]),
        .I1(\q_reg[155] [38]),
        .I2(\q_reg[155] [40]),
        .I3(\q_reg[155] [2]),
        .I4(\q_reg[155] [39]),
        .O(\PC_reg_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \PC_reg[31]_i_116 
       (.I0(\q_reg[155] [38]),
        .I1(\q_reg[155] [40]),
        .I2(\q_reg[155] [2]),
        .I3(\q_reg[155] [39]),
        .I4(ReadData20[0]),
        .O(\PC_reg_reg[1]_3 ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \PC_reg[31]_i_117 
       (.I0(\q_reg[155] [38]),
        .I1(\q_reg[155] [40]),
        .I2(\q_reg[155] [2]),
        .I3(\q_reg[155] [39]),
        .I4(ReadData20[3]),
        .O(\PC_reg_reg[1]_1 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \PC_reg[31]_i_13 
       (.I0(Instruction_id[6]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[4]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF77F77777FF7F)) 
    \PC_reg[31]_i_14 
       (.I0(\q_reg[155] [1]),
        .I1(\q_reg[155] [2]),
        .I2(\q_reg[70] [0]),
        .I3(\q_reg[70] [32]),
        .I4(\q_reg[69] ),
        .I5(\q_reg[155] [0]),
        .O(\PC_reg[31]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \PC_reg[31]_i_16 
       (.I0(\q_reg[155] [0]),
        .I1(\q_reg[155] [1]),
        .I2(\q_reg[155] [2]),
        .O(\PC_reg[31]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \PC_reg[31]_i_18 
       (.I0(\q_reg[155] [2]),
        .I1(\q_reg[155] [0]),
        .I2(\q_reg[155] [1]),
        .O(\PC_reg[31]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \PC_reg[31]_i_19 
       (.I0(\q_reg[155] [38]),
        .I1(\q_reg[155] [40]),
        .I2(\q_reg[155] [2]),
        .O(\PC_reg[31]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[31]_i_20 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[31]_i_21 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[31]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \PC_reg[31]_i_22 
       (.I0(\q_reg[155] [34]),
        .I1(\q_reg[155] [2]),
        .I2(Instruction_id[0]),
        .I3(Instruction_id[6]),
        .I4(Instruction_id[4]),
        .O(\PC_reg[31]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[31]_i_23 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [33]),
        .O(\PC_reg[31]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[31]_i_24 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [32]),
        .O(\PC_reg[31]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \PC_reg[31]_i_4 
       (.I0(JumpFlag[0]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\q_reg[155] [2]),
        .I3(Instruction_id[0]),
        .I4(\mcause[3]_i_2_n_0 ),
        .O(w_IF_flush));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[31]_i_6 
       (.I0(\mepc_reg[31]_1 [31]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [31]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [31]),
        .O(w_JumpAddr[31]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[3]_i_2 
       (.I0(\mepc_reg[31]_1 [3]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [3]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [3]),
        .O(\PC_reg_reg[30] [0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[4]_i_2 
       (.I0(\mepc_reg[31]_1 [4]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [4]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [4]),
        .O(\PC_reg_reg[30] [1]));
  LUT5 #(
    .INIT(32'h40404000)) 
    \PC_reg[4]_i_4 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(\q_reg[155] [37]),
        .I4(\q_reg[155] [2]),
        .O(\u_ID/offset_w ));
  LUT6 #(
    .INIT(64'hFFFF1FFF0000E000)) 
    \PC_reg[4]_i_5 
       (.I0(\q_reg[155] [2]),
        .I1(\q_reg[155] [37]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[0]),
        .I4(Instruction_id[4]),
        .I5(\q_reg[155] [7]),
        .O(\PC_reg[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1FFF0000E000)) 
    \PC_reg[4]_i_6 
       (.I0(\q_reg[155] [2]),
        .I1(\q_reg[155] [37]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[0]),
        .I4(Instruction_id[4]),
        .I5(\q_reg[155] [6]),
        .O(\PC_reg[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h2F7FD080)) 
    \PC_reg[4]_i_7 
       (.I0(\q_reg[155] [2]),
        .I1(\q_reg[155] [40]),
        .I2(\PC_reg[1]_i_4_n_0 ),
        .I3(\q_reg[155] [37]),
        .I4(\q_reg[155] [5]),
        .O(\PC_reg[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h47FFB800)) 
    \PC_reg[4]_i_8 
       (.I0(\q_reg[155] [39]),
        .I1(\q_reg[155] [2]),
        .I2(\q_reg[155] [36]),
        .I3(\PC_reg[1]_i_4_n_0 ),
        .I4(\q_reg[155] [4]),
        .O(\PC_reg[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[5]_i_2 
       (.I0(\mepc_reg[31]_1 [5]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [5]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [5]),
        .O(\PC_reg_reg[30] [2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[6]_i_3 
       (.I0(\mepc_reg[31]_1 [6]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [6]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [6]),
        .O(w_JumpAddr[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[7]_i_3 
       (.I0(\mepc_reg[31]_1 [7]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [7]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [7]),
        .O(w_JumpAddr[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[8]_i_2 
       (.I0(\mepc_reg[31]_1 [8]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [8]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [8]),
        .O(\PC_reg_reg[30] [3]));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[8]_i_4 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \PC_reg[8]_i_5 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\PC_reg[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[8]_i_6 
       (.I0(Q),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [11]),
        .O(\PC_reg[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[8]_i_7 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [10]),
        .O(\PC_reg[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \PC_reg[8]_i_8 
       (.I0(Instruction_id[6]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[4]),
        .I3(Instruction_id[26]),
        .I4(\q_reg[155] [9]),
        .O(\PC_reg[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \PC_reg[8]_i_9 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [8]),
        .O(\PC_reg[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \PC_reg[9]_i_2 
       (.I0(\mepc_reg[31]_1 [9]),
        .I1(\PC_reg[31]_i_11_n_0 ),
        .I2(\u_ID/JumpAddr_decode [9]),
        .I3(\mepc[31]_i_4_n_0 ),
        .I4(\mtvec_reg[31]_0 [9]),
        .O(\PC_reg_reg[30] [4]));
  MUXF7 \PC_reg_reg[11]_i_1 
       (.I0(PC_plus_4[2]),
        .I1(w_JumpAddr[11]),
        .O(D[5]),
        .S(w_IF_flush));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg_reg[12]_i_3 
       (.CI(\PC_reg_reg[8]_i_3_n_0 ),
        .CO({\PC_reg_reg[12]_i_3_n_0 ,\NLW_PC_reg_reg[12]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\q_reg[155] [15:14],\PC_reg[12]_i_4_n_0 ,\q_reg[155] [12]}),
        .O(\u_ID/JumpAddr_decode [12:9]),
        .S({\PC_reg[12]_i_5_n_0 ,\PC_reg[12]_i_6_n_0 ,\PC_reg[12]_i_7_n_0 ,\PC_reg[12]_i_8_n_0 }));
  MUXF7 \PC_reg_reg[15]_i_1 
       (.I0(PC_plus_4[3]),
        .I1(w_JumpAddr[15]),
        .O(D[6]),
        .S(w_IF_flush));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg_reg[16]_i_3 
       (.CI(\PC_reg_reg[12]_i_3_n_0 ),
        .CO({\PC_reg_reg[16]_i_3_n_0 ,\NLW_PC_reg_reg[16]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\q_reg[155] [19:18],\PC_reg[16]_i_4_n_0 ,\q_reg[155] [16]}),
        .O(\u_ID/JumpAddr_decode [16:13]),
        .S({\PC_reg[16]_i_5_n_0 ,\PC_reg[16]_i_6_n_0 ,\PC_reg[16]_i_7_n_0 ,\PC_reg[16]_i_8_n_0 }));
  MUXF7 \PC_reg_reg[19]_i_1 
       (.I0(PC_plus_4[4]),
        .I1(w_JumpAddr[19]),
        .O(D[7]),
        .S(w_IF_flush));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg_reg[20]_i_3 
       (.CI(\PC_reg_reg[16]_i_3_n_0 ),
        .CO({\PC_reg_reg[20]_i_3_n_0 ,\NLW_PC_reg_reg[20]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\PC_reg[20]_i_4_n_0 ,\q_reg[155] [22:20]}),
        .O(\u_ID/JumpAddr_decode [20:17]),
        .S({\PC_reg[20]_i_5_n_0 ,\PC_reg[20]_i_6_n_0 ,\PC_reg[20]_i_7_n_0 ,\PC_reg[20]_i_8_n_0 }));
  MUXF7 \PC_reg_reg[23]_i_1 
       (.I0(PC_plus_4[5]),
        .I1(w_JumpAddr[23]),
        .O(D[8]),
        .S(w_IF_flush));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg_reg[24]_i_3 
       (.CI(\PC_reg_reg[20]_i_3_n_0 ),
        .CO({\PC_reg_reg[24]_i_3_n_0 ,\NLW_PC_reg_reg[24]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\PC_reg[24]_i_4_n_0 ,\PC_reg[24]_i_5_n_0 ,\PC_reg[24]_i_6_n_0 ,\PC_reg[24]_i_7_n_0 }),
        .O(\u_ID/JumpAddr_decode [24:21]),
        .S({\PC_reg[24]_i_8_n_0 ,\PC_reg[24]_i_9_n_0 ,\PC_reg[24]_i_10_n_0 ,\PC_reg[24]_i_11_n_0 }));
  MUXF7 \PC_reg_reg[27]_i_1 
       (.I0(PC_plus_4[6]),
        .I1(w_JumpAddr[27]),
        .O(D[9]),
        .S(w_IF_flush));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg_reg[28]_i_3 
       (.CI(\PC_reg_reg[24]_i_3_n_0 ),
        .CO({\PC_reg_reg[28]_i_3_n_0 ,\NLW_PC_reg_reg[28]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\PC_reg[28]_i_4_n_0 ,\PC_reg[28]_i_5_n_0 ,\PC_reg[28]_i_6_n_0 ,\PC_reg[28]_i_7_n_0 }),
        .O(\u_ID/JumpAddr_decode [28:25]),
        .S({\PC_reg[28]_i_8_n_0 ,\PC_reg[28]_i_9_n_0 ,\PC_reg[28]_i_10_n_0 ,\PC_reg[28]_i_11_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg_reg[31]_i_12 
       (.CI(\PC_reg_reg[28]_i_3_n_0 ),
        .CO(\NLW_PC_reg_reg[31]_i_12_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\PC_reg[31]_i_20_n_0 ,\PC_reg[31]_i_21_n_0 }),
        .O({\NLW_PC_reg_reg[31]_i_12_O_UNCONNECTED [3],\u_ID/JumpAddr_decode [31:29]}),
        .S({1'b0,\PC_reg[31]_i_22_n_0 ,\PC_reg[31]_i_23_n_0 ,\PC_reg[31]_i_24_n_0 }));
  MUXF7 \PC_reg_reg[31]_i_2 
       (.I0(PC_plus_4[7]),
        .I1(w_JumpAddr[31]),
        .O(D[10]),
        .S(w_IF_flush));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\PC_reg_reg[4]_i_3_n_0 ,\NLW_PC_reg_reg[4]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\u_ID/offset_w ,\u_ID/offset_w ,\q_reg[155] [5:4]}),
        .O({\u_ID/JumpAddr_decode [4:2],\NLW_PC_reg_reg[4]_i_3_O_UNCONNECTED [0]}),
        .S({\PC_reg[4]_i_5_n_0 ,\PC_reg[4]_i_6_n_0 ,\PC_reg[4]_i_7_n_0 ,\PC_reg[4]_i_8_n_0 }));
  MUXF7 \PC_reg_reg[6]_i_1 
       (.I0(PC_plus_4[0]),
        .I1(w_JumpAddr[6]),
        .O(D[3]),
        .S(w_IF_flush));
  MUXF7 \PC_reg_reg[7]_i_1 
       (.I0(PC_plus_4[1]),
        .I1(w_JumpAddr[7]),
        .O(D[4]),
        .S(w_IF_flush));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \PC_reg_reg[8]_i_3 
       (.CI(\PC_reg_reg[4]_i_3_n_0 ),
        .CO({\PC_reg_reg[8]_i_3_n_0 ,\NLW_PC_reg_reg[8]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\q_reg[155] [11],\PC_reg[8]_i_4_n_0 ,\q_reg[155] [9],\PC_reg[8]_i_5_n_0 }),
        .O(\u_ID/JumpAddr_decode [8:5]),
        .S({\PC_reg[8]_i_6_n_0 ,\PC_reg[8]_i_7_n_0 ,\PC_reg[8]_i_8_n_0 ,\PC_reg[8]_i_9_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    char_tab_i_101
       (.I0(char_tab_i_139_n_0),
        .I1(\PosX_reg_reg[4]_4 ),
        .I2(\PosX_reg_reg[4]_5 ),
        .I3(\q_reg[155] [40]),
        .I4(\PosX_reg_reg[4]_6 ),
        .I5(Instruction_id[26]),
        .O(\TMDSn[2]_2 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    char_tab_i_112
       (.I0(\PosX_reg_reg[4]_3 ),
        .I1(char_tab_i_147_n_0),
        .I2(\q_reg[155] [37]),
        .I3(\PosX_reg_reg[5] ),
        .I4(\q_reg[155] [1]),
        .O(char_tab_i_112_n_0));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    char_tab_i_124
       (.I0(\PosX_reg_reg[4] ),
        .I1(JumpFlag[0]),
        .I2(Instruction_id[0]),
        .I3(\PosX_reg_reg[4]_0 ),
        .I4(Instruction_id[4]),
        .O(\TMDSn[2] ));
  LUT6 #(
    .INIT(64'hCACACACACFC0C0C0)) 
    char_tab_i_133
       (.I0(\q_reg[155] [35]),
        .I1(\q_reg[155] [37]),
        .I2(\PosX_reg_reg[4]_3 ),
        .I3(\q_reg[155] [2]),
        .I4(\PosX_reg_reg[4] ),
        .I5(\PosX_reg_reg[4]_0 ),
        .O(char_tab_i_133_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    char_tab_i_139
       (.I0(\q_reg[155] [42]),
        .I1(\PosX_reg_reg[4]_1 ),
        .I2(\PosX_reg_reg[5]_0 ),
        .I3(\q_reg[155] [2]),
        .I4(char_tab_i_158_n_0),
        .I5(\PosX_reg_reg[4]_7 ),
        .O(char_tab_i_139_n_0));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    char_tab_i_147
       (.I0(\PosX_reg_reg[4] ),
        .I1(JumpFlag[1]),
        .I2(Instruction_id[0]),
        .I3(\PosX_reg_reg[4]_0 ),
        .I4(Instruction_id[6]),
        .O(char_tab_i_147_n_0));
  LUT6 #(
    .INIT(64'hCACACACACFC0C0C0)) 
    char_tab_i_158
       (.I0(Instruction_id[6]),
        .I1(\q_reg[155] [37]),
        .I2(\PosX_reg_reg[4]_3 ),
        .I3(\q_reg[155] [2]),
        .I4(\PosX_reg_reg[4] ),
        .I5(\PosX_reg_reg[4]_0 ),
        .O(char_tab_i_158_n_0));
  LUT4 #(
    .INIT(16'hFFFB)) 
    char_tab_i_160
       (.I0(\mcause[3]_i_2_n_0 ),
        .I1(Instruction_id[0]),
        .I2(\q_reg[155] [2]),
        .I3(\PC_reg[31]_i_11_n_0 ),
        .O(JumpFlag[1]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    char_tab_i_63
       (.I0(\PosX_reg_reg[4]_1 ),
        .I1(char_tab_i_112_n_0),
        .I2(\q_reg[155] [42]),
        .I3(\PosX_reg_reg[4]_2 ),
        .I4(\q_reg[155] [39]),
        .O(\TMDSn[2]_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    char_tab_i_75
       (.I0(Q),
        .I1(\q_reg[155] [2]),
        .I2(\PosX_reg_reg[4]_6 ),
        .I3(\PosX_reg_reg[5]_1 ),
        .O(\TMDSn[2]_4 ));
  LUT2 #(
    .INIT(4'h8)) 
    char_tab_i_77
       (.I0(\q_reg[155] [38]),
        .I1(\PosX_reg_reg[4]_2 ),
        .O(\TMDSn[2]_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    char_tab_i_89
       (.I0(\q_reg[155] [42]),
        .I1(\PosX_reg_reg[4]_1 ),
        .I2(\PosX_reg_reg[5]_0 ),
        .I3(\q_reg[155] [41]),
        .I4(char_tab_i_133_n_0),
        .I5(\PosX_reg_reg[4]_7 ),
        .O(\TMDSn[2]_3 ));
  LUT6 #(
    .INIT(64'hFEFAAEAAAAAAAAAA)) 
    \mcause[0]_i_1 
       (.I0(\mcause[3]_i_2_n_0 ),
        .I1(\mcause_reg[31]_1 [0]),
        .I2(\q_reg[70] [1]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mcause_reg[31]_0 [0]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[10]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [11]),
        .I4(\mcause_reg[31]_1 [10]),
        .O(\mcause_reg[31]_0 [10]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[11]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [12]),
        .I4(\mcause_reg[31]_1 [11]),
        .O(\mcause_reg[31]_0 [11]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[12]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [13]),
        .I4(\mcause_reg[31]_1 [12]),
        .O(\mcause_reg[31]_0 [12]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[13]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [14]),
        .I4(\mcause_reg[31]_1 [13]),
        .O(\mcause_reg[31]_0 [13]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[14]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [15]),
        .I4(\mcause_reg[31]_1 [14]),
        .O(\mcause_reg[31]_0 [14]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[15]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [16]),
        .I4(\mcause_reg[31]_1 [15]),
        .O(\mcause_reg[31]_0 [15]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[16]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [17]),
        .I4(\mcause_reg[31]_1 [16]),
        .O(\mcause_reg[31]_0 [16]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[17]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [18]),
        .I4(\mcause_reg[31]_1 [17]),
        .O(\mcause_reg[31]_0 [17]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[18]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [19]),
        .I4(\mcause_reg[31]_1 [18]),
        .O(\mcause_reg[31]_0 [18]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[19]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [20]),
        .I4(\mcause_reg[31]_1 [19]),
        .O(\mcause_reg[31]_0 [19]));
  LUT5 #(
    .INIT(32'h7A2AFFFF)) 
    \mcause[1]_i_1 
       (.I0(\q_reg[70] [2]),
        .I1(\q_reg[155] [0]),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\mcause_reg[31]_1 [1]),
        .I4(\mepc[31]_i_4_n_0 ),
        .O(\mcause_reg[31]_0 [1]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[20]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [21]),
        .I4(\mcause_reg[31]_1 [20]),
        .O(\mcause_reg[31]_0 [20]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[21]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [22]),
        .I4(\mcause_reg[31]_1 [21]),
        .O(\mcause_reg[31]_0 [21]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[22]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [23]),
        .I4(\mcause_reg[31]_1 [22]),
        .O(\mcause_reg[31]_0 [22]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[23]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [24]),
        .I4(\mcause_reg[31]_1 [23]),
        .O(\mcause_reg[31]_0 [23]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[24]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [25]),
        .I4(\mcause_reg[31]_1 [24]),
        .O(\mcause_reg[31]_0 [24]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[25]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [26]),
        .I4(\mcause_reg[31]_1 [25]),
        .O(\mcause_reg[31]_0 [25]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[26]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [27]),
        .I4(\mcause_reg[31]_1 [26]),
        .O(\mcause_reg[31]_0 [26]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[27]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [28]),
        .I4(\mcause_reg[31]_1 [27]),
        .O(\mcause_reg[31]_0 [27]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[28]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [29]),
        .I4(\mcause_reg[31]_1 [28]),
        .O(\mcause_reg[31]_0 [28]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[29]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [30]),
        .I4(\mcause_reg[31]_1 [29]),
        .O(\mcause_reg[31]_0 [29]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[2]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [3]),
        .I4(\mcause_reg[31]_1 [2]),
        .O(\mcause_reg[31]_0 [2]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[30]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [31]),
        .I4(\mcause_reg[31]_1 [30]),
        .O(\mcause_reg[31]_0 [30]));
  LUT5 #(
    .INIT(32'h2000FFFF)) 
    \mcause[31]_i_1 
       (.I0(\q_reg[155] [39]),
        .I1(\q_reg[155] [38]),
        .I2(Instruction_id[26]),
        .I3(\mepc[31]_i_3_n_0 ),
        .I4(\mepc[31]_i_4_n_0 ),
        .O(\mcause_reg[31] ));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[31]_i_2 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [32]),
        .I4(\mcause_reg[31]_1 [31]),
        .O(\mcause_reg[31]_0 [31]));
  LUT6 #(
    .INIT(64'hFEFAAEAAAAAAAAAA)) 
    \mcause[3]_i_1 
       (.I0(\mcause[3]_i_2_n_0 ),
        .I1(\mcause_reg[31]_1 [3]),
        .I2(\q_reg[70] [4]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mcause_reg[31]_0 [3]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \mcause[3]_i_2 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[26]),
        .I2(\mstatus_reg[0] ),
        .I3(\mcause[3]_i_3_n_0 ),
        .I4(Q),
        .O(\mcause[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \mcause[3]_i_3 
       (.I0(Instruction_id[0]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[4]),
        .I3(\q_reg[155] [2]),
        .I4(\q_reg[155] [1]),
        .I5(\q_reg[155] [0]),
        .O(\mcause[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[4]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [5]),
        .I4(\mcause_reg[31]_1 [4]),
        .O(\mcause_reg[31]_0 [4]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[5]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [6]),
        .I4(\mcause_reg[31]_1 [5]),
        .O(\mcause_reg[31]_0 [5]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[6]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [7]),
        .I4(\mcause_reg[31]_1 [6]),
        .O(\mcause_reg[31]_0 [6]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[7]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [8]),
        .I4(\mcause_reg[31]_1 [7]),
        .O(\mcause_reg[31]_0 [7]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[8]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [9]),
        .I4(\mcause_reg[31]_1 [8]),
        .O(\mcause_reg[31]_0 [8]));
  LUT5 #(
    .INIT(32'h88A08800)) 
    \mcause[9]_i_1 
       (.I0(\mepc[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\q_reg[70] [10]),
        .I4(\mcause_reg[31]_1 [9]),
        .O(\mcause_reg[31]_0 [9]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[0]_i_1 
       (.I0(\q_reg[155] [3]),
        .I1(\mepc_reg[31]_1 [0]),
        .I2(\q_reg[70] [1]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [0]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[10]_i_1 
       (.I0(\q_reg[155] [13]),
        .I1(\mepc_reg[31]_1 [10]),
        .I2(\q_reg[70] [11]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [10]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[11]_i_1 
       (.I0(\q_reg[155] [14]),
        .I1(\mepc_reg[31]_1 [11]),
        .I2(\q_reg[70] [12]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [11]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[12]_i_1 
       (.I0(\q_reg[155] [15]),
        .I1(\mepc_reg[31]_1 [12]),
        .I2(\q_reg[70] [13]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [12]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[13]_i_1 
       (.I0(\q_reg[155] [16]),
        .I1(\mepc_reg[31]_1 [13]),
        .I2(\q_reg[70] [14]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [13]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[14]_i_1 
       (.I0(\q_reg[155] [17]),
        .I1(\mepc_reg[31]_1 [14]),
        .I2(\q_reg[70] [15]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [14]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[15]_i_1 
       (.I0(\q_reg[155] [18]),
        .I1(\mepc_reg[31]_1 [15]),
        .I2(\q_reg[70] [16]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [15]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[16]_i_1 
       (.I0(\q_reg[155] [19]),
        .I1(\mepc_reg[31]_1 [16]),
        .I2(\q_reg[70] [17]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [16]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[17]_i_1 
       (.I0(\q_reg[155] [20]),
        .I1(\mepc_reg[31]_1 [17]),
        .I2(\q_reg[70] [18]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [17]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[18]_i_1 
       (.I0(\q_reg[155] [21]),
        .I1(\mepc_reg[31]_1 [18]),
        .I2(\q_reg[70] [19]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [18]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[19]_i_1 
       (.I0(\q_reg[155] [22]),
        .I1(\mepc_reg[31]_1 [19]),
        .I2(\q_reg[70] [20]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [19]));
  LUT6 #(
    .INIT(64'h7A2AFFFF7A2A0000)) 
    \mepc[1]_i_1 
       (.I0(\q_reg[70] [2]),
        .I1(\q_reg[155] [0]),
        .I2(\mtvec[31]_i_4_n_0 ),
        .I3(\mepc_reg[31]_1 [1]),
        .I4(\mepc[31]_i_4_n_0 ),
        .I5(\q_reg[155] [4]),
        .O(\mepc_reg[31]_0 [1]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[20]_i_1 
       (.I0(\q_reg[155] [23]),
        .I1(\mepc_reg[31]_1 [20]),
        .I2(\q_reg[70] [21]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [20]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[21]_i_1 
       (.I0(\q_reg[155] [24]),
        .I1(\mepc_reg[31]_1 [21]),
        .I2(\q_reg[70] [22]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [21]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[22]_i_1 
       (.I0(\q_reg[155] [25]),
        .I1(\mepc_reg[31]_1 [22]),
        .I2(\q_reg[70] [23]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [22]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[23]_i_1 
       (.I0(\q_reg[155] [26]),
        .I1(\mepc_reg[31]_1 [23]),
        .I2(\q_reg[70] [24]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [23]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[24]_i_1 
       (.I0(\q_reg[155] [27]),
        .I1(\mepc_reg[31]_1 [24]),
        .I2(\q_reg[70] [25]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [24]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[25]_i_1 
       (.I0(\q_reg[155] [28]),
        .I1(\mepc_reg[31]_1 [25]),
        .I2(\q_reg[70] [26]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [25]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[26]_i_1 
       (.I0(\q_reg[155] [29]),
        .I1(\mepc_reg[31]_1 [26]),
        .I2(\q_reg[70] [27]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [26]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[27]_i_1 
       (.I0(\q_reg[155] [30]),
        .I1(\mepc_reg[31]_1 [27]),
        .I2(\q_reg[70] [28]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [27]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[28]_i_1 
       (.I0(\q_reg[155] [31]),
        .I1(\mepc_reg[31]_1 [28]),
        .I2(\q_reg[70] [29]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [28]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[29]_i_1 
       (.I0(\q_reg[155] [32]),
        .I1(\mepc_reg[31]_1 [29]),
        .I2(\q_reg[70] [30]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [29]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[2]_i_1 
       (.I0(\q_reg[155] [5]),
        .I1(\mepc_reg[31]_1 [2]),
        .I2(\q_reg[70] [3]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [2]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[30]_i_1 
       (.I0(\q_reg[155] [33]),
        .I1(\mepc_reg[31]_1 [30]),
        .I2(\q_reg[70] [31]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [30]));
  LUT5 #(
    .INIT(32'h2000FFFF)) 
    \mepc[31]_i_1 
       (.I0(\q_reg[155] [38]),
        .I1(\q_reg[155] [39]),
        .I2(Instruction_id[26]),
        .I3(\mepc[31]_i_3_n_0 ),
        .I4(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31] ));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[31]_i_2 
       (.I0(\q_reg[155] [34]),
        .I1(\mepc_reg[31]_1 [31]),
        .I2(\q_reg[70] [32]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [31]));
  LUT4 #(
    .INIT(16'h0004)) 
    \mepc[31]_i_3 
       (.I0(\mstatus[31]_i_4_n_0 ),
        .I1(Q),
        .I2(\q_reg[155] [40]),
        .I3(\q_reg[155] [2]),
        .O(\mepc[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h000008CC)) 
    \mepc[31]_i_4 
       (.I0(Instruction_id[6]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[4]),
        .I3(\q_reg[155] [2]),
        .I4(\mcause[3]_i_2_n_0 ),
        .O(\mepc[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[3]_i_1 
       (.I0(\q_reg[155] [6]),
        .I1(\mepc_reg[31]_1 [3]),
        .I2(\q_reg[70] [4]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [3]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[4]_i_1 
       (.I0(\q_reg[155] [7]),
        .I1(\mepc_reg[31]_1 [4]),
        .I2(\q_reg[70] [5]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [4]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[5]_i_1 
       (.I0(\q_reg[155] [8]),
        .I1(\mepc_reg[31]_1 [5]),
        .I2(\q_reg[70] [6]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [5]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[6]_i_1 
       (.I0(\q_reg[155] [9]),
        .I1(\mepc_reg[31]_1 [6]),
        .I2(\q_reg[70] [7]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [6]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[7]_i_1 
       (.I0(\q_reg[155] [10]),
        .I1(\mepc_reg[31]_1 [7]),
        .I2(\q_reg[70] [8]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [7]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[8]_i_1 
       (.I0(\q_reg[155] [11]),
        .I1(\mepc_reg[31]_1 [8]),
        .I2(\q_reg[70] [9]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [8]));
  LUT6 #(
    .INIT(64'hFCF00C00AAAAAAAA)) 
    \mepc[9]_i_1 
       (.I0(\q_reg[155] [12]),
        .I1(\mepc_reg[31]_1 [9]),
        .I2(\q_reg[70] [10]),
        .I3(\mtvec[31]_i_4_n_0 ),
        .I4(\mtvec[31]_i_5_n_0 ),
        .I5(\mepc[31]_i_4_n_0 ),
        .O(\mepc_reg[31]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[0]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [1]),
        .I3(\mstatus_reg[31]_0 [0]),
        .O(\mstatus_reg[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[10]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [11]),
        .I3(\mstatus_reg[31]_0 [10]),
        .O(\mstatus_reg[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[11]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [12]),
        .I3(\mstatus_reg[31]_0 [11]),
        .O(\mstatus_reg[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[12]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [13]),
        .I3(\mstatus_reg[31]_0 [12]),
        .O(\mstatus_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[13]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [14]),
        .I3(\mstatus_reg[31]_0 [13]),
        .O(\mstatus_reg[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[14]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [15]),
        .I3(\mstatus_reg[31]_0 [14]),
        .O(\mstatus_reg[31] [14]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[15]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [16]),
        .I3(\mstatus_reg[31]_0 [15]),
        .O(\mstatus_reg[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[16]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [17]),
        .I3(\mstatus_reg[31]_0 [16]),
        .O(\mstatus_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[17]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [18]),
        .I3(\mstatus_reg[31]_0 [17]),
        .O(\mstatus_reg[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[18]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [19]),
        .I3(\mstatus_reg[31]_0 [18]),
        .O(\mstatus_reg[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[19]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [20]),
        .I3(\mstatus_reg[31]_0 [19]),
        .O(\mstatus_reg[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'h3F88)) 
    \mstatus[1]_i_1 
       (.I0(\mstatus_reg[31]_0 [1]),
        .I1(\mtvec[31]_i_4_n_0 ),
        .I2(\q_reg[155] [0]),
        .I3(\q_reg[70] [2]),
        .O(\mstatus_reg[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[20]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [21]),
        .I3(\mstatus_reg[31]_0 [20]),
        .O(\mstatus_reg[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[21]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [22]),
        .I3(\mstatus_reg[31]_0 [21]),
        .O(\mstatus_reg[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[22]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [23]),
        .I3(\mstatus_reg[31]_0 [22]),
        .O(\mstatus_reg[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[23]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [24]),
        .I3(\mstatus_reg[31]_0 [23]),
        .O(\mstatus_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[24]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [25]),
        .I3(\mstatus_reg[31]_0 [24]),
        .O(\mstatus_reg[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[25]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [26]),
        .I3(\mstatus_reg[31]_0 [25]),
        .O(\mstatus_reg[31] [25]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[26]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [27]),
        .I3(\mstatus_reg[31]_0 [26]),
        .O(\mstatus_reg[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[27]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [28]),
        .I3(\mstatus_reg[31]_0 [27]),
        .O(\mstatus_reg[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[28]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [29]),
        .I3(\mstatus_reg[31]_0 [28]),
        .O(\mstatus_reg[31] [28]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[29]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [30]),
        .I3(\mstatus_reg[31]_0 [29]),
        .O(\mstatus_reg[31] [29]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[2]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [3]),
        .I3(\mstatus_reg[31]_0 [2]),
        .O(\mstatus_reg[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[30]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [31]),
        .I3(\mstatus_reg[31]_0 [30]),
        .O(\mstatus_reg[31] [30]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \mstatus[31]_i_1 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[26]),
        .I2(\mstatus_reg[0] ),
        .I3(\mstatus[31]_i_4_n_0 ),
        .I4(Q),
        .O(\mstatus_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[31]_i_2 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [32]),
        .I3(\mstatus_reg[31]_0 [31]),
        .O(\mstatus_reg[31] [31]));
  LUT4 #(
    .INIT(16'h0001)) 
    \mstatus[31]_i_3 
       (.I0(\q_reg[155] [39]),
        .I1(\q_reg[155] [2]),
        .I2(\q_reg[155] [40]),
        .I3(\q_reg[155] [38]),
        .O(\mstatus_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF3FFF7FFF)) 
    \mstatus[31]_i_4 
       (.I0(\q_reg[155] [1]),
        .I1(Instruction_id[4]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[0]),
        .I4(\q_reg[155] [0]),
        .I5(\q_reg[155] [2]),
        .O(\mstatus[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[3]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [4]),
        .I3(\mstatus_reg[31]_0 [3]),
        .O(\mstatus_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[4]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [5]),
        .I3(\mstatus_reg[31]_0 [4]),
        .O(\mstatus_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[5]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [6]),
        .I3(\mstatus_reg[31]_0 [5]),
        .O(\mstatus_reg[31] [5]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[6]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [7]),
        .I3(\mstatus_reg[31]_0 [6]),
        .O(\mstatus_reg[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[7]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [8]),
        .I3(\mstatus_reg[31]_0 [7]),
        .O(\mstatus_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[8]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [9]),
        .I3(\mstatus_reg[31]_0 [8]),
        .O(\mstatus_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mstatus[9]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [10]),
        .I3(\mstatus_reg[31]_0 [9]),
        .O(\mstatus_reg[31] [9]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[0]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [1]),
        .I3(\mtvec_reg[31]_0 [0]),
        .O(\mtvec_reg[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[10]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [11]),
        .I3(\mtvec_reg[31]_0 [10]),
        .O(\mtvec_reg[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[11]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [12]),
        .I3(\mtvec_reg[31]_0 [11]),
        .O(\mtvec_reg[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[12]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [13]),
        .I3(\mtvec_reg[31]_0 [12]),
        .O(\mtvec_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[13]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [14]),
        .I3(\mtvec_reg[31]_0 [13]),
        .O(\mtvec_reg[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[14]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [15]),
        .I3(\mtvec_reg[31]_0 [14]),
        .O(\mtvec_reg[31] [14]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[15]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [16]),
        .I3(\mtvec_reg[31]_0 [15]),
        .O(\mtvec_reg[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[16]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [17]),
        .I3(\mtvec_reg[31]_0 [16]),
        .O(\mtvec_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[17]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [18]),
        .I3(\mtvec_reg[31]_0 [17]),
        .O(\mtvec_reg[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[18]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [19]),
        .I3(\mtvec_reg[31]_0 [18]),
        .O(\mtvec_reg[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[19]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [20]),
        .I3(\mtvec_reg[31]_0 [19]),
        .O(\mtvec_reg[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'h3F88)) 
    \mtvec[1]_i_1 
       (.I0(\mtvec_reg[31]_0 [1]),
        .I1(\mtvec[31]_i_4_n_0 ),
        .I2(\q_reg[155] [0]),
        .I3(\q_reg[70] [2]),
        .O(\mtvec_reg[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[20]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [21]),
        .I3(\mtvec_reg[31]_0 [20]),
        .O(\mtvec_reg[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[21]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [22]),
        .I3(\mtvec_reg[31]_0 [21]),
        .O(\mtvec_reg[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[22]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [23]),
        .I3(\mtvec_reg[31]_0 [22]),
        .O(\mtvec_reg[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[23]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [24]),
        .I3(\mtvec_reg[31]_0 [23]),
        .O(\mtvec_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[24]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [25]),
        .I3(\mtvec_reg[31]_0 [24]),
        .O(\mtvec_reg[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[25]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [26]),
        .I3(\mtvec_reg[31]_0 [25]),
        .O(\mtvec_reg[31] [25]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[26]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [27]),
        .I3(\mtvec_reg[31]_0 [26]),
        .O(\mtvec_reg[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[27]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [28]),
        .I3(\mtvec_reg[31]_0 [27]),
        .O(\mtvec_reg[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[28]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [29]),
        .I3(\mtvec_reg[31]_0 [28]),
        .O(\mtvec_reg[31] [28]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[29]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [30]),
        .I3(\mtvec_reg[31]_0 [29]),
        .O(\mtvec_reg[31] [29]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[2]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [3]),
        .I3(\mtvec_reg[31]_0 [2]),
        .O(\mtvec_reg[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[30]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [31]),
        .I3(\mtvec_reg[31]_0 [30]),
        .O(\mtvec_reg[31] [30]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \mtvec[31]_i_1 
       (.I0(\mtvec[31]_i_3_n_0 ),
        .I1(\q_reg[155] [2]),
        .I2(Instruction_id[26]),
        .I3(\q_reg[155] [40]),
        .I4(\q_reg[155] [39]),
        .I5(\q_reg[155] [38]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[31]_i_2 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [32]),
        .I3(\mtvec_reg[31]_0 [31]),
        .O(\mtvec_reg[31] [31]));
  LUT2 #(
    .INIT(4'h2)) 
    \mtvec[31]_i_3 
       (.I0(Q),
        .I1(\mstatus[31]_i_4_n_0 ),
        .O(\mtvec[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mtvec[31]_i_4 
       (.I0(Instruction_id[0]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[4]),
        .I3(\q_reg[155] [1]),
        .I4(\q_reg[155] [2]),
        .O(\mtvec[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \mtvec[31]_i_5 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [0]),
        .I4(\q_reg[155] [2]),
        .I5(\q_reg[155] [1]),
        .O(\mtvec[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[3]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [4]),
        .I3(\mtvec_reg[31]_0 [3]),
        .O(\mtvec_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[4]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [5]),
        .I3(\mtvec_reg[31]_0 [4]),
        .O(\mtvec_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[5]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [6]),
        .I3(\mtvec_reg[31]_0 [5]),
        .O(\mtvec_reg[31] [5]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[6]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [7]),
        .I3(\mtvec_reg[31]_0 [6]),
        .O(\mtvec_reg[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[7]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [8]),
        .I3(\mtvec_reg[31]_0 [7]),
        .O(\mtvec_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[8]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [9]),
        .I3(\mtvec_reg[31]_0 [8]),
        .O(\mtvec_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'hCAC0)) 
    \mtvec[9]_i_1 
       (.I0(\mtvec[31]_i_4_n_0 ),
        .I1(\mtvec[31]_i_5_n_0 ),
        .I2(\q_reg[70] [10]),
        .I3(\mtvec_reg[31]_0 [9]),
        .O(\mtvec_reg[31] [9]));
  LUT2 #(
    .INIT(4'h1)) 
    \q[113]_i_3 
       (.I0(\q_reg[155] [41]),
        .I1(\q_reg[155] [42]),
        .O(\q_reg[112] ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \q[114]_i_1 
       (.I0(\q[116]_i_2_n_0 ),
        .I1(\q_reg[155] [38]),
        .I2(\mstatus_reg[0]_1 ),
        .I3(\q_reg[114] ),
        .O(\q_reg[155] [43]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \q[115]_i_1 
       (.I0(\q[116]_i_2_n_0 ),
        .I1(\q_reg[155] [39]),
        .I2(\mstatus_reg[1] ),
        .I3(\q_reg[114] ),
        .O(\q_reg[155] [44]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \q[116]_i_1 
       (.I0(\q[116]_i_2_n_0 ),
        .I1(\q_reg[155] [40]),
        .I2(\mstatus_reg[2] ),
        .I3(\q_reg[114] ),
        .O(\q_reg[155] [45]));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0F0FFFF)) 
    \q[116]_i_2 
       (.I0(\q_reg[155] [0]),
        .I1(\q_reg[155] [1]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(Instruction_id[0]),
        .I5(\q_reg[155] [2]),
        .O(\q[116]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \q[120]_i_1 
       (.I0(\q[123]_i_2_n_0 ),
        .I1(Instruction_id[26]),
        .I2(\mstatus_reg[6] ),
        .I3(\q_reg[114] ),
        .O(\q_reg[155] [46]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \q[122]_i_1 
       (.I0(\q[123]_i_2_n_0 ),
        .I1(Q),
        .I2(\mstatus_reg[8] ),
        .I3(\q_reg[114] ),
        .O(\q_reg[155] [47]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \q[123]_i_1 
       (.I0(\q[123]_i_2_n_0 ),
        .I1(Q),
        .I2(\mstatus_reg[9] ),
        .I3(\q_reg[114] ),
        .O(\q_reg[155] [48]));
  LUT6 #(
    .INIT(64'hFFBBFFFBFFBBBFBB)) 
    \q[123]_i_2 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[4]),
        .I3(Instruction_id[6]),
        .I4(\q_reg[155] [1]),
        .I5(\q_reg[155] [0]),
        .O(\q[123]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01000001)) 
    \q[145]_i_3 
       (.I0(\q_reg[155] [2]),
        .I1(\q_reg[155] [40]),
        .I2(\q_reg[155] [38]),
        .I3(Instruction_id[26]),
        .I4(\q_reg[155] [39]),
        .O(\q_reg[145]_0 ));
  LUT5 #(
    .INIT(32'h01000001)) 
    \q[145]_i_4 
       (.I0(\q_reg[155] [2]),
        .I1(\q_reg[155] [40]),
        .I2(\q_reg[155] [39]),
        .I3(\q_reg[155] [38]),
        .I4(Instruction_id[26]),
        .O(\q_reg[145] ));
  LUT6 #(
    .INIT(64'h0000000002200802)) 
    \q[145]_i_5 
       (.I0(\mtvec[31]_i_3_n_0 ),
        .I1(\q_reg[155] [39]),
        .I2(\q_reg[155] [40]),
        .I3(Instruction_id[26]),
        .I4(\q_reg[155] [38]),
        .I5(\q_reg[155] [2]),
        .O(\q_reg[114] ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \q[146]_i_1 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .O(\q_reg[155] [49]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \q[147]_i_1 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .O(\q_reg[155] [50]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \q[149]_i_1 
       (.I0(Instruction_id[0]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[4]),
        .I3(\q_reg[155] [1]),
        .I4(\q_reg[155] [0]),
        .I5(\q_reg[155] [2]),
        .O(\q_reg[155] [51]));
  LUT6 #(
    .INIT(64'h00A000A000800000)) 
    \q[150]_i_1 
       (.I0(Instruction_id[4]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[0]),
        .I3(\q_reg[155] [2]),
        .I4(\q_reg[155] [1]),
        .I5(\q_reg[155] [0]),
        .O(\q_reg[155] [52]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \q[151]_i_1 
       (.I0(Instruction_id[0]),
        .I1(Instruction_id[6]),
        .I2(Instruction_id[4]),
        .I3(\q_reg[155] [1]),
        .I4(\q_reg[155] [0]),
        .I5(\q_reg[155] [2]),
        .O(\q_reg[155] [53]));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[152]_i_1 
       (.I0(\q_reg[155] [2]),
        .I1(Instruction_id[0]),
        .I2(Instruction_id[6]),
        .I3(Instruction_id[4]),
        .I4(\q_reg[155] [1]),
        .O(\q_reg[155] [54]));
  LUT4 #(
    .INIT(16'h0010)) 
    \q[153]_i_1 
       (.I0(Instruction_id[4]),
        .I1(\q_reg[155] [2]),
        .I2(Instruction_id[0]),
        .I3(Instruction_id[6]),
        .O(\q_reg[155] [55]));
  LUT6 #(
    .INIT(64'h0F000000E0FF0000)) 
    \q[155]_i_2 
       (.I0(\q_reg[155] [0]),
        .I1(\q_reg[155] [1]),
        .I2(Instruction_id[4]),
        .I3(Instruction_id[6]),
        .I4(Instruction_id[0]),
        .I5(\q_reg[155] [2]),
        .O(\q_reg[155] [56]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \q[51]_i_4 
       (.I0(ReadData20[1]),
        .I1(\q_reg[155] [38]),
        .I2(\q_reg[155] [40]),
        .I3(\q_reg[155] [2]),
        .I4(\q_reg[155] [39]),
        .O(\q_reg[51]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \q[63]_i_1__0 
       (.I0(SR),
        .I1(w_IF_flush),
        .O(\q[63]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[0] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [0]),
        .Q(Instruction_id[0]),
        .S(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [6]),
        .Q(\q_reg[155] [37]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [7]),
        .Q(\q_reg[155] [0]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [8]),
        .Q(\q_reg[155] [1]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [9]),
        .Q(\q_reg[155] [41]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [10]),
        .Q(\q_reg[155] [42]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [11]),
        .Q(\q_reg[155] [38]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [12]),
        .Q(\q_reg[155] [39]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [13]),
        .Q(\q_reg[155] [40]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [14]),
        .Q(Instruction_id[26]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [15]),
        .Q(Q),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[32] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [16]),
        .Q(\q_reg[155] [3]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[33] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [17]),
        .Q(\q_reg[155] [4]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[34] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [18]),
        .Q(\q_reg[155] [5]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[35] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [19]),
        .Q(\q_reg[155] [6]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[36] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [20]),
        .Q(\q_reg[155] [7]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[37] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [21]),
        .Q(\q_reg[155] [8]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[38] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [22]),
        .Q(\q_reg[155] [9]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[39] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [23]),
        .Q(\q_reg[155] [10]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [1]),
        .Q(\q_reg[155] [2]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[40] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [24]),
        .Q(\q_reg[155] [11]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[41] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [25]),
        .Q(\q_reg[155] [12]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[42] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [26]),
        .Q(\q_reg[155] [13]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[43] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [27]),
        .Q(\q_reg[155] [14]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[44] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [28]),
        .Q(\q_reg[155] [15]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[45] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [29]),
        .Q(\q_reg[155] [16]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[46] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [30]),
        .Q(\q_reg[155] [17]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[47] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [31]),
        .Q(\q_reg[155] [18]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[48] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [32]),
        .Q(\q_reg[155] [19]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[49] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [33]),
        .Q(\q_reg[155] [20]),
        .R(\q[63]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[4] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [2]),
        .Q(Instruction_id[4]),
        .S(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[50] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [34]),
        .Q(\q_reg[155] [21]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[51] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [35]),
        .Q(\q_reg[155] [22]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[52] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [36]),
        .Q(\q_reg[155] [23]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[53] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [37]),
        .Q(\q_reg[155] [24]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[54] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [38]),
        .Q(\q_reg[155] [25]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[55] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [39]),
        .Q(\q_reg[155] [26]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[56] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [40]),
        .Q(\q_reg[155] [27]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[57] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [41]),
        .Q(\q_reg[155] [28]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[58] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [42]),
        .Q(\q_reg[155] [29]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[59] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [43]),
        .Q(\q_reg[155] [30]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[60] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [44]),
        .Q(\q_reg[155] [31]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[61] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [45]),
        .Q(\q_reg[155] [32]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[62] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [46]),
        .Q(\q_reg[155] [33]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[63] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [47]),
        .Q(\q_reg[155] [34]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [3]),
        .Q(Instruction_id[6]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [4]),
        .Q(\q_reg[155] [35]),
        .R(\q[63]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(cpu_clk_BUFG),
        .CE(\q_reg[37]_0 ),
        .D(\PC_reg_reg[31] [5]),
        .Q(\q_reg[155] [36]),
        .R(\q[63]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "DFF" *) 
module DFF__parameterized0
   (Stall,
    \TMDSn[2] ,
    \TMDSn[2]_0 ,
    Q,
    \TMDSn[2]_1 ,
    \q_reg[55]_0 ,
    \TMDSn[2]_2 ,
    \TMDSn[2]_3 ,
    \TMDSn[2]_4 ,
    \TMDSn[2]_5 ,
    \TMDSn[2]_6 ,
    \TMDSn[2]_7 ,
    \TMDSn[2]_8 ,
    \TMDSn[2]_9 ,
    \TMDSn[2]_10 ,
    \TMDSn[2]_11 ,
    \TMDSn[2]_12 ,
    \q_reg[43] ,
    \q_reg[47]_0 ,
    \q_reg[47]_1 ,
    \q_reg[47]_2 ,
    \q_reg[47]_3 ,
    \q_reg[48] ,
    \q_reg[48]_0 ,
    \q_reg[50]_0 ,
    \q_reg[55]_1 ,
    \q_reg[52]_0 ,
    \q_reg[54]_0 ,
    \q_reg[56]_0 ,
    \q_reg[58]_0 ,
    \q_reg[60]_0 ,
    \q_reg[62]_0 ,
    \q_reg[64]_0 ,
    \q_reg[66]_0 ,
    \q_reg[68]_0 ,
    \q_reg[70]_0 ,
    \q_reg[72]_0 ,
    \q_reg[74]_0 ,
    \q_reg[44] ,
    \q_reg[49] ,
    \q_reg[63]_0 ,
    \q_reg[63]_1 ,
    \q_reg[63]_2 ,
    \q_reg[63]_3 ,
    \q_reg[60]_1 ,
    \q_reg[60]_2 ,
    \q_reg[61]_0 ,
    \q_reg[62]_1 ,
    \q_reg[43]_0 ,
    \q_reg[43]_1 ,
    \q_reg[66]_1 ,
    \q_reg[66]_2 ,
    \q_reg[65]_0 ,
    \q_reg[71]_0 ,
    \q_reg[66]_3 ,
    \q_reg[74]_1 ,
    \q_reg[74]_2 ,
    \q_reg[49]_0 ,
    \q_reg[50]_1 ,
    \q_reg[43]_2 ,
    \q_reg[45]_0 ,
    \q_reg[46] ,
    \q_reg[74]_3 ,
    \q_reg[63]_4 ,
    \q_reg[65]_1 ,
    \q_reg[44]_0 ,
    \q_reg[49]_1 ,
    \q_reg[51]_0 ,
    \q_reg[45]_1 ,
    \q_reg[43]_3 ,
    \q_reg[71]_1 ,
    \q_reg[69]_0 ,
    \q_reg[65]_2 ,
    \q_reg[68]_1 ,
    \q_reg[70]_1 ,
    \q_reg[72]_1 ,
    \q_reg[67]_0 ,
    \q_reg[69]_1 ,
    \q_reg[45]_2 ,
    \q_reg[45]_3 ,
    \q_reg[48]_1 ,
    \q_reg[49]_2 ,
    \q_reg[50]_2 ,
    \q_reg[50]_3 ,
    \q_reg[52]_1 ,
    \q_reg[52]_2 ,
    \q_reg[53]_0 ,
    \q_reg[50]_4 ,
    \q_reg[52]_3 ,
    \q_reg[53]_1 ,
    \q_reg[54]_1 ,
    \q_reg[60]_3 ,
    \q_reg[59]_0 ,
    \q_reg[59]_1 ,
    \q_reg[61]_1 ,
    \q_reg[72]_2 ,
    E,
    SR,
    D,
    \PosX_reg_reg[4] ,
    \PosX_reg_reg[4]_0 ,
    \PosX_reg_reg[4]_1 ,
    \PosX_reg_reg[4]_2 ,
    \q_reg[152]_0 ,
    \PosX_reg_reg[4]_3 ,
    \PosX_reg_reg[5] ,
    \PosX_reg_reg[4]_4 ,
    \q_reg[147]_0 ,
    \q_reg[152]_1 ,
    \PosX_reg_reg[4]_5 ,
    \q_reg[151]_0 ,
    \q_reg[151]_1 ,
    \q_reg[152]_2 ,
    \PosX_reg_reg[4]_6 ,
    spo,
    \PosX_reg_reg[5]_0 ,
    PosY__0,
    \q_reg[149]_0 ,
    \q_reg[152]_3 ,
    \q_reg[56]_1 ,
    \q_reg[57]_0 ,
    \q_reg[58]_1 ,
    \q_reg[82]_0 ,
    \q_reg[50]_5 ,
    \q_reg[146]_0 ,
    \q_reg[149]_1 ,
    \q_reg[150]_0 ,
    \q_reg[146]_1 ,
    \q_reg[7]_0 ,
    \q_reg[146]_2 ,
    ALU_A,
    \q_reg[146]_3 ,
    \q_reg[146]_4 ,
    \q_reg[149]_2 ,
    \q_reg[91]_0 ,
    \q_reg[146]_5 ,
    \q_reg[146]_6 ,
    \q_reg[147]_1 ,
    \q_reg[147]_2 ,
    \q_reg[146]_7 ,
    \q_reg[92]_0 ,
    \q_reg[151]_2 ,
    \q_reg[151]_3 ,
    \q_reg[15]_0 ,
    \q_reg[149]_3 ,
    \q_reg[149]_4 ,
    \q_reg[149]_5 ,
    \q_reg[151]_4 ,
    \q_reg[19]_0 ,
    \q_reg[151]_5 ,
    \q_reg[147]_3 ,
    \q_reg[151]_6 ,
    \q_reg[23]_0 ,
    \q_reg[149]_6 ,
    \q_reg[149]_7 ,
    \q_reg[149]_8 ,
    \q_reg[151]_7 ,
    \q_reg[27]_0 ,
    \q_reg[29]_0 ,
    \q_reg[6]_0 ,
    \q_reg[10]_0 ,
    \q_reg[116]_0 ,
    \q_reg[51]_1 ,
    \q_reg[116]_1 ,
    \q_reg[147]_4 ,
    \q_reg[149]_9 ,
    \q_reg[15]_1 ,
    \q_reg[147]_5 ,
    \q_reg[15]_2 ,
    \q_reg[19]_1 ,
    \q_reg[147]_6 ,
    \q_reg[147]_7 ,
    \q_reg[149]_10 ,
    \q_reg[34]_0 ,
    \q_reg[32]_0 ,
    \q_reg[147]_8 ,
    \q_reg[147]_9 ,
    \q_reg[147]_10 ,
    \q_reg[23]_1 ,
    \q_reg[147]_11 ,
    \q_reg[149]_11 ,
    \q_reg[51]_2 ,
    \q_reg[147]_12 ,
    \q_reg[147]_13 ,
    \q_reg[149]_12 ,
    \q_reg[147]_14 ,
    \q_reg[147]_15 ,
    \q_reg[147]_16 ,
    \q_reg[147]_17 ,
    \q_reg[147]_18 ,
    \q_reg[147]_19 ,
    \q_reg[7]_1 ,
    \q_reg[5]_0 ,
    \q_reg[116]_2 ,
    \q_reg[5]_1 ,
    \q_reg[82]_1 ,
    \q_reg[149]_13 ,
    \q_reg[82]_2 ,
    \q_reg[23]_2 ,
    \q_reg[9]_0 ,
    \q_reg[5]_2 ,
    \q_reg[90]_0 ,
    \q_reg[15]_3 ,
    \q_reg[9]_1 ,
    \q_reg[91]_1 ,
    \q_reg[16]_0 ,
    \q_reg[10]_1 ,
    \q_reg[146]_8 ,
    \q_reg[6]_1 ,
    \q_reg[6]_2 ,
    \q_reg[17]_0 ,
    \q_reg[92]_1 ,
    \q_reg[27]_1 ,
    \q_reg[15]_4 ,
    \q_reg[17]_1 ,
    \q_reg[92]_2 ,
    \q_reg[18]_0 ,
    \q_reg[4]_0 ,
    \q_reg[14]_0 ,
    \q_reg[27]_2 ,
    \q_reg[28]_0 ,
    \q_reg[16]_1 ,
    \q_reg[18]_1 ,
    \q_reg[30]_0 ,
    \q_reg[30]_1 ,
    \q_reg[92]_3 ,
    \q_reg[152]_4 ,
    \q_reg[116]_3 ,
    \q_reg[152]_5 ,
    \q_reg[15]_5 ,
    \q_reg[16]_2 ,
    \q_reg[26]_0 ,
    \q_reg[17]_2 ,
    \q_reg[116]_4 ,
    \q_reg[27]_3 ,
    \q_reg[116]_5 ,
    \q_reg[116]_6 ,
    \q_reg[51]_3 ,
    \q_reg[26]_1 ,
    \q_reg[51]_4 ,
    \q_reg[51]_5 ,
    \q_reg[34]_1 ,
    \q_reg[116]_7 ,
    \q_reg[31]_0 ,
    \q_reg[32]_1 ,
    \q_reg[12]_0 ,
    cpu_clk_BUFG);
  output Stall;
  output \TMDSn[2] ;
  output \TMDSn[2]_0 ;
  output [146:0]Q;
  output \TMDSn[2]_1 ;
  output \q_reg[55]_0 ;
  output \TMDSn[2]_2 ;
  output \TMDSn[2]_3 ;
  output \TMDSn[2]_4 ;
  output \TMDSn[2]_5 ;
  output \TMDSn[2]_6 ;
  output \TMDSn[2]_7 ;
  output \TMDSn[2]_8 ;
  output \TMDSn[2]_9 ;
  output \TMDSn[2]_10 ;
  output \TMDSn[2]_11 ;
  output \TMDSn[2]_12 ;
  output \q_reg[43] ;
  output \q_reg[47]_0 ;
  output \q_reg[47]_1 ;
  output \q_reg[47]_2 ;
  output \q_reg[47]_3 ;
  output \q_reg[48] ;
  output \q_reg[48]_0 ;
  output \q_reg[50]_0 ;
  output \q_reg[55]_1 ;
  output \q_reg[52]_0 ;
  output \q_reg[54]_0 ;
  output \q_reg[56]_0 ;
  output \q_reg[58]_0 ;
  output \q_reg[60]_0 ;
  output \q_reg[62]_0 ;
  output \q_reg[64]_0 ;
  output \q_reg[66]_0 ;
  output \q_reg[68]_0 ;
  output \q_reg[70]_0 ;
  output \q_reg[72]_0 ;
  output \q_reg[74]_0 ;
  output \q_reg[44] ;
  output \q_reg[49] ;
  output \q_reg[63]_0 ;
  output \q_reg[63]_1 ;
  output \q_reg[63]_2 ;
  output \q_reg[63]_3 ;
  output \q_reg[60]_1 ;
  output \q_reg[60]_2 ;
  output \q_reg[61]_0 ;
  output \q_reg[62]_1 ;
  output \q_reg[43]_0 ;
  output \q_reg[43]_1 ;
  output \q_reg[66]_1 ;
  output \q_reg[66]_2 ;
  output \q_reg[65]_0 ;
  output \q_reg[71]_0 ;
  output \q_reg[66]_3 ;
  output \q_reg[74]_1 ;
  output \q_reg[74]_2 ;
  output \q_reg[49]_0 ;
  output \q_reg[50]_1 ;
  output \q_reg[43]_2 ;
  output \q_reg[45]_0 ;
  output \q_reg[46] ;
  output \q_reg[74]_3 ;
  output \q_reg[63]_4 ;
  output \q_reg[65]_1 ;
  output \q_reg[44]_0 ;
  output \q_reg[49]_1 ;
  output \q_reg[51]_0 ;
  output \q_reg[45]_1 ;
  output \q_reg[43]_3 ;
  output \q_reg[71]_1 ;
  output \q_reg[69]_0 ;
  output \q_reg[65]_2 ;
  output \q_reg[68]_1 ;
  output \q_reg[70]_1 ;
  output \q_reg[72]_1 ;
  output \q_reg[67]_0 ;
  output \q_reg[69]_1 ;
  output \q_reg[45]_2 ;
  output \q_reg[45]_3 ;
  output \q_reg[48]_1 ;
  output \q_reg[49]_2 ;
  output \q_reg[50]_2 ;
  output \q_reg[50]_3 ;
  output \q_reg[52]_1 ;
  output \q_reg[52]_2 ;
  output \q_reg[53]_0 ;
  output \q_reg[50]_4 ;
  output \q_reg[52]_3 ;
  output \q_reg[53]_1 ;
  output \q_reg[54]_1 ;
  output \q_reg[60]_3 ;
  output \q_reg[59]_0 ;
  output \q_reg[59]_1 ;
  output \q_reg[61]_1 ;
  output \q_reg[72]_2 ;
  output [0:0]E;
  input [0:0]SR;
  input [19:0]D;
  input \PosX_reg_reg[4] ;
  input \PosX_reg_reg[4]_0 ;
  input \PosX_reg_reg[4]_1 ;
  input \PosX_reg_reg[4]_2 ;
  input \q_reg[152]_0 ;
  input \PosX_reg_reg[4]_3 ;
  input \PosX_reg_reg[5] ;
  input \PosX_reg_reg[4]_4 ;
  input \q_reg[147]_0 ;
  input \q_reg[152]_1 ;
  input \PosX_reg_reg[4]_5 ;
  input \q_reg[151]_0 ;
  input \q_reg[151]_1 ;
  input \q_reg[152]_2 ;
  input \PosX_reg_reg[4]_6 ;
  input [3:0]spo;
  input \PosX_reg_reg[5]_0 ;
  input [0:0]PosY__0;
  input \q_reg[149]_0 ;
  input \q_reg[152]_3 ;
  input \q_reg[56]_1 ;
  input \q_reg[57]_0 ;
  input \q_reg[58]_1 ;
  input \q_reg[82]_0 ;
  input \q_reg[50]_5 ;
  input \q_reg[146]_0 ;
  input \q_reg[149]_1 ;
  input \q_reg[150]_0 ;
  input \q_reg[146]_1 ;
  input \q_reg[7]_0 ;
  input \q_reg[146]_2 ;
  input [25:0]ALU_A;
  input \q_reg[146]_3 ;
  input \q_reg[146]_4 ;
  input \q_reg[149]_2 ;
  input \q_reg[91]_0 ;
  input \q_reg[146]_5 ;
  input \q_reg[146]_6 ;
  input \q_reg[147]_1 ;
  input \q_reg[147]_2 ;
  input \q_reg[146]_7 ;
  input \q_reg[92]_0 ;
  input \q_reg[151]_2 ;
  input \q_reg[151]_3 ;
  input \q_reg[15]_0 ;
  input \q_reg[149]_3 ;
  input \q_reg[149]_4 ;
  input \q_reg[149]_5 ;
  input \q_reg[151]_4 ;
  input \q_reg[19]_0 ;
  input \q_reg[151]_5 ;
  input \q_reg[147]_3 ;
  input \q_reg[151]_6 ;
  input \q_reg[23]_0 ;
  input \q_reg[149]_6 ;
  input \q_reg[149]_7 ;
  input \q_reg[149]_8 ;
  input \q_reg[151]_7 ;
  input \q_reg[27]_0 ;
  input \q_reg[29]_0 ;
  input \q_reg[6]_0 ;
  input \q_reg[10]_0 ;
  input \q_reg[116]_0 ;
  input \q_reg[51]_1 ;
  input \q_reg[116]_1 ;
  input \q_reg[147]_4 ;
  input \q_reg[149]_9 ;
  input \q_reg[15]_1 ;
  input \q_reg[147]_5 ;
  input \q_reg[15]_2 ;
  input \q_reg[19]_1 ;
  input \q_reg[147]_6 ;
  input \q_reg[147]_7 ;
  input \q_reg[149]_10 ;
  input \q_reg[34]_0 ;
  input \q_reg[32]_0 ;
  input \q_reg[147]_8 ;
  input [1:0]\q_reg[147]_9 ;
  input \q_reg[147]_10 ;
  input \q_reg[23]_1 ;
  input \q_reg[147]_11 ;
  input \q_reg[149]_11 ;
  input \q_reg[51]_2 ;
  input \q_reg[147]_12 ;
  input \q_reg[147]_13 ;
  input \q_reg[149]_12 ;
  input \q_reg[147]_14 ;
  input \q_reg[147]_15 ;
  input \q_reg[147]_16 ;
  input \q_reg[147]_17 ;
  input \q_reg[147]_18 ;
  input \q_reg[147]_19 ;
  input \q_reg[7]_1 ;
  input \q_reg[5]_0 ;
  input \q_reg[116]_2 ;
  input \q_reg[5]_1 ;
  input \q_reg[82]_1 ;
  input \q_reg[149]_13 ;
  input \q_reg[82]_2 ;
  input \q_reg[23]_2 ;
  input \q_reg[9]_0 ;
  input \q_reg[5]_2 ;
  input \q_reg[90]_0 ;
  input \q_reg[15]_3 ;
  input \q_reg[9]_1 ;
  input \q_reg[91]_1 ;
  input \q_reg[16]_0 ;
  input \q_reg[10]_1 ;
  input \q_reg[146]_8 ;
  input \q_reg[6]_1 ;
  input \q_reg[6]_2 ;
  input \q_reg[17]_0 ;
  input \q_reg[92]_1 ;
  input \q_reg[27]_1 ;
  input \q_reg[15]_4 ;
  input \q_reg[17]_1 ;
  input \q_reg[92]_2 ;
  input \q_reg[18]_0 ;
  input \q_reg[4]_0 ;
  input \q_reg[14]_0 ;
  input \q_reg[27]_2 ;
  input \q_reg[28]_0 ;
  input \q_reg[16]_1 ;
  input \q_reg[18]_1 ;
  input \q_reg[30]_0 ;
  input \q_reg[30]_1 ;
  input \q_reg[92]_3 ;
  input \q_reg[152]_4 ;
  input \q_reg[116]_3 ;
  input \q_reg[152]_5 ;
  input \q_reg[15]_5 ;
  input \q_reg[16]_2 ;
  input \q_reg[26]_0 ;
  input \q_reg[17]_2 ;
  input \q_reg[116]_4 ;
  input \q_reg[27]_3 ;
  input \q_reg[116]_5 ;
  input \q_reg[116]_6 ;
  input \q_reg[51]_3 ;
  input \q_reg[26]_1 ;
  input \q_reg[51]_4 ;
  input \q_reg[51]_5 ;
  input \q_reg[34]_1 ;
  input \q_reg[116]_7 ;
  input \q_reg[31]_0 ;
  input \q_reg[32]_1 ;
  input [146:0]\q_reg[12]_0 ;
  input cpu_clk_BUFG;

  wire [25:0]ALU_A;
  wire [19:0]D;
  wire [0:0]E;
  wire \PC_reg[31]_i_7_n_0 ;
  wire \PC_reg[31]_i_8_n_0 ;
  wire \PC_reg[31]_i_9_n_0 ;
  wire \PosX_reg_reg[4] ;
  wire \PosX_reg_reg[4]_0 ;
  wire \PosX_reg_reg[4]_1 ;
  wire \PosX_reg_reg[4]_2 ;
  wire \PosX_reg_reg[4]_3 ;
  wire \PosX_reg_reg[4]_4 ;
  wire \PosX_reg_reg[4]_5 ;
  wire \PosX_reg_reg[4]_6 ;
  wire \PosX_reg_reg[5] ;
  wire \PosX_reg_reg[5]_0 ;
  wire [0:0]PosY__0;
  wire [146:0]Q;
  wire [0:0]SR;
  wire \TMDSn[2] ;
  wire \TMDSn[2]_0 ;
  wire \TMDSn[2]_1 ;
  wire \TMDSn[2]_10 ;
  wire \TMDSn[2]_11 ;
  wire \TMDSn[2]_12 ;
  wire \TMDSn[2]_2 ;
  wire \TMDSn[2]_3 ;
  wire \TMDSn[2]_4 ;
  wire \TMDSn[2]_5 ;
  wire \TMDSn[2]_6 ;
  wire \TMDSn[2]_7 ;
  wire \TMDSn[2]_8 ;
  wire \TMDSn[2]_9 ;
  wire char_tab_i_104_n_0;
  wire char_tab_i_114_n_0;
  wire char_tab_i_126_n_0;
  wire char_tab_i_149_n_0;
  wire char_tab_i_153_n_0;
  wire char_tab_i_155_n_0;
  wire cpu_clk_BUFG;
  wire \q[155]_i_1_n_0 ;
  wire \q[58]_i_12_n_0 ;
  wire \q[60]_i_8_n_0 ;
  wire \q[62]_i_10_n_0 ;
  wire \q[64]_i_8_n_0 ;
  wire \q[66]_i_10_n_0 ;
  wire \q[68]_i_8_n_0 ;
  wire \q[70]_i_7_n_0 ;
  wire \q[70]_i_8_n_0 ;
  wire \q[72]_i_6_n_0 ;
  wire \q[72]_i_7_n_0 ;
  wire \q_reg[10]_0 ;
  wire \q_reg[10]_1 ;
  wire \q_reg[116]_0 ;
  wire \q_reg[116]_1 ;
  wire \q_reg[116]_2 ;
  wire \q_reg[116]_3 ;
  wire \q_reg[116]_4 ;
  wire \q_reg[116]_5 ;
  wire \q_reg[116]_6 ;
  wire \q_reg[116]_7 ;
  wire [146:0]\q_reg[12]_0 ;
  wire \q_reg[146]_0 ;
  wire \q_reg[146]_1 ;
  wire \q_reg[146]_2 ;
  wire \q_reg[146]_3 ;
  wire \q_reg[146]_4 ;
  wire \q_reg[146]_5 ;
  wire \q_reg[146]_6 ;
  wire \q_reg[146]_7 ;
  wire \q_reg[146]_8 ;
  wire \q_reg[147]_0 ;
  wire \q_reg[147]_1 ;
  wire \q_reg[147]_10 ;
  wire \q_reg[147]_11 ;
  wire \q_reg[147]_12 ;
  wire \q_reg[147]_13 ;
  wire \q_reg[147]_14 ;
  wire \q_reg[147]_15 ;
  wire \q_reg[147]_16 ;
  wire \q_reg[147]_17 ;
  wire \q_reg[147]_18 ;
  wire \q_reg[147]_19 ;
  wire \q_reg[147]_2 ;
  wire \q_reg[147]_3 ;
  wire \q_reg[147]_4 ;
  wire \q_reg[147]_5 ;
  wire \q_reg[147]_6 ;
  wire \q_reg[147]_7 ;
  wire \q_reg[147]_8 ;
  wire [1:0]\q_reg[147]_9 ;
  wire \q_reg[149]_0 ;
  wire \q_reg[149]_1 ;
  wire \q_reg[149]_10 ;
  wire \q_reg[149]_11 ;
  wire \q_reg[149]_12 ;
  wire \q_reg[149]_13 ;
  wire \q_reg[149]_2 ;
  wire \q_reg[149]_3 ;
  wire \q_reg[149]_4 ;
  wire \q_reg[149]_5 ;
  wire \q_reg[149]_6 ;
  wire \q_reg[149]_7 ;
  wire \q_reg[149]_8 ;
  wire \q_reg[149]_9 ;
  wire \q_reg[14]_0 ;
  wire \q_reg[150]_0 ;
  wire \q_reg[151]_0 ;
  wire \q_reg[151]_1 ;
  wire \q_reg[151]_2 ;
  wire \q_reg[151]_3 ;
  wire \q_reg[151]_4 ;
  wire \q_reg[151]_5 ;
  wire \q_reg[151]_6 ;
  wire \q_reg[151]_7 ;
  wire \q_reg[152]_0 ;
  wire \q_reg[152]_1 ;
  wire \q_reg[152]_2 ;
  wire \q_reg[152]_3 ;
  wire \q_reg[152]_4 ;
  wire \q_reg[152]_5 ;
  wire \q_reg[15]_0 ;
  wire \q_reg[15]_1 ;
  wire \q_reg[15]_2 ;
  wire \q_reg[15]_3 ;
  wire \q_reg[15]_4 ;
  wire \q_reg[15]_5 ;
  wire \q_reg[16]_0 ;
  wire \q_reg[16]_1 ;
  wire \q_reg[16]_2 ;
  wire \q_reg[17]_0 ;
  wire \q_reg[17]_1 ;
  wire \q_reg[17]_2 ;
  wire \q_reg[18]_0 ;
  wire \q_reg[18]_1 ;
  wire \q_reg[19]_0 ;
  wire \q_reg[19]_1 ;
  wire \q_reg[23]_0 ;
  wire \q_reg[23]_1 ;
  wire \q_reg[23]_2 ;
  wire \q_reg[26]_0 ;
  wire \q_reg[26]_1 ;
  wire \q_reg[27]_0 ;
  wire \q_reg[27]_1 ;
  wire \q_reg[27]_2 ;
  wire \q_reg[27]_3 ;
  wire \q_reg[28]_0 ;
  wire \q_reg[29]_0 ;
  wire \q_reg[30]_0 ;
  wire \q_reg[30]_1 ;
  wire \q_reg[31]_0 ;
  wire \q_reg[32]_0 ;
  wire \q_reg[32]_1 ;
  wire \q_reg[34]_0 ;
  wire \q_reg[34]_1 ;
  wire \q_reg[43] ;
  wire \q_reg[43]_0 ;
  wire \q_reg[43]_1 ;
  wire \q_reg[43]_2 ;
  wire \q_reg[43]_3 ;
  wire \q_reg[44] ;
  wire \q_reg[44]_0 ;
  wire \q_reg[45]_0 ;
  wire \q_reg[45]_1 ;
  wire \q_reg[45]_2 ;
  wire \q_reg[45]_3 ;
  wire \q_reg[46] ;
  wire \q_reg[47]_0 ;
  wire \q_reg[47]_1 ;
  wire \q_reg[47]_2 ;
  wire \q_reg[47]_3 ;
  wire \q_reg[48] ;
  wire \q_reg[48]_0 ;
  wire \q_reg[48]_1 ;
  wire \q_reg[49] ;
  wire \q_reg[49]_0 ;
  wire \q_reg[49]_1 ;
  wire \q_reg[49]_2 ;
  wire \q_reg[4]_0 ;
  wire \q_reg[50]_0 ;
  wire \q_reg[50]_1 ;
  wire \q_reg[50]_2 ;
  wire \q_reg[50]_3 ;
  wire \q_reg[50]_4 ;
  wire \q_reg[50]_5 ;
  wire \q_reg[51]_0 ;
  wire \q_reg[51]_1 ;
  wire \q_reg[51]_2 ;
  wire \q_reg[51]_3 ;
  wire \q_reg[51]_4 ;
  wire \q_reg[51]_5 ;
  wire \q_reg[52]_0 ;
  wire \q_reg[52]_1 ;
  wire \q_reg[52]_2 ;
  wire \q_reg[52]_3 ;
  wire \q_reg[53]_0 ;
  wire \q_reg[53]_1 ;
  wire \q_reg[54]_0 ;
  wire \q_reg[54]_1 ;
  wire \q_reg[55]_0 ;
  wire \q_reg[55]_1 ;
  wire \q_reg[56]_0 ;
  wire \q_reg[56]_1 ;
  wire \q_reg[57]_0 ;
  wire \q_reg[58]_0 ;
  wire \q_reg[58]_1 ;
  wire \q_reg[59]_0 ;
  wire \q_reg[59]_1 ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_1 ;
  wire \q_reg[5]_2 ;
  wire \q_reg[60]_0 ;
  wire \q_reg[60]_1 ;
  wire \q_reg[60]_2 ;
  wire \q_reg[60]_3 ;
  wire \q_reg[61]_0 ;
  wire \q_reg[61]_1 ;
  wire \q_reg[62]_0 ;
  wire \q_reg[62]_1 ;
  wire \q_reg[63]_0 ;
  wire \q_reg[63]_1 ;
  wire \q_reg[63]_2 ;
  wire \q_reg[63]_3 ;
  wire \q_reg[63]_4 ;
  wire \q_reg[64]_0 ;
  wire \q_reg[65]_0 ;
  wire \q_reg[65]_1 ;
  wire \q_reg[65]_2 ;
  wire \q_reg[66]_0 ;
  wire \q_reg[66]_1 ;
  wire \q_reg[66]_2 ;
  wire \q_reg[66]_3 ;
  wire \q_reg[67]_0 ;
  wire \q_reg[68]_0 ;
  wire \q_reg[68]_1 ;
  wire \q_reg[69]_0 ;
  wire \q_reg[69]_1 ;
  wire \q_reg[6]_0 ;
  wire \q_reg[6]_1 ;
  wire \q_reg[6]_2 ;
  wire \q_reg[70]_0 ;
  wire \q_reg[70]_1 ;
  wire \q_reg[71]_0 ;
  wire \q_reg[71]_1 ;
  wire \q_reg[72]_0 ;
  wire \q_reg[72]_1 ;
  wire \q_reg[72]_2 ;
  wire \q_reg[74]_0 ;
  wire \q_reg[74]_1 ;
  wire \q_reg[74]_2 ;
  wire \q_reg[74]_3 ;
  wire \q_reg[7]_0 ;
  wire \q_reg[7]_1 ;
  wire \q_reg[82]_0 ;
  wire \q_reg[82]_1 ;
  wire \q_reg[82]_2 ;
  wire \q_reg[90]_0 ;
  wire \q_reg[91]_0 ;
  wire \q_reg[91]_1 ;
  wire \q_reg[92]_0 ;
  wire \q_reg[92]_1 ;
  wire \q_reg[92]_2 ;
  wire \q_reg[92]_3 ;
  wire \q_reg[9]_0 ;
  wire \q_reg[9]_1 ;
  wire [3:0]spo;

  assign Stall = E;
  LUT5 #(
    .INIT(32'hFFFF00F6)) 
    \PC_reg[31]_i_3 
       (.I0(Q[37]),
        .I1(\q_reg[12]_0 [2]),
        .I2(\PC_reg[31]_i_7_n_0 ),
        .I3(\PC_reg[31]_i_8_n_0 ),
        .I4(\PC_reg[31]_i_9_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \PC_reg[31]_i_7 
       (.I0(Q[35]),
        .I1(\q_reg[12]_0 [38]),
        .I2(\q_reg[12]_0 [40]),
        .I3(Q[37]),
        .I4(\q_reg[12]_0 [39]),
        .I5(Q[36]),
        .O(\PC_reg[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h90000009)) 
    \PC_reg[31]_i_8 
       (.I0(Q[35]),
        .I1(\q_reg[12]_0 [41]),
        .I2(\q_reg[12]_0 [42]),
        .I3(Q[36]),
        .I4(Q[37]),
        .O(\PC_reg[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5557)) 
    \PC_reg[31]_i_9 
       (.I0(Q[145]),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(Q[35]),
        .O(\PC_reg[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF100F100F100)) 
    char_tab_i_104
       (.I0(\q_reg[147]_0 ),
        .I1(Q[144]),
        .I2(\q_reg[152]_1 ),
        .I3(\PosX_reg_reg[4]_5 ),
        .I4(D[2]),
        .I5(\PosX_reg_reg[4]_2 ),
        .O(char_tab_i_104_n_0));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    char_tab_i_114
       (.I0(D[7]),
        .I1(\PosX_reg_reg[5] ),
        .I2(char_tab_i_149_n_0),
        .I3(\PosX_reg_reg[4]_4 ),
        .I4(D[5]),
        .I5(\PosX_reg_reg[4]_3 ),
        .O(char_tab_i_114_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    char_tab_i_126
       (.I0(char_tab_i_153_n_0),
        .I1(\PosX_reg_reg[4]_2 ),
        .I2(D[0]),
        .I3(\q_reg[152]_0 ),
        .I4(char_tab_i_155_n_0),
        .I5(\PosX_reg_reg[4]_3 ),
        .O(char_tab_i_126_n_0));
  LUT4 #(
    .INIT(16'hA0C0)) 
    char_tab_i_13
       (.I0(spo[3]),
        .I1(D[19]),
        .I2(\PosX_reg_reg[5]_0 ),
        .I3(PosY__0),
        .O(\TMDSn[2]_9 ));
  LUT5 #(
    .INIT(32'h808080A2)) 
    char_tab_i_137
       (.I0(\PosX_reg_reg[4]_5 ),
        .I1(Q[139]),
        .I2(Q[114]),
        .I3(Q[140]),
        .I4(\q_reg[57]_0 ),
        .O(\TMDSn[2]_11 ));
  LUT5 #(
    .INIT(32'h808080A2)) 
    char_tab_i_145
       (.I0(\PosX_reg_reg[4]_5 ),
        .I1(Q[139]),
        .I2(Q[113]),
        .I3(Q[140]),
        .I4(\q_reg[56]_1 ),
        .O(\TMDSn[2]_10 ));
  LUT4 #(
    .INIT(16'hF888)) 
    char_tab_i_149
       (.I0(D[3]),
        .I1(\PosX_reg_reg[4]_5 ),
        .I2(D[1]),
        .I3(\PosX_reg_reg[4]_2 ),
        .O(char_tab_i_149_n_0));
  LUT5 #(
    .INIT(32'h8888AAA8)) 
    char_tab_i_153
       (.I0(\PosX_reg_reg[5] ),
        .I1(\q_reg[55]_0 ),
        .I2(\q_reg[151]_0 ),
        .I3(\q_reg[151]_1 ),
        .I4(\q_reg[152]_2 ),
        .O(char_tab_i_153_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    char_tab_i_155
       (.I0(D[4]),
        .I1(\PosX_reg_reg[4]_4 ),
        .O(char_tab_i_155_n_0));
  LUT5 #(
    .INIT(32'h888D0000)) 
    char_tab_i_156
       (.I0(Q[139]),
        .I1(Q[115]),
        .I2(Q[140]),
        .I3(\q_reg[58]_1 ),
        .I4(\PosX_reg_reg[4]_4 ),
        .O(\TMDSn[2]_12 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    char_tab_i_18
       (.I0(spo[2]),
        .I1(D[18]),
        .I2(\PosX_reg_reg[5]_0 ),
        .I3(PosY__0),
        .O(\TMDSn[2]_8 ));
  LUT2 #(
    .INIT(4'h8)) 
    char_tab_i_49
       (.I0(D[16]),
        .I1(\PosX_reg_reg[4]_6 ),
        .O(\TMDSn[2]_5 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    char_tab_i_52
       (.I0(D[8]),
        .I1(\PosX_reg_reg[5] ),
        .I2(char_tab_i_104_n_0),
        .I3(\PosX_reg_reg[4]_4 ),
        .I4(D[6]),
        .I5(\PosX_reg_reg[4]_3 ),
        .O(\TMDSn[2]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    char_tab_i_53
       (.I0(D[11]),
        .I1(\PosX_reg_reg[4]_1 ),
        .O(\TMDSn[2]_2 ));
  LUT6 #(
    .INIT(64'h8F8F8F888F888F88)) 
    char_tab_i_65
       (.I0(D[13]),
        .I1(\PosX_reg_reg[4] ),
        .I2(\PosX_reg_reg[4]_0 ),
        .I3(char_tab_i_114_n_0),
        .I4(\PosX_reg_reg[4]_1 ),
        .I5(D[10]),
        .O(\TMDSn[2]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    char_tab_i_66
       (.I0(D[15]),
        .I1(\PosX_reg_reg[4]_6 ),
        .O(\TMDSn[2]_4 ));
  LUT6 #(
    .INIT(64'hAAAA0000FF030000)) 
    char_tab_i_67
       (.I0(spo[1]),
        .I1(\q_reg[149]_0 ),
        .I2(Q[144]),
        .I3(\q_reg[152]_3 ),
        .I4(\PosX_reg_reg[5]_0 ),
        .I5(PosY__0),
        .O(\TMDSn[2]_7 ));
  LUT6 #(
    .INIT(64'h8F8F8F888F888F88)) 
    char_tab_i_81
       (.I0(D[12]),
        .I1(\PosX_reg_reg[4] ),
        .I2(\PosX_reg_reg[4]_0 ),
        .I3(char_tab_i_126_n_0),
        .I4(\PosX_reg_reg[4]_1 ),
        .I5(D[9]),
        .O(\TMDSn[2] ));
  LUT2 #(
    .INIT(4'h8)) 
    char_tab_i_82
       (.I0(D[14]),
        .I1(\PosX_reg_reg[4]_6 ),
        .O(\TMDSn[2]_3 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    char_tab_i_83
       (.I0(spo[0]),
        .I1(D[17]),
        .I2(\PosX_reg_reg[5]_0 ),
        .I3(PosY__0),
        .O(\TMDSn[2]_6 ));
  LUT2 #(
    .INIT(4'hB)) 
    \q[155]_i_1 
       (.I0(SR),
        .I1(E),
        .O(\q[155]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2FBF080EF8FE20B0)) 
    \q[43]_i_20 
       (.I0(ALU_A[16]),
        .I1(\q_reg[147]_10 ),
        .I2(\q_reg[149]_9 ),
        .I3(\q_reg[149]_11 ),
        .I4(ALU_A[17]),
        .I5(\q_reg[147]_11 ),
        .O(\q_reg[43]_1 ));
  LUT6 #(
    .INIT(64'h2FBF080EF8FE20B0)) 
    \q[43]_i_21 
       (.I0(ALU_A[16]),
        .I1(\q_reg[147]_10 ),
        .I2(\q_reg[149]_9 ),
        .I3(\q_reg[23]_1 ),
        .I4(ALU_A[17]),
        .I5(\q_reg[147]_11 ),
        .O(\q_reg[43]_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \q[43]_i_23 
       (.I0(\q_reg[82]_0 ),
        .I1(\q_reg[147]_12 ),
        .I2(\q_reg[116]_2 ),
        .O(\q_reg[43]_2 ));
  LUT5 #(
    .INIT(32'h959595A6)) 
    \q[43]_i_24 
       (.I0(\q_reg[82]_0 ),
        .I1(Q[139]),
        .I2(Q[107]),
        .I3(Q[140]),
        .I4(\q_reg[50]_5 ),
        .O(\q_reg[43] ));
  LUT6 #(
    .INIT(64'hB8FFB8CCB833B800)) 
    \q[43]_i_9 
       (.I0(\q_reg[17]_0 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[92]_1 ),
        .I3(\q_reg[51]_1 ),
        .I4(\q_reg[27]_1 ),
        .I5(\q_reg[15]_4 ),
        .O(\q_reg[43]_3 ));
  LUT6 #(
    .INIT(64'h2322000003000000)) 
    \q[44]_i_9 
       (.I0(ALU_A[0]),
        .I1(\q_reg[147]_12 ),
        .I2(\q_reg[82]_0 ),
        .I3(\q_reg[146]_8 ),
        .I4(\q_reg[116]_2 ),
        .I5(\q_reg[44] ),
        .O(\q_reg[44]_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \q[45]_i_7 
       (.I0(ALU_A[0]),
        .I1(\q_reg[147]_12 ),
        .I2(\q_reg[116]_2 ),
        .I3(\q_reg[146]_8 ),
        .I4(\q_reg[45]_0 ),
        .I5(\q_reg[44] ),
        .O(\q_reg[45]_1 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[45]_i_8 
       (.I0(\q_reg[27]_2 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[15]_4 ),
        .I3(\q_reg[17]_0 ),
        .I4(\q_reg[92]_1 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[45]_2 ));
  LUT5 #(
    .INIT(32'hFFFFEEFC)) 
    \q[46]_i_14 
       (.I0(\q_reg[82]_0 ),
        .I1(\q_reg[147]_12 ),
        .I2(\q_reg[5]_1 ),
        .I3(\q_reg[51]_1 ),
        .I4(\q_reg[116]_0 ),
        .O(\q_reg[45]_0 ));
  LUT6 #(
    .INIT(64'h60F600009F090000)) 
    \q[46]_i_15 
       (.I0(\q_reg[116]_0 ),
        .I1(\q_reg[149]_9 ),
        .I2(\q_reg[5]_1 ),
        .I3(\q_reg[82]_1 ),
        .I4(\q_reg[55]_1 ),
        .I5(\q_reg[149]_13 ),
        .O(\q_reg[46] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[46]_i_8 
       (.I0(\q_reg[28]_0 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[16]_1 ),
        .I3(\q_reg[18]_1 ),
        .I4(\q_reg[30]_0 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[45]_3 ));
  LUT6 #(
    .INIT(64'h0B000B0BFFFFFFFF)) 
    \q[47]_i_2 
       (.I0(\q_reg[47]_1 ),
        .I1(\q_reg[47]_2 ),
        .I2(\q_reg[146]_0 ),
        .I3(\q_reg[47]_3 ),
        .I4(\q_reg[149]_1 ),
        .I5(\q_reg[150]_0 ),
        .O(\q_reg[47]_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[47]_i_7 
       (.I0(\q_reg[92]_3 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[17]_0 ),
        .I3(\q_reg[27]_2 ),
        .I4(\q_reg[15]_4 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[47]_3 ));
  LUT5 #(
    .INIT(32'h00FFB8FF)) 
    \q[48]_i_12 
       (.I0(\q_reg[92]_3 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[17]_0 ),
        .I3(\q_reg[49]_0 ),
        .I4(\q_reg[51]_1 ),
        .O(\q_reg[48]_1 ));
  LUT6 #(
    .INIT(64'h0B000B0BFFFFFFFF)) 
    \q[48]_i_2 
       (.I0(\q_reg[47]_1 ),
        .I1(\q_reg[149]_1 ),
        .I2(\q_reg[146]_1 ),
        .I3(\q_reg[48]_0 ),
        .I4(\q_reg[47]_2 ),
        .I5(\q_reg[150]_0 ),
        .O(\q_reg[48] ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[48]_i_6 
       (.I0(\q_reg[28]_0 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[16]_1 ),
        .I3(\q_reg[30]_1 ),
        .I4(\q_reg[18]_1 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[47]_1 ));
  LUT5 #(
    .INIT(32'h888D0000)) 
    \q[48]_i_8 
       (.I0(Q[139]),
        .I1(Q[107]),
        .I2(Q[140]),
        .I3(\q_reg[50]_5 ),
        .I4(Q[141]),
        .O(\q_reg[47]_2 ));
  LUT6 #(
    .INIT(64'hFFFFDDDDFFCCCFCF)) 
    \q[49]_i_13 
       (.I0(ALU_A[0]),
        .I1(\q_reg[147]_12 ),
        .I2(ALU_A[1]),
        .I3(\q_reg[6]_1 ),
        .I4(\q_reg[51]_1 ),
        .I5(\q_reg[116]_0 ),
        .O(\q_reg[49]_1 ));
  LUT5 #(
    .INIT(32'h0400FF00)) 
    \q[49]_i_4 
       (.I0(\q_reg[116]_0 ),
        .I1(\q_reg[17]_0 ),
        .I2(\q_reg[51]_1 ),
        .I3(\q_reg[48]_0 ),
        .I4(\q_reg[49]_0 ),
        .O(\q_reg[49]_2 ));
  LUT4 #(
    .INIT(16'hF4FF)) 
    \q[49]_i_6 
       (.I0(ALU_A[2]),
        .I1(Q[141]),
        .I2(Q[143]),
        .I3(Q[142]),
        .O(\q_reg[49] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[49]_i_9 
       (.I0(\q_reg[15]_5 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[27]_2 ),
        .I3(\q_reg[92]_3 ),
        .I4(\q_reg[17]_0 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[48]_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \q[50]_i_12 
       (.I0(\q_reg[16]_2 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[28]_0 ),
        .I3(\q_reg[51]_1 ),
        .I4(\q_reg[30]_1 ),
        .I5(\q_reg[18]_1 ),
        .O(\q_reg[50]_4 ));
  LUT6 #(
    .INIT(64'hB24D4DB2FFFFFFFF)) 
    \q[50]_i_2 
       (.I0(\q_reg[7]_0 ),
        .I1(\q_reg[146]_2 ),
        .I2(ALU_A[2]),
        .I3(ALU_A[3]),
        .I4(\q_reg[146]_3 ),
        .I5(\q_reg[55]_1 ),
        .O(\q_reg[50]_0 ));
  LUT5 #(
    .INIT(32'h15151504)) 
    \q[50]_i_20 
       (.I0(Q[141]),
        .I1(Q[139]),
        .I2(Q[107]),
        .I3(Q[140]),
        .I4(\q_reg[50]_5 ),
        .O(\q_reg[44] ));
  LUT6 #(
    .INIT(64'hEFECFFFFEFEC0000)) 
    \q[50]_i_22 
       (.I0(\q_reg[82]_0 ),
        .I1(\q_reg[147]_12 ),
        .I2(\q_reg[116]_0 ),
        .I3(\q_reg[7]_1 ),
        .I4(\q_reg[51]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[50]_1 ));
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    \q[50]_i_5 
       (.I0(\q_reg[50]_3 ),
        .I1(\q_reg[49]_0 ),
        .I2(\q_reg[152]_4 ),
        .I3(\q_reg[116]_3 ),
        .I4(\q_reg[152]_5 ),
        .O(\q_reg[50]_2 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[51]_i_11 
       (.I0(\q_reg[17]_2 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[92]_3 ),
        .I3(\q_reg[15]_5 ),
        .I4(\q_reg[27]_2 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[50]_3 ));
  LUT6 #(
    .INIT(64'hDCDFFFFFDCDF0000)) 
    \q[51]_i_12 
       (.I0(ALU_A[0]),
        .I1(\q_reg[147]_12 ),
        .I2(\q_reg[116]_0 ),
        .I3(ALU_A[1]),
        .I4(\q_reg[51]_1 ),
        .I5(\q_reg[6]_2 ),
        .O(\q_reg[51]_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[52]_i_13 
       (.I0(\q_reg[16]_2 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[28]_0 ),
        .I3(\q_reg[26]_0 ),
        .I4(\q_reg[30]_1 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[52]_2 ));
  LUT6 #(
    .INIT(64'hB24D4DB2FFFFFFFF)) 
    \q[52]_i_2 
       (.I0(\q_reg[146]_4 ),
        .I1(ALU_A[4]),
        .I2(\q_reg[149]_2 ),
        .I3(\q_reg[91]_0 ),
        .I4(\q_reg[146]_5 ),
        .I5(\q_reg[55]_1 ),
        .O(\q_reg[52]_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[52]_i_23 
       (.I0(\q_reg[17]_2 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[92]_3 ),
        .I3(\q_reg[27]_3 ),
        .I4(\q_reg[51]_1 ),
        .O(\q_reg[52]_3 ));
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    \q[52]_i_5 
       (.I0(\q_reg[52]_2 ),
        .I1(\q_reg[49]_0 ),
        .I2(\q_reg[152]_5 ),
        .I3(\q_reg[53]_0 ),
        .I4(\q_reg[152]_4 ),
        .O(\q_reg[52]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[53]_i_12 
       (.I0(\q_reg[34]_0 ),
        .I1(\q_reg[147]_9 [0]),
        .O(\q_reg[49]_0 ));
  LUT6 #(
    .INIT(64'hFF000000FF00B8B8)) 
    \q[53]_i_4 
       (.I0(\q_reg[26]_0 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[30]_1 ),
        .I3(\q_reg[116]_5 ),
        .I4(\q_reg[51]_1 ),
        .I5(\q_reg[49]_0 ),
        .O(\q_reg[53]_1 ));
  LUT6 #(
    .INIT(64'hFF000000FF00B8B8)) 
    \q[53]_i_5 
       (.I0(\q_reg[17]_2 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[92]_3 ),
        .I3(\q_reg[116]_4 ),
        .I4(\q_reg[51]_1 ),
        .I5(\q_reg[49]_0 ),
        .O(\q_reg[53]_0 ));
  LUT6 #(
    .INIT(64'hF10E0EF1FFFFFFFF)) 
    \q[54]_i_2__0 
       (.I0(\q_reg[146]_6 ),
        .I1(\q_reg[147]_1 ),
        .I2(\q_reg[147]_2 ),
        .I3(ALU_A[5]),
        .I4(\q_reg[146]_7 ),
        .I5(\q_reg[55]_1 ),
        .O(\q_reg[54]_0 ));
  LUT6 #(
    .INIT(64'h47FF474700FF0000)) 
    \q[54]_i_5 
       (.I0(\q_reg[116]_6 ),
        .I1(\q_reg[51]_1 ),
        .I2(\q_reg[116]_4 ),
        .I3(\q_reg[53]_1 ),
        .I4(\q_reg[152]_5 ),
        .I5(\q_reg[152]_4 ),
        .O(\q_reg[54]_1 ));
  LUT6 #(
    .INIT(64'h4700FFFF47004700)) 
    \q[55]_i_6 
       (.I0(\q_reg[116]_6 ),
        .I1(\q_reg[51]_1 ),
        .I2(\q_reg[116]_4 ),
        .I3(\q_reg[152]_5 ),
        .I4(\q_reg[51]_3 ),
        .I5(\q_reg[152]_4 ),
        .O(\q_reg[55]_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD4FFFFFFFF)) 
    \q[56]_i_2 
       (.I0(\q_reg[92]_0 ),
        .I1(\q_reg[151]_2 ),
        .I2(ALU_A[6]),
        .I3(ALU_A[7]),
        .I4(\q_reg[151]_3 ),
        .I5(\q_reg[55]_1 ),
        .O(\q_reg[56]_0 ));
  LUT5 #(
    .INIT(32'hA9A99AAA)) 
    \q[58]_i_12 
       (.I0(\q_reg[147]_5 ),
        .I1(Q[143]),
        .I2(Q[142]),
        .I3(Q[144]),
        .I4(Q[141]),
        .O(\q[58]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF10E0EF1FFFFFFFF)) 
    \q[58]_i_5 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[149]_3 ),
        .I2(\q_reg[149]_4 ),
        .I3(ALU_A[9]),
        .I4(\q[58]_i_12_n_0 ),
        .I5(\q_reg[55]_1 ),
        .O(\q_reg[58]_0 ));
  LUT6 #(
    .INIT(64'h47FF474700FF0000)) 
    \q[59]_i_6 
       (.I0(\q_reg[26]_1 ),
        .I1(\q_reg[51]_1 ),
        .I2(\q_reg[60]_1 ),
        .I3(\q_reg[51]_5 ),
        .I4(\q_reg[152]_5 ),
        .I5(\q_reg[152]_4 ),
        .O(\q_reg[59]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q[60]_i_10 
       (.I0(\q_reg[34]_0 ),
        .I1(\q_reg[32]_0 ),
        .O(\q_reg[60]_1 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \q[60]_i_11 
       (.I0(\q_reg[32]_0 ),
        .I1(\q_reg[34]_1 ),
        .I2(\q_reg[51]_1 ),
        .O(\q_reg[59]_1 ));
  LUT6 #(
    .INIT(64'h8E71718EFFFFFFFF)) 
    \q[60]_i_2 
       (.I0(\q_reg[149]_5 ),
        .I1(ALU_A[10]),
        .I2(\q_reg[151]_4 ),
        .I3(ALU_A[11]),
        .I4(\q[60]_i_8_n_0 ),
        .I5(\q_reg[55]_1 ),
        .O(\q_reg[60]_0 ));
  LUT5 #(
    .INIT(32'h04040004)) 
    \q[60]_i_5 
       (.I0(\q_reg[147]_8 ),
        .I1(Q[142]),
        .I2(Q[143]),
        .I3(Q[141]),
        .I4(ALU_A[11]),
        .O(\q_reg[60]_2 ));
  LUT6 #(
    .INIT(64'h4700FFFF47004700)) 
    \q[60]_i_6 
       (.I0(\q_reg[26]_1 ),
        .I1(\q_reg[51]_1 ),
        .I2(\q_reg[60]_1 ),
        .I3(\q_reg[152]_5 ),
        .I4(\q_reg[51]_4 ),
        .I5(\q_reg[152]_4 ),
        .O(\q_reg[60]_3 ));
  LUT5 #(
    .INIT(32'hA9A99AAA)) 
    \q[60]_i_8 
       (.I0(\q_reg[147]_8 ),
        .I1(Q[143]),
        .I2(Q[142]),
        .I3(Q[144]),
        .I4(Q[141]),
        .O(\q[60]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF3F300FF55555555)) 
    \q[61]_i_22 
       (.I0(\q_reg[116]_7 ),
        .I1(ALU_A[18]),
        .I2(\q_reg[147]_12 ),
        .I3(\q_reg[31]_0 ),
        .I4(\q_reg[116]_0 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[61]_1 ));
  LUT6 #(
    .INIT(64'h55556599AAAA9A66)) 
    \q[61]_i_4 
       (.I0(ALU_A[12]),
        .I1(Q[141]),
        .I2(Q[144]),
        .I3(Q[142]),
        .I4(Q[143]),
        .I5(\q_reg[147]_7 ),
        .O(\q_reg[61]_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \q[61]_i_5 
       (.I0(Q[143]),
        .I1(Q[141]),
        .I2(Q[142]),
        .O(\q_reg[55]_1 ));
  LUT5 #(
    .INIT(32'hA9A99AAA)) 
    \q[62]_i_10 
       (.I0(\q_reg[147]_6 ),
        .I1(Q[143]),
        .I2(Q[142]),
        .I3(Q[144]),
        .I4(Q[141]),
        .O(\q[62]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h44455545)) 
    \q[62]_i_14 
       (.I0(\q_reg[34]_0 ),
        .I1(\q_reg[147]_9 [1]),
        .I2(ALU_A[13]),
        .I3(\q_reg[147]_9 [0]),
        .I4(ALU_A[21]),
        .O(\q_reg[62]_1 ));
  LUT6 #(
    .INIT(64'h718E8E71FFFFFFFF)) 
    \q[62]_i_4 
       (.I0(\q_reg[19]_0 ),
        .I1(\q_reg[151]_5 ),
        .I2(ALU_A[12]),
        .I3(ALU_A[13]),
        .I4(\q[62]_i_10_n_0 ),
        .I5(\q_reg[55]_1 ),
        .O(\q_reg[62]_0 ));
  LUT6 #(
    .INIT(64'hF3717130D4C0FCD4)) 
    \q[63]_i_10 
       (.I0(\q_reg[149]_10 ),
        .I1(\q_reg[147]_6 ),
        .I2(ALU_A[13]),
        .I3(ALU_A[12]),
        .I4(\q_reg[147]_7 ),
        .I5(\q_reg[149]_9 ),
        .O(\q_reg[63]_3 ));
  LUT6 #(
    .INIT(64'h8EFF00E8FFE88E00)) 
    \q[63]_i_11 
       (.I0(\q_reg[15]_2 ),
        .I1(ALU_A[8]),
        .I2(\q_reg[147]_4 ),
        .I3(\q_reg[149]_9 ),
        .I4(ALU_A[9]),
        .I5(\q_reg[147]_5 ),
        .O(\q_reg[63]_1 ));
  LUT6 #(
    .INIT(64'h2FBF080EF8FE20B0)) 
    \q[63]_i_12 
       (.I0(ALU_A[8]),
        .I1(\q_reg[147]_4 ),
        .I2(\q_reg[149]_9 ),
        .I3(\q_reg[15]_1 ),
        .I4(ALU_A[9]),
        .I5(\q_reg[147]_5 ),
        .O(\q_reg[63]_0 ));
  LUT6 #(
    .INIT(64'hF3717130D4C0FCD4)) 
    \q[63]_i_13 
       (.I0(\q_reg[19]_1 ),
        .I1(\q_reg[147]_6 ),
        .I2(ALU_A[13]),
        .I3(ALU_A[12]),
        .I4(\q_reg[147]_7 ),
        .I5(\q_reg[149]_9 ),
        .O(\q_reg[63]_2 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[64]_i_14 
       (.I0(\q_reg[90]_0 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[15]_3 ),
        .I3(\q_reg[9]_1 ),
        .I4(\q_reg[51]_1 ),
        .O(\q_reg[63]_4 ));
  LUT6 #(
    .INIT(64'h8E71718EFFFFFFFF)) 
    \q[64]_i_4 
       (.I0(\q_reg[147]_3 ),
        .I1(ALU_A[14]),
        .I2(\q[64]_i_8_n_0 ),
        .I3(ALU_A[15]),
        .I4(\q_reg[151]_6 ),
        .I5(\q_reg[55]_1 ),
        .O(\q_reg[64]_0 ));
  LUT5 #(
    .INIT(32'hA9A99AAA)) 
    \q[64]_i_8 
       (.I0(\q_reg[147]_16 ),
        .I1(Q[143]),
        .I2(Q[142]),
        .I3(Q[144]),
        .I4(Q[141]),
        .O(\q[64]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[65]_i_15 
       (.I0(\q_reg[91]_1 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[16]_0 ),
        .I3(\q_reg[10]_1 ),
        .I4(\q_reg[51]_1 ),
        .O(\q_reg[65]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q[65]_i_8 
       (.I0(ALU_A[18]),
        .I1(\q_reg[147]_12 ),
        .O(\q_reg[65]_0 ));
  LUT5 #(
    .INIT(32'hA9A99AAA)) 
    \q[66]_i_10 
       (.I0(\q_reg[147]_11 ),
        .I1(Q[143]),
        .I2(Q[142]),
        .I3(Q[144]),
        .I4(Q[141]),
        .O(\q[66]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[66]_i_14 
       (.I0(\q_reg[92]_2 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[17]_1 ),
        .I3(\q_reg[90]_0 ),
        .I4(\q_reg[15]_3 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[65]_2 ));
  LUT6 #(
    .INIT(64'hF10E0EF1FFFFFFFF)) 
    \q[66]_i_4 
       (.I0(\q_reg[23]_0 ),
        .I1(\q_reg[149]_6 ),
        .I2(\q_reg[149]_7 ),
        .I3(ALU_A[17]),
        .I4(\q[66]_i_10_n_0 ),
        .I5(\q_reg[55]_1 ),
        .O(\q_reg[66]_0 ));
  LUT5 #(
    .INIT(32'h44455545)) 
    \q[66]_i_7 
       (.I0(\q_reg[66]_2 ),
        .I1(\q_reg[147]_12 ),
        .I2(ALU_A[19]),
        .I3(\q_reg[116]_0 ),
        .I4(ALU_A[23]),
        .O(\q_reg[66]_3 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[67]_i_17 
       (.I0(\q_reg[14]_0 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[18]_0 ),
        .I3(\q_reg[91]_1 ),
        .I4(\q_reg[16]_0 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[67]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q[67]_i_4 
       (.I0(\q_reg[66]_2 ),
        .I1(\q_reg[51]_2 ),
        .O(\q_reg[66]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[67]_i_8 
       (.I0(\q_reg[147]_12 ),
        .I1(ALU_A[25]),
        .O(\q_reg[66]_2 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[68]_i_12 
       (.I0(\q_reg[92]_2 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[17]_1 ),
        .I3(\q_reg[15]_3 ),
        .I4(\q_reg[82]_2 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[68]_1 ));
  LUT6 #(
    .INIT(64'h8E71718EFFFFFFFF)) 
    \q[68]_i_4 
       (.I0(\q_reg[149]_8 ),
        .I1(ALU_A[18]),
        .I2(\q[68]_i_8_n_0 ),
        .I3(ALU_A[19]),
        .I4(\q_reg[151]_7 ),
        .I5(\q_reg[55]_1 ),
        .O(\q_reg[68]_0 ));
  LUT5 #(
    .INIT(32'hA9A99AAA)) 
    \q[68]_i_8 
       (.I0(\q_reg[147]_17 ),
        .I1(Q[143]),
        .I2(Q[142]),
        .I3(Q[144]),
        .I4(Q[141]),
        .O(\q[68]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[69]_i_12 
       (.I0(\q_reg[14]_0 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[18]_0 ),
        .I3(\q_reg[16]_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[69]_1 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[70]_i_12 
       (.I0(\q_reg[17]_1 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[5]_2 ),
        .I3(\q_reg[15]_3 ),
        .I4(\q_reg[82]_2 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[69]_0 ));
  LUT6 #(
    .INIT(64'h718E8E71FFFFFFFF)) 
    \q[70]_i_4 
       (.I0(\q_reg[27]_0 ),
        .I1(\q[70]_i_7_n_0 ),
        .I2(ALU_A[20]),
        .I3(ALU_A[21]),
        .I4(\q[70]_i_8_n_0 ),
        .I5(\q_reg[55]_1 ),
        .O(\q_reg[70]_0 ));
  LUT5 #(
    .INIT(32'hA9A99AAA)) 
    \q[70]_i_7 
       (.I0(\q_reg[147]_13 ),
        .I1(Q[143]),
        .I2(Q[142]),
        .I3(Q[144]),
        .I4(Q[141]),
        .O(\q[70]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA9A99AAA)) 
    \q[70]_i_8 
       (.I0(\q_reg[147]_14 ),
        .I1(Q[143]),
        .I2(Q[142]),
        .I3(Q[144]),
        .I4(Q[141]),
        .O(\q[70]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \q[71]_i_13 
       (.I0(\q_reg[18]_0 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[6]_0 ),
        .I3(\q_reg[16]_0 ),
        .I4(\q_reg[4]_0 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[70]_1 ));
  LUT6 #(
    .INIT(64'h2FBF080EF8FE20B0)) 
    \q[71]_i_8 
       (.I0(ALU_A[20]),
        .I1(\q_reg[147]_13 ),
        .I2(\q_reg[149]_9 ),
        .I3(\q_reg[149]_12 ),
        .I4(ALU_A[21]),
        .I5(\q_reg[147]_14 ),
        .O(\q_reg[71]_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \q[72]_i_10 
       (.I0(ALU_A[24]),
        .I1(\q_reg[147]_12 ),
        .I2(\q_reg[47]_2 ),
        .I3(\q_reg[116]_2 ),
        .I4(\q_reg[32]_1 ),
        .I5(\q_reg[149]_1 ),
        .O(\q_reg[72]_2 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \q[72]_i_11 
       (.I0(\q_reg[17]_1 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[5]_2 ),
        .I3(\q_reg[82]_2 ),
        .I4(\q_reg[23]_2 ),
        .I5(\q_reg[51]_1 ),
        .O(\q_reg[71]_1 ));
  LUT6 #(
    .INIT(64'h2BD4D42BFFFFFFFF)) 
    \q[72]_i_4 
       (.I0(ALU_A[22]),
        .I1(\q[72]_i_6_n_0 ),
        .I2(\q_reg[29]_0 ),
        .I3(ALU_A[23]),
        .I4(\q[72]_i_7_n_0 ),
        .I5(\q_reg[55]_1 ),
        .O(\q_reg[72]_0 ));
  LUT5 #(
    .INIT(32'hA9A99AAA)) 
    \q[72]_i_6 
       (.I0(\q_reg[147]_18 ),
        .I1(Q[143]),
        .I2(Q[142]),
        .I3(Q[144]),
        .I4(Q[141]),
        .O(\q[72]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA9A99AAA)) 
    \q[72]_i_7 
       (.I0(\q_reg[147]_19 ),
        .I1(Q[143]),
        .I2(Q[142]),
        .I3(Q[144]),
        .I4(Q[141]),
        .O(\q[72]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q[72]_i_9 
       (.I0(\q_reg[18]_0 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[6]_0 ),
        .I3(\q_reg[51]_1 ),
        .I4(\q_reg[116]_1 ),
        .O(\q_reg[72]_1 ));
  LUT6 #(
    .INIT(64'h1140EEBFEEBF1140)) 
    \q[74]_i_13 
       (.I0(Q[143]),
        .I1(Q[142]),
        .I2(Q[144]),
        .I3(Q[141]),
        .I4(\q_reg[147]_15 ),
        .I5(ALU_A[25]),
        .O(\q_reg[74]_1 ));
  LUT6 #(
    .INIT(64'hB8FFB8CCB833B800)) 
    \q[74]_i_14 
       (.I0(\q_reg[82]_2 ),
        .I1(\q_reg[116]_0 ),
        .I2(\q_reg[23]_2 ),
        .I3(\q_reg[51]_1 ),
        .I4(\q_reg[9]_0 ),
        .I5(\q_reg[5]_2 ),
        .O(\q_reg[74]_3 ));
  LUT5 #(
    .INIT(32'h0000D090)) 
    \q[74]_i_7 
       (.I0(\q_reg[147]_15 ),
        .I1(ALU_A[25]),
        .I2(Q[143]),
        .I3(Q[141]),
        .I4(Q[142]),
        .O(\q_reg[74]_2 ));
  LUT6 #(
    .INIT(64'hFFAC00ACFFFFFFFF)) 
    \q[74]_i_9 
       (.I0(\q_reg[6]_0 ),
        .I1(\q_reg[10]_0 ),
        .I2(\q_reg[116]_0 ),
        .I3(\q_reg[51]_1 ),
        .I4(\q_reg[116]_1 ),
        .I5(\q_reg[44] ),
        .O(\q_reg[74]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [0]),
        .Q(Q[0]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[100] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [93]),
        .Q(Q[93]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[101] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [94]),
        .Q(Q[94]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[102] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [95]),
        .Q(Q[95]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[103] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [96]),
        .Q(Q[96]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[104] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [97]),
        .Q(Q[97]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[105] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [98]),
        .Q(Q[98]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[106] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [99]),
        .Q(Q[99]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[107] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [100]),
        .Q(Q[100]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[108] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [101]),
        .Q(Q[101]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[109] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [102]),
        .Q(Q[102]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [10]),
        .Q(Q[10]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[110] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [103]),
        .Q(Q[103]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[111] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [104]),
        .Q(Q[104]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[112] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [105]),
        .Q(Q[105]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[113] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [106]),
        .Q(Q[106]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[114] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [107]),
        .Q(Q[107]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[115] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [108]),
        .Q(Q[108]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[116] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [109]),
        .Q(Q[109]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[117] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [110]),
        .Q(Q[110]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[118] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [111]),
        .Q(Q[111]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[119] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [112]),
        .Q(Q[112]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [11]),
        .Q(Q[11]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[120] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [113]),
        .Q(Q[113]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[121] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [114]),
        .Q(Q[114]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[122] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [115]),
        .Q(Q[115]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[123] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [116]),
        .Q(Q[116]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[124] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [117]),
        .Q(Q[117]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[125] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [118]),
        .Q(Q[118]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[126] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [119]),
        .Q(Q[119]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[127] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [120]),
        .Q(Q[120]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[128] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [121]),
        .Q(Q[121]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[129] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [122]),
        .Q(Q[122]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [12]),
        .Q(Q[12]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[130] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [123]),
        .Q(Q[123]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[131] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [124]),
        .Q(Q[124]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[132] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [125]),
        .Q(Q[125]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[133] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [126]),
        .Q(Q[126]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[134] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [127]),
        .Q(Q[127]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[135] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [128]),
        .Q(Q[128]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[136] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [129]),
        .Q(Q[129]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[137] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [130]),
        .Q(Q[130]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[138] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [131]),
        .Q(Q[131]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[139] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [132]),
        .Q(Q[132]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [13]),
        .Q(Q[13]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[140] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [133]),
        .Q(Q[133]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[141] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [134]),
        .Q(Q[134]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[142] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [135]),
        .Q(Q[135]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[143] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [136]),
        .Q(Q[136]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[144] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [137]),
        .Q(Q[137]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[145] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [138]),
        .Q(Q[138]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[146] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [139]),
        .Q(Q[139]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[147] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [140]),
        .Q(Q[140]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[149] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [141]),
        .Q(Q[141]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [14]),
        .Q(Q[14]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[150] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [142]),
        .Q(Q[142]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[151] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [143]),
        .Q(Q[143]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[152] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [144]),
        .Q(Q[144]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[153] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [145]),
        .Q(Q[145]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[155] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [146]),
        .Q(Q[146]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [15]),
        .Q(Q[15]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [16]),
        .Q(Q[16]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [17]),
        .Q(Q[17]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [18]),
        .Q(Q[18]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [19]),
        .Q(Q[19]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [1]),
        .Q(Q[1]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [20]),
        .Q(Q[20]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [21]),
        .Q(Q[21]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [22]),
        .Q(Q[22]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [23]),
        .Q(Q[23]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [24]),
        .Q(Q[24]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [25]),
        .Q(Q[25]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [26]),
        .Q(Q[26]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [27]),
        .Q(Q[27]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [28]),
        .Q(Q[28]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [29]),
        .Q(Q[29]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [2]),
        .Q(Q[2]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [30]),
        .Q(Q[30]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [31]),
        .Q(Q[31]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[32] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [32]),
        .Q(Q[32]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[33] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [33]),
        .Q(Q[33]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[34] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [34]),
        .Q(Q[34]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[35] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [35]),
        .Q(Q[35]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[36] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [36]),
        .Q(Q[36]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[37] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [37]),
        .Q(Q[37]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [3]),
        .Q(Q[3]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[40] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [38]),
        .Q(Q[38]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[41] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [39]),
        .Q(Q[39]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[42] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [40]),
        .Q(Q[40]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[45] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [41]),
        .Q(Q[41]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[47] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [42]),
        .Q(Q[42]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [4]),
        .Q(Q[4]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[50] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [43]),
        .Q(Q[43]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[51] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [44]),
        .Q(Q[44]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[52] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [45]),
        .Q(Q[45]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[53] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [46]),
        .Q(Q[46]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[54] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [47]),
        .Q(Q[47]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[55] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [48]),
        .Q(Q[48]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[56] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [49]),
        .Q(Q[49]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[57] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [50]),
        .Q(Q[50]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[58] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [51]),
        .Q(Q[51]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[59] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [52]),
        .Q(Q[52]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [5]),
        .Q(Q[5]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[60] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [53]),
        .Q(Q[53]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[61] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [54]),
        .Q(Q[54]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[62] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [55]),
        .Q(Q[55]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[63] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [56]),
        .Q(Q[56]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[64] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [57]),
        .Q(Q[57]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[65] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [58]),
        .Q(Q[58]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[66] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [59]),
        .Q(Q[59]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[67] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [60]),
        .Q(Q[60]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[68] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [61]),
        .Q(Q[61]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[69] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [62]),
        .Q(Q[62]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [6]),
        .Q(Q[6]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[70] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [63]),
        .Q(Q[63]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[71] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [64]),
        .Q(Q[64]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[72] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [65]),
        .Q(Q[65]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[73] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [66]),
        .Q(Q[66]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[74] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [67]),
        .Q(Q[67]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[75] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [68]),
        .Q(Q[68]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[76] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [69]),
        .Q(Q[69]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[77] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [70]),
        .Q(Q[70]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[78] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [71]),
        .Q(Q[71]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[79] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [72]),
        .Q(Q[72]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [7]),
        .Q(Q[7]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[80] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [73]),
        .Q(Q[73]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[81] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [74]),
        .Q(Q[74]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[82] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [75]),
        .Q(Q[75]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[83] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [76]),
        .Q(Q[76]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[84] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [77]),
        .Q(Q[77]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[85] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [78]),
        .Q(Q[78]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[86] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [79]),
        .Q(Q[79]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[87] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [80]),
        .Q(Q[80]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[88] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [81]),
        .Q(Q[81]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[89] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [82]),
        .Q(Q[82]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [8]),
        .Q(Q[8]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[90] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [83]),
        .Q(Q[83]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[91] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [84]),
        .Q(Q[84]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[92] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [85]),
        .Q(Q[85]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[93] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [86]),
        .Q(Q[86]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[94] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [87]),
        .Q(Q[87]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[95] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [88]),
        .Q(Q[88]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[96] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [89]),
        .Q(Q[89]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[97] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [90]),
        .Q(Q[90]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[98] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [91]),
        .Q(Q[91]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[99] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [92]),
        .Q(Q[92]),
        .R(\q[155]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[12]_0 [9]),
        .Q(Q[9]),
        .R(\q[155]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "DFF" *) 
module DFF__parameterized1
   (D,
    Q,
    spo,
    SR,
    \q_reg[149] ,
    cpu_clk_BUFG);
  output [68:0]D;
  output [31:0]Q;
  input [31:0]spo;
  input [0:0]SR;
  input [71:0]\q_reg[149] ;
  input cpu_clk_BUFG;

  wire [68:0]D;
  wire [31:0]Q;
  wire [0:0]SR;
  wire cpu_clk_BUFG;
  wire [7:0]data0;
  wire \q[47]_i_2__0_n_0 ;
  wire \q[48]_i_2__0_n_0 ;
  wire \q[49]_i_2_n_0 ;
  wire \q[50]_i_2__0_n_0 ;
  wire \q[51]_i_2__0_n_0 ;
  wire \q[52]_i_2__0_n_0 ;
  wire \q[53]_i_2_n_0 ;
  wire \q[54]_i_2_n_0 ;
  wire \q[54]_i_3_n_0 ;
  wire \q[70]_i_2_n_0 ;
  wire [71:0]\q_reg[149] ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[1] ;
  wire \q_reg_n_0_[2] ;
  wire [31:0]spo;

  LUT6 #(
    .INIT(64'hAAAAAAAAFCAC0CAC)) 
    \q[39]_i_1 
       (.I0(spo[0]),
        .I1(data0[0]),
        .I2(\q_reg_n_0_[0] ),
        .I3(D[6]),
        .I4(spo[16]),
        .I5(\q_reg_n_0_[1] ),
        .O(D[37]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \q[39]_i_2 
       (.I0(spo[16]),
        .I1(spo[24]),
        .I2(spo[0]),
        .I3(D[6]),
        .I4(D[5]),
        .I5(spo[8]),
        .O(data0[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFCAC0CAC)) 
    \q[40]_i_1 
       (.I0(spo[1]),
        .I1(data0[1]),
        .I2(\q_reg_n_0_[0] ),
        .I3(D[6]),
        .I4(spo[17]),
        .I5(\q_reg_n_0_[1] ),
        .O(D[38]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \q[40]_i_2 
       (.I0(spo[17]),
        .I1(spo[25]),
        .I2(spo[1]),
        .I3(D[6]),
        .I4(D[5]),
        .I5(spo[9]),
        .O(data0[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFCAC0CAC)) 
    \q[41]_i_1 
       (.I0(spo[2]),
        .I1(data0[2]),
        .I2(\q_reg_n_0_[0] ),
        .I3(D[6]),
        .I4(spo[18]),
        .I5(\q_reg_n_0_[1] ),
        .O(D[39]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \q[41]_i_2 
       (.I0(spo[18]),
        .I1(spo[26]),
        .I2(spo[2]),
        .I3(D[6]),
        .I4(D[5]),
        .I5(spo[10]),
        .O(data0[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFCAC0CAC)) 
    \q[42]_i_1 
       (.I0(spo[3]),
        .I1(data0[3]),
        .I2(\q_reg_n_0_[0] ),
        .I3(D[6]),
        .I4(spo[19]),
        .I5(\q_reg_n_0_[1] ),
        .O(D[40]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \q[42]_i_2 
       (.I0(spo[19]),
        .I1(spo[27]),
        .I2(spo[3]),
        .I3(D[6]),
        .I4(D[5]),
        .I5(spo[11]),
        .O(data0[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFCAC0CAC)) 
    \q[43]_i_1 
       (.I0(spo[4]),
        .I1(data0[4]),
        .I2(\q_reg_n_0_[0] ),
        .I3(D[6]),
        .I4(spo[20]),
        .I5(\q_reg_n_0_[1] ),
        .O(D[41]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \q[43]_i_2 
       (.I0(spo[20]),
        .I1(spo[28]),
        .I2(spo[4]),
        .I3(D[6]),
        .I4(D[5]),
        .I5(spo[12]),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFCAC0CAC)) 
    \q[44]_i_1 
       (.I0(spo[5]),
        .I1(data0[5]),
        .I2(\q_reg_n_0_[0] ),
        .I3(D[6]),
        .I4(spo[21]),
        .I5(\q_reg_n_0_[1] ),
        .O(D[42]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \q[44]_i_2 
       (.I0(spo[21]),
        .I1(spo[29]),
        .I2(spo[5]),
        .I3(D[6]),
        .I4(D[5]),
        .I5(spo[13]),
        .O(data0[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFCAC0CAC)) 
    \q[45]_i_1 
       (.I0(spo[6]),
        .I1(data0[6]),
        .I2(\q_reg_n_0_[0] ),
        .I3(D[6]),
        .I4(spo[22]),
        .I5(\q_reg_n_0_[1] ),
        .O(D[43]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \q[45]_i_2 
       (.I0(spo[22]),
        .I1(spo[30]),
        .I2(spo[6]),
        .I3(D[6]),
        .I4(D[5]),
        .I5(spo[14]),
        .O(data0[6]));
  LUT6 #(
    .INIT(64'hFF00FF00EEE22E22)) 
    \q[46]_i_1 
       (.I0(data0[7]),
        .I1(\q_reg_n_0_[0] ),
        .I2(D[6]),
        .I3(spo[7]),
        .I4(spo[23]),
        .I5(\q_reg_n_0_[1] ),
        .O(D[44]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \q[46]_i_2 
       (.I0(spo[23]),
        .I1(spo[31]),
        .I2(spo[7]),
        .I3(D[6]),
        .I4(D[5]),
        .I5(spo[15]),
        .O(data0[7]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[47]_i_1 
       (.I0(spo[8]),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q[47]_i_2__0_n_0 ),
        .O(D[45]));
  LUT6 #(
    .INIT(64'hCC00C0C0EE22E2E2)) 
    \q[47]_i_2__0 
       (.I0(data0[7]),
        .I1(\q_reg_n_0_[0] ),
        .I2(spo[8]),
        .I3(spo[24]),
        .I4(D[6]),
        .I5(\q_reg_n_0_[2] ),
        .O(\q[47]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[48]_i_1 
       (.I0(spo[9]),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q[48]_i_2__0_n_0 ),
        .O(D[46]));
  LUT6 #(
    .INIT(64'hCC00C0C0EE22E2E2)) 
    \q[48]_i_2__0 
       (.I0(data0[7]),
        .I1(\q_reg_n_0_[0] ),
        .I2(spo[9]),
        .I3(spo[25]),
        .I4(D[6]),
        .I5(\q_reg_n_0_[2] ),
        .O(\q[48]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[49]_i_1 
       (.I0(spo[10]),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q[49]_i_2_n_0 ),
        .O(D[47]));
  LUT6 #(
    .INIT(64'hCC00C0C0EE22E2E2)) 
    \q[49]_i_2 
       (.I0(data0[7]),
        .I1(\q_reg_n_0_[0] ),
        .I2(spo[10]),
        .I3(spo[26]),
        .I4(D[6]),
        .I5(\q_reg_n_0_[2] ),
        .O(\q[49]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[50]_i_1__0 
       (.I0(spo[11]),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q[50]_i_2__0_n_0 ),
        .O(D[48]));
  LUT6 #(
    .INIT(64'hCC00C0C0EE22E2E2)) 
    \q[50]_i_2__0 
       (.I0(data0[7]),
        .I1(\q_reg_n_0_[0] ),
        .I2(spo[11]),
        .I3(spo[27]),
        .I4(D[6]),
        .I5(\q_reg_n_0_[2] ),
        .O(\q[50]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[51]_i_1__0 
       (.I0(spo[12]),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q[51]_i_2__0_n_0 ),
        .O(D[49]));
  LUT6 #(
    .INIT(64'hCC00C0C0EE22E2E2)) 
    \q[51]_i_2__0 
       (.I0(data0[7]),
        .I1(\q_reg_n_0_[0] ),
        .I2(spo[12]),
        .I3(spo[28]),
        .I4(D[6]),
        .I5(\q_reg_n_0_[2] ),
        .O(\q[51]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[52]_i_1__0 
       (.I0(spo[13]),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q[52]_i_2__0_n_0 ),
        .O(D[50]));
  LUT6 #(
    .INIT(64'hCC00C0C0EE22E2E2)) 
    \q[52]_i_2__0 
       (.I0(data0[7]),
        .I1(\q_reg_n_0_[0] ),
        .I2(spo[13]),
        .I3(spo[29]),
        .I4(D[6]),
        .I5(\q_reg_n_0_[2] ),
        .O(\q[52]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[53]_i_1__0 
       (.I0(spo[14]),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q[53]_i_2_n_0 ),
        .O(D[51]));
  LUT6 #(
    .INIT(64'hCC00C0C0EE22E2E2)) 
    \q[53]_i_2 
       (.I0(data0[7]),
        .I1(\q_reg_n_0_[0] ),
        .I2(spo[14]),
        .I3(spo[30]),
        .I4(D[6]),
        .I5(\q_reg_n_0_[2] ),
        .O(\q[53]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FE44FE44FE44)) 
    \q[54]_i_1__0 
       (.I0(\q_reg_n_0_[1] ),
        .I1(\q[70]_i_2_n_0 ),
        .I2(\q[54]_i_2_n_0 ),
        .I3(spo[15]),
        .I4(spo[31]),
        .I5(\q[54]_i_3_n_0 ),
        .O(D[52]));
  LUT3 #(
    .INIT(8'h40)) 
    \q[54]_i_2 
       (.I0(D[6]),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[2] ),
        .O(\q[54]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \q[54]_i_3 
       (.I0(D[6]),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[2] ),
        .O(\q[54]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[55]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[16]),
        .O(D[53]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[56]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[17]),
        .O(D[54]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[57]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[18]),
        .O(D[55]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[58]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[19]),
        .O(D[56]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[59]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[20]),
        .O(D[57]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[60]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[21]),
        .O(D[58]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[61]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[22]),
        .O(D[59]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[62]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[23]),
        .O(D[60]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[63]_i_1__1 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[24]),
        .O(D[61]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[64]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[25]),
        .O(D[62]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[65]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[26]),
        .O(D[63]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[66]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[27]),
        .O(D[64]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[67]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[28]),
        .O(D[65]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[68]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[29]),
        .O(D[66]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[69]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[30]),
        .O(D[67]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[70]_i_1__0 
       (.I0(\q[70]_i_2_n_0 ),
        .I1(\q_reg_n_0_[1] ),
        .I2(spo[31]),
        .O(D[68]));
  LUT6 #(
    .INIT(64'h00000000EE2EE222)) 
    \q[70]_i_2 
       (.I0(data0[7]),
        .I1(\q_reg_n_0_[0] ),
        .I2(D[6]),
        .I3(spo[31]),
        .I4(spo[15]),
        .I5(\q_reg_n_0_[2] ),
        .O(\q[70]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [0]),
        .Q(\q_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [8]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [9]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [10]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [11]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [12]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [13]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [14]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [15]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [16]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [1]),
        .Q(\q_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [17]),
        .Q(Q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [18]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [19]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [20]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [21]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [22]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [23]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [24]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [25]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [26]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [2]),
        .Q(\q_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [27]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [28]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[32] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [29]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[33] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [30]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[34] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [31]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[35] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [32]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[36] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [33]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[37] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [34]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[38] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [35]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[39] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [36]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [3]),
        .Q(D[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[40] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [37]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[41] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [38]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[42] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [39]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[43] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [40]),
        .Q(D[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[44] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [41]),
        .Q(D[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[45] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [42]),
        .Q(D[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[46] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [43]),
        .Q(D[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[47] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [44]),
        .Q(D[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[48] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [45]),
        .Q(D[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[49] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [46]),
        .Q(D[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [4]),
        .Q(D[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[50] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [47]),
        .Q(D[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[51] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [48]),
        .Q(D[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[52] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [49]),
        .Q(D[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[53] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [50]),
        .Q(D[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[54] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [51]),
        .Q(D[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[55] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [52]),
        .Q(D[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[56] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [53]),
        .Q(D[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[57] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [54]),
        .Q(D[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[58] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [55]),
        .Q(D[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[59] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [56]),
        .Q(D[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [5]),
        .Q(D[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[60] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [57]),
        .Q(D[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[61] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [58]),
        .Q(D[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[62] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [59]),
        .Q(D[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[63] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [60]),
        .Q(D[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[64] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [61]),
        .Q(D[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[65] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [62]),
        .Q(D[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[66] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [63]),
        .Q(D[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[67] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [64]),
        .Q(D[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[68] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [65]),
        .Q(D[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[69] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [66]),
        .Q(D[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[70] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [67]),
        .Q(D[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[71] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [68]),
        .Q(D[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[72] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [69]),
        .Q(D[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[73] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [70]),
        .Q(D[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[74] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [71]),
        .Q(D[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [6]),
        .Q(D[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(\q_reg[149] [7]),
        .Q(D[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "DFF" *) 
module DFF__parameterized2
   (\PC_reg_reg[1] ,
    \q_reg[113] ,
    \PC_reg_reg[1]_0 ,
    \PC_reg_reg[1]_1 ,
    Q,
    \q_reg[21]_0 ,
    ReadData20,
    w_RegWriteData_wb,
    \q_reg[19]_0 ,
    \q_reg[20]_0 ,
    \q_reg[20]_1 ,
    \q_reg[20]_2 ,
    \q_reg[20]_3 ,
    \q_reg[20]_4 ,
    \q_reg[20]_5 ,
    ReadData10,
    \q_reg[15]_0 ,
    SR,
    D,
    cpu_clk_BUFG);
  output \PC_reg_reg[1] ;
  output [63:0]\q_reg[113] ;
  output \PC_reg_reg[1]_0 ;
  output \PC_reg_reg[1]_1 ;
  output [68:0]Q;
  input \q_reg[21]_0 ;
  input [30:0]ReadData20;
  input [18:0]w_RegWriteData_wb;
  input [7:0]\q_reg[19]_0 ;
  input \q_reg[20]_0 ;
  input \q_reg[20]_1 ;
  input \q_reg[20]_2 ;
  input \q_reg[20]_3 ;
  input \q_reg[20]_4 ;
  input \q_reg[20]_5 ;
  input [31:0]ReadData10;
  input \q_reg[15]_0 ;
  input [0:0]SR;
  input [68:0]D;
  input cpu_clk_BUFG;

  wire [68:0]D;
  wire \PC_reg[31]_i_100_n_0 ;
  wire \PC_reg[31]_i_101_n_0 ;
  wire \PC_reg[31]_i_102_n_0 ;
  wire \PC_reg[31]_i_103_n_0 ;
  wire \PC_reg[31]_i_104_n_0 ;
  wire \PC_reg[31]_i_105_n_0 ;
  wire \PC_reg[31]_i_106_n_0 ;
  wire \PC_reg[31]_i_107_n_0 ;
  wire \PC_reg[31]_i_110_n_0 ;
  wire \PC_reg[31]_i_111_n_0 ;
  wire \PC_reg[31]_i_112_n_0 ;
  wire \PC_reg[31]_i_113_n_0 ;
  wire \PC_reg[31]_i_114_n_0 ;
  wire \PC_reg[31]_i_118_n_0 ;
  wire \PC_reg[31]_i_119_n_0 ;
  wire \PC_reg[31]_i_26_n_0 ;
  wire \PC_reg[31]_i_27_n_0 ;
  wire \PC_reg[31]_i_28_n_0 ;
  wire \PC_reg[31]_i_29_n_0 ;
  wire \PC_reg[31]_i_30_n_0 ;
  wire \PC_reg[31]_i_31_n_0 ;
  wire \PC_reg[31]_i_32_n_0 ;
  wire \PC_reg[31]_i_33_n_0 ;
  wire \PC_reg[31]_i_34_n_0 ;
  wire \PC_reg[31]_i_35_n_0 ;
  wire \PC_reg[31]_i_36_n_0 ;
  wire \PC_reg[31]_i_37_n_0 ;
  wire \PC_reg[31]_i_38_n_0 ;
  wire \PC_reg[31]_i_39_n_0 ;
  wire \PC_reg[31]_i_40_n_0 ;
  wire \PC_reg[31]_i_41_n_0 ;
  wire \PC_reg[31]_i_42_n_0 ;
  wire \PC_reg[31]_i_43_n_0 ;
  wire \PC_reg[31]_i_44_n_0 ;
  wire \PC_reg[31]_i_45_n_0 ;
  wire \PC_reg[31]_i_46_n_0 ;
  wire \PC_reg[31]_i_47_n_0 ;
  wire \PC_reg[31]_i_48_n_0 ;
  wire \PC_reg[31]_i_49_n_0 ;
  wire \PC_reg[31]_i_50_n_0 ;
  wire \PC_reg[31]_i_51_n_0 ;
  wire \PC_reg[31]_i_52_n_0 ;
  wire \PC_reg[31]_i_53_n_0 ;
  wire \PC_reg[31]_i_54_n_0 ;
  wire \PC_reg[31]_i_55_n_0 ;
  wire \PC_reg[31]_i_56_n_0 ;
  wire \PC_reg[31]_i_57_n_0 ;
  wire \PC_reg[31]_i_58_n_0 ;
  wire \PC_reg[31]_i_59_n_0 ;
  wire \PC_reg[31]_i_60_n_0 ;
  wire \PC_reg[31]_i_61_n_0 ;
  wire \PC_reg[31]_i_62_n_0 ;
  wire \PC_reg[31]_i_63_n_0 ;
  wire \PC_reg[31]_i_64_n_0 ;
  wire \PC_reg[31]_i_65_n_0 ;
  wire \PC_reg[31]_i_66_n_0 ;
  wire \PC_reg[31]_i_67_n_0 ;
  wire \PC_reg[31]_i_68_n_0 ;
  wire \PC_reg[31]_i_69_n_0 ;
  wire \PC_reg[31]_i_70_n_0 ;
  wire \PC_reg[31]_i_71_n_0 ;
  wire \PC_reg[31]_i_72_n_0 ;
  wire \PC_reg[31]_i_73_n_0 ;
  wire \PC_reg[31]_i_74_n_0 ;
  wire \PC_reg[31]_i_75_n_0 ;
  wire \PC_reg[31]_i_76_n_0 ;
  wire \PC_reg[31]_i_77_n_0 ;
  wire \PC_reg[31]_i_78_n_0 ;
  wire \PC_reg[31]_i_79_n_0 ;
  wire \PC_reg[31]_i_80_n_0 ;
  wire \PC_reg[31]_i_81_n_0 ;
  wire \PC_reg[31]_i_82_n_0 ;
  wire \PC_reg[31]_i_83_n_0 ;
  wire \PC_reg[31]_i_84_n_0 ;
  wire \PC_reg[31]_i_85_n_0 ;
  wire \PC_reg[31]_i_86_n_0 ;
  wire \PC_reg[31]_i_87_n_0 ;
  wire \PC_reg[31]_i_88_n_0 ;
  wire \PC_reg[31]_i_89_n_0 ;
  wire \PC_reg[31]_i_90_n_0 ;
  wire \PC_reg[31]_i_91_n_0 ;
  wire \PC_reg[31]_i_92_n_0 ;
  wire \PC_reg[31]_i_93_n_0 ;
  wire \PC_reg[31]_i_94_n_0 ;
  wire \PC_reg[31]_i_95_n_0 ;
  wire \PC_reg[31]_i_96_n_0 ;
  wire \PC_reg[31]_i_97_n_0 ;
  wire \PC_reg[31]_i_98_n_0 ;
  wire \PC_reg[31]_i_99_n_0 ;
  wire \PC_reg_reg[1] ;
  wire \PC_reg_reg[1]_0 ;
  wire \PC_reg_reg[1]_1 ;
  wire [68:0]Q;
  wire [31:0]ReadData10;
  wire [30:0]ReadData20;
  wire [0:0]SR;
  wire cpu_clk_BUFG;
  wire \q[113]_i_2_n_0 ;
  wire \q[51]_i_2_n_0 ;
  wire \q[51]_i_3_n_0 ;
  wire \q[81]_i_2_n_0 ;
  wire [63:0]\q_reg[113] ;
  wire \q_reg[15]_0 ;
  wire [7:0]\q_reg[19]_0 ;
  wire \q_reg[20]_0 ;
  wire \q_reg[20]_1 ;
  wire \q_reg[20]_2 ;
  wire \q_reg[20]_3 ;
  wire \q_reg[20]_4 ;
  wire \q_reg[20]_5 ;
  wire \q_reg[21]_0 ;
  wire [18:0]w_RegWriteData_wb;

  LUT4 #(
    .INIT(16'h011F)) 
    \PC_reg[31]_i_100 
       (.I0(\q_reg[113] [44]),
        .I1(\PC_reg[31]_i_59_n_0 ),
        .I2(\q_reg[113] [45]),
        .I3(\PC_reg[31]_i_60_n_0 ),
        .O(\PC_reg[31]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h8AAA8AAA8A888AAA)) 
    \PC_reg[31]_i_101 
       (.I0(\PC_reg[31]_i_114_n_0 ),
        .I1(\q_reg[113] [47]),
        .I2(w_RegWriteData_wb[10]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[14]),
        .I5(\q_reg[21]_0 ),
        .O(\PC_reg[31]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h55DFFFDF00455545)) 
    \PC_reg[31]_i_102 
       (.I0(\PC_reg[31]_i_63_n_0 ),
        .I1(\q_reg[21]_0 ),
        .I2(ReadData20[14]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(w_RegWriteData_wb[10]),
        .I5(\q_reg[113] [47]),
        .O(\PC_reg[31]_i_102_n_0 ));
  LUT5 #(
    .INIT(32'hAAEFFFEF)) 
    \PC_reg[31]_i_103 
       (.I0(\q_reg[113] [48]),
        .I1(\q_reg[21]_0 ),
        .I2(ReadData20[15]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(w_RegWriteData_wb[11]),
        .O(\PC_reg[31]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h0000FD5DFD5DFFFF)) 
    \PC_reg[31]_i_104 
       (.I0(\q_reg[113] [40]),
        .I1(\q_reg[20]_0 ),
        .I2(\q[81]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[4]),
        .I4(\q_reg[113] [41]),
        .I5(\PC_reg[31]_i_89_n_0 ),
        .O(\PC_reg[31]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h2B2B222B2222222B)) 
    \PC_reg[31]_i_105 
       (.I0(\q_reg[113] [1]),
        .I1(\q_reg[113] [33]),
        .I2(\q_reg[113] [32]),
        .I3(\q_reg[20]_4 ),
        .I4(\q[81]_i_2_n_0 ),
        .I5(w_RegWriteData_wb[0]),
        .O(\PC_reg[31]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h47474747FF00FFFF)) 
    \PC_reg[31]_i_106 
       (.I0(Q[40]),
        .I1(Q[3]),
        .I2(Q[8]),
        .I3(\q_reg[21]_0 ),
        .I4(ReadData20[2]),
        .I5(\q[81]_i_2_n_0 ),
        .O(\PC_reg[31]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h000054045404FFFF)) 
    \PC_reg[31]_i_107 
       (.I0(\q_reg[113] [40]),
        .I1(\q_reg[20]_0 ),
        .I2(\q[81]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[4]),
        .I4(\q_reg[113] [41]),
        .I5(\PC_reg[31]_i_89_n_0 ),
        .O(\PC_reg[31]_i_107_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFF704000004)) 
    \PC_reg[31]_i_110 
       (.I0(w_RegWriteData_wb[3]),
        .I1(\q[51]_i_2_n_0 ),
        .I2(\q[51]_i_3_n_0 ),
        .I3(\q_reg[19]_0 [2]),
        .I4(Q[2]),
        .I5(\q_reg[20]_3 ),
        .O(\PC_reg[31]_i_110_n_0 ));
  LUT5 #(
    .INIT(32'hAA595559)) 
    \PC_reg[31]_i_111 
       (.I0(\q_reg[113] [37]),
        .I1(ReadData20[4]),
        .I2(\q_reg[21]_0 ),
        .I3(\q[81]_i_2_n_0 ),
        .I4(w_RegWriteData_wb[3]),
        .O(\PC_reg[31]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF1D001DFF1DFF)) 
    \PC_reg[31]_i_112 
       (.I0(Q[9]),
        .I1(Q[3]),
        .I2(Q[41]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(\q_reg[21]_0 ),
        .I5(ReadData20[3]),
        .O(\PC_reg[31]_i_112_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1FF11FF1FFFF)) 
    \PC_reg[31]_i_113 
       (.I0(\PC_reg[31]_i_67_n_0 ),
        .I1(\PC_reg[31]_i_118_n_0 ),
        .I2(\q_reg[113] [1]),
        .I3(\q_reg[113] [33]),
        .I4(\q_reg[113] [32]),
        .I5(\PC_reg[31]_i_119_n_0 ),
        .O(\PC_reg[31]_i_113_n_0 ));
  LUT5 #(
    .INIT(32'hBBABFFEF)) 
    \PC_reg[31]_i_114 
       (.I0(\q_reg[113] [46]),
        .I1(\q[81]_i_2_n_0 ),
        .I2(ReadData20[13]),
        .I3(\q_reg[21]_0 ),
        .I4(w_RegWriteData_wb[9]),
        .O(\PC_reg[31]_i_114_n_0 ));
  LUT5 #(
    .INIT(32'h44540010)) 
    \PC_reg[31]_i_118 
       (.I0(\q_reg[113] [44]),
        .I1(\q[81]_i_2_n_0 ),
        .I2(ReadData20[11]),
        .I3(\q_reg[21]_0 ),
        .I4(w_RegWriteData_wb[7]),
        .O(\PC_reg[31]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF1D001DFF1DFF)) 
    \PC_reg[31]_i_119 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[37]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(\q_reg[21]_0 ),
        .I5(ReadData20[0]),
        .O(\PC_reg[31]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \PC_reg[31]_i_15 
       (.I0(\PC_reg[31]_i_26_n_0 ),
        .I1(\PC_reg[31]_i_27_n_0 ),
        .I2(\PC_reg[31]_i_28_n_0 ),
        .I3(\PC_reg[31]_i_29_n_0 ),
        .I4(\PC_reg[31]_i_30_n_0 ),
        .I5(\PC_reg[31]_i_31_n_0 ),
        .O(\PC_reg_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFF20DFFFFFFFF)) 
    \PC_reg[31]_i_17 
       (.I0(\q_reg[113] [63]),
        .I1(\q_reg[113] [31]),
        .I2(\PC_reg_reg[1] ),
        .I3(\q_reg[19]_0 [0]),
        .I4(\q_reg[19]_0 [1]),
        .I5(\q_reg[19]_0 [2]),
        .O(\PC_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0C4DCF4D00000000)) 
    \PC_reg[31]_i_25 
       (.I0(\PC_reg[31]_i_32_n_0 ),
        .I1(\q_reg[113] [30]),
        .I2(\q_reg[113] [62]),
        .I3(\PC_reg[31]_i_33_n_0 ),
        .I4(\PC_reg[31]_i_34_n_0 ),
        .I5(\PC_reg[31]_i_35_n_0 ),
        .O(\PC_reg_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF71E0E071)) 
    \PC_reg[31]_i_26 
       (.I0(\PC_reg[31]_i_36_n_0 ),
        .I1(\q_reg[113] [46]),
        .I2(\PC_reg[31]_i_37_n_0 ),
        .I3(\q_reg[113] [47]),
        .I4(\q_reg[113] [15]),
        .I5(\PC_reg[31]_i_38_n_0 ),
        .O(\PC_reg[31]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A22A0000)) 
    \PC_reg[31]_i_27 
       (.I0(\PC_reg[31]_i_39_n_0 ),
        .I1(\PC_reg[31]_i_40_n_0 ),
        .I2(\q_reg[113] [11]),
        .I3(\q_reg[113] [43]),
        .I4(\PC_reg[31]_i_41_n_0 ),
        .I5(\PC_reg[31]_i_42_n_0 ),
        .O(\PC_reg[31]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFDDDFDDFDFFFD)) 
    \PC_reg[31]_i_28 
       (.I0(\PC_reg[31]_i_43_n_0 ),
        .I1(\PC_reg[31]_i_44_n_0 ),
        .I2(\PC_reg[31]_i_45_n_0 ),
        .I3(\PC_reg[31]_i_46_n_0 ),
        .I4(\PC_reg[31]_i_47_n_0 ),
        .I5(\PC_reg[31]_i_48_n_0 ),
        .O(\PC_reg[31]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h7D7D7DE7E7E77DE7)) 
    \PC_reg[31]_i_29 
       (.I0(\PC_reg[31]_i_35_n_0 ),
        .I1(\q_reg[113] [62]),
        .I2(\q_reg[113] [30]),
        .I3(\PC_reg[31]_i_32_n_0 ),
        .I4(\PC_reg[31]_i_33_n_0 ),
        .I5(\PC_reg[31]_i_34_n_0 ),
        .O(\PC_reg[31]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hF96F6FF6)) 
    \PC_reg[31]_i_30 
       (.I0(\q_reg[113] [61]),
        .I1(\q_reg[113] [29]),
        .I2(\q_reg[113] [60]),
        .I3(\q_reg[113] [28]),
        .I4(\PC_reg[31]_i_33_n_0 ),
        .O(\PC_reg[31]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PC_reg[31]_i_31 
       (.I0(\PC_reg[31]_i_49_n_0 ),
        .I1(\PC_reg[31]_i_50_n_0 ),
        .I2(\PC_reg[31]_i_51_n_0 ),
        .I3(\PC_reg[31]_i_52_n_0 ),
        .O(\PC_reg[31]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hBF0B)) 
    \PC_reg[31]_i_32 
       (.I0(\q_reg[113] [60]),
        .I1(\q_reg[113] [28]),
        .I2(\q_reg[113] [29]),
        .I3(\q_reg[113] [61]),
        .O(\PC_reg[31]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hEFEA202A)) 
    \PC_reg[31]_i_33 
       (.I0(\PC_reg[31]_i_53_n_0 ),
        .I1(\PC_reg[31]_i_54_n_0 ),
        .I2(\PC_reg[31]_i_55_n_0 ),
        .I3(\PC_reg[31]_i_56_n_0 ),
        .I4(\PC_reg[31]_i_57_n_0 ),
        .O(\PC_reg[31]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \PC_reg[31]_i_34 
       (.I0(\q_reg[113] [60]),
        .I1(\q_reg[113] [28]),
        .I2(\q_reg[113] [29]),
        .I3(\q_reg[113] [61]),
        .O(\PC_reg[31]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'hAA655565)) 
    \PC_reg[31]_i_35 
       (.I0(\q_reg[113] [63]),
        .I1(\q_reg[21]_0 ),
        .I2(ReadData20[30]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(w_RegWriteData_wb[18]),
        .O(\PC_reg[31]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h47474747FF00FFFF)) 
    \PC_reg[31]_i_36 
       (.I0(Q[51]),
        .I1(Q[3]),
        .I2(Q[19]),
        .I3(\q_reg[21]_0 ),
        .I4(ReadData20[13]),
        .I5(\q[81]_i_2_n_0 ),
        .O(\PC_reg[31]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h002B2BFF)) 
    \PC_reg[31]_i_37 
       (.I0(\PC_reg[31]_i_58_n_0 ),
        .I1(\q_reg[113] [44]),
        .I2(\PC_reg[31]_i_59_n_0 ),
        .I3(\q_reg[113] [45]),
        .I4(\PC_reg[31]_i_60_n_0 ),
        .O(\PC_reg[31]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hF00F0FF9)) 
    \PC_reg[31]_i_38 
       (.I0(\q_reg[113] [11]),
        .I1(\q_reg[113] [43]),
        .I2(\q_reg[113] [42]),
        .I3(\PC_reg[31]_i_61_n_0 ),
        .I4(\PC_reg[31]_i_62_n_0 ),
        .O(\PC_reg[31]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hEBAA)) 
    \PC_reg[31]_i_39 
       (.I0(\PC_reg[31]_i_37_n_0 ),
        .I1(\q_reg[113] [47]),
        .I2(\q_reg[113] [15]),
        .I3(\PC_reg[31]_i_63_n_0 ),
        .O(\PC_reg[31]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h8E8E888EEEEEE8EE)) 
    \PC_reg[31]_i_40 
       (.I0(\PC_reg[31]_i_62_n_0 ),
        .I1(\q_reg[113] [42]),
        .I2(\q[81]_i_2_n_0 ),
        .I3(ReadData20[9]),
        .I4(\q_reg[21]_0 ),
        .I5(w_RegWriteData_wb[6]),
        .O(\PC_reg[31]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h4290)) 
    \PC_reg[31]_i_41 
       (.I0(\q_reg[113] [8]),
        .I1(\q_reg[113] [40]),
        .I2(\PC_reg[31]_i_64_n_0 ),
        .I3(\PC_reg[31]_i_65_n_0 ),
        .O(\PC_reg[31]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFFEFAFEFAFEFF)) 
    \PC_reg[31]_i_42 
       (.I0(\PC_reg[31]_i_66_n_0 ),
        .I1(\PC_reg[31]_i_67_n_0 ),
        .I2(\PC_reg[31]_i_68_n_0 ),
        .I3(\PC_reg[31]_i_58_n_0 ),
        .I4(\PC_reg[31]_i_59_n_0 ),
        .I5(\q_reg[113] [44]),
        .O(\PC_reg[31]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h4944499920222000)) 
    \PC_reg[31]_i_43 
       (.I0(\q_reg[113] [24]),
        .I1(\q_reg[113] [56]),
        .I2(\PC_reg[31]_i_54_n_0 ),
        .I3(\PC_reg[31]_i_55_n_0 ),
        .I4(\PC_reg[31]_i_56_n_0 ),
        .I5(\PC_reg[31]_i_69_n_0 ),
        .O(\PC_reg[31]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h66655565666AAA6A)) 
    \PC_reg[31]_i_44 
       (.I0(\PC_reg[31]_i_70_n_0 ),
        .I1(\PC_reg[31]_i_71_n_0 ),
        .I2(\PC_reg[31]_i_56_n_0 ),
        .I3(\PC_reg[31]_i_55_n_0 ),
        .I4(\PC_reg[31]_i_54_n_0 ),
        .I5(\PC_reg[31]_i_72_n_0 ),
        .O(\PC_reg[31]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hBF0B)) 
    \PC_reg[31]_i_45 
       (.I0(\q_reg[113] [56]),
        .I1(\q_reg[113] [24]),
        .I2(\q_reg[113] [25]),
        .I3(\q_reg[113] [57]),
        .O(\PC_reg[31]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \PC_reg[31]_i_46 
       (.I0(\PC_reg[31]_i_54_n_0 ),
        .I1(\PC_reg[31]_i_55_n_0 ),
        .I2(\PC_reg[31]_i_56_n_0 ),
        .O(\PC_reg[31]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hD0FD)) 
    \PC_reg[31]_i_47 
       (.I0(\q_reg[113] [56]),
        .I1(\q_reg[113] [24]),
        .I2(\q_reg[113] [25]),
        .I3(\q_reg[113] [57]),
        .O(\PC_reg[31]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h95959A95)) 
    \PC_reg[31]_i_48 
       (.I0(\q_reg[113] [58]),
        .I1(w_RegWriteData_wb[16]),
        .I2(\q[81]_i_2_n_0 ),
        .I3(ReadData20[25]),
        .I4(\q_reg[21]_0 ),
        .O(\PC_reg[31]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h7D7DE77DE7E7E77D)) 
    \PC_reg[31]_i_49 
       (.I0(\PC_reg[31]_i_73_n_0 ),
        .I1(\q_reg[113] [54]),
        .I2(\q_reg[113] [22]),
        .I3(\PC_reg[31]_i_74_n_0 ),
        .I4(\PC_reg[31]_i_55_n_0 ),
        .I5(\PC_reg[31]_i_75_n_0 ),
        .O(\PC_reg[31]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h6FF6F96F)) 
    \PC_reg[31]_i_50 
       (.I0(\q_reg[113] [53]),
        .I1(\q_reg[113] [21]),
        .I2(\q_reg[113] [52]),
        .I3(\q_reg[113] [20]),
        .I4(\PC_reg[31]_i_55_n_0 ),
        .O(\PC_reg[31]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hDBDBDBBEBEBEDBBE)) 
    \PC_reg[31]_i_51 
       (.I0(\PC_reg[31]_i_76_n_0 ),
        .I1(\q_reg[113] [50]),
        .I2(\q_reg[113] [18]),
        .I3(\PC_reg[31]_i_77_n_0 ),
        .I4(\PC_reg[31]_i_78_n_0 ),
        .I5(\PC_reg[31]_i_79_n_0 ),
        .O(\PC_reg[31]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'h6FF6F69F)) 
    \PC_reg[31]_i_52 
       (.I0(\q_reg[113] [49]),
        .I1(\q_reg[113] [17]),
        .I2(\q_reg[113] [16]),
        .I3(\q_reg[113] [48]),
        .I4(\PC_reg[31]_i_78_n_0 ),
        .O(\PC_reg[31]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'h71FF0071)) 
    \PC_reg[31]_i_53 
       (.I0(\PC_reg[31]_i_45_n_0 ),
        .I1(\q_reg[113] [58]),
        .I2(\q_reg[113] [26]),
        .I3(\q_reg[113] [59]),
        .I4(\q_reg[113] [27]),
        .O(\PC_reg[31]_i_53_n_0 ));
  LUT5 #(
    .INIT(32'h4DCF0C4D)) 
    \PC_reg[31]_i_54 
       (.I0(\PC_reg[31]_i_75_n_0 ),
        .I1(\q_reg[113] [23]),
        .I2(\q_reg[113] [55]),
        .I3(\q_reg[113] [54]),
        .I4(\q_reg[113] [22]),
        .O(\PC_reg[31]_i_54_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \PC_reg[31]_i_55 
       (.I0(\PC_reg[31]_i_80_n_0 ),
        .I1(\PC_reg[31]_i_81_n_0 ),
        .I2(\PC_reg[31]_i_58_n_0 ),
        .I3(\PC_reg[31]_i_82_n_0 ),
        .I4(\PC_reg[31]_i_83_n_0 ),
        .O(\PC_reg[31]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'h8ECF0C8E)) 
    \PC_reg[31]_i_56 
       (.I0(\PC_reg[31]_i_74_n_0 ),
        .I1(\q_reg[113] [23]),
        .I2(\q_reg[113] [55]),
        .I3(\q_reg[113] [54]),
        .I4(\q_reg[113] [22]),
        .O(\PC_reg[31]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'hD4FF00D4)) 
    \PC_reg[31]_i_57 
       (.I0(\q_reg[113] [58]),
        .I1(\q_reg[113] [26]),
        .I2(\PC_reg[31]_i_47_n_0 ),
        .I3(\q_reg[113] [59]),
        .I4(\q_reg[113] [27]),
        .O(\PC_reg[31]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \PC_reg[31]_i_58 
       (.I0(\PC_reg[31]_i_84_n_0 ),
        .I1(\PC_reg[31]_i_85_n_0 ),
        .I2(\PC_reg[31]_i_86_n_0 ),
        .I3(\PC_reg[31]_i_87_n_0 ),
        .I4(\PC_reg[31]_i_88_n_0 ),
        .O(\PC_reg[31]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h47474747FF00FFFF)) 
    \PC_reg[31]_i_59 
       (.I0(Q[49]),
        .I1(Q[3]),
        .I2(Q[17]),
        .I3(\q_reg[21]_0 ),
        .I4(ReadData20[11]),
        .I5(\q[81]_i_2_n_0 ),
        .O(\PC_reg[31]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h47474747FF00FFFF)) 
    \PC_reg[31]_i_60 
       (.I0(Q[50]),
        .I1(Q[3]),
        .I2(Q[18]),
        .I3(\q_reg[21]_0 ),
        .I4(ReadData20[12]),
        .I5(\q[81]_i_2_n_0 ),
        .O(\PC_reg[31]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h47474747FF00FFFF)) 
    \PC_reg[31]_i_61 
       (.I0(Q[47]),
        .I1(Q[3]),
        .I2(Q[15]),
        .I3(\q_reg[21]_0 ),
        .I4(ReadData20[9]),
        .I5(\q[81]_i_2_n_0 ),
        .O(\PC_reg[31]_i_61_n_0 ));
  LUT5 #(
    .INIT(32'hF220FBB0)) 
    \PC_reg[31]_i_62 
       (.I0(\q_reg[113] [40]),
        .I1(\q_reg[113] [8]),
        .I2(\q_reg[113] [41]),
        .I3(\PC_reg[31]_i_89_n_0 ),
        .I4(\PC_reg[31]_i_65_n_0 ),
        .O(\PC_reg[31]_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hDDFD5575)) 
    \PC_reg[31]_i_63 
       (.I0(\q_reg[113] [46]),
        .I1(\q[81]_i_2_n_0 ),
        .I2(ReadData20[13]),
        .I3(\q_reg[21]_0 ),
        .I4(w_RegWriteData_wb[9]),
        .O(\PC_reg[31]_i_63_n_0 ));
  LUT5 #(
    .INIT(32'h99A95565)) 
    \PC_reg[31]_i_64 
       (.I0(\q_reg[113] [41]),
        .I1(\q[81]_i_2_n_0 ),
        .I2(ReadData20[8]),
        .I3(\q_reg[21]_0 ),
        .I4(w_RegWriteData_wb[5]),
        .O(\PC_reg[31]_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h0000BF8F)) 
    \PC_reg[31]_i_65 
       (.I0(\PC_reg[31]_i_90_n_0 ),
        .I1(\PC_reg[31]_i_86_n_0 ),
        .I2(\PC_reg[31]_i_91_n_0 ),
        .I3(\PC_reg[31]_i_92_n_0 ),
        .I4(\PC_reg[31]_i_93_n_0 ),
        .O(\PC_reg[31]_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hEFFEFEEF)) 
    \PC_reg[31]_i_66 
       (.I0(\PC_reg[31]_i_94_n_0 ),
        .I1(\PC_reg[31]_i_95_n_0 ),
        .I2(\q_reg[113] [38]),
        .I3(\PC_reg[31]_i_96_n_0 ),
        .I4(\PC_reg[31]_i_97_n_0 ),
        .O(\PC_reg[31]_i_66_n_0 ));
  LUT5 #(
    .INIT(32'h99A95565)) 
    \PC_reg[31]_i_67 
       (.I0(\q_reg[113] [45]),
        .I1(\q[81]_i_2_n_0 ),
        .I2(ReadData20[12]),
        .I3(\q_reg[21]_0 ),
        .I4(w_RegWriteData_wb[8]),
        .O(\PC_reg[31]_i_67_n_0 ));
  LUT5 #(
    .INIT(32'h69996669)) 
    \PC_reg[31]_i_68 
       (.I0(\q_reg[113] [7]),
        .I1(\q_reg[113] [39]),
        .I2(\q_reg[113] [38]),
        .I3(\PC_reg[31]_i_96_n_0 ),
        .I4(\PC_reg[31]_i_97_n_0 ),
        .O(\PC_reg[31]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'h95959A95)) 
    \PC_reg[31]_i_69 
       (.I0(\q_reg[113] [57]),
        .I1(w_RegWriteData_wb[15]),
        .I2(\q[81]_i_2_n_0 ),
        .I3(ReadData20[24]),
        .I4(\q_reg[21]_0 ),
        .O(\PC_reg[31]_i_69_n_0 ));
  LUT5 #(
    .INIT(32'h95959A95)) 
    \PC_reg[31]_i_70 
       (.I0(\q_reg[113] [59]),
        .I1(w_RegWriteData_wb[17]),
        .I2(\q[81]_i_2_n_0 ),
        .I3(ReadData20[26]),
        .I4(\q_reg[21]_0 ),
        .O(\PC_reg[31]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h55DFFFDF00455545)) 
    \PC_reg[31]_i_71 
       (.I0(\PC_reg[31]_i_47_n_0 ),
        .I1(\q_reg[21]_0 ),
        .I2(ReadData20[25]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(w_RegWriteData_wb[16]),
        .I5(\q_reg[113] [58]),
        .O(\PC_reg[31]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0BFB0BFB0000)) 
    \PC_reg[31]_i_72 
       (.I0(\q_reg[21]_0 ),
        .I1(ReadData20[25]),
        .I2(\q[81]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[16]),
        .I4(\q_reg[113] [58]),
        .I5(\PC_reg[31]_i_45_n_0 ),
        .O(\PC_reg[31]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'h95959A95)) 
    \PC_reg[31]_i_73 
       (.I0(\q_reg[113] [55]),
        .I1(w_RegWriteData_wb[14]),
        .I2(\q[81]_i_2_n_0 ),
        .I3(ReadData20[22]),
        .I4(\q_reg[21]_0 ),
        .O(\PC_reg[31]_i_73_n_0 ));
  LUT4 #(
    .INIT(16'hD0FD)) 
    \PC_reg[31]_i_74 
       (.I0(\q_reg[113] [52]),
        .I1(\q_reg[113] [20]),
        .I2(\q_reg[113] [21]),
        .I3(\q_reg[113] [53]),
        .O(\PC_reg[31]_i_74_n_0 ));
  LUT4 #(
    .INIT(16'hB0FB)) 
    \PC_reg[31]_i_75 
       (.I0(\q_reg[113] [52]),
        .I1(\q_reg[113] [20]),
        .I2(\q_reg[113] [53]),
        .I3(\q_reg[113] [21]),
        .O(\PC_reg[31]_i_75_n_0 ));
  LUT5 #(
    .INIT(32'h559AAA9A)) 
    \PC_reg[31]_i_76 
       (.I0(\q_reg[113] [51]),
        .I1(\q_reg[21]_0 ),
        .I2(ReadData20[18]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(w_RegWriteData_wb[13]),
        .O(\PC_reg[31]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h55100010FF755575)) 
    \PC_reg[31]_i_77 
       (.I0(\PC_reg[31]_i_98_n_0 ),
        .I1(\q_reg[21]_0 ),
        .I2(ReadData20[16]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(w_RegWriteData_wb[12]),
        .I5(\q_reg[113] [49]),
        .O(\PC_reg[31]_i_77_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4700)) 
    \PC_reg[31]_i_78 
       (.I0(\PC_reg[31]_i_99_n_0 ),
        .I1(\PC_reg[31]_i_58_n_0 ),
        .I2(\PC_reg[31]_i_100_n_0 ),
        .I3(\PC_reg[31]_i_101_n_0 ),
        .I4(\PC_reg[31]_i_102_n_0 ),
        .O(\PC_reg[31]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h55100010FF755575)) 
    \PC_reg[31]_i_79 
       (.I0(\PC_reg[31]_i_103_n_0 ),
        .I1(\q_reg[21]_0 ),
        .I2(ReadData20[16]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(w_RegWriteData_wb[12]),
        .I5(\q_reg[113] [49]),
        .O(\PC_reg[31]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'h2B00FF2B)) 
    \PC_reg[31]_i_80 
       (.I0(\q_reg[113] [50]),
        .I1(\q_reg[113] [18]),
        .I2(\PC_reg[31]_i_79_n_0 ),
        .I3(\q_reg[113] [51]),
        .I4(\q_reg[113] [19]),
        .O(\PC_reg[31]_i_80_n_0 ));
  LUT5 #(
    .INIT(32'hD400FFD4)) 
    \PC_reg[31]_i_81 
       (.I0(\PC_reg[31]_i_99_n_0 ),
        .I1(\PC_reg[31]_i_36_n_0 ),
        .I2(\q_reg[113] [46]),
        .I3(\q_reg[113] [47]),
        .I4(\q_reg[113] [15]),
        .O(\PC_reg[31]_i_81_n_0 ));
  LUT5 #(
    .INIT(32'hCF4D4D0C)) 
    \PC_reg[31]_i_82 
       (.I0(\PC_reg[31]_i_100_n_0 ),
        .I1(\q_reg[113] [47]),
        .I2(\q_reg[113] [15]),
        .I3(\PC_reg[31]_i_36_n_0 ),
        .I4(\q_reg[113] [46]),
        .O(\PC_reg[31]_i_82_n_0 ));
  LUT5 #(
    .INIT(32'h2B00FF2B)) 
    \PC_reg[31]_i_83 
       (.I0(\q_reg[113] [50]),
        .I1(\q_reg[113] [18]),
        .I2(\PC_reg[31]_i_77_n_0 ),
        .I3(\q_reg[113] [51]),
        .I4(\q_reg[113] [19]),
        .O(\PC_reg[31]_i_83_n_0 ));
  LUT5 #(
    .INIT(32'h2BFF002B)) 
    \PC_reg[31]_i_84 
       (.I0(\PC_reg[31]_i_104_n_0 ),
        .I1(\PC_reg[31]_i_61_n_0 ),
        .I2(\q_reg[113] [42]),
        .I3(\q_reg[113] [43]),
        .I4(\q_reg[113] [11]),
        .O(\PC_reg[31]_i_84_n_0 ));
  LUT5 #(
    .INIT(32'h2BFF002B)) 
    \PC_reg[31]_i_85 
       (.I0(\PC_reg[31]_i_90_n_0 ),
        .I1(\PC_reg[31]_i_96_n_0 ),
        .I2(\q_reg[113] [38]),
        .I3(\q_reg[113] [39]),
        .I4(\q_reg[113] [7]),
        .O(\PC_reg[31]_i_85_n_0 ));
  LUT5 #(
    .INIT(32'h2B3F032B)) 
    \PC_reg[31]_i_86 
       (.I0(\PC_reg[31]_i_105_n_0 ),
        .I1(\PC_reg[31]_i_106_n_0 ),
        .I2(\q_reg[113] [35]),
        .I3(\q_reg[113] [34]),
        .I4(\q_reg[113] [2]),
        .O(\PC_reg[31]_i_86_n_0 ));
  LUT5 #(
    .INIT(32'h30B2B2F3)) 
    \PC_reg[31]_i_87 
       (.I0(\PC_reg[31]_i_92_n_0 ),
        .I1(\q_reg[113] [39]),
        .I2(\q_reg[113] [7]),
        .I3(\PC_reg[31]_i_96_n_0 ),
        .I4(\q_reg[113] [38]),
        .O(\PC_reg[31]_i_87_n_0 ));
  LUT5 #(
    .INIT(32'h30B2B2F3)) 
    \PC_reg[31]_i_88 
       (.I0(\PC_reg[31]_i_107_n_0 ),
        .I1(\q_reg[113] [43]),
        .I2(\q_reg[113] [11]),
        .I3(\PC_reg[31]_i_61_n_0 ),
        .I4(\q_reg[113] [42]),
        .O(\PC_reg[31]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hCC5CCCCCCCCCCC5C)) 
    \PC_reg[31]_i_89 
       (.I0(w_RegWriteData_wb[5]),
        .I1(\q_reg[20]_1 ),
        .I2(\q[51]_i_2_n_0 ),
        .I3(\q[51]_i_3_n_0 ),
        .I4(\q_reg[19]_0 [2]),
        .I5(Q[2]),
        .O(\PC_reg[31]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h0000F757F757FFFF)) 
    \PC_reg[31]_i_90 
       (.I0(\q_reg[113] [36]),
        .I1(\q_reg[20]_2 ),
        .I2(\q[81]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[2]),
        .I4(\PC_reg[31]_i_110_n_0 ),
        .I5(\q_reg[113] [37]),
        .O(\PC_reg[31]_i_90_n_0 ));
  LUT4 #(
    .INIT(16'hE0EE)) 
    \PC_reg[31]_i_91 
       (.I0(\PC_reg[31]_i_96_n_0 ),
        .I1(\q_reg[113] [38]),
        .I2(\q_reg[113] [39]),
        .I3(\q_reg[113] [7]),
        .O(\PC_reg[31]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h000051015101FFFF)) 
    \PC_reg[31]_i_92 
       (.I0(\q_reg[113] [36]),
        .I1(\q_reg[20]_2 ),
        .I2(\q[81]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[2]),
        .I4(\q_reg[113] [37]),
        .I5(\PC_reg[31]_i_110_n_0 ),
        .O(\PC_reg[31]_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h8F08)) 
    \PC_reg[31]_i_93 
       (.I0(\q_reg[113] [38]),
        .I1(\PC_reg[31]_i_96_n_0 ),
        .I2(\q_reg[113] [7]),
        .I3(\q_reg[113] [39]),
        .O(\PC_reg[31]_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h7ED7)) 
    \PC_reg[31]_i_94 
       (.I0(\PC_reg[31]_i_111_n_0 ),
        .I1(\PC_reg[31]_i_112_n_0 ),
        .I2(\q_reg[113] [36]),
        .I3(\PC_reg[31]_i_86_n_0 ),
        .O(\PC_reg[31]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF79E9EF7)) 
    \PC_reg[31]_i_95 
       (.I0(\PC_reg[31]_i_105_n_0 ),
        .I1(\q_reg[113] [2]),
        .I2(\q_reg[113] [34]),
        .I3(\PC_reg[31]_i_106_n_0 ),
        .I4(\q_reg[113] [35]),
        .I5(\PC_reg[31]_i_113_n_0 ),
        .O(\PC_reg[31]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h1DFF1D001DFF1DFF)) 
    \PC_reg[31]_i_96 
       (.I0(Q[11]),
        .I1(Q[3]),
        .I2(Q[43]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(\q_reg[21]_0 ),
        .I5(ReadData20[5]),
        .O(\PC_reg[31]_i_96_n_0 ));
  LUT5 #(
    .INIT(32'h002B2BFF)) 
    \PC_reg[31]_i_97 
       (.I0(\PC_reg[31]_i_86_n_0 ),
        .I1(\q_reg[113] [36]),
        .I2(\PC_reg[31]_i_112_n_0 ),
        .I3(\q_reg[113] [37]),
        .I4(\PC_reg[31]_i_110_n_0 ),
        .O(\PC_reg[31]_i_97_n_0 ));
  LUT5 #(
    .INIT(32'h008AAA8A)) 
    \PC_reg[31]_i_98 
       (.I0(\q_reg[113] [48]),
        .I1(\q_reg[21]_0 ),
        .I2(ReadData20[15]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(w_RegWriteData_wb[11]),
        .O(\PC_reg[31]_i_98_n_0 ));
  LUT4 #(
    .INIT(16'h077F)) 
    \PC_reg[31]_i_99 
       (.I0(\q_reg[113] [44]),
        .I1(\PC_reg[31]_i_59_n_0 ),
        .I2(\PC_reg[31]_i_60_n_0 ),
        .I3(\q_reg[113] [45]),
        .O(\PC_reg[31]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[100]_i_1 
       (.I0(Q[55]),
        .I1(Q[3]),
        .I2(Q[23]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[18]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [50]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[101]_i_1 
       (.I0(Q[56]),
        .I1(Q[3]),
        .I2(Q[24]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[19]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [51]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[102]_i_1 
       (.I0(Q[57]),
        .I1(Q[3]),
        .I2(Q[25]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[20]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [52]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[103]_i_1 
       (.I0(Q[58]),
        .I1(Q[3]),
        .I2(Q[26]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[21]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [53]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[104]_i_1 
       (.I0(Q[59]),
        .I1(Q[3]),
        .I2(Q[27]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[22]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [54]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[105]_i_1 
       (.I0(Q[60]),
        .I1(Q[3]),
        .I2(Q[28]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[23]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [55]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[106]_i_1 
       (.I0(Q[61]),
        .I1(Q[3]),
        .I2(Q[29]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[24]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [56]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[107]_i_1 
       (.I0(Q[62]),
        .I1(Q[3]),
        .I2(Q[30]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[25]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [57]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[108]_i_1 
       (.I0(Q[63]),
        .I1(Q[3]),
        .I2(Q[31]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[26]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [58]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[109]_i_1 
       (.I0(Q[64]),
        .I1(Q[3]),
        .I2(Q[32]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[27]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [59]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[110]_i_1 
       (.I0(Q[65]),
        .I1(Q[3]),
        .I2(Q[33]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[28]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [60]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[111]_i_1 
       (.I0(Q[66]),
        .I1(Q[3]),
        .I2(Q[34]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[29]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [61]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[112]_i_1 
       (.I0(Q[67]),
        .I1(Q[3]),
        .I2(Q[35]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[30]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [62]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[113]_i_1 
       (.I0(Q[68]),
        .I1(Q[3]),
        .I2(Q[36]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[31]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [63]));
  LUT6 #(
    .INIT(64'h8002000000008000)) 
    \q[113]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\q_reg[19]_0 [7]),
        .I4(\q_reg[19]_0 [6]),
        .I5(Q[0]),
        .O(\q[113]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF202F2F2F2020202)) 
    \q[50]_i_1 
       (.I0(ReadData20[0]),
        .I1(\q_reg[21]_0 ),
        .I2(\q[81]_i_2_n_0 ),
        .I3(Q[37]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\q_reg[113] [0]));
  LUT6 #(
    .INIT(64'hFBFFFFFB08000008)) 
    \q[51]_i_1 
       (.I0(w_RegWriteData_wb[1]),
        .I1(\q[51]_i_2_n_0 ),
        .I2(\q[51]_i_3_n_0 ),
        .I3(\q_reg[19]_0 [2]),
        .I4(Q[2]),
        .I5(\q_reg[20]_5 ),
        .O(\q_reg[113] [1]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \q[51]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\q[51]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \q[51]_i_3 
       (.I0(Q[0]),
        .I1(\q_reg[19]_0 [3]),
        .I2(\q_reg[19]_0 [4]),
        .I3(Q[1]),
        .I4(\q_reg[19]_0 [5]),
        .I5(Q[2]),
        .O(\q[51]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[52]_i_1 
       (.I0(Q[39]),
        .I1(Q[3]),
        .I2(Q[7]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[1]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [2]));
  LUT6 #(
    .INIT(64'hAEAEAE040404AE04)) 
    \q[53]_i_1 
       (.I0(\q[81]_i_2_n_0 ),
        .I1(ReadData20[2]),
        .I2(\q_reg[21]_0 ),
        .I3(Q[8]),
        .I4(Q[3]),
        .I5(Q[40]),
        .O(\q_reg[113] [3]));
  LUT6 #(
    .INIT(64'hF202F2F2F2020202)) 
    \q[54]_i_1 
       (.I0(ReadData20[3]),
        .I1(\q_reg[21]_0 ),
        .I2(\q[81]_i_2_n_0 ),
        .I3(Q[41]),
        .I4(Q[3]),
        .I5(Q[9]),
        .O(\q_reg[113] [4]));
  LUT6 #(
    .INIT(64'hF202F2F2F2020202)) 
    \q[55]_i_1 
       (.I0(ReadData20[4]),
        .I1(\q_reg[21]_0 ),
        .I2(\q[81]_i_2_n_0 ),
        .I3(Q[42]),
        .I4(Q[3]),
        .I5(Q[10]),
        .O(\q_reg[113] [5]));
  LUT6 #(
    .INIT(64'hF202F2F2F2020202)) 
    \q[56]_i_1 
       (.I0(ReadData20[5]),
        .I1(\q_reg[21]_0 ),
        .I2(\q[81]_i_2_n_0 ),
        .I3(Q[43]),
        .I4(Q[3]),
        .I5(Q[11]),
        .O(\q_reg[113] [6]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[57]_i_1 
       (.I0(Q[44]),
        .I1(Q[3]),
        .I2(Q[12]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[6]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [7]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[58]_i_1 
       (.I0(Q[45]),
        .I1(Q[3]),
        .I2(Q[13]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[7]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [8]));
  LUT6 #(
    .INIT(64'hAEAEAE040404AE04)) 
    \q[59]_i_1 
       (.I0(\q[81]_i_2_n_0 ),
        .I1(ReadData20[8]),
        .I2(\q_reg[21]_0 ),
        .I3(Q[14]),
        .I4(Q[3]),
        .I5(Q[46]),
        .O(\q_reg[113] [9]));
  LUT6 #(
    .INIT(64'hAEAEAE040404AE04)) 
    \q[60]_i_1 
       (.I0(\q[81]_i_2_n_0 ),
        .I1(ReadData20[9]),
        .I2(\q_reg[21]_0 ),
        .I3(Q[15]),
        .I4(Q[3]),
        .I5(Q[47]),
        .O(\q_reg[113] [10]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[61]_i_1 
       (.I0(Q[48]),
        .I1(Q[3]),
        .I2(Q[16]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[10]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [11]));
  LUT6 #(
    .INIT(64'hAEAEAE040404AE04)) 
    \q[62]_i_1 
       (.I0(\q[81]_i_2_n_0 ),
        .I1(ReadData20[11]),
        .I2(\q_reg[21]_0 ),
        .I3(Q[17]),
        .I4(Q[3]),
        .I5(Q[49]),
        .O(\q_reg[113] [12]));
  LUT6 #(
    .INIT(64'hAEAEAE040404AE04)) 
    \q[63]_i_1 
       (.I0(\q[81]_i_2_n_0 ),
        .I1(ReadData20[12]),
        .I2(\q_reg[21]_0 ),
        .I3(Q[18]),
        .I4(Q[3]),
        .I5(Q[50]),
        .O(\q_reg[113] [13]));
  LUT6 #(
    .INIT(64'hAEAEAE040404AE04)) 
    \q[64]_i_1 
       (.I0(\q[81]_i_2_n_0 ),
        .I1(ReadData20[13]),
        .I2(\q_reg[21]_0 ),
        .I3(Q[19]),
        .I4(Q[3]),
        .I5(Q[51]),
        .O(\q_reg[113] [14]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[65]_i_1 
       (.I0(Q[52]),
        .I1(Q[3]),
        .I2(Q[20]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[14]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [15]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[66]_i_1 
       (.I0(Q[53]),
        .I1(Q[3]),
        .I2(Q[21]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[15]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [16]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[67]_i_1 
       (.I0(Q[54]),
        .I1(Q[3]),
        .I2(Q[22]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[16]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [17]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[68]_i_1 
       (.I0(Q[55]),
        .I1(Q[3]),
        .I2(Q[23]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[17]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [18]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[69]_i_1 
       (.I0(Q[56]),
        .I1(Q[3]),
        .I2(Q[24]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[18]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [19]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[70]_i_1 
       (.I0(Q[57]),
        .I1(Q[3]),
        .I2(Q[25]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[19]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [20]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[71]_i_1 
       (.I0(Q[58]),
        .I1(Q[3]),
        .I2(Q[26]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[20]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [21]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[72]_i_1 
       (.I0(Q[59]),
        .I1(Q[3]),
        .I2(Q[27]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[21]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [22]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[73]_i_1 
       (.I0(Q[60]),
        .I1(Q[3]),
        .I2(Q[28]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[22]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [23]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[74]_i_1 
       (.I0(Q[61]),
        .I1(Q[3]),
        .I2(Q[29]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[23]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [24]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[75]_i_1 
       (.I0(Q[62]),
        .I1(Q[3]),
        .I2(Q[30]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[24]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [25]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[76]_i_1 
       (.I0(Q[63]),
        .I1(Q[3]),
        .I2(Q[31]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[25]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [26]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[77]_i_1 
       (.I0(Q[64]),
        .I1(Q[3]),
        .I2(Q[32]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[26]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [27]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[78]_i_1 
       (.I0(Q[65]),
        .I1(Q[3]),
        .I2(Q[33]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[27]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [28]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[79]_i_1 
       (.I0(Q[66]),
        .I1(Q[3]),
        .I2(Q[34]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[28]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [29]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[80]_i_1 
       (.I0(Q[67]),
        .I1(Q[3]),
        .I2(Q[35]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[29]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [30]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[81]_i_1 
       (.I0(Q[68]),
        .I1(Q[3]),
        .I2(Q[36]),
        .I3(\q[81]_i_2_n_0 ),
        .I4(ReadData20[30]),
        .I5(\q_reg[21]_0 ),
        .O(\q_reg[113] [31]));
  LUT6 #(
    .INIT(64'h00F00000000000E0)) 
    \q[81]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(\q[51]_i_3_n_0 ),
        .I4(\q_reg[19]_0 [2]),
        .I5(Q[2]),
        .O(\q[81]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[82]_i_1 
       (.I0(Q[37]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[0]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [32]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[83]_i_1 
       (.I0(Q[38]),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[1]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [33]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[84]_i_1 
       (.I0(Q[39]),
        .I1(Q[3]),
        .I2(Q[7]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[2]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [34]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[85]_i_1 
       (.I0(Q[40]),
        .I1(Q[3]),
        .I2(Q[8]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[3]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [35]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[86]_i_1 
       (.I0(Q[41]),
        .I1(Q[3]),
        .I2(Q[9]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[4]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [36]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[87]_i_1 
       (.I0(Q[42]),
        .I1(Q[3]),
        .I2(Q[10]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[5]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [37]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[88]_i_1 
       (.I0(Q[43]),
        .I1(Q[3]),
        .I2(Q[11]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[6]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [38]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[89]_i_1 
       (.I0(Q[44]),
        .I1(Q[3]),
        .I2(Q[12]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[7]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [39]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[90]_i_1 
       (.I0(Q[45]),
        .I1(Q[3]),
        .I2(Q[13]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[8]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [40]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[91]_i_1 
       (.I0(Q[46]),
        .I1(Q[3]),
        .I2(Q[14]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[9]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [41]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[92]_i_1 
       (.I0(Q[47]),
        .I1(Q[3]),
        .I2(Q[15]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[10]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [42]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[93]_i_1 
       (.I0(Q[48]),
        .I1(Q[3]),
        .I2(Q[16]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[11]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [43]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[94]_i_1 
       (.I0(Q[49]),
        .I1(Q[3]),
        .I2(Q[17]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[12]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [44]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[95]_i_1 
       (.I0(Q[50]),
        .I1(Q[3]),
        .I2(Q[18]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[13]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [45]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[96]_i_1 
       (.I0(Q[51]),
        .I1(Q[3]),
        .I2(Q[19]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[14]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [46]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[97]_i_1 
       (.I0(Q[52]),
        .I1(Q[3]),
        .I2(Q[20]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[15]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [47]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[98]_i_1 
       (.I0(Q[53]),
        .I1(Q[3]),
        .I2(Q[21]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[16]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [48]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \q[99]_i_1 
       (.I0(Q[54]),
        .I1(Q[3]),
        .I2(Q[22]),
        .I3(\q[113]_i_2_n_0 ),
        .I4(ReadData10[17]),
        .I5(\q_reg[15]_0 ),
        .O(\q_reg[113] [49]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[32] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[33] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[34] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[32]),
        .Q(Q[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[35] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[33]),
        .Q(Q[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[36] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[34]),
        .Q(Q[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[37] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[35]),
        .Q(Q[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[38] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[36]),
        .Q(Q[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[39] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[37]),
        .Q(Q[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[40] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[38]),
        .Q(Q[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[41] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[39]),
        .Q(Q[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[42] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[40]),
        .Q(Q[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[43] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[41]),
        .Q(Q[41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[44] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[42]),
        .Q(Q[42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[45] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[43]),
        .Q(Q[43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[46] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[44]),
        .Q(Q[44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[47] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[45]),
        .Q(Q[45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[48] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[46]),
        .Q(Q[46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[49] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[47]),
        .Q(Q[47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[50] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[48]),
        .Q(Q[48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[51] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[49]),
        .Q(Q[49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[52] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[50]),
        .Q(Q[50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[53] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[51]),
        .Q(Q[51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[54] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[52]),
        .Q(Q[52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[55] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[53]),
        .Q(Q[53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[56] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[54]),
        .Q(Q[54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[57] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[55]),
        .Q(Q[55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[58] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[56]),
        .Q(Q[56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[59] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[57]),
        .Q(Q[57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[60] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[58]),
        .Q(Q[58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[61] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[59]),
        .Q(Q[59]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[62] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[60]),
        .Q(Q[60]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[63] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[61]),
        .Q(Q[61]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[64] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[62]),
        .Q(Q[62]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[65] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[63]),
        .Q(Q[63]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[66] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[64]),
        .Q(Q[64]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[67] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[65]),
        .Q(Q[65]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[68] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[66]),
        .Q(Q[66]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[69] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[67]),
        .Q(Q[67]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[70] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[68]),
        .Q(Q[68]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(cpu_clk_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
endmodule

(* CHECK_LICENSE_TYPE = "DataRAM,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2017.3" *) 
module DataRAM
   (a,
    d,
    clk,
    we,
    spo);
  input [5:0]a;
  input [31:0]d;
  input clk;
  input we;
  output [31:0]spo;

  wire [5:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]spo;
  wire we;
  wire NLW_U0_i_ce_UNCONNECTED;
  wire NLW_U0_qdpo_ce_UNCONNECTED;
  wire NLW_U0_qdpo_clk_UNCONNECTED;
  wire NLW_U0_qdpo_rst_UNCONNECTED;
  wire NLW_U0_qdpo_srst_UNCONNECTED;
  wire NLW_U0_qspo_ce_UNCONNECTED;
  wire NLW_U0_qspo_rst_UNCONNECTED;
  wire NLW_U0_qspo_srst_UNCONNECTED;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [5:0]NLW_U0_dpra_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  DataRAM_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra(NLW_U0_dpra_UNCONNECTED[5:0]),
        .i_ce(NLW_U0_i_ce_UNCONNECTED),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(NLW_U0_qdpo_ce_UNCONNECTED),
        .qdpo_clk(NLW_U0_qdpo_clk_UNCONNECTED),
        .qdpo_rst(NLW_U0_qdpo_rst_UNCONNECTED),
        .qdpo_srst(NLW_U0_qdpo_srst_UNCONNECTED),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(NLW_U0_qspo_ce_UNCONNECTED),
        .qspo_rst(NLW_U0_qspo_rst_UNCONNECTED),
        .qspo_srst(NLW_U0_qspo_srst_UNCONNECTED),
        .spo(spo),
        .we(we));
endmodule

(* CHECK_LICENSE_TYPE = "DisplayROM,dist_mem_gen_v8_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_11,Vivado 2017.1" *) 
module DisplayROM
   (a,
    clk,
    qspo);
  input [7:0]a;
  input clk;
  output [7:0]qspo;

  wire [7:0]a;
  wire clk;
  wire [7:0]qspo;
  wire NLW_U0_i_ce_UNCONNECTED;
  wire NLW_U0_qdpo_ce_UNCONNECTED;
  wire NLW_U0_qdpo_clk_UNCONNECTED;
  wire NLW_U0_qdpo_rst_UNCONNECTED;
  wire NLW_U0_qdpo_srst_UNCONNECTED;
  wire NLW_U0_qspo_ce_UNCONNECTED;
  wire NLW_U0_qspo_rst_UNCONNECTED;
  wire NLW_U0_qspo_srst_UNCONNECTED;
  wire NLW_U0_we_UNCONNECTED;
  wire [7:0]NLW_U0_d_UNCONNECTED;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_dpra_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_spo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "256" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "0" *) 
  (* c_mem_init_file = "DisplayROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  DisplayROM__dist_mem_gen_v8_0_11 U0
       (.a(a),
        .clk(clk),
        .d(NLW_U0_d_UNCONNECTED[7:0]),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra(NLW_U0_dpra_UNCONNECTED[7:0]),
        .i_ce(NLW_U0_i_ce_UNCONNECTED),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(NLW_U0_qdpo_ce_UNCONNECTED),
        .qdpo_clk(NLW_U0_qdpo_clk_UNCONNECTED),
        .qdpo_rst(NLW_U0_qdpo_rst_UNCONNECTED),
        .qdpo_srst(NLW_U0_qdpo_srst_UNCONNECTED),
        .qspo(qspo),
        .qspo_ce(NLW_U0_qspo_ce_UNCONNECTED),
        .qspo_rst(NLW_U0_qspo_rst_UNCONNECTED),
        .qspo_srst(NLW_U0_qspo_srst_UNCONNECTED),
        .spo(NLW_U0_spo_UNCONNECTED[7:0]),
        .we(NLW_U0_we_UNCONNECTED));
endmodule

module EX
   (D,
    \q_reg[44] ,
    \q_reg[46] ,
    \q_reg[45] ,
    \q_reg[51] ,
    \q_reg[45]_0 ,
    \q_reg[46]_0 ,
    \q_reg[46]_1 ,
    \q_reg[43] ,
    \q_reg[43]_0 ,
    \q_reg[67] ,
    \q_reg[51]_0 ,
    \q_reg[59] ,
    \q_reg[47] ,
    \q_reg[46]_2 ,
    \q_reg[49] ,
    \q_reg[49]_0 ,
    \q_reg[49]_1 ,
    \q_reg[47]_0 ,
    \q_reg[48] ,
    \q_reg[73] ,
    \q_reg[68] ,
    \q_reg[47]_1 ,
    \q_reg[73]_0 ,
    \q_reg[57] ,
    \q_reg[57]_0 ,
    \q_reg[57]_1 ,
    \q_reg[57]_2 ,
    \q_reg[58] ,
    \q_reg[58]_0 ,
    \q_reg[58]_1 ,
    \q_reg[56] ,
    \q_reg[56]_0 ,
    \q_reg[55] ,
    \q_reg[55]_0 ,
    \q_reg[55]_1 ,
    \q_reg[55]_2 ,
    \q_reg[55]_3 ,
    \q_reg[54] ,
    \q_reg[54]_0 ,
    \q_reg[53] ,
    \q_reg[53]_0 ,
    \q_reg[53]_1 ,
    \q_reg[52] ,
    \q_reg[52]_0 ,
    \q_reg[45]_1 ,
    \q_reg[50] ,
    \q_reg[44]_0 ,
    \q_reg[45]_2 ,
    \q_reg[46]_3 ,
    \q_reg[48]_0 ,
    \q_reg[48]_1 ,
    \q_reg[50]_0 ,
    \q_reg[50]_1 ,
    \q_reg[51]_1 ,
    \q_reg[51]_2 ,
    \TMDSn[2] ,
    \q_reg[59]_0 ,
    \q_reg[61] ,
    \q_reg[62] ,
    \q_reg[62]_0 ,
    \q_reg[59]_1 ,
    \q_reg[60] ,
    \q_reg[60]_0 ,
    \q_reg[63] ,
    \q_reg[63]_0 ,
    \q_reg[63]_1 ,
    \q_reg[64] ,
    \q_reg[64]_0 ,
    \q_reg[65] ,
    \q_reg[65]_0 ,
    \q_reg[65]_1 ,
    \q_reg[66] ,
    \q_reg[66]_0 ,
    \q_reg[67]_0 ,
    \q_reg[67]_1 ,
    \q_reg[68]_0 ,
    \q_reg[68]_1 ,
    \q_reg[69] ,
    \q_reg[69]_0 ,
    \q_reg[69]_1 ,
    \q_reg[70] ,
    \q_reg[70]_0 ,
    \q_reg[71] ,
    \q_reg[71]_0 ,
    \q_reg[71]_1 ,
    \q_reg[72] ,
    \q_reg[72]_0 ,
    \q_reg[72]_1 ,
    \q_reg[74] ,
    \q_reg[73]_1 ,
    \q_reg[73]_2 ,
    \q_reg[43]_1 ,
    \q_reg[67]_2 ,
    \q_reg[67]_3 ,
    \q_reg[67]_4 ,
    \q_reg[59]_2 ,
    \q_reg[59]_3 ,
    \q_reg[59]_4 ,
    \q_reg[66]_1 ,
    \q_reg[44]_1 ,
    \q_reg[71]_2 ,
    \q_reg[74]_0 ,
    \q_reg[61]_0 ,
    \q_reg[61]_1 ,
    \q_reg[61]_2 ,
    \q_reg[60]_1 ,
    \q_reg[74]_1 ,
    \q_reg[74]_2 ,
    \q_reg[62]_1 ,
    \q_reg[60]_2 ,
    \q_reg[50]_2 ,
    \q_reg[44]_2 ,
    \q_reg[44]_3 ,
    \q_reg[44]_4 ,
    \q_reg[50]_3 ,
    \q_reg[43]_2 ,
    \q_reg[74]_3 ,
    \q_reg[61]_3 ,
    \q_reg[46]_4 ,
    \q_reg[51]_3 ,
    \q_reg[74]_4 ,
    \q_reg[67]_5 ,
    \q_reg[43]_3 ,
    \q_reg[74]_5 ,
    \q_reg[63]_2 ,
    \q_reg[65]_2 ,
    \q_reg[74]_6 ,
    \q_reg[71]_3 ,
    \q_reg[50]_4 ,
    \TMDSn[2]_0 ,
    \q_reg[49]_2 ,
    \q_reg[74]_7 ,
    \q_reg[70]_1 ,
    \q_reg[57]_3 ,
    \q_reg[50]_5 ,
    \q_reg[51]_4 ,
    \q_reg[45]_3 ,
    \q_reg[45]_4 ,
    \q_reg[54]_1 ,
    \q_reg[54]_2 ,
    \q_reg[53]_2 ,
    \q_reg[53]_3 ,
    \q_reg[53]_4 ,
    \q_reg[54]_3 ,
    \q_reg[53]_5 ,
    \q_reg[53]_6 ,
    \q_reg[53]_7 ,
    \q_reg[56]_1 ,
    \q_reg[53]_8 ,
    \q_reg[59]_5 ,
    \q_reg[57]_4 ,
    \q_reg[57]_5 ,
    \q_reg[53]_9 ,
    \q_reg[60]_3 ,
    \q_reg[63]_3 ,
    \q_reg[63]_4 ,
    \q_reg[58]_2 ,
    \q_reg[61]_4 ,
    \q_reg[62]_2 ,
    \q_reg[61]_5 ,
    \q_reg[66]_2 ,
    \q_reg[71]_4 ,
    \TMDSn[2]_1 ,
    \q_reg[52]_1 ,
    \q_reg[54]_4 ,
    \q_reg[56]_2 ,
    \q_reg[56]_3 ,
    \q_reg[60]_4 ,
    \q_reg[62]_3 ,
    \q_reg[64]_1 ,
    \q_reg[68]_2 ,
    Q,
    \q_reg[146] ,
    \q_reg[82] ,
    \q_reg[116] ,
    \q_reg[146]_0 ,
    \q_reg[4] ,
    \q_reg[116]_0 ,
    \q_reg[151] ,
    \q_reg[149] ,
    \q_reg[82]_0 ,
    \q_reg[116]_1 ,
    \q_reg[4]_0 ,
    \q_reg[116]_2 ,
    \q_reg[116]_3 ,
    \q_reg[149]_0 ,
    \q_reg[116]_4 ,
    \q_reg[116]_5 ,
    \q_reg[82]_1 ,
    \q_reg[4]_1 ,
    \q_reg[146]_1 ,
    \q_reg[152] ,
    \q_reg[4]_2 ,
    \q_reg[116]_6 ,
    \q_reg[146]_2 ,
    \q_reg[149]_1 ,
    \q_reg[149]_2 ,
    \q_reg[151]_0 ,
    \q_reg[51]_5 ,
    \q_reg[147] ,
    \q_reg[51]_6 ,
    \q_reg[116]_7 ,
    \q_reg[116]_8 ,
    \q_reg[116]_9 ,
    \q_reg[116]_10 ,
    \q_reg[146]_3 ,
    \q_reg[152]_0 ,
    \q_reg[116]_11 ,
    \q_reg[51]_7 ,
    \q_reg[19] ,
    \q_reg[150] ,
    \q_reg[51]_8 ,
    \q_reg[149]_3 ,
    \q_reg[151]_1 ,
    \q_reg[23] ,
    \q_reg[34] ,
    \q_reg[149]_4 ,
    \q_reg[27] ,
    \q_reg[151]_2 ,
    \q_reg[31] ,
    \q_reg[29] ,
    \q_reg[151]_3 ,
    \q_reg[116]_12 ,
    \q_reg[151]_4 ,
    \q_reg[25] ,
    \q_reg[25]_0 ,
    \q_reg[147]_0 ,
    \q_reg[17] ,
    \q_reg[17]_0 ,
    \q_reg[147]_1 ,
    \q_reg[116]_13 ,
    \q_reg[116]_14 ,
    \q_reg[116]_15 ,
    \q_reg[116]_16 ,
    \q_reg[116]_17 ,
    \q_reg[116]_18 ,
    \q_reg[116]_19 ,
    \q_reg[116]_20 ,
    \q_reg[33] ,
    \q_reg[116]_21 ,
    \q_reg[116]_22 ,
    \q_reg[116]_23 ,
    \q_reg[27]_0 ,
    \q_reg[51]_9 ,
    \q_reg[39] ,
    \q_reg[74]_8 ,
    \q_reg[40] ,
    \q_reg[147]_2 ,
    w_RegWriteData_wb,
    \q_reg[116]_24 ,
    \q_reg[116]_25 ,
    \q_reg[34]_0 ,
    \q_reg[54]_5 ,
    \q_reg[34]_1 ,
    \q_reg[147]_3 ,
    \q_reg[27]_1 ,
    \q_reg[28] );
  output [63:0]D;
  output \q_reg[44] ;
  output \q_reg[46] ;
  output \q_reg[45] ;
  output \q_reg[51] ;
  output \q_reg[45]_0 ;
  output \q_reg[46]_0 ;
  output \q_reg[46]_1 ;
  output \q_reg[43] ;
  output \q_reg[43]_0 ;
  output \q_reg[67] ;
  output \q_reg[51]_0 ;
  output \q_reg[59] ;
  output \q_reg[47] ;
  output \q_reg[46]_2 ;
  output \q_reg[49] ;
  output \q_reg[49]_0 ;
  output \q_reg[49]_1 ;
  output \q_reg[47]_0 ;
  output \q_reg[48] ;
  output \q_reg[73] ;
  output \q_reg[68] ;
  output \q_reg[47]_1 ;
  output \q_reg[73]_0 ;
  output \q_reg[57] ;
  output \q_reg[57]_0 ;
  output \q_reg[57]_1 ;
  output \q_reg[57]_2 ;
  output \q_reg[58] ;
  output \q_reg[58]_0 ;
  output \q_reg[58]_1 ;
  output \q_reg[56] ;
  output \q_reg[56]_0 ;
  output \q_reg[55] ;
  output \q_reg[55]_0 ;
  output \q_reg[55]_1 ;
  output \q_reg[55]_2 ;
  output \q_reg[55]_3 ;
  output \q_reg[54] ;
  output \q_reg[54]_0 ;
  output \q_reg[53] ;
  output \q_reg[53]_0 ;
  output \q_reg[53]_1 ;
  output \q_reg[52] ;
  output \q_reg[52]_0 ;
  output \q_reg[45]_1 ;
  output \q_reg[50] ;
  output \q_reg[44]_0 ;
  output \q_reg[45]_2 ;
  output \q_reg[46]_3 ;
  output \q_reg[48]_0 ;
  output \q_reg[48]_1 ;
  output \q_reg[50]_0 ;
  output \q_reg[50]_1 ;
  output \q_reg[51]_1 ;
  output \q_reg[51]_2 ;
  output \TMDSn[2] ;
  output \q_reg[59]_0 ;
  output \q_reg[61] ;
  output \q_reg[62] ;
  output \q_reg[62]_0 ;
  output \q_reg[59]_1 ;
  output \q_reg[60] ;
  output \q_reg[60]_0 ;
  output \q_reg[63] ;
  output \q_reg[63]_0 ;
  output \q_reg[63]_1 ;
  output \q_reg[64] ;
  output \q_reg[64]_0 ;
  output \q_reg[65] ;
  output \q_reg[65]_0 ;
  output \q_reg[65]_1 ;
  output \q_reg[66] ;
  output \q_reg[66]_0 ;
  output \q_reg[67]_0 ;
  output \q_reg[67]_1 ;
  output \q_reg[68]_0 ;
  output \q_reg[68]_1 ;
  output \q_reg[69] ;
  output \q_reg[69]_0 ;
  output \q_reg[69]_1 ;
  output \q_reg[70] ;
  output \q_reg[70]_0 ;
  output \q_reg[71] ;
  output \q_reg[71]_0 ;
  output \q_reg[71]_1 ;
  output \q_reg[72] ;
  output \q_reg[72]_0 ;
  output \q_reg[72]_1 ;
  output \q_reg[74] ;
  output \q_reg[73]_1 ;
  output \q_reg[73]_2 ;
  output \q_reg[43]_1 ;
  output \q_reg[67]_2 ;
  output \q_reg[67]_3 ;
  output \q_reg[67]_4 ;
  output \q_reg[59]_2 ;
  output \q_reg[59]_3 ;
  output \q_reg[59]_4 ;
  output \q_reg[66]_1 ;
  output \q_reg[44]_1 ;
  output \q_reg[71]_2 ;
  output \q_reg[74]_0 ;
  output \q_reg[61]_0 ;
  output \q_reg[61]_1 ;
  output \q_reg[61]_2 ;
  output \q_reg[60]_1 ;
  output \q_reg[74]_1 ;
  output \q_reg[74]_2 ;
  output \q_reg[62]_1 ;
  output \q_reg[60]_2 ;
  output \q_reg[50]_2 ;
  output \q_reg[44]_2 ;
  output \q_reg[44]_3 ;
  output \q_reg[44]_4 ;
  output \q_reg[50]_3 ;
  output \q_reg[43]_2 ;
  output \q_reg[74]_3 ;
  output \q_reg[61]_3 ;
  output \q_reg[46]_4 ;
  output \q_reg[51]_3 ;
  output \q_reg[74]_4 ;
  output \q_reg[67]_5 ;
  output \q_reg[43]_3 ;
  output \q_reg[74]_5 ;
  output \q_reg[63]_2 ;
  output \q_reg[65]_2 ;
  output \q_reg[74]_6 ;
  output \q_reg[71]_3 ;
  output \q_reg[50]_4 ;
  output \TMDSn[2]_0 ;
  output \q_reg[49]_2 ;
  output \q_reg[74]_7 ;
  output \q_reg[70]_1 ;
  output \q_reg[57]_3 ;
  output \q_reg[50]_5 ;
  output \q_reg[51]_4 ;
  output \q_reg[45]_3 ;
  output \q_reg[45]_4 ;
  output \q_reg[54]_1 ;
  output \q_reg[54]_2 ;
  output \q_reg[53]_2 ;
  output \q_reg[53]_3 ;
  output \q_reg[53]_4 ;
  output \q_reg[54]_3 ;
  output \q_reg[53]_5 ;
  output \q_reg[53]_6 ;
  output \q_reg[53]_7 ;
  output \q_reg[56]_1 ;
  output \q_reg[53]_8 ;
  output \q_reg[59]_5 ;
  output \q_reg[57]_4 ;
  output \q_reg[57]_5 ;
  output \q_reg[53]_9 ;
  output \q_reg[60]_3 ;
  output \q_reg[63]_3 ;
  output \q_reg[63]_4 ;
  output \q_reg[58]_2 ;
  output \q_reg[61]_4 ;
  output \q_reg[62]_2 ;
  output \q_reg[61]_5 ;
  output \q_reg[66]_2 ;
  output \q_reg[71]_4 ;
  output \TMDSn[2]_1 ;
  output \q_reg[52]_1 ;
  output \q_reg[54]_4 ;
  output \q_reg[56]_2 ;
  output \q_reg[56]_3 ;
  output \q_reg[60]_4 ;
  output \q_reg[62]_3 ;
  output \q_reg[64]_1 ;
  output \q_reg[68]_2 ;
  input [139:0]Q;
  input \q_reg[146] ;
  input \q_reg[82] ;
  input \q_reg[116] ;
  input \q_reg[146]_0 ;
  input \q_reg[4] ;
  input \q_reg[116]_0 ;
  input \q_reg[151] ;
  input \q_reg[149] ;
  input \q_reg[82]_0 ;
  input \q_reg[116]_1 ;
  input \q_reg[4]_0 ;
  input \q_reg[116]_2 ;
  input \q_reg[116]_3 ;
  input \q_reg[149]_0 ;
  input \q_reg[116]_4 ;
  input \q_reg[116]_5 ;
  input \q_reg[82]_1 ;
  input \q_reg[4]_1 ;
  input \q_reg[146]_1 ;
  input \q_reg[152] ;
  input \q_reg[4]_2 ;
  input \q_reg[116]_6 ;
  input \q_reg[146]_2 ;
  input \q_reg[149]_1 ;
  input \q_reg[149]_2 ;
  input \q_reg[151]_0 ;
  input \q_reg[51]_5 ;
  input \q_reg[147] ;
  input \q_reg[51]_6 ;
  input \q_reg[116]_7 ;
  input \q_reg[116]_8 ;
  input \q_reg[116]_9 ;
  input \q_reg[116]_10 ;
  input \q_reg[146]_3 ;
  input \q_reg[152]_0 ;
  input \q_reg[116]_11 ;
  input \q_reg[51]_7 ;
  input \q_reg[19] ;
  input \q_reg[150] ;
  input \q_reg[51]_8 ;
  input \q_reg[149]_3 ;
  input \q_reg[151]_1 ;
  input \q_reg[23] ;
  input \q_reg[34] ;
  input \q_reg[149]_4 ;
  input \q_reg[27] ;
  input \q_reg[151]_2 ;
  input \q_reg[31] ;
  input \q_reg[29] ;
  input \q_reg[151]_3 ;
  input \q_reg[116]_12 ;
  input \q_reg[151]_4 ;
  input \q_reg[25] ;
  input \q_reg[25]_0 ;
  input \q_reg[147]_0 ;
  input \q_reg[17] ;
  input \q_reg[17]_0 ;
  input \q_reg[147]_1 ;
  input \q_reg[116]_13 ;
  input \q_reg[116]_14 ;
  input \q_reg[116]_15 ;
  input \q_reg[116]_16 ;
  input \q_reg[116]_17 ;
  input \q_reg[116]_18 ;
  input \q_reg[116]_19 ;
  input \q_reg[116]_20 ;
  input \q_reg[33] ;
  input \q_reg[116]_21 ;
  input \q_reg[116]_22 ;
  input \q_reg[116]_23 ;
  input \q_reg[27]_0 ;
  input \q_reg[51]_9 ;
  input \q_reg[39] ;
  input [35:0]\q_reg[74]_8 ;
  input \q_reg[40] ;
  input \q_reg[147]_2 ;
  input [29:0]w_RegWriteData_wb;
  input \q_reg[116]_24 ;
  input \q_reg[116]_25 ;
  input \q_reg[34]_0 ;
  input [6:0]\q_reg[54]_5 ;
  input \q_reg[34]_1 ;
  input \q_reg[147]_3 ;
  input \q_reg[27]_1 ;
  input \q_reg[28] ;

  wire [8:6]ALU_B;
  wire [63:0]D;
  wire [139:0]Q;
  wire \TMDSn[2] ;
  wire \TMDSn[2]_0 ;
  wire \TMDSn[2]_1 ;
  wire \i_/char_tab_i_100_n_0 ;
  wire \i_/char_tab_i_107_n_0 ;
  wire \i_/char_tab_i_108_n_0 ;
  wire \i_/char_tab_i_110_n_0 ;
  wire \i_/char_tab_i_116_n_0 ;
  wire \i_/char_tab_i_117_n_0 ;
  wire \i_/char_tab_i_119_n_0 ;
  wire \i_/char_tab_i_121_n_0 ;
  wire \i_/char_tab_i_127_n_0 ;
  wire \i_/char_tab_i_128_n_0 ;
  wire \i_/char_tab_i_130_n_0 ;
  wire \i_/char_tab_i_97_n_0 ;
  wire \i_/char_tab_i_98_n_0 ;
  wire \i_/q[42]_i_2_n_0 ;
  wire \i_/q[42]_i_3_n_0 ;
  wire \i_/q[42]_i_4_n_0 ;
  wire \i_/q[42]_i_5_n_0 ;
  wire \i_/q[42]_i_6_n_0 ;
  wire \i_/q[42]_i_7_n_0 ;
  wire \i_/q[42]_i_8_n_0 ;
  wire \i_/q[42]_i_9_n_0 ;
  wire \i_/q[43]_i_10_n_0 ;
  wire \i_/q[43]_i_11_n_0 ;
  wire \i_/q[43]_i_12_n_0 ;
  wire \i_/q[43]_i_13_n_0 ;
  wire \i_/q[43]_i_14_n_0 ;
  wire \i_/q[43]_i_15_n_0 ;
  wire \i_/q[43]_i_16_n_0 ;
  wire \i_/q[43]_i_17_n_0 ;
  wire \i_/q[43]_i_19_n_0 ;
  wire \i_/q[43]_i_22_n_0 ;
  wire \i_/q[43]_i_2_n_0 ;
  wire \i_/q[43]_i_3_n_0 ;
  wire \i_/q[43]_i_4_n_0 ;
  wire \i_/q[43]_i_5_n_0 ;
  wire \i_/q[43]_i_6_n_0 ;
  wire \i_/q[43]_i_7_n_0 ;
  wire \i_/q[44]_i_10_n_0 ;
  wire \i_/q[44]_i_11_n_0 ;
  wire \i_/q[44]_i_12_n_0 ;
  wire \i_/q[44]_i_13_n_0 ;
  wire \i_/q[44]_i_2_n_0 ;
  wire \i_/q[44]_i_3_n_0 ;
  wire \i_/q[44]_i_4_n_0 ;
  wire \i_/q[44]_i_5_n_0 ;
  wire \i_/q[44]_i_6_n_0 ;
  wire \i_/q[44]_i_8_n_0 ;
  wire \i_/q[45]_i_10_n_0 ;
  wire \i_/q[45]_i_11_n_0 ;
  wire \i_/q[45]_i_15_n_0 ;
  wire \i_/q[45]_i_16_n_0 ;
  wire \i_/q[45]_i_2_n_0 ;
  wire \i_/q[45]_i_3_n_0 ;
  wire \i_/q[45]_i_4_n_0 ;
  wire \i_/q[45]_i_5_n_0 ;
  wire \i_/q[46]_i_10_n_0 ;
  wire \i_/q[46]_i_11_n_0 ;
  wire \i_/q[46]_i_12_n_0 ;
  wire \i_/q[46]_i_2_n_0 ;
  wire \i_/q[46]_i_3_n_0 ;
  wire \i_/q[46]_i_4_n_0 ;
  wire \i_/q[46]_i_5_n_0 ;
  wire \i_/q[46]_i_9_n_0 ;
  wire \i_/q[47]_i_11_n_0 ;
  wire \i_/q[47]_i_12_n_0 ;
  wire \i_/q[47]_i_13_n_0 ;
  wire \i_/q[47]_i_15_n_0 ;
  wire \i_/q[47]_i_16_n_0 ;
  wire \i_/q[47]_i_3_n_0 ;
  wire \i_/q[47]_i_4_n_0 ;
  wire \i_/q[47]_i_5_n_0 ;
  wire \i_/q[47]_i_8_n_0 ;
  wire \i_/q[48]_i_11_n_0 ;
  wire \i_/q[48]_i_13_n_0 ;
  wire \i_/q[48]_i_15_n_0 ;
  wire \i_/q[48]_i_16_n_0 ;
  wire \i_/q[48]_i_17_n_0 ;
  wire \i_/q[48]_i_18_n_0 ;
  wire \i_/q[48]_i_19_n_0 ;
  wire \i_/q[48]_i_20_n_0 ;
  wire \i_/q[48]_i_3_n_0 ;
  wire \i_/q[48]_i_4_n_0 ;
  wire \i_/q[48]_i_5_n_0 ;
  wire \i_/q[49]_i_10_n_0 ;
  wire \i_/q[49]_i_11_n_0 ;
  wire \i_/q[49]_i_12_n_0 ;
  wire \i_/q[49]_i_5_n_0 ;
  wire \i_/q[50]_i_13_n_0 ;
  wire \i_/q[50]_i_14_n_0 ;
  wire \i_/q[50]_i_15_n_0 ;
  wire \i_/q[50]_i_16_n_0 ;
  wire \i_/q[50]_i_17_n_0 ;
  wire \i_/q[50]_i_3_n_0 ;
  wire \i_/q[50]_i_4_n_0 ;
  wire \i_/q[51]_i_10_n_0 ;
  wire \i_/q[51]_i_13_n_0 ;
  wire \i_/q[51]_i_2_n_0 ;
  wire \i_/q[51]_i_3_n_0 ;
  wire \i_/q[51]_i_4_n_0 ;
  wire \i_/q[51]_i_6_n_0 ;
  wire \i_/q[51]_i_7_n_0 ;
  wire \i_/q[51]_i_8_n_0 ;
  wire \i_/q[51]_i_9_n_0 ;
  wire \i_/q[52]_i_11_n_0 ;
  wire \i_/q[52]_i_15_n_0 ;
  wire \i_/q[52]_i_16_n_0 ;
  wire \i_/q[52]_i_17_n_0 ;
  wire \i_/q[52]_i_18_n_0 ;
  wire \i_/q[52]_i_19_n_0 ;
  wire \i_/q[52]_i_20_n_0 ;
  wire \i_/q[52]_i_21_n_0 ;
  wire \i_/q[52]_i_22_n_0 ;
  wire \i_/q[52]_i_24_n_0 ;
  wire \i_/q[52]_i_3_n_0 ;
  wire \i_/q[52]_i_4_n_0 ;
  wire \i_/q[53]_i_15_n_0 ;
  wire \i_/q[53]_i_16_n_0 ;
  wire \i_/q[53]_i_17_n_0 ;
  wire \i_/q[53]_i_18_n_0 ;
  wire \i_/q[53]_i_2_n_0 ;
  wire \i_/q[53]_i_3_n_0 ;
  wire \i_/q[53]_i_8_n_0 ;
  wire \i_/q[54]_i_11_n_0 ;
  wire \i_/q[54]_i_13_n_0 ;
  wire \i_/q[54]_i_14_n_0 ;
  wire \i_/q[54]_i_15_n_0 ;
  wire \i_/q[54]_i_16_n_0 ;
  wire \i_/q[54]_i_17_n_0 ;
  wire \i_/q[54]_i_3_n_0 ;
  wire \i_/q[54]_i_4_n_0 ;
  wire \i_/q[55]_i_10_n_0 ;
  wire \i_/q[55]_i_11_n_0 ;
  wire \i_/q[55]_i_12_n_0 ;
  wire \i_/q[55]_i_13_n_0 ;
  wire \i_/q[55]_i_14_n_0 ;
  wire \i_/q[55]_i_16_n_0 ;
  wire \i_/q[55]_i_17_n_0 ;
  wire \i_/q[55]_i_18_n_0 ;
  wire \i_/q[55]_i_19_n_0 ;
  wire \i_/q[55]_i_20_n_0 ;
  wire \i_/q[55]_i_21_n_0 ;
  wire \i_/q[55]_i_24_n_0 ;
  wire \i_/q[55]_i_25_n_0 ;
  wire \i_/q[55]_i_29_n_0 ;
  wire \i_/q[55]_i_30_n_0 ;
  wire \i_/q[55]_i_31_n_0 ;
  wire \i_/q[55]_i_32_n_0 ;
  wire \i_/q[55]_i_33_n_0 ;
  wire \i_/q[55]_i_34_n_0 ;
  wire \i_/q[55]_i_35_n_0 ;
  wire \i_/q[55]_i_36_n_0 ;
  wire \i_/q[55]_i_37_n_0 ;
  wire \i_/q[55]_i_38_n_0 ;
  wire \i_/q[55]_i_4_n_0 ;
  wire \i_/q[55]_i_8_n_0 ;
  wire \i_/q[55]_i_9_n_0 ;
  wire \i_/q[56]_i_10_n_0 ;
  wire \i_/q[56]_i_13_n_0 ;
  wire \i_/q[56]_i_14_n_0 ;
  wire \i_/q[56]_i_15_n_0 ;
  wire \i_/q[56]_i_16_n_0 ;
  wire \i_/q[56]_i_17_n_0 ;
  wire \i_/q[56]_i_18_n_0 ;
  wire \i_/q[56]_i_19_n_0 ;
  wire \i_/q[56]_i_20_n_0 ;
  wire \i_/q[56]_i_21_n_0 ;
  wire \i_/q[56]_i_22_n_0 ;
  wire \i_/q[56]_i_23_n_0 ;
  wire \i_/q[56]_i_24_n_0 ;
  wire \i_/q[56]_i_25_n_0 ;
  wire \i_/q[56]_i_3_n_0 ;
  wire \i_/q[56]_i_4_n_0 ;
  wire \i_/q[56]_i_5_n_0 ;
  wire \i_/q[57]_i_10_n_0 ;
  wire \i_/q[57]_i_12_n_0 ;
  wire \i_/q[57]_i_13_n_0 ;
  wire \i_/q[57]_i_14_n_0 ;
  wire \i_/q[57]_i_15_n_0 ;
  wire \i_/q[57]_i_2_n_0 ;
  wire \i_/q[57]_i_3_n_0 ;
  wire \i_/q[57]_i_4_n_0 ;
  wire \i_/q[57]_i_8_n_0 ;
  wire \i_/q[58]_i_11_n_0 ;
  wire \i_/q[58]_i_13_n_0 ;
  wire \i_/q[58]_i_14_n_0 ;
  wire \i_/q[58]_i_15_n_0 ;
  wire \i_/q[58]_i_16_n_0 ;
  wire \i_/q[58]_i_17_n_0 ;
  wire \i_/q[58]_i_18_n_0 ;
  wire \i_/q[58]_i_19_n_0 ;
  wire \i_/q[58]_i_20_n_0 ;
  wire \i_/q[58]_i_21_n_0 ;
  wire \i_/q[58]_i_2_n_0 ;
  wire \i_/q[58]_i_4_n_0 ;
  wire \i_/q[58]_i_6_n_0 ;
  wire \i_/q[58]_i_9_n_0 ;
  wire \i_/q[59]_i_11_n_0 ;
  wire \i_/q[59]_i_12_n_0 ;
  wire \i_/q[59]_i_14_n_0 ;
  wire \i_/q[59]_i_15_n_0 ;
  wire \i_/q[59]_i_16_n_0 ;
  wire \i_/q[59]_i_2_n_0 ;
  wire \i_/q[59]_i_4_n_0 ;
  wire \i_/q[59]_i_5_n_0 ;
  wire \i_/q[59]_i_8_n_0 ;
  wire \i_/q[60]_i_12_n_0 ;
  wire \i_/q[60]_i_14_n_0 ;
  wire \i_/q[60]_i_15_n_0 ;
  wire \i_/q[60]_i_3_n_0 ;
  wire \i_/q[60]_i_4_n_0 ;
  wire \i_/q[60]_i_9_n_0 ;
  wire \i_/q[61]_i_14_n_0 ;
  wire \i_/q[61]_i_16_n_0 ;
  wire \i_/q[61]_i_17_n_0 ;
  wire \i_/q[61]_i_18_n_0 ;
  wire \i_/q[61]_i_19_n_0 ;
  wire \i_/q[61]_i_20_n_0 ;
  wire \i_/q[61]_i_21_n_0 ;
  wire \i_/q[61]_i_23_n_0 ;
  wire \i_/q[61]_i_24_n_0 ;
  wire \i_/q[61]_i_25_n_0 ;
  wire \i_/q[61]_i_27_n_0 ;
  wire \i_/q[61]_i_29_n_0 ;
  wire \i_/q[61]_i_2_n_0 ;
  wire \i_/q[61]_i_31_n_0 ;
  wire \i_/q[61]_i_32_n_0 ;
  wire \i_/q[61]_i_33_n_0 ;
  wire \i_/q[61]_i_6_n_0 ;
  wire \i_/q[61]_i_7_n_0 ;
  wire \i_/q[62]_i_11_n_0 ;
  wire \i_/q[62]_i_12_n_0 ;
  wire \i_/q[62]_i_13_n_0 ;
  wire \i_/q[62]_i_2_n_0 ;
  wire \i_/q[62]_i_3_n_0 ;
  wire \i_/q[62]_i_5_n_0 ;
  wire \i_/q[63]_i_14_n_0 ;
  wire \i_/q[63]_i_17_n_0 ;
  wire \i_/q[63]_i_18_n_0 ;
  wire \i_/q[63]_i_2_n_0 ;
  wire \i_/q[63]_i_3_n_0 ;
  wire \i_/q[63]_i_4_n_0 ;
  wire \i_/q[63]_i_7_n_0 ;
  wire \i_/q[63]_i_8_n_0 ;
  wire \i_/q[63]_i_9_n_0 ;
  wire \i_/q[64]_i_10_n_0 ;
  wire \i_/q[64]_i_11_n_0 ;
  wire \i_/q[64]_i_12_n_0 ;
  wire \i_/q[64]_i_13_n_0 ;
  wire \i_/q[64]_i_2_n_0 ;
  wire \i_/q[64]_i_3_n_0 ;
  wire \i_/q[64]_i_5_n_0 ;
  wire \i_/q[64]_i_7_n_0 ;
  wire \i_/q[65]_i_10_n_0 ;
  wire \i_/q[65]_i_11_n_0 ;
  wire \i_/q[65]_i_12_n_0 ;
  wire \i_/q[65]_i_13_n_0 ;
  wire \i_/q[65]_i_14_n_0 ;
  wire \i_/q[65]_i_16_n_0 ;
  wire \i_/q[65]_i_2_n_0 ;
  wire \i_/q[65]_i_3_n_0 ;
  wire \i_/q[65]_i_4_n_0 ;
  wire \i_/q[65]_i_7_n_0 ;
  wire \i_/q[65]_i_9_n_0 ;
  wire \i_/q[66]_i_11_n_0 ;
  wire \i_/q[66]_i_12_n_0 ;
  wire \i_/q[66]_i_13_n_0 ;
  wire \i_/q[66]_i_15_n_0 ;
  wire \i_/q[66]_i_2_n_0 ;
  wire \i_/q[66]_i_3_n_0 ;
  wire \i_/q[66]_i_5_n_0 ;
  wire \i_/q[66]_i_8_n_0 ;
  wire \i_/q[67]_i_10_n_0 ;
  wire \i_/q[67]_i_12_n_0 ;
  wire \i_/q[67]_i_15_n_0 ;
  wire \i_/q[67]_i_16_n_0 ;
  wire \i_/q[67]_i_2_n_0 ;
  wire \i_/q[67]_i_3_n_0 ;
  wire \i_/q[67]_i_7_n_0 ;
  wire \i_/q[68]_i_10_n_0 ;
  wire \i_/q[68]_i_11_n_0 ;
  wire \i_/q[68]_i_13_n_0 ;
  wire \i_/q[68]_i_2_n_0 ;
  wire \i_/q[68]_i_3_n_0 ;
  wire \i_/q[68]_i_5_n_0 ;
  wire \i_/q[68]_i_7_n_0 ;
  wire \i_/q[69]_i_10_n_0 ;
  wire \i_/q[69]_i_11_n_0 ;
  wire \i_/q[69]_i_2_n_0 ;
  wire \i_/q[69]_i_3_n_0 ;
  wire \i_/q[69]_i_4_n_0 ;
  wire \i_/q[69]_i_7_n_0 ;
  wire \i_/q[69]_i_8_n_0 ;
  wire \i_/q[69]_i_9_n_0 ;
  wire \i_/q[70]_i_10_n_0 ;
  wire \i_/q[70]_i_11_n_0 ;
  wire \i_/q[70]_i_2_n_0 ;
  wire \i_/q[70]_i_3_n_0 ;
  wire \i_/q[70]_i_5_n_0 ;
  wire \i_/q[70]_i_9_n_0 ;
  wire \i_/q[71]_i_10_n_0 ;
  wire \i_/q[71]_i_12_n_0 ;
  wire \i_/q[71]_i_15_n_0 ;
  wire \i_/q[71]_i_2_n_0 ;
  wire \i_/q[71]_i_3_n_0 ;
  wire \i_/q[71]_i_4_n_0 ;
  wire \i_/q[71]_i_7_n_0 ;
  wire \i_/q[71]_i_9_n_0 ;
  wire \i_/q[72]_i_3_n_0 ;
  wire \i_/q[72]_i_5_n_0 ;
  wire \i_/q[72]_i_8_n_0 ;
  wire \i_/q[73]_i_12_n_0 ;
  wire \i_/q[73]_i_13_n_0 ;
  wire \i_/q[73]_i_14_n_0 ;
  wire \i_/q[73]_i_15_n_0 ;
  wire \i_/q[73]_i_16_n_0 ;
  wire \i_/q[73]_i_17_n_0 ;
  wire \i_/q[73]_i_18_n_0 ;
  wire \i_/q[73]_i_19_n_0 ;
  wire \i_/q[73]_i_20_n_0 ;
  wire \i_/q[73]_i_21_n_0 ;
  wire \i_/q[73]_i_22_n_0 ;
  wire \i_/q[73]_i_23_n_0 ;
  wire \i_/q[73]_i_24_n_0 ;
  wire \i_/q[73]_i_2_n_0 ;
  wire \i_/q[73]_i_4_n_0 ;
  wire \i_/q[73]_i_6_n_0 ;
  wire \i_/q[74]_i_10_n_0 ;
  wire \i_/q[74]_i_11_n_0 ;
  wire \i_/q[74]_i_12_n_0 ;
  wire \i_/q[74]_i_18_n_0 ;
  wire \i_/q[74]_i_24_n_0 ;
  wire \i_/q[74]_i_2_n_0 ;
  wire \i_/q[74]_i_4_n_0 ;
  wire \i_/q[74]_i_5_n_0 ;
  wire \i_/q[74]_i_6_n_0 ;
  wire \i_/q[74]_i_8_n_0 ;
  wire \q_reg[116] ;
  wire \q_reg[116]_0 ;
  wire \q_reg[116]_1 ;
  wire \q_reg[116]_10 ;
  wire \q_reg[116]_11 ;
  wire \q_reg[116]_12 ;
  wire \q_reg[116]_13 ;
  wire \q_reg[116]_14 ;
  wire \q_reg[116]_15 ;
  wire \q_reg[116]_16 ;
  wire \q_reg[116]_17 ;
  wire \q_reg[116]_18 ;
  wire \q_reg[116]_19 ;
  wire \q_reg[116]_2 ;
  wire \q_reg[116]_20 ;
  wire \q_reg[116]_21 ;
  wire \q_reg[116]_22 ;
  wire \q_reg[116]_23 ;
  wire \q_reg[116]_24 ;
  wire \q_reg[116]_25 ;
  wire \q_reg[116]_3 ;
  wire \q_reg[116]_4 ;
  wire \q_reg[116]_5 ;
  wire \q_reg[116]_6 ;
  wire \q_reg[116]_7 ;
  wire \q_reg[116]_8 ;
  wire \q_reg[116]_9 ;
  wire \q_reg[146] ;
  wire \q_reg[146]_0 ;
  wire \q_reg[146]_1 ;
  wire \q_reg[146]_2 ;
  wire \q_reg[146]_3 ;
  wire \q_reg[147] ;
  wire \q_reg[147]_0 ;
  wire \q_reg[147]_1 ;
  wire \q_reg[147]_2 ;
  wire \q_reg[147]_3 ;
  wire \q_reg[149] ;
  wire \q_reg[149]_0 ;
  wire \q_reg[149]_1 ;
  wire \q_reg[149]_2 ;
  wire \q_reg[149]_3 ;
  wire \q_reg[149]_4 ;
  wire \q_reg[150] ;
  wire \q_reg[151] ;
  wire \q_reg[151]_0 ;
  wire \q_reg[151]_1 ;
  wire \q_reg[151]_2 ;
  wire \q_reg[151]_3 ;
  wire \q_reg[151]_4 ;
  wire \q_reg[152] ;
  wire \q_reg[152]_0 ;
  wire \q_reg[17] ;
  wire \q_reg[17]_0 ;
  wire \q_reg[19] ;
  wire \q_reg[23] ;
  wire \q_reg[25] ;
  wire \q_reg[25]_0 ;
  wire \q_reg[27] ;
  wire \q_reg[27]_0 ;
  wire \q_reg[27]_1 ;
  wire \q_reg[28] ;
  wire \q_reg[29] ;
  wire \q_reg[31] ;
  wire \q_reg[33] ;
  wire \q_reg[34] ;
  wire \q_reg[34]_0 ;
  wire \q_reg[34]_1 ;
  wire \q_reg[39] ;
  wire \q_reg[40] ;
  wire \q_reg[43] ;
  wire \q_reg[43]_0 ;
  wire \q_reg[43]_1 ;
  wire \q_reg[43]_2 ;
  wire \q_reg[43]_3 ;
  wire \q_reg[44] ;
  wire \q_reg[44]_0 ;
  wire \q_reg[44]_1 ;
  wire \q_reg[44]_2 ;
  wire \q_reg[44]_3 ;
  wire \q_reg[44]_4 ;
  wire \q_reg[45] ;
  wire \q_reg[45]_0 ;
  wire \q_reg[45]_1 ;
  wire \q_reg[45]_2 ;
  wire \q_reg[45]_3 ;
  wire \q_reg[45]_4 ;
  wire \q_reg[46] ;
  wire \q_reg[46]_0 ;
  wire \q_reg[46]_1 ;
  wire \q_reg[46]_2 ;
  wire \q_reg[46]_3 ;
  wire \q_reg[46]_4 ;
  wire \q_reg[47] ;
  wire \q_reg[47]_0 ;
  wire \q_reg[47]_1 ;
  wire \q_reg[48] ;
  wire \q_reg[48]_0 ;
  wire \q_reg[48]_1 ;
  wire \q_reg[49] ;
  wire \q_reg[49]_0 ;
  wire \q_reg[49]_1 ;
  wire \q_reg[49]_2 ;
  wire \q_reg[4] ;
  wire \q_reg[4]_0 ;
  wire \q_reg[4]_1 ;
  wire \q_reg[4]_2 ;
  wire \q_reg[50] ;
  wire \q_reg[50]_0 ;
  wire \q_reg[50]_1 ;
  wire \q_reg[50]_2 ;
  wire \q_reg[50]_3 ;
  wire \q_reg[50]_4 ;
  wire \q_reg[50]_5 ;
  wire \q_reg[51] ;
  wire \q_reg[51]_0 ;
  wire \q_reg[51]_1 ;
  wire \q_reg[51]_2 ;
  wire \q_reg[51]_3 ;
  wire \q_reg[51]_4 ;
  wire \q_reg[51]_5 ;
  wire \q_reg[51]_6 ;
  wire \q_reg[51]_7 ;
  wire \q_reg[51]_8 ;
  wire \q_reg[51]_9 ;
  wire \q_reg[52] ;
  wire \q_reg[52]_0 ;
  wire \q_reg[52]_1 ;
  wire \q_reg[53] ;
  wire \q_reg[53]_0 ;
  wire \q_reg[53]_1 ;
  wire \q_reg[53]_2 ;
  wire \q_reg[53]_3 ;
  wire \q_reg[53]_4 ;
  wire \q_reg[53]_5 ;
  wire \q_reg[53]_6 ;
  wire \q_reg[53]_7 ;
  wire \q_reg[53]_8 ;
  wire \q_reg[53]_9 ;
  wire \q_reg[54] ;
  wire \q_reg[54]_0 ;
  wire \q_reg[54]_1 ;
  wire \q_reg[54]_2 ;
  wire \q_reg[54]_3 ;
  wire \q_reg[54]_4 ;
  wire [6:0]\q_reg[54]_5 ;
  wire \q_reg[55] ;
  wire \q_reg[55]_0 ;
  wire \q_reg[55]_1 ;
  wire \q_reg[55]_2 ;
  wire \q_reg[55]_3 ;
  wire \q_reg[56] ;
  wire \q_reg[56]_0 ;
  wire \q_reg[56]_1 ;
  wire \q_reg[56]_2 ;
  wire \q_reg[56]_3 ;
  wire \q_reg[57] ;
  wire \q_reg[57]_0 ;
  wire \q_reg[57]_1 ;
  wire \q_reg[57]_2 ;
  wire \q_reg[57]_3 ;
  wire \q_reg[57]_4 ;
  wire \q_reg[57]_5 ;
  wire \q_reg[58] ;
  wire \q_reg[58]_0 ;
  wire \q_reg[58]_1 ;
  wire \q_reg[58]_2 ;
  wire \q_reg[59] ;
  wire \q_reg[59]_0 ;
  wire \q_reg[59]_1 ;
  wire \q_reg[59]_2 ;
  wire \q_reg[59]_3 ;
  wire \q_reg[59]_4 ;
  wire \q_reg[59]_5 ;
  wire \q_reg[60] ;
  wire \q_reg[60]_0 ;
  wire \q_reg[60]_1 ;
  wire \q_reg[60]_2 ;
  wire \q_reg[60]_3 ;
  wire \q_reg[60]_4 ;
  wire \q_reg[61] ;
  wire \q_reg[61]_0 ;
  wire \q_reg[61]_1 ;
  wire \q_reg[61]_2 ;
  wire \q_reg[61]_3 ;
  wire \q_reg[61]_4 ;
  wire \q_reg[61]_5 ;
  wire \q_reg[62] ;
  wire \q_reg[62]_0 ;
  wire \q_reg[62]_1 ;
  wire \q_reg[62]_2 ;
  wire \q_reg[62]_3 ;
  wire \q_reg[63] ;
  wire \q_reg[63]_0 ;
  wire \q_reg[63]_1 ;
  wire \q_reg[63]_2 ;
  wire \q_reg[63]_3 ;
  wire \q_reg[63]_4 ;
  wire \q_reg[64] ;
  wire \q_reg[64]_0 ;
  wire \q_reg[64]_1 ;
  wire \q_reg[65] ;
  wire \q_reg[65]_0 ;
  wire \q_reg[65]_1 ;
  wire \q_reg[65]_2 ;
  wire \q_reg[66] ;
  wire \q_reg[66]_0 ;
  wire \q_reg[66]_1 ;
  wire \q_reg[66]_2 ;
  wire \q_reg[67] ;
  wire \q_reg[67]_0 ;
  wire \q_reg[67]_1 ;
  wire \q_reg[67]_2 ;
  wire \q_reg[67]_3 ;
  wire \q_reg[67]_4 ;
  wire \q_reg[67]_5 ;
  wire \q_reg[68] ;
  wire \q_reg[68]_0 ;
  wire \q_reg[68]_1 ;
  wire \q_reg[68]_2 ;
  wire \q_reg[69] ;
  wire \q_reg[69]_0 ;
  wire \q_reg[69]_1 ;
  wire \q_reg[70] ;
  wire \q_reg[70]_0 ;
  wire \q_reg[70]_1 ;
  wire \q_reg[71] ;
  wire \q_reg[71]_0 ;
  wire \q_reg[71]_1 ;
  wire \q_reg[71]_2 ;
  wire \q_reg[71]_3 ;
  wire \q_reg[71]_4 ;
  wire \q_reg[72] ;
  wire \q_reg[72]_0 ;
  wire \q_reg[72]_1 ;
  wire \q_reg[73] ;
  wire \q_reg[73]_0 ;
  wire \q_reg[73]_1 ;
  wire \q_reg[73]_2 ;
  wire \q_reg[74] ;
  wire \q_reg[74]_0 ;
  wire \q_reg[74]_1 ;
  wire \q_reg[74]_2 ;
  wire \q_reg[74]_3 ;
  wire \q_reg[74]_4 ;
  wire \q_reg[74]_5 ;
  wire \q_reg[74]_6 ;
  wire \q_reg[74]_7 ;
  wire [35:0]\q_reg[74]_8 ;
  wire \q_reg[82] ;
  wire \q_reg[82]_0 ;
  wire \q_reg[82]_1 ;
  wire [29:0]w_RegWriteData_wb;

  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/char_tab_i_100 
       (.I0(Q[68]),
        .I1(\q_reg[74]_8 [34]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[28]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/char_tab_i_100_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/char_tab_i_107 
       (.I0(Q[64]),
        .I1(\q_reg[74]_8 [30]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[24]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/char_tab_i_107_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/char_tab_i_108 
       (.I0(Q[60]),
        .I1(\q_reg[74]_8 [26]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[20]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/char_tab_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/char_tab_i_110 
       (.I0(w_RegWriteData_wb[27]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [33]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[99]),
        .O(\i_/char_tab_i_110_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \i_/char_tab_i_115 
       (.I0(\i_/q[72]_i_3_n_0 ),
        .I1(\q_reg[46]_0 ),
        .I2(\q_reg[45] ),
        .I3(\i_/q[73]_i_4_n_0 ),
        .O(\TMDSn[2]_1 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/char_tab_i_116 
       (.I0(Q[63]),
        .I1(\q_reg[74]_8 [29]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[23]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/char_tab_i_116_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/char_tab_i_117 
       (.I0(Q[59]),
        .I1(\q_reg[74]_8 [25]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[19]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/char_tab_i_117_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/char_tab_i_119 
       (.I0(Q[67]),
        .I1(\q_reg[74]_8 [33]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[27]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/char_tab_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/char_tab_i_121 
       (.I0(w_RegWriteData_wb[26]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [32]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[98]),
        .O(\i_/char_tab_i_121_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/char_tab_i_127 
       (.I0(Q[62]),
        .I1(\q_reg[74]_8 [28]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[22]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/char_tab_i_127_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/char_tab_i_128 
       (.I0(Q[58]),
        .I1(\q_reg[74]_8 [24]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[18]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/char_tab_i_128_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/char_tab_i_130 
       (.I0(Q[66]),
        .I1(\q_reg[74]_8 [32]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[26]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/char_tab_i_130_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \i_/char_tab_i_142 
       (.I0(\q_reg[116]_3 ),
        .I1(\q_reg[46]_0 ),
        .I2(\q_reg[49]_0 ),
        .I3(\q_reg[45] ),
        .O(\TMDSn[2]_0 ));
  LUT5 #(
    .INIT(32'h82282882)) 
    \i_/char_tab_i_161 
       (.I0(\q_reg[151] ),
        .I1(\q_reg[55]_3 ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[55]_2 ),
        .I4(\q_reg[55]_0 ),
        .O(\TMDSn[2] ));
  LUT4 #(
    .INIT(16'h0FBB)) 
    \i_/char_tab_i_31 
       (.I0(Q[135]),
        .I1(D[31]),
        .I2(Q[133]),
        .I3(Q[134]),
        .O(\q_reg[43]_1 ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \i_/char_tab_i_43 
       (.I0(\i_/char_tab_i_97_n_0 ),
        .I1(Q[135]),
        .I2(Q[129]),
        .I3(Q[134]),
        .O(\q_reg[70]_0 ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \i_/char_tab_i_44 
       (.I0(\i_/char_tab_i_98_n_0 ),
        .I1(Q[135]),
        .I2(Q[125]),
        .I3(Q[134]),
        .O(\q_reg[66]_0 ));
  LUT4 #(
    .INIT(16'hF011)) 
    \i_/char_tab_i_46 
       (.I0(\i_/char_tab_i_100_n_0 ),
        .I1(Q[135]),
        .I2(Q[132]),
        .I3(Q[134]),
        .O(\q_reg[73]_2 ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \i_/char_tab_i_54 
       (.I0(\i_/char_tab_i_107_n_0 ),
        .I1(Q[135]),
        .I2(Q[128]),
        .I3(Q[134]),
        .O(\q_reg[69]_0 ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \i_/char_tab_i_55 
       (.I0(\i_/char_tab_i_108_n_0 ),
        .I1(Q[135]),
        .I2(Q[124]),
        .I3(Q[134]),
        .O(\q_reg[65]_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/char_tab_i_59 
       (.I0(Q[30]),
        .I1(Q[135]),
        .I2(\i_/char_tab_i_110_n_0 ),
        .O(\q_reg[72]_0 ));
  LUT4 #(
    .INIT(16'hF011)) 
    \i_/char_tab_i_68 
       (.I0(\i_/char_tab_i_116_n_0 ),
        .I1(Q[135]),
        .I2(Q[127]),
        .I3(Q[134]),
        .O(\q_reg[68]_1 ));
  LUT4 #(
    .INIT(16'hF011)) 
    \i_/char_tab_i_69 
       (.I0(\i_/char_tab_i_117_n_0 ),
        .I1(Q[135]),
        .I2(Q[123]),
        .I3(Q[134]),
        .O(\q_reg[64]_0 ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \i_/char_tab_i_71 
       (.I0(\i_/char_tab_i_119_n_0 ),
        .I1(Q[135]),
        .I2(Q[131]),
        .I3(Q[134]),
        .O(\q_reg[72]_1 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/char_tab_i_73 
       (.I0(Q[29]),
        .I1(Q[135]),
        .I2(\i_/char_tab_i_121_n_0 ),
        .O(\q_reg[71]_1 ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \i_/char_tab_i_84 
       (.I0(\i_/char_tab_i_127_n_0 ),
        .I1(Q[135]),
        .I2(Q[126]),
        .I3(Q[134]),
        .O(\q_reg[67]_1 ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \i_/char_tab_i_85 
       (.I0(\i_/char_tab_i_128_n_0 ),
        .I1(Q[135]),
        .I2(Q[122]),
        .I3(Q[134]),
        .O(\q_reg[63]_0 ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \i_/char_tab_i_87 
       (.I0(\i_/char_tab_i_130_n_0 ),
        .I1(Q[135]),
        .I2(Q[130]),
        .I3(Q[134]),
        .O(\q_reg[71]_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/char_tab_i_97 
       (.I0(Q[65]),
        .I1(\q_reg[74]_8 [31]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[25]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/char_tab_i_97_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/char_tab_i_98 
       (.I0(Q[61]),
        .I1(\q_reg[74]_8 [27]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[21]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/char_tab_i_98_n_0 ));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[11]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(\q_reg[39] ),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [4]),
        .I4(Q[38]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[12]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(\q_reg[40] ),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [5]),
        .I4(Q[39]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hACACFF0C)) 
    \i_/q[13]_i_1 
       (.I0(Q[40]),
        .I1(\q_reg[74]_8 [6]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[0]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[14]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[1]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [7]),
        .I4(Q[41]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[15]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[2]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [8]),
        .I4(Q[42]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[16]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[3]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [9]),
        .I4(Q[43]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[17]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[4]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [10]),
        .I4(Q[44]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[18]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[5]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [11]),
        .I4(Q[45]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[19]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[6]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [12]),
        .I4(Q[46]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[20]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[7]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [13]),
        .I4(Q[47]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[21]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[8]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [14]),
        .I4(Q[48]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[22]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[9]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [15]),
        .I4(Q[49]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[23]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[10]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [16]),
        .I4(Q[50]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[24]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[11]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [17]),
        .I4(Q[51]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[25]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[12]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [18]),
        .I4(Q[52]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[26]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[13]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [19]),
        .I4(Q[53]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[27]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[14]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [20]),
        .I4(Q[54]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[28]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[15]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [21]),
        .I4(Q[55]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[29]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[16]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [22]),
        .I4(Q[56]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[30]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[17]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [23]),
        .I4(Q[57]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[31]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[18]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [24]),
        .I4(Q[58]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[32]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[19]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [25]),
        .I4(Q[59]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[33]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[20]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [26]),
        .I4(Q[60]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[34]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[21]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [27]),
        .I4(Q[61]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[35]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[22]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [28]),
        .I4(Q[62]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[36]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[23]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [29]),
        .I4(Q[63]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[37]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[24]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [30]),
        .I4(Q[64]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[38]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[25]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [31]),
        .I4(Q[65]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[39]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[26]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [32]),
        .I4(Q[66]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[40]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[27]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [33]),
        .I4(Q[67]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hEFE44F44)) 
    \i_/q[41]_i_1 
       (.I0(\i_/q[42]_i_3_n_0 ),
        .I1(w_RegWriteData_wb[28]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[74]_8 [34]),
        .I4(Q[68]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hACACFF0C)) 
    \i_/q[42]_i_1 
       (.I0(Q[69]),
        .I1(\q_reg[74]_8 [35]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[29]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hBFFBFFFFFFFFBFFB)) 
    \i_/q[42]_i_2 
       (.I0(\i_/q[42]_i_4_n_0 ),
        .I1(\i_/q[42]_i_5_n_0 ),
        .I2(Q[33]),
        .I3(\q_reg[74]_8 [0]),
        .I4(Q[0]),
        .I5(\q_reg[74]_8 [2]),
        .O(\i_/q[42]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFEE)) 
    \i_/q[42]_i_3 
       (.I0(\i_/q[42]_i_6_n_0 ),
        .I1(\i_/q[42]_i_7_n_0 ),
        .I2(\i_/q[42]_i_8_n_0 ),
        .I3(\i_/q[42]_i_5_n_0 ),
        .I4(\i_/q[42]_i_9_n_0 ),
        .O(\i_/q[42]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5557)) 
    \i_/q[42]_i_4 
       (.I0(\q_reg[74]_8 [3]),
        .I1(\q_reg[74]_8 [1]),
        .I2(\q_reg[74]_8 [2]),
        .I3(\q_reg[74]_8 [0]),
        .O(\i_/q[42]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \i_/q[42]_i_5 
       (.I0(Q[34]),
        .I1(\q_reg[74]_8 [1]),
        .I2(Q[35]),
        .I3(\q_reg[74]_8 [2]),
        .O(\i_/q[42]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \i_/q[42]_i_6 
       (.I0(Q[33]),
        .I1(\q_reg[54]_5 [0]),
        .I2(Q[34]),
        .I3(\q_reg[54]_5 [1]),
        .O(\i_/q[42]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \i_/q[42]_i_7 
       (.I0(Q[0]),
        .I1(Q[35]),
        .I2(\q_reg[54]_5 [2]),
        .O(\i_/q[42]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \i_/q[42]_i_8 
       (.I0(Q[33]),
        .I1(\q_reg[74]_8 [0]),
        .I2(Q[0]),
        .I3(\q_reg[74]_8 [2]),
        .O(\i_/q[42]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5557)) 
    \i_/q[42]_i_9 
       (.I0(\q_reg[54]_5 [4]),
        .I1(\q_reg[54]_5 [1]),
        .I2(\q_reg[54]_5 [2]),
        .I3(\q_reg[54]_5 [0]),
        .O(\i_/q[42]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4F5FCFFF405FC0F0)) 
    \i_/q[43]_i_1 
       (.I0(\i_/q[43]_i_2_n_0 ),
        .I1(\i_/q[43]_i_3_n_0 ),
        .I2(\i_/q[43]_i_4_n_0 ),
        .I3(\i_/q[43]_i_5_n_0 ),
        .I4(\i_/q[43]_i_6_n_0 ),
        .I5(\i_/q[43]_i_7_n_0 ),
        .O(D[32]));
  LUT4 #(
    .INIT(16'hD44D)) 
    \i_/q[43]_i_10 
       (.I0(\i_/q[43]_i_19_n_0 ),
        .I1(\q_reg[73]_1 ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[73]_2 ),
        .O(\i_/q[43]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \i_/q[43]_i_11 
       (.I0(\q_reg[29] ),
        .I1(\q_reg[25] ),
        .I2(\q_reg[63] ),
        .I3(\q_reg[25]_0 ),
        .I4(\i_/q[71]_i_9_n_0 ),
        .O(\i_/q[43]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hD44D)) 
    \i_/q[43]_i_12 
       (.I0(\i_/q[43]_i_22_n_0 ),
        .I1(\q_reg[73]_1 ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[73]_2 ),
        .O(\i_/q[43]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0A0ABFAA0A0A)) 
    \i_/q[43]_i_13 
       (.I0(Q[139]),
        .I1(\q_reg[44] ),
        .I2(Q[136]),
        .I3(\q_reg[46] ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[43]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000CF5A500FFFFFF)) 
    \i_/q[43]_i_14 
       (.I0(\q_reg[44] ),
        .I1(\q_reg[82] ),
        .I2(\q_reg[46] ),
        .I3(Q[136]),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[43]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i_/q[43]_i_15 
       (.I0(Q[137]),
        .I1(Q[136]),
        .O(\i_/q[43]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[43]_i_16 
       (.I0(Q[137]),
        .I1(\q_reg[146] ),
        .I2(Q[138]),
        .O(\i_/q[43]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hD0D0D000)) 
    \i_/q[43]_i_17 
       (.I0(Q[136]),
        .I1(Q[137]),
        .I2(Q[139]),
        .I3(\q_reg[43]_1 ),
        .I4(\q_reg[74] ),
        .O(\i_/q[43]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h55330FFF55330F00)) 
    \i_/q[43]_i_18 
       (.I0(\q_reg[67] ),
        .I1(\q_reg[51]_0 ),
        .I2(\q_reg[59] ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[44] ),
        .O(\q_reg[43]_0 ));
  LUT5 #(
    .INIT(32'h4001CD73)) 
    \i_/q[43]_i_19 
       (.I0(\q_reg[71]_1 ),
        .I1(\q_reg[57]_0 ),
        .I2(\q_reg[71]_0 ),
        .I3(\q_reg[72]_1 ),
        .I4(\q_reg[72]_0 ),
        .O(\i_/q[43]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFFEFEAA000202)) 
    \i_/q[43]_i_2 
       (.I0(\i_/q[44]_i_8_n_0 ),
        .I1(\q_reg[43] ),
        .I2(Q[135]),
        .I3(Q[102]),
        .I4(Q[134]),
        .I5(\q_reg[116]_2 ),
        .O(\i_/q[43]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC413DFF7)) 
    \i_/q[43]_i_22 
       (.I0(\q_reg[71]_1 ),
        .I1(\q_reg[57]_0 ),
        .I2(\q_reg[71]_0 ),
        .I3(\q_reg[72]_1 ),
        .I4(\q_reg[72]_0 ),
        .O(\i_/q[43]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFF8F8888)) 
    \i_/q[43]_i_3 
       (.I0(\q_reg[43]_1 ),
        .I1(\q_reg[74] ),
        .I2(Q[136]),
        .I3(Q[137]),
        .I4(Q[139]),
        .O(\i_/q[43]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i_/q[43]_i_4 
       (.I0(Q[139]),
        .I1(Q[137]),
        .O(\i_/q[43]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF656A656AFFFF)) 
    \i_/q[43]_i_5 
       (.I0(\q_reg[57]_0 ),
        .I1(\i_/q[43]_i_10_n_0 ),
        .I2(\i_/q[43]_i_11_n_0 ),
        .I3(\i_/q[43]_i_12_n_0 ),
        .I4(\q_reg[43]_1 ),
        .I5(\q_reg[74] ),
        .O(\i_/q[43]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \i_/q[43]_i_6 
       (.I0(Q[139]),
        .I1(Q[137]),
        .I2(Q[136]),
        .O(\i_/q[43]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEEFE)) 
    \i_/q[43]_i_7 
       (.I0(\i_/q[43]_i_13_n_0 ),
        .I1(\i_/q[43]_i_14_n_0 ),
        .I2(\i_/q[43]_i_15_n_0 ),
        .I3(\i_/q[43]_i_2_n_0 ),
        .I4(\i_/q[43]_i_16_n_0 ),
        .I5(\i_/q[43]_i_17_n_0 ),
        .O(\i_/q[43]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[43]_i_8 
       (.I0(Q[38]),
        .I1(\q_reg[74]_8 [4]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(\q_reg[39] ),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\q_reg[43] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5454FF54)) 
    \i_/q[44]_i_1 
       (.I0(\i_/q[44]_i_2_n_0 ),
        .I1(\i_/q[44]_i_3_n_0 ),
        .I2(\i_/q[44]_i_4_n_0 ),
        .I3(\q_reg[45] ),
        .I4(\i_/q[44]_i_5_n_0 ),
        .I5(\i_/q[44]_i_6_n_0 ),
        .O(D[33]));
  LUT6 #(
    .INIT(64'hAAFFFEFEAA000202)) 
    \i_/q[44]_i_10 
       (.I0(\q_reg[44] ),
        .I1(\q_reg[43] ),
        .I2(Q[135]),
        .I3(Q[102]),
        .I4(Q[134]),
        .I5(\q_reg[57]_0 ),
        .O(\i_/q[44]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00BCFF00)) 
    \i_/q[44]_i_11 
       (.I0(Q[136]),
        .I1(\q_reg[73] ),
        .I2(\q_reg[44]_0 ),
        .I3(Q[137]),
        .I4(Q[138]),
        .O(\i_/q[44]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hACACACACACACFF0C)) 
    \i_/q[44]_i_12 
       (.I0(Q[71]),
        .I1(\q_reg[74]_8 [5]),
        .I2(\i_/q[74]_i_10_n_0 ),
        .I3(\q_reg[40] ),
        .I4(\i_/q[74]_i_18_n_0 ),
        .I5(\i_/q[58]_i_21_n_0 ),
        .O(\i_/q[44]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h55CC0F0055CC0FFF)) 
    \i_/q[44]_i_13 
       (.I0(\q_reg[68]_0 ),
        .I1(\q_reg[52]_0 ),
        .I2(\q_reg[60] ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[44]_0 ),
        .O(\i_/q[44]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFBBAAAA)) 
    \i_/q[44]_i_2 
       (.I0(Q[139]),
        .I1(\q_reg[73] ),
        .I2(\q_reg[44]_0 ),
        .I3(Q[136]),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[44]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA20AAAAAA20AA20)) 
    \i_/q[44]_i_3 
       (.I0(\q_reg[51] ),
        .I1(\i_/q[44]_i_8_n_0 ),
        .I2(\q_reg[45]_0 ),
        .I3(\q_reg[4]_0 ),
        .I4(\q_reg[116]_0 ),
        .I5(\q_reg[146]_0 ),
        .O(\i_/q[44]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF69009600)) 
    \i_/q[44]_i_4 
       (.I0(\q_reg[73] ),
        .I1(\q_reg[57]_0 ),
        .I2(\q_reg[44]_0 ),
        .I3(\q_reg[151] ),
        .I4(\i_/q[44]_i_10_n_0 ),
        .I5(\i_/q[44]_i_11_n_0 ),
        .O(\i_/q[44]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \i_/q[44]_i_5 
       (.I0(\q_reg[116]_0 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[147]_2 ),
        .I3(\q_reg[73] ),
        .O(\i_/q[44]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i_/q[44]_i_6 
       (.I0(\q_reg[46]_0 ),
        .I1(\i_/q[44]_i_8_n_0 ),
        .O(\i_/q[44]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[44]_i_7 
       (.I0(Q[2]),
        .I1(Q[135]),
        .I2(\i_/q[44]_i_12_n_0 ),
        .O(\q_reg[44]_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \i_/q[44]_i_8 
       (.I0(\q_reg[44]_2 ),
        .I1(\q_reg[44]_3 ),
        .I2(\q_reg[73] ),
        .I3(\q_reg[73]_0 ),
        .I4(\q_reg[44]_4 ),
        .I5(\i_/q[44]_i_13_n_0 ),
        .O(\i_/q[44]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5454FF54)) 
    \i_/q[45]_i_1 
       (.I0(\i_/q[45]_i_2_n_0 ),
        .I1(\i_/q[45]_i_3_n_0 ),
        .I2(\i_/q[45]_i_4_n_0 ),
        .I3(\q_reg[45] ),
        .I4(\i_/q[46]_i_5_n_0 ),
        .I5(\i_/q[45]_i_5_n_0 ),
        .O(D[34]));
  LUT5 #(
    .INIT(32'h00E5FF00)) 
    \i_/q[45]_i_10 
       (.I0(\q_reg[45]_1 ),
        .I1(Q[136]),
        .I2(\q_reg[73]_0 ),
        .I3(Q[137]),
        .I4(Q[138]),
        .O(\i_/q[45]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1013101300003033)) 
    \i_/q[45]_i_11 
       (.I0(Q[72]),
        .I1(Q[135]),
        .I2(\i_/q[74]_i_10_n_0 ),
        .I3(\q_reg[74]_8 [6]),
        .I4(w_RegWriteData_wb[0]),
        .I5(\i_/q[74]_i_11_n_0 ),
        .O(\i_/q[45]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i_/q[45]_i_12 
       (.I0(\q_reg[73]_0 ),
        .I1(\q_reg[73] ),
        .O(\q_reg[44]_1 ));
  LUT6 #(
    .INIT(64'h330055F033FF55F0)) 
    \i_/q[45]_i_13 
       (.I0(\q_reg[53]_0 ),
        .I1(\q_reg[69]_1 ),
        .I2(\q_reg[45]_1 ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[47] ),
        .I5(\q_reg[61]_0 ),
        .O(\q_reg[43]_2 ));
  LUT6 #(
    .INIT(64'hAAABAAEFAAEFAAEF)) 
    \i_/q[45]_i_14 
       (.I0(\i_/q[45]_i_15_n_0 ),
        .I1(\i_/q[74]_i_11_n_0 ),
        .I2(\q_reg[39] ),
        .I3(\i_/q[45]_i_16_n_0 ),
        .I4(\i_/q[74]_i_10_n_0 ),
        .I5(Q[70]),
        .O(\q_reg[44] ));
  LUT2 #(
    .INIT(4'h2)) 
    \i_/q[45]_i_15 
       (.I0(Q[135]),
        .I1(Q[1]),
        .O(\i_/q[45]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \i_/q[45]_i_16 
       (.I0(Q[135]),
        .I1(\i_/q[74]_i_10_n_0 ),
        .I2(\q_reg[74]_8 [4]),
        .O(\i_/q[45]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFABAAAAABABAAAA)) 
    \i_/q[45]_i_2 
       (.I0(Q[139]),
        .I1(\q_reg[73]_0 ),
        .I2(Q[138]),
        .I3(Q[136]),
        .I4(Q[137]),
        .I5(\q_reg[45]_1 ),
        .O(\i_/q[45]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA20AAAAAA20AA20)) 
    \i_/q[45]_i_3 
       (.I0(\q_reg[51] ),
        .I1(\q_reg[116] ),
        .I2(\q_reg[146]_0 ),
        .I3(\q_reg[4] ),
        .I4(\q_reg[116]_0 ),
        .I5(\q_reg[45]_0 ),
        .O(\i_/q[45]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF28828228)) 
    \i_/q[45]_i_4 
       (.I0(\q_reg[151] ),
        .I1(\q_reg[45]_1 ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[73]_0 ),
        .I4(\q_reg[45]_2 ),
        .I5(\i_/q[45]_i_10_n_0 ),
        .O(\i_/q[45]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i_/q[45]_i_5 
       (.I0(\q_reg[46]_0 ),
        .I1(\i_/q[44]_i_5_n_0 ),
        .O(\i_/q[45]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \i_/q[45]_i_6 
       (.I0(Q[3]),
        .I1(Q[135]),
        .I2(\i_/q[45]_i_11_n_0 ),
        .O(\q_reg[45]_1 ));
  LUT5 #(
    .INIT(32'hF7404F07)) 
    \i_/q[45]_i_9 
       (.I0(\q_reg[44] ),
        .I1(\q_reg[46] ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[44]_0 ),
        .I4(\q_reg[73] ),
        .O(\q_reg[45]_2 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \i_/q[46]_i_1 
       (.I0(\i_/q[46]_i_2_n_0 ),
        .I1(\i_/q[46]_i_3_n_0 ),
        .I2(\q_reg[45] ),
        .I3(\i_/q[46]_i_4_n_0 ),
        .I4(\q_reg[46]_0 ),
        .I5(\i_/q[46]_i_5_n_0 ),
        .O(D[35]));
  LUT6 #(
    .INIT(64'hBEBABEBABEBEBABE)) 
    \i_/q[46]_i_10 
       (.I0(\q_reg[116]_11 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(\q_reg[46]_2 ),
        .I4(Q[136]),
        .I5(\q_reg[46]_3 ),
        .O(\i_/q[46]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[46]_i_11 
       (.I0(Q[41]),
        .I1(\q_reg[74]_8 [7]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[1]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/q[46]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h1013101300003033)) 
    \i_/q[46]_i_12 
       (.I0(Q[73]),
        .I1(Q[135]),
        .I2(\i_/q[74]_i_10_n_0 ),
        .I3(\q_reg[74]_8 [7]),
        .I4(w_RegWriteData_wb[1]),
        .I5(\i_/q[74]_i_11_n_0 ),
        .O(\i_/q[46]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h550033F055FF33F0)) 
    \i_/q[46]_i_13 
       (.I0(\q_reg[70] ),
        .I1(\q_reg[54]_0 ),
        .I2(\q_reg[46]_3 ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[47] ),
        .I5(\q_reg[62] ),
        .O(\q_reg[44]_3 ));
  LUT6 #(
    .INIT(64'hAAAA9A6655556599)) 
    \i_/q[46]_i_16 
       (.I0(\q_reg[46]_3 ),
        .I1(Q[136]),
        .I2(Q[139]),
        .I3(Q[137]),
        .I4(Q[138]),
        .I5(\q_reg[46]_2 ),
        .O(\q_reg[46]_4 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFBBBAAAA)) 
    \i_/q[46]_i_2 
       (.I0(Q[139]),
        .I1(\q_reg[46]_2 ),
        .I2(Q[136]),
        .I3(\q_reg[46]_3 ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[46]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000F200)) 
    \i_/q[46]_i_3 
       (.I0(\q_reg[45]_0 ),
        .I1(\q_reg[116] ),
        .I2(\i_/q[46]_i_9_n_0 ),
        .I3(Q[137]),
        .I4(\q_reg[151] ),
        .I5(\i_/q[46]_i_10_n_0 ),
        .O(\i_/q[46]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \i_/q[46]_i_4 
       (.I0(\q_reg[147]_2 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[116]_1 ),
        .O(\i_/q[46]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \i_/q[46]_i_5 
       (.I0(\q_reg[116] ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[147]_2 ),
        .I3(\q_reg[73] ),
        .O(\i_/q[46]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF011)) 
    \i_/q[46]_i_6 
       (.I0(\i_/q[46]_i_11_n_0 ),
        .I1(Q[135]),
        .I2(Q[105]),
        .I3(Q[134]),
        .O(\q_reg[46]_2 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \i_/q[46]_i_7 
       (.I0(Q[4]),
        .I1(Q[135]),
        .I2(\i_/q[46]_i_12_n_0 ),
        .O(\q_reg[46]_3 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \i_/q[46]_i_9 
       (.I0(\q_reg[149] ),
        .I1(\i_/q[47]_i_11_n_0 ),
        .I2(\q_reg[46]_1 ),
        .I3(\q_reg[82]_0 ),
        .I4(\q_reg[116]_1 ),
        .I5(\q_reg[146]_0 ),
        .O(\i_/q[46]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF0D)) 
    \i_/q[47]_i_1 
       (.I0(\q_reg[146]_2 ),
        .I1(\i_/q[47]_i_3_n_0 ),
        .I2(\i_/q[60]_i_4_n_0 ),
        .I3(\i_/q[47]_i_4_n_0 ),
        .I4(Q[139]),
        .I5(\i_/q[47]_i_5_n_0 ),
        .O(D[36]));
  LUT3 #(
    .INIT(8'hF4)) 
    \i_/q[47]_i_10 
       (.I0(Q[5]),
        .I1(Q[135]),
        .I2(\i_/q[47]_i_16_n_0 ),
        .O(\q_reg[47]_1 ));
  LUT5 #(
    .INIT(32'hFFFFF2FE)) 
    \i_/q[47]_i_11 
       (.I0(\q_reg[46]_3 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[73]_0 ),
        .I3(\q_reg[44]_0 ),
        .I4(\q_reg[68] ),
        .O(\i_/q[47]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \i_/q[47]_i_12 
       (.I0(\q_reg[45]_1 ),
        .I1(\q_reg[68] ),
        .O(\i_/q[47]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i_/q[47]_i_13 
       (.I0(\q_reg[73] ),
        .I1(\q_reg[73]_0 ),
        .O(\i_/q[47]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h33550FFF33550F00)) 
    \i_/q[47]_i_14 
       (.I0(\q_reg[55]_3 ),
        .I1(\q_reg[71]_1 ),
        .I2(\q_reg[63]_1 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[47]_1 ),
        .O(\q_reg[43]_3 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[47]_i_15 
       (.I0(Q[42]),
        .I1(\q_reg[74]_8 [8]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[2]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/q[47]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h1013101300003033)) 
    \i_/q[47]_i_16 
       (.I0(Q[74]),
        .I1(Q[135]),
        .I2(\i_/q[74]_i_10_n_0 ),
        .I3(\q_reg[74]_8 [8]),
        .I4(w_RegWriteData_wb[2]),
        .I5(\i_/q[74]_i_11_n_0 ),
        .O(\i_/q[47]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000055CF55C355)) 
    \i_/q[47]_i_3 
       (.I0(\i_/q[47]_i_8_n_0 ),
        .I1(\q_reg[47] ),
        .I2(\q_reg[47]_1 ),
        .I3(Q[138]),
        .I4(Q[136]),
        .I5(Q[137]),
        .O(\i_/q[47]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00080808)) 
    \i_/q[47]_i_4 
       (.I0(\q_reg[47] ),
        .I1(Q[137]),
        .I2(Q[138]),
        .I3(\q_reg[47]_1 ),
        .I4(Q[136]),
        .O(\i_/q[47]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFC444C444)) 
    \i_/q[47]_i_5 
       (.I0(\q_reg[116]_1 ),
        .I1(\q_reg[46]_0 ),
        .I2(\q_reg[147]_2 ),
        .I3(\q_reg[73]_0 ),
        .I4(\q_reg[116]_24 ),
        .I5(\q_reg[45] ),
        .O(\i_/q[47]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4FFF4F4F44444444)) 
    \i_/q[47]_i_6 
       (.I0(\i_/q[47]_i_11_n_0 ),
        .I1(\q_reg[46]_1 ),
        .I2(\i_/q[48]_i_15_n_0 ),
        .I3(\i_/q[47]_i_12_n_0 ),
        .I4(\i_/q[47]_i_13_n_0 ),
        .I5(\q_reg[149] ),
        .O(\q_reg[47]_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/q[47]_i_8 
       (.I0(\i_/q[55]_i_10_n_0 ),
        .I1(\q_reg[47] ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[47]_1 ),
        .O(\i_/q[47]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF011)) 
    \i_/q[47]_i_9 
       (.I0(\i_/q[47]_i_15_n_0 ),
        .I1(Q[135]),
        .I2(Q[106]),
        .I3(Q[134]),
        .O(\q_reg[47] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF0D)) 
    \i_/q[48]_i_1 
       (.I0(\q_reg[149]_1 ),
        .I1(\i_/q[48]_i_3_n_0 ),
        .I2(\i_/q[60]_i_4_n_0 ),
        .I3(\i_/q[48]_i_4_n_0 ),
        .I4(Q[139]),
        .I5(\i_/q[48]_i_5_n_0 ),
        .O(D[37]));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[48]_i_10 
       (.I0(Q[6]),
        .I1(Q[135]),
        .I2(\i_/q[48]_i_20_n_0 ),
        .O(\q_reg[48]_1 ));
  LUT6 #(
    .INIT(64'h9666996966699699)) 
    \i_/q[48]_i_11 
       (.I0(\q_reg[48]_0 ),
        .I1(\q_reg[48]_1 ),
        .I2(\q_reg[47]_1 ),
        .I3(\q_reg[57]_0 ),
        .I4(\q_reg[47] ),
        .I5(\i_/q[55]_i_10_n_0 ),
        .O(\i_/q[48]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \i_/q[48]_i_13 
       (.I0(\q_reg[73]_0 ),
        .I1(\q_reg[147]_2 ),
        .O(\i_/q[48]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h33550F0033550FFF)) 
    \i_/q[48]_i_14 
       (.I0(\q_reg[56]_0 ),
        .I1(\q_reg[72]_0 ),
        .I2(\q_reg[64] ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[48]_1 ),
        .O(\q_reg[44]_4 ));
  LUT5 #(
    .INIT(32'hFFFEEEFE)) 
    \i_/q[48]_i_15 
       (.I0(\q_reg[73] ),
        .I1(\q_reg[68] ),
        .I2(\q_reg[47]_1 ),
        .I3(\q_reg[73]_0 ),
        .I4(\q_reg[44] ),
        .O(\i_/q[48]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \i_/q[48]_i_16 
       (.I0(\q_reg[73]_0 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[68] ),
        .I3(\q_reg[45]_1 ),
        .O(\i_/q[48]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hEEEFFFEF)) 
    \i_/q[48]_i_17 
       (.I0(\q_reg[73] ),
        .I1(\q_reg[68] ),
        .I2(\q_reg[48]_1 ),
        .I3(\q_reg[73]_0 ),
        .I4(\q_reg[44]_0 ),
        .O(\i_/q[48]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \i_/q[48]_i_18 
       (.I0(\q_reg[73]_0 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[68] ),
        .I3(\q_reg[46]_3 ),
        .O(\i_/q[48]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[48]_i_19 
       (.I0(Q[43]),
        .I1(\q_reg[74]_8 [9]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[3]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/q[48]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[48]_i_20 
       (.I0(w_RegWriteData_wb[3]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [9]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[75]),
        .O(\i_/q[48]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000E060000FEF6F)) 
    \i_/q[48]_i_3 
       (.I0(\q_reg[48]_0 ),
        .I1(\q_reg[48]_1 ),
        .I2(Q[138]),
        .I3(Q[136]),
        .I4(Q[137]),
        .I5(\i_/q[48]_i_11_n_0 ),
        .O(\i_/q[48]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h08080008)) 
    \i_/q[48]_i_4 
       (.I0(\q_reg[48]_0 ),
        .I1(Q[137]),
        .I2(Q[138]),
        .I3(Q[136]),
        .I4(\q_reg[48]_1 ),
        .O(\i_/q[48]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4FFFFFFF4444CCCC)) 
    \i_/q[48]_i_5 
       (.I0(\q_reg[116]_24 ),
        .I1(\q_reg[46]_0 ),
        .I2(\q_reg[116]_25 ),
        .I3(\q_reg[116]_4 ),
        .I4(\i_/q[48]_i_13_n_0 ),
        .I5(\q_reg[45] ),
        .O(\i_/q[48]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD0FFD0D0D0D0)) 
    \i_/q[48]_i_7 
       (.I0(\i_/q[48]_i_15_n_0 ),
        .I1(\i_/q[48]_i_16_n_0 ),
        .I2(\q_reg[46]_1 ),
        .I3(\i_/q[48]_i_17_n_0 ),
        .I4(\i_/q[48]_i_18_n_0 ),
        .I5(\q_reg[149] ),
        .O(\q_reg[48] ));
  LUT4 #(
    .INIT(16'hA0A3)) 
    \i_/q[48]_i_9 
       (.I0(Q[107]),
        .I1(Q[135]),
        .I2(Q[134]),
        .I3(\i_/q[48]_i_19_n_0 ),
        .O(\q_reg[48]_0 ));
  LUT6 #(
    .INIT(64'h11F111F1FFFF11F1)) 
    \i_/q[49]_i_1 
       (.I0(\q_reg[49] ),
        .I1(Q[139]),
        .I2(\q_reg[45] ),
        .I3(\q_reg[49]_0 ),
        .I4(\q_reg[46]_0 ),
        .I5(\q_reg[116]_3 ),
        .O(D[38]));
  LUT6 #(
    .INIT(64'h69696969000000FF)) 
    \i_/q[49]_i_10 
       (.I0(\q_reg[50]_0 ),
        .I1(\q_reg[50]_1 ),
        .I2(\q_reg[50] ),
        .I3(\i_/q[49]_i_12_n_0 ),
        .I4(Q[137]),
        .I5(\q_reg[151] ),
        .O(\i_/q[49]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \i_/q[49]_i_11 
       (.I0(\q_reg[116]_5 ),
        .I1(\q_reg[146]_0 ),
        .I2(\q_reg[149] ),
        .I3(\q_reg[82]_1 ),
        .I4(\q_reg[46]_1 ),
        .I5(\q_reg[4]_1 ),
        .O(\i_/q[49]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5500010100FFFCFC)) 
    \i_/q[49]_i_12 
       (.I0(Q[136]),
        .I1(\q_reg[49]_1 ),
        .I2(Q[135]),
        .I3(Q[108]),
        .I4(Q[134]),
        .I5(\q_reg[50] ),
        .O(\i_/q[49]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8888AAAAAAA8AAA8)) 
    \i_/q[49]_i_2 
       (.I0(\i_/q[49]_i_5_n_0 ),
        .I1(\q_reg[149]_0 ),
        .I2(\q_reg[49]_1 ),
        .I3(Q[135]),
        .I4(Q[108]),
        .I5(Q[134]),
        .O(\q_reg[49] ));
  LUT2 #(
    .INIT(4'h2)) 
    \i_/q[49]_i_3 
       (.I0(\q_reg[116]_5 ),
        .I1(\q_reg[147]_2 ),
        .O(\q_reg[49]_0 ));
  LUT6 #(
    .INIT(64'hABAAABABBBBBBBBB)) 
    \i_/q[49]_i_5 
       (.I0(\i_/q[60]_i_4_n_0 ),
        .I1(\i_/q[49]_i_10_n_0 ),
        .I2(\i_/q[49]_i_11_n_0 ),
        .I3(\q_reg[116]_4 ),
        .I4(\q_reg[45]_0 ),
        .I5(\q_reg[51] ),
        .O(\i_/q[49]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[49]_i_7 
       (.I0(Q[44]),
        .I1(\q_reg[74]_8 [10]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[4]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\q_reg[49]_1 ));
  LUT6 #(
    .INIT(64'h33550F0033550FFF)) 
    \i_/q[49]_i_8 
       (.I0(\q_reg[57]_2 ),
        .I1(\q_reg[73]_1 ),
        .I2(\q_reg[65]_1 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[50] ),
        .O(\q_reg[49]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF0D)) 
    \i_/q[50]_i_1 
       (.I0(\q_reg[146]_1 ),
        .I1(\i_/q[50]_i_3_n_0 ),
        .I2(\i_/q[60]_i_4_n_0 ),
        .I3(\i_/q[50]_i_4_n_0 ),
        .I4(Q[139]),
        .I5(\q_reg[152] ),
        .O(D[39]));
  LUT5 #(
    .INIT(32'h7772888D)) 
    \i_/q[50]_i_10 
       (.I0(Q[134]),
        .I1(Q[109]),
        .I2(Q[135]),
        .I3(\q_reg[50]_5 ),
        .I4(\q_reg[57]_0 ),
        .O(\q_reg[50]_4 ));
  LUT5 #(
    .INIT(32'h2A2A2A08)) 
    \i_/q[50]_i_11 
       (.I0(Q[136]),
        .I1(Q[134]),
        .I2(Q[102]),
        .I3(Q[135]),
        .I4(\q_reg[43] ),
        .O(\q_reg[45]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \i_/q[50]_i_13 
       (.I0(\q_reg[149] ),
        .I1(\q_reg[4]_2 ),
        .I2(\q_reg[46]_1 ),
        .I3(\q_reg[82]_1 ),
        .I4(\q_reg[116]_6 ),
        .I5(\q_reg[146]_0 ),
        .O(\i_/q[50]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5500010100FFFCFC)) 
    \i_/q[50]_i_14 
       (.I0(Q[136]),
        .I1(\q_reg[50]_5 ),
        .I2(Q[135]),
        .I3(Q[109]),
        .I4(Q[134]),
        .I5(\q_reg[50]_2 ),
        .O(\i_/q[50]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA82020AA2020)) 
    \i_/q[50]_i_15 
       (.I0(\i_/q[73]_i_18_n_0 ),
        .I1(\i_/q[42]_i_3_n_0 ),
        .I2(w_RegWriteData_wb[5]),
        .I3(\i_/q[42]_i_2_n_0 ),
        .I4(\q_reg[74]_8 [11]),
        .I5(Q[45]),
        .O(\i_/q[50]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hACACACACACACFF0C)) 
    \i_/q[50]_i_16 
       (.I0(Q[76]),
        .I1(\q_reg[74]_8 [10]),
        .I2(\i_/q[74]_i_10_n_0 ),
        .I3(w_RegWriteData_wb[4]),
        .I4(\i_/q[74]_i_18_n_0 ),
        .I5(\i_/q[58]_i_21_n_0 ),
        .O(\i_/q[50]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hACACACACACACFF0C)) 
    \i_/q[50]_i_17 
       (.I0(Q[77]),
        .I1(\q_reg[74]_8 [11]),
        .I2(\i_/q[74]_i_10_n_0 ),
        .I3(w_RegWriteData_wb[5]),
        .I4(\i_/q[74]_i_18_n_0 ),
        .I5(\i_/q[58]_i_21_n_0 ),
        .O(\i_/q[50]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[50]_i_18 
       (.I0(Q[45]),
        .I1(\q_reg[74]_8 [11]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[5]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\q_reg[50]_5 ));
  LUT6 #(
    .INIT(64'h33110F0033110FFF)) 
    \i_/q[50]_i_19 
       (.I0(\q_reg[58]_0 ),
        .I1(\q_reg[57]_3 ),
        .I2(\q_reg[66] ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[50]_2 ),
        .O(\q_reg[44]_2 ));
  LUT5 #(
    .INIT(32'h0000888D)) 
    \i_/q[50]_i_21 
       (.I0(Q[134]),
        .I1(Q[102]),
        .I2(Q[135]),
        .I3(\q_reg[43] ),
        .I4(Q[136]),
        .O(\q_reg[46]_1 ));
  LUT4 #(
    .INIT(16'hF8FB)) 
    \i_/q[50]_i_23 
       (.I0(\q_reg[45]_1 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[68] ),
        .I3(\q_reg[50] ),
        .O(\q_reg[50]_3 ));
  LUT6 #(
    .INIT(64'h00000000F2F200FF)) 
    \i_/q[50]_i_3 
       (.I0(\q_reg[45]_0 ),
        .I1(\q_reg[116]_5 ),
        .I2(\i_/q[50]_i_13_n_0 ),
        .I3(\i_/q[50]_i_14_n_0 ),
        .I4(Q[137]),
        .I5(\q_reg[151] ),
        .O(\i_/q[50]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF800F8000000F800)) 
    \i_/q[50]_i_4 
       (.I0(Q[134]),
        .I1(Q[109]),
        .I2(\i_/q[50]_i_15_n_0 ),
        .I3(\i_/q[60]_i_4_n_0 ),
        .I4(Q[136]),
        .I5(\q_reg[50]_2 ),
        .O(\i_/q[50]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF1F77F1F70100107)) 
    \i_/q[50]_i_6 
       (.I0(\i_/q[55]_i_10_n_0 ),
        .I1(\q_reg[47]_1 ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[48]_0 ),
        .I5(\q_reg[48]_1 ),
        .O(\q_reg[50]_0 ));
  LUT5 #(
    .INIT(32'h7772888D)) 
    \i_/q[50]_i_7 
       (.I0(Q[134]),
        .I1(Q[108]),
        .I2(Q[135]),
        .I3(\q_reg[49]_1 ),
        .I4(\q_reg[57]_0 ),
        .O(\q_reg[50]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[50]_i_8 
       (.I0(Q[7]),
        .I1(Q[135]),
        .I2(\i_/q[50]_i_16_n_0 ),
        .O(\q_reg[50] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[50]_i_9 
       (.I0(Q[8]),
        .I1(Q[135]),
        .I2(\i_/q[50]_i_17_n_0 ),
        .O(\q_reg[50]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF54545554)) 
    \i_/q[51]_i_1 
       (.I0(\i_/q[51]_i_2_n_0 ),
        .I1(\i_/q[51]_i_3_n_0 ),
        .I2(\i_/q[51]_i_4_n_0 ),
        .I3(\q_reg[51] ),
        .I4(\i_/q[51]_i_6_n_0 ),
        .I5(\i_/q[51]_i_7_n_0 ),
        .O(D[40]));
  LUT6 #(
    .INIT(64'hF8FBFFFFF8FB0000)) 
    \i_/q[51]_i_10 
       (.I0(\q_reg[45]_1 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[68] ),
        .I3(\q_reg[50] ),
        .I4(\q_reg[73] ),
        .I5(\i_/q[51]_i_13_n_0 ),
        .O(\i_/q[51]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFF88FFFCFFBB)) 
    \i_/q[51]_i_13 
       (.I0(\q_reg[47]_1 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[44] ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[51]_0 ),
        .O(\i_/q[51]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \i_/q[51]_i_14 
       (.I0(\q_reg[67] ),
        .I1(\q_reg[51]_0 ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[59] ),
        .O(\q_reg[45]_3 ));
  LUT4 #(
    .INIT(16'hF8FB)) 
    \i_/q[51]_i_15 
       (.I0(\q_reg[46]_3 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[68] ),
        .I3(\q_reg[50]_2 ),
        .O(\q_reg[51]_3 ));
  LUT4 #(
    .INIT(16'hAABA)) 
    \i_/q[51]_i_2 
       (.I0(Q[139]),
        .I1(\i_/q[51]_i_8_n_0 ),
        .I2(Q[137]),
        .I3(Q[138]),
        .O(\i_/q[51]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0700000700070700)) 
    \i_/q[51]_i_3 
       (.I0(Q[137]),
        .I1(Q[136]),
        .I2(Q[138]),
        .I3(\q_reg[51]_0 ),
        .I4(\q_reg[51]_1 ),
        .I5(\q_reg[51]_2 ),
        .O(\i_/q[51]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1C)) 
    \i_/q[51]_i_4 
       (.I0(\i_/q[51]_i_9_n_0 ),
        .I1(Q[137]),
        .I2(Q[138]),
        .O(\i_/q[51]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \i_/q[51]_i_5 
       (.I0(Q[137]),
        .I1(Q[136]),
        .I2(Q[138]),
        .O(\q_reg[51] ));
  LUT6 #(
    .INIT(64'hFFCAF0CA0FCA00CA)) 
    \i_/q[51]_i_6 
       (.I0(\i_/q[51]_i_10_n_0 ),
        .I1(\q_reg[116]_6 ),
        .I2(Q[136]),
        .I3(\q_reg[46] ),
        .I4(\q_reg[4]_2 ),
        .I5(\q_reg[116]_10 ),
        .O(\i_/q[51]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF4FCC44)) 
    \i_/q[51]_i_7 
       (.I0(\q_reg[116]_6 ),
        .I1(\q_reg[46]_0 ),
        .I2(\q_reg[116]_10 ),
        .I3(\q_reg[147]_2 ),
        .I4(\q_reg[45] ),
        .O(\i_/q[51]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h888D0000888D888D)) 
    \i_/q[51]_i_8 
       (.I0(Q[134]),
        .I1(Q[110]),
        .I2(Q[135]),
        .I3(\q_reg[51]_4 ),
        .I4(\q_reg[51]_0 ),
        .I5(Q[136]),
        .O(\i_/q[51]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2222555555525552)) 
    \i_/q[51]_i_9 
       (.I0(\q_reg[51]_0 ),
        .I1(Q[136]),
        .I2(\q_reg[51]_4 ),
        .I3(Q[135]),
        .I4(Q[110]),
        .I5(Q[134]),
        .O(\i_/q[51]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF0D)) 
    \i_/q[52]_i_1 
       (.I0(\q_reg[146]_3 ),
        .I1(\i_/q[52]_i_3_n_0 ),
        .I2(\i_/q[60]_i_4_n_0 ),
        .I3(\i_/q[52]_i_4_n_0 ),
        .I4(Q[139]),
        .I5(\q_reg[152]_0 ),
        .O(D[41]));
  LUT5 #(
    .INIT(32'h7772888D)) 
    \i_/q[52]_i_10 
       (.I0(Q[134]),
        .I1(Q[111]),
        .I2(Q[135]),
        .I3(\i_/q[52]_i_22_n_0 ),
        .I4(\q_reg[57]_0 ),
        .O(\q_reg[52]_1 ));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \i_/q[52]_i_11 
       (.I0(\q_reg[116]_9 ),
        .I1(\i_/q[52]_i_24_n_0 ),
        .I2(\i_/q[51]_i_10_n_0 ),
        .I3(\q_reg[46] ),
        .I4(Q[136]),
        .I5(\q_reg[116]_10 ),
        .O(\i_/q[52]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF011)) 
    \i_/q[52]_i_12 
       (.I0(\i_/q[52]_i_22_n_0 ),
        .I1(Q[135]),
        .I2(Q[111]),
        .I3(Q[134]),
        .O(\q_reg[52] ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[52]_i_14 
       (.I0(Q[46]),
        .I1(\q_reg[74]_8 [12]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[6]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\q_reg[51]_4 ));
  LUT2 #(
    .INIT(4'hB)) 
    \i_/q[52]_i_15 
       (.I0(Q[9]),
        .I1(Q[135]),
        .O(\i_/q[52]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \i_/q[52]_i_16 
       (.I0(Q[135]),
        .I1(\i_/q[74]_i_10_n_0 ),
        .I2(\q_reg[74]_8 [12]),
        .O(\i_/q[52]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1FF4)) 
    \i_/q[52]_i_17 
       (.I0(\q_reg[48]_1 ),
        .I1(\q_reg[48]_0 ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[57]_0 ),
        .I4(\q_reg[47]_1 ),
        .O(\i_/q[52]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h1FF41144)) 
    \i_/q[52]_i_18 
       (.I0(\q_reg[48]_1 ),
        .I1(\q_reg[48]_0 ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[57]_0 ),
        .I4(\q_reg[47]_1 ),
        .O(\i_/q[52]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h004AFFB5FFFFFFFF)) 
    \i_/q[52]_i_19 
       (.I0(Q[136]),
        .I1(Q[139]),
        .I2(Q[137]),
        .I3(Q[138]),
        .I4(\q_reg[48]_0 ),
        .I5(\q_reg[48]_1 ),
        .O(\i_/q[52]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i_/q[52]_i_20 
       (.I0(Q[135]),
        .I1(Q[10]),
        .O(\i_/q[52]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \i_/q[52]_i_21 
       (.I0(Q[135]),
        .I1(\i_/q[74]_i_10_n_0 ),
        .I2(\q_reg[74]_8 [13]),
        .O(\i_/q[52]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[52]_i_22 
       (.I0(Q[47]),
        .I1(\q_reg[74]_8 [13]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[7]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/q[52]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hF8FBFFFFF8FB0000)) 
    \i_/q[52]_i_24 
       (.I0(\q_reg[46]_3 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[68] ),
        .I3(\q_reg[50]_2 ),
        .I4(\q_reg[73] ),
        .I5(\i_/q[55]_i_29_n_0 ),
        .O(\i_/q[52]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hF05CFF5C)) 
    \i_/q[52]_i_25 
       (.I0(\q_reg[68]_0 ),
        .I1(\q_reg[52]_0 ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[60] ),
        .O(\q_reg[45]_4 ));
  LUT6 #(
    .INIT(64'h5555F0CF44440000)) 
    \i_/q[52]_i_3 
       (.I0(\i_/q[52]_i_11_n_0 ),
        .I1(Q[136]),
        .I2(\q_reg[52] ),
        .I3(\q_reg[52]_0 ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[52]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00080808)) 
    \i_/q[52]_i_4 
       (.I0(\q_reg[52] ),
        .I1(Q[137]),
        .I2(Q[138]),
        .I3(\q_reg[52]_0 ),
        .I4(Q[136]),
        .O(\i_/q[52]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h7772888D)) 
    \i_/q[52]_i_6 
       (.I0(Q[134]),
        .I1(Q[110]),
        .I2(Q[135]),
        .I3(\q_reg[51]_4 ),
        .I4(\q_reg[57]_0 ),
        .O(\q_reg[51]_1 ));
  LUT6 #(
    .INIT(64'hAAA22A222A222A22)) 
    \i_/q[52]_i_7 
       (.I0(\i_/q[52]_i_15_n_0 ),
        .I1(\i_/q[52]_i_16_n_0 ),
        .I2(\i_/q[74]_i_11_n_0 ),
        .I3(w_RegWriteData_wb[6]),
        .I4(\i_/q[74]_i_10_n_0 ),
        .I5(Q[78]),
        .O(\q_reg[51]_0 ));
  LUT6 #(
    .INIT(64'hB0F080F000F000F0)) 
    \i_/q[52]_i_8 
       (.I0(\i_/q[52]_i_17_n_0 ),
        .I1(\i_/q[55]_i_10_n_0 ),
        .I2(\i_/q[55]_i_11_n_0 ),
        .I3(\i_/q[55]_i_18_n_0 ),
        .I4(\i_/q[52]_i_18_n_0 ),
        .I5(\i_/q[52]_i_19_n_0 ),
        .O(\q_reg[51]_2 ));
  LUT6 #(
    .INIT(64'hAAABAAEFAAEFAAEF)) 
    \i_/q[52]_i_9 
       (.I0(\i_/q[52]_i_20_n_0 ),
        .I1(\i_/q[74]_i_11_n_0 ),
        .I2(w_RegWriteData_wb[7]),
        .I3(\i_/q[52]_i_21_n_0 ),
        .I4(\i_/q[74]_i_10_n_0 ),
        .I5(Q[79]),
        .O(\q_reg[52]_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \i_/q[53]_i_1 
       (.I0(\i_/q[53]_i_2_n_0 ),
        .I1(\i_/q[53]_i_3_n_0 ),
        .I2(\q_reg[45] ),
        .I3(\q_reg[116]_7 ),
        .I4(\q_reg[46]_0 ),
        .I5(\q_reg[116]_8 ),
        .O(D[42]));
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \i_/q[53]_i_10 
       (.I0(\q_reg[70] ),
        .I1(\q_reg[54]_0 ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[62] ),
        .O(\q_reg[53]_4 ));
  LUT5 #(
    .INIT(32'h00307474)) 
    \i_/q[53]_i_11 
       (.I0(\i_/q[53]_i_18_n_0 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[53]_7 ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[57]_3 ),
        .O(\q_reg[53]_8 ));
  LUT5 #(
    .INIT(32'hF035FF35)) 
    \i_/q[53]_i_13 
       (.I0(\q_reg[57]_2 ),
        .I1(\q_reg[73]_1 ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[65]_1 ),
        .O(\q_reg[53]_9 ));
  LUT5 #(
    .INIT(32'hF035FF35)) 
    \i_/q[53]_i_14 
       (.I0(\q_reg[53]_0 ),
        .I1(\q_reg[69]_1 ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[61]_0 ),
        .O(\q_reg[53]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i_/q[53]_i_15 
       (.I0(Q[135]),
        .I1(Q[11]),
        .O(\i_/q[53]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \i_/q[53]_i_16 
       (.I0(Q[135]),
        .I1(\i_/q[74]_i_10_n_0 ),
        .I2(\q_reg[74]_8 [14]),
        .O(\i_/q[53]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \i_/q[53]_i_17 
       (.I0(\i_/q[52]_i_24_n_0 ),
        .I1(\i_/q[54]_i_17_n_0 ),
        .I2(\q_reg[46] ),
        .I3(Q[136]),
        .I4(\i_/q[54]_i_16_n_0 ),
        .I5(\q_reg[116]_9 ),
        .O(\i_/q[53]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \i_/q[53]_i_18 
       (.I0(\q_reg[68]_0 ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[60] ),
        .I3(\q_reg[47] ),
        .O(\i_/q[53]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hF035FF35)) 
    \i_/q[53]_i_19 
       (.I0(\q_reg[56]_0 ),
        .I1(\q_reg[72]_0 ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[64] ),
        .O(\q_reg[53]_7 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFBBAAAA)) 
    \i_/q[53]_i_2 
       (.I0(Q[139]),
        .I1(\q_reg[53]_1 ),
        .I2(\q_reg[53]_0 ),
        .I3(Q[136]),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[53]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF69960000)) 
    \i_/q[53]_i_3 
       (.I0(\q_reg[53] ),
        .I1(\q_reg[53]_0 ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[53]_1 ),
        .I4(\q_reg[151] ),
        .I5(\i_/q[53]_i_8_n_0 ),
        .O(\i_/q[53]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF011)) 
    \i_/q[53]_i_6 
       (.I0(\i_/q[54]_i_13_n_0 ),
        .I1(Q[135]),
        .I2(Q[112]),
        .I3(Q[134]),
        .O(\q_reg[53]_1 ));
  LUT6 #(
    .INIT(64'h4505555540005555)) 
    \i_/q[53]_i_7 
       (.I0(\i_/q[53]_i_15_n_0 ),
        .I1(Q[80]),
        .I2(\i_/q[74]_i_11_n_0 ),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[53]_i_16_n_0 ),
        .I5(w_RegWriteData_wb[8]),
        .O(\q_reg[53]_0 ));
  LUT6 #(
    .INIT(64'h7C7C7C70707C7C70)) 
    \i_/q[53]_i_8 
       (.I0(\i_/q[53]_i_17_n_0 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(\q_reg[53]_0 ),
        .I4(\q_reg[53]_1 ),
        .I5(Q[136]),
        .O(\i_/q[53]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF5F500F3)) 
    \i_/q[53]_i_9 
       (.I0(\q_reg[66] ),
        .I1(\q_reg[58]_0 ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[57]_3 ),
        .I4(\q_reg[46]_2 ),
        .O(\q_reg[53]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF0D)) 
    \i_/q[54]_i_1 
       (.I0(\q_reg[147] ),
        .I1(\i_/q[54]_i_3_n_0 ),
        .I2(\i_/q[60]_i_4_n_0 ),
        .I3(\i_/q[54]_i_4_n_0 ),
        .I4(Q[139]),
        .I5(\q_reg[51]_6 ),
        .O(D[43]));
  LUT5 #(
    .INIT(32'h32FECD01)) 
    \i_/q[54]_i_10 
       (.I0(\i_/q[54]_i_15_n_0 ),
        .I1(Q[134]),
        .I2(Q[135]),
        .I3(Q[113]),
        .I4(\q_reg[57]_0 ),
        .O(\q_reg[54]_4 ));
  LUT6 #(
    .INIT(64'hFFCAF0CA0FCA00CA)) 
    \i_/q[54]_i_11 
       (.I0(\i_/q[55]_i_21_n_0 ),
        .I1(\i_/q[54]_i_16_n_0 ),
        .I2(\q_reg[46] ),
        .I3(Q[136]),
        .I4(\i_/q[54]_i_17_n_0 ),
        .I5(\i_/q[55]_i_20_n_0 ),
        .O(\i_/q[54]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hA0A3)) 
    \i_/q[54]_i_12 
       (.I0(Q[113]),
        .I1(Q[135]),
        .I2(Q[134]),
        .I3(\i_/q[54]_i_15_n_0 ),
        .O(\q_reg[54] ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[54]_i_13 
       (.I0(Q[48]),
        .I1(\q_reg[74]_8 [14]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[8]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/q[54]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[54]_i_14 
       (.I0(w_RegWriteData_wb[9]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [15]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[81]),
        .O(\i_/q[54]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[54]_i_15 
       (.I0(Q[49]),
        .I1(\q_reg[74]_8 [15]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[9]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/q[54]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[54]_i_16 
       (.I0(\i_/q[51]_i_13_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[56]_i_21_n_0 ),
        .O(\i_/q[54]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \i_/q[54]_i_17 
       (.I0(\i_/q[56]_i_23_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[53]_3 ),
        .I3(\q_reg[73]_0 ),
        .I4(\q_reg[53]_4 ),
        .O(\i_/q[54]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h5555CFF044440000)) 
    \i_/q[54]_i_3 
       (.I0(\i_/q[54]_i_11_n_0 ),
        .I1(Q[136]),
        .I2(\q_reg[54] ),
        .I3(\q_reg[54]_0 ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[54]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h08080008)) 
    \i_/q[54]_i_4 
       (.I0(\q_reg[54] ),
        .I1(Q[137]),
        .I2(Q[138]),
        .I3(Q[136]),
        .I4(\q_reg[54]_0 ),
        .O(\i_/q[54]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFFB0BB02FF20220)) 
    \i_/q[54]_i_6 
       (.I0(\q_reg[51]_1 ),
        .I1(\q_reg[51]_0 ),
        .I2(\q_reg[52] ),
        .I3(\q_reg[57]_0 ),
        .I4(\q_reg[52]_0 ),
        .I5(\q_reg[51]_2 ),
        .O(\q_reg[53] ));
  LUT6 #(
    .INIT(64'h0000000055AAA9A9)) 
    \i_/q[54]_i_7 
       (.I0(\q_reg[57]_0 ),
        .I1(\i_/q[54]_i_13_n_0 ),
        .I2(Q[135]),
        .I3(Q[112]),
        .I4(Q[134]),
        .I5(\q_reg[53]_0 ),
        .O(\q_reg[54]_1 ));
  LUT6 #(
    .INIT(64'h8888222222282228)) 
    \i_/q[54]_i_8 
       (.I0(\q_reg[53]_0 ),
        .I1(\q_reg[57]_0 ),
        .I2(\i_/q[54]_i_13_n_0 ),
        .I3(Q[135]),
        .I4(Q[112]),
        .I5(Q[134]),
        .O(\q_reg[54]_2 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[54]_i_9 
       (.I0(Q[12]),
        .I1(Q[135]),
        .I2(\i_/q[54]_i_14_n_0 ),
        .O(\q_reg[54]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554100)) 
    \i_/q[55]_i_1 
       (.I0(\q_reg[55] ),
        .I1(\q_reg[55]_0 ),
        .I2(\i_/q[55]_i_4_n_0 ),
        .I3(\q_reg[151] ),
        .I4(\q_reg[55]_1 ),
        .I5(\q_reg[51]_5 ),
        .O(D[44]));
  LUT6 #(
    .INIT(64'h4DE84488DDEE4DE8)) 
    \i_/q[55]_i_10 
       (.I0(\q_reg[46]_2 ),
        .I1(\q_reg[46]_3 ),
        .I2(\q_reg[73]_0 ),
        .I3(\q_reg[57]_0 ),
        .I4(\q_reg[45]_1 ),
        .I5(\q_reg[45]_2 ),
        .O(\i_/q[55]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hBF0B)) 
    \i_/q[55]_i_11 
       (.I0(\q_reg[50]_1 ),
        .I1(\q_reg[50] ),
        .I2(\q_reg[50]_2 ),
        .I3(\q_reg[50]_4 ),
        .O(\i_/q[55]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE82BEEBB00000000)) 
    \i_/q[55]_i_12 
       (.I0(\q_reg[48]_1 ),
        .I1(\q_reg[48]_0 ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[57]_0 ),
        .I4(\q_reg[47]_1 ),
        .I5(\i_/q[55]_i_18_n_0 ),
        .O(\i_/q[55]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0D047F1F7010FDF4)) 
    \i_/q[55]_i_13 
       (.I0(\q_reg[53]_0 ),
        .I1(\q_reg[53]_1 ),
        .I2(\q_reg[57]_0 ),
        .I3(\i_/q[55]_i_19_n_0 ),
        .I4(\q_reg[54]_0 ),
        .I5(\q_reg[54] ),
        .O(\i_/q[55]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFCAF0CA0FCA00CA)) 
    \i_/q[55]_i_14 
       (.I0(\i_/q[56]_i_16_n_0 ),
        .I1(\i_/q[55]_i_20_n_0 ),
        .I2(Q[136]),
        .I3(\q_reg[46] ),
        .I4(\i_/q[55]_i_21_n_0 ),
        .I5(\i_/q[56]_i_17_n_0 ),
        .O(\i_/q[55]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \i_/q[55]_i_15 
       (.I0(\i_/q[57]_i_10_n_0 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[53]_5 ),
        .I3(\q_reg[147]_2 ),
        .O(\q_reg[53]_6 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[55]_i_16 
       (.I0(Q[50]),
        .I1(\q_reg[74]_8 [16]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[10]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/q[55]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h80BA80BA80BA10D5)) 
    \i_/q[55]_i_17 
       (.I0(\q_reg[57]_0 ),
        .I1(ALU_B[8]),
        .I2(\q_reg[51]_0 ),
        .I3(\q_reg[52]_0 ),
        .I4(\i_/q[55]_i_24_n_0 ),
        .I5(\i_/q[55]_i_25_n_0 ),
        .O(\i_/q[55]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hEEE0D0DD)) 
    \i_/q[55]_i_18 
       (.I0(ALU_B[6]),
        .I1(\q_reg[50] ),
        .I2(\q_reg[50]_2 ),
        .I3(ALU_B[7]),
        .I4(\q_reg[57]_0 ),
        .O(\i_/q[55]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h111FFFF200012220)) 
    \i_/q[55]_i_19 
       (.I0(ALU_B[8]),
        .I1(\q_reg[51]_0 ),
        .I2(\i_/q[55]_i_25_n_0 ),
        .I3(\i_/q[55]_i_24_n_0 ),
        .I4(\q_reg[57]_0 ),
        .I5(\q_reg[52]_0 ),
        .O(\i_/q[55]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAAAA)) 
    \i_/q[55]_i_2 
       (.I0(Q[139]),
        .I1(Q[136]),
        .I2(\q_reg[55]_3 ),
        .I3(\q_reg[55]_2 ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\q_reg[55] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[55]_i_20 
       (.I0(\i_/q[56]_i_24_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[54]_3 ),
        .O(\i_/q[55]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[55]_i_21 
       (.I0(\i_/q[55]_i_29_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[56]_i_20_n_0 ),
        .O(\i_/q[55]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hF035FF35)) 
    \i_/q[55]_i_22 
       (.I0(\q_reg[55]_3 ),
        .I1(\q_reg[71]_1 ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[63]_1 ),
        .O(\q_reg[53]_5 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF20000)) 
    \i_/q[55]_i_23 
       (.I0(Q[46]),
        .I1(\i_/q[73]_i_15_n_0 ),
        .I2(\i_/q[55]_i_30_n_0 ),
        .I3(\i_/q[55]_i_31_n_0 ),
        .I4(\i_/q[73]_i_18_n_0 ),
        .I5(\i_/q[55]_i_32_n_0 ),
        .O(ALU_B[8]));
  LUT6 #(
    .INIT(64'hA8AAA82020AA2020)) 
    \i_/q[55]_i_24 
       (.I0(\i_/q[73]_i_18_n_0 ),
        .I1(\i_/q[42]_i_3_n_0 ),
        .I2(w_RegWriteData_wb[7]),
        .I3(\i_/q[42]_i_2_n_0 ),
        .I4(\q_reg[74]_8 [13]),
        .I5(Q[47]),
        .O(\i_/q[55]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i_/q[55]_i_25 
       (.I0(Q[134]),
        .I1(Q[111]),
        .O(\i_/q[55]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF20000)) 
    \i_/q[55]_i_26 
       (.I0(Q[44]),
        .I1(\i_/q[73]_i_15_n_0 ),
        .I2(\i_/q[55]_i_33_n_0 ),
        .I3(\i_/q[55]_i_34_n_0 ),
        .I4(\i_/q[73]_i_18_n_0 ),
        .I5(\i_/q[55]_i_35_n_0 ),
        .O(ALU_B[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF20000)) 
    \i_/q[55]_i_27 
       (.I0(Q[45]),
        .I1(\i_/q[73]_i_15_n_0 ),
        .I2(\i_/q[55]_i_36_n_0 ),
        .I3(\i_/q[55]_i_37_n_0 ),
        .I4(\i_/q[73]_i_18_n_0 ),
        .I5(\i_/q[55]_i_38_n_0 ),
        .O(ALU_B[7]));
  LUT6 #(
    .INIT(64'hFF47FFFFFF470000)) 
    \i_/q[55]_i_28 
       (.I0(\q_reg[67] ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[59] ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[73]_0 ),
        .I5(\q_reg[53]_5 ),
        .O(\q_reg[54]_3 ));
  LUT6 #(
    .INIT(64'hFFCFFF77FFCFFF44)) 
    \i_/q[55]_i_29 
       (.I0(\q_reg[48]_1 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[44]_0 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[52]_0 ),
        .O(\i_/q[55]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEAFF20002A00)) 
    \i_/q[55]_i_3 
       (.I0(\i_/q[55]_i_8_n_0 ),
        .I1(\i_/q[55]_i_9_n_0 ),
        .I2(\i_/q[55]_i_10_n_0 ),
        .I3(\i_/q[55]_i_11_n_0 ),
        .I4(\i_/q[55]_i_12_n_0 ),
        .I5(\i_/q[55]_i_13_n_0 ),
        .O(\q_reg[55]_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \i_/q[55]_i_30 
       (.I0(\q_reg[74]_8 [12]),
        .I1(\i_/q[42]_i_8_n_0 ),
        .I2(\i_/q[42]_i_5_n_0 ),
        .I3(\i_/q[42]_i_4_n_0 ),
        .O(\i_/q[55]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002202)) 
    \i_/q[55]_i_31 
       (.I0(w_RegWriteData_wb[6]),
        .I1(\i_/q[42]_i_9_n_0 ),
        .I2(\i_/q[42]_i_5_n_0 ),
        .I3(\i_/q[42]_i_8_n_0 ),
        .I4(\i_/q[42]_i_7_n_0 ),
        .I5(\i_/q[42]_i_6_n_0 ),
        .O(\i_/q[55]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i_/q[55]_i_32 
       (.I0(Q[134]),
        .I1(Q[110]),
        .O(\i_/q[55]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \i_/q[55]_i_33 
       (.I0(\q_reg[74]_8 [10]),
        .I1(\i_/q[42]_i_8_n_0 ),
        .I2(\i_/q[42]_i_5_n_0 ),
        .I3(\i_/q[42]_i_4_n_0 ),
        .O(\i_/q[55]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002202)) 
    \i_/q[55]_i_34 
       (.I0(w_RegWriteData_wb[4]),
        .I1(\i_/q[42]_i_9_n_0 ),
        .I2(\i_/q[42]_i_5_n_0 ),
        .I3(\i_/q[42]_i_8_n_0 ),
        .I4(\i_/q[42]_i_7_n_0 ),
        .I5(\i_/q[42]_i_6_n_0 ),
        .O(\i_/q[55]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i_/q[55]_i_35 
       (.I0(Q[134]),
        .I1(Q[108]),
        .O(\i_/q[55]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \i_/q[55]_i_36 
       (.I0(\q_reg[74]_8 [11]),
        .I1(\i_/q[42]_i_8_n_0 ),
        .I2(\i_/q[42]_i_5_n_0 ),
        .I3(\i_/q[42]_i_4_n_0 ),
        .O(\i_/q[55]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002202)) 
    \i_/q[55]_i_37 
       (.I0(w_RegWriteData_wb[5]),
        .I1(\i_/q[42]_i_9_n_0 ),
        .I2(\i_/q[42]_i_5_n_0 ),
        .I3(\i_/q[42]_i_8_n_0 ),
        .I4(\i_/q[42]_i_7_n_0 ),
        .I5(\i_/q[42]_i_6_n_0 ),
        .O(\i_/q[55]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i_/q[55]_i_38 
       (.I0(Q[134]),
        .I1(Q[109]),
        .O(\i_/q[55]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA9A6655556599)) 
    \i_/q[55]_i_4 
       (.I0(\q_reg[55]_3 ),
        .I1(Q[136]),
        .I2(Q[139]),
        .I3(Q[137]),
        .I4(Q[138]),
        .I5(\q_reg[55]_2 ),
        .O(\i_/q[55]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7C7C7C7070707C7C)) 
    \i_/q[55]_i_5 
       (.I0(\i_/q[55]_i_14_n_0 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(Q[136]),
        .I4(\q_reg[55]_2 ),
        .I5(\q_reg[55]_3 ),
        .O(\q_reg[55]_1 ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \i_/q[55]_i_7 
       (.I0(Q[135]),
        .I1(\i_/q[55]_i_16_n_0 ),
        .I2(Q[114]),
        .I3(Q[134]),
        .O(\q_reg[55]_2 ));
  LUT6 #(
    .INIT(64'h007117FF1700FF71)) 
    \i_/q[55]_i_8 
       (.I0(\i_/q[55]_i_17_n_0 ),
        .I1(\q_reg[53]_0 ),
        .I2(\q_reg[53]_1 ),
        .I3(\q_reg[57]_0 ),
        .I4(\q_reg[54]_0 ),
        .I5(\q_reg[54] ),
        .O(\i_/q[55]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8822E82B00000000)) 
    \i_/q[55]_i_9 
       (.I0(\q_reg[48]_1 ),
        .I1(\q_reg[48]_0 ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[57]_0 ),
        .I4(\q_reg[47]_1 ),
        .I5(\i_/q[55]_i_18_n_0 ),
        .O(\i_/q[55]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF0D)) 
    \i_/q[56]_i_1 
       (.I0(\q_reg[151]_0 ),
        .I1(\i_/q[56]_i_3_n_0 ),
        .I2(\i_/q[60]_i_4_n_0 ),
        .I3(\i_/q[56]_i_4_n_0 ),
        .I4(Q[139]),
        .I5(\i_/q[56]_i_5_n_0 ),
        .O(D[45]));
  LUT6 #(
    .INIT(64'hFFCAF0CA0FCA00CA)) 
    \i_/q[56]_i_10 
       (.I0(\i_/q[56]_i_15_n_0 ),
        .I1(\i_/q[56]_i_16_n_0 ),
        .I2(\q_reg[46] ),
        .I3(Q[136]),
        .I4(\i_/q[56]_i_17_n_0 ),
        .I5(\i_/q[56]_i_18_n_0 ),
        .O(\i_/q[56]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF011)) 
    \i_/q[56]_i_11 
       (.I0(\i_/q[56]_i_19_n_0 ),
        .I1(Q[135]),
        .I2(Q[115]),
        .I3(Q[134]),
        .O(\q_reg[56] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[56]_i_12 
       (.I0(\i_/q[58]_i_11_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[53]_8 ),
        .O(\q_reg[56]_1 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[56]_i_13 
       (.I0(w_RegWriteData_wb[10]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [16]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[82]),
        .O(\i_/q[56]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[56]_i_14 
       (.I0(w_RegWriteData_wb[11]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [17]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[83]),
        .O(\i_/q[56]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[56]_i_15 
       (.I0(\i_/q[56]_i_20_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[59]_i_15_n_0 ),
        .O(\i_/q[56]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[56]_i_16 
       (.I0(\i_/q[56]_i_21_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[56]_i_22_n_0 ),
        .O(\i_/q[56]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \i_/q[56]_i_17 
       (.I0(\i_/q[58]_i_18_n_0 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[53]_3 ),
        .I3(\q_reg[73] ),
        .I4(\i_/q[56]_i_23_n_0 ),
        .O(\i_/q[56]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[56]_i_18 
       (.I0(\i_/q[58]_i_17_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[56]_i_24_n_0 ),
        .O(\i_/q[56]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[56]_i_19 
       (.I0(Q[51]),
        .I1(\q_reg[74]_8 [17]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[11]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/q[56]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFF44FFFCFF77)) 
    \i_/q[56]_i_20 
       (.I0(\q_reg[50]_2 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[46]_3 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[54]_0 ),
        .O(\i_/q[56]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFF44FFFCFF77)) 
    \i_/q[56]_i_21 
       (.I0(\q_reg[50] ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[45]_1 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[53]_0 ),
        .O(\i_/q[56]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BB88BBB8BBBB)) 
    \i_/q[56]_i_22 
       (.I0(\i_/q[56]_i_25_n_0 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[47]_1 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[55]_3 ),
        .O(\i_/q[56]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFF47FFFFFF470000)) 
    \i_/q[56]_i_23 
       (.I0(\q_reg[68]_0 ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[60] ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[73]_0 ),
        .I5(\q_reg[53]_7 ),
        .O(\i_/q[56]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hF3F0F3FFAAAAAAAA)) 
    \i_/q[56]_i_24 
       (.I0(\q_reg[53]_9 ),
        .I1(\q_reg[69]_1 ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[61]_0 ),
        .I5(\q_reg[73]_0 ),
        .O(\i_/q[56]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hECEF)) 
    \i_/q[56]_i_25 
       (.I0(\q_reg[44] ),
        .I1(\q_reg[47] ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[51]_0 ),
        .O(\i_/q[56]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h5555CFF044440000)) 
    \i_/q[56]_i_3 
       (.I0(\i_/q[56]_i_10_n_0 ),
        .I1(Q[136]),
        .I2(\q_reg[56] ),
        .I3(\q_reg[56]_0 ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[56]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h08080008)) 
    \i_/q[56]_i_4 
       (.I0(\q_reg[56] ),
        .I1(Q[137]),
        .I2(Q[138]),
        .I3(Q[136]),
        .I4(\q_reg[56]_0 ),
        .O(\i_/q[56]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \i_/q[56]_i_5 
       (.I0(\q_reg[56]_1 ),
        .I1(\q_reg[46]_0 ),
        .I2(\i_/q[57]_i_4_n_0 ),
        .I3(\q_reg[45] ),
        .O(\i_/q[56]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h56566555)) 
    \i_/q[56]_i_6 
       (.I0(\q_reg[55]_2 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(Q[139]),
        .I4(Q[136]),
        .O(\q_reg[56]_2 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[56]_i_7 
       (.I0(Q[13]),
        .I1(Q[135]),
        .I2(\i_/q[56]_i_13_n_0 ),
        .O(\q_reg[55]_3 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[56]_i_8 
       (.I0(Q[14]),
        .I1(Q[135]),
        .I2(\i_/q[56]_i_14_n_0 ),
        .O(\q_reg[56]_0 ));
  LUT5 #(
    .INIT(32'h56566555)) 
    \i_/q[56]_i_9 
       (.I0(\q_reg[56] ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(Q[139]),
        .I4(Q[136]),
        .O(\q_reg[56]_3 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \i_/q[57]_i_1 
       (.I0(\i_/q[57]_i_2_n_0 ),
        .I1(\i_/q[57]_i_3_n_0 ),
        .I2(\q_reg[46]_0 ),
        .I3(\i_/q[57]_i_4_n_0 ),
        .I4(\q_reg[45] ),
        .I5(\i_/q[58]_i_4_n_0 ),
        .O(D[46]));
  LUT5 #(
    .INIT(32'h0000F4F7)) 
    \i_/q[57]_i_10 
       (.I0(\q_reg[67] ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[59] ),
        .I4(\q_reg[57]_3 ),
        .O(\i_/q[57]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h13101F10)) 
    \i_/q[57]_i_11 
       (.I0(\i_/q[57]_i_15_n_0 ),
        .I1(\q_reg[57]_3 ),
        .I2(\q_reg[73]_0 ),
        .I3(\q_reg[53]_9 ),
        .I4(\q_reg[46]_2 ),
        .O(\q_reg[57]_5 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[57]_i_12 
       (.I0(w_RegWriteData_wb[12]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [18]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[84]),
        .O(\i_/q[57]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[57]_i_13 
       (.I0(Q[52]),
        .I1(\q_reg[74]_8 [18]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[12]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/q[57]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFCAF0CA0FCA00CA)) 
    \i_/q[57]_i_14 
       (.I0(\i_/q[58]_i_19_n_0 ),
        .I1(\i_/q[56]_i_18_n_0 ),
        .I2(Q[136]),
        .I3(\q_reg[46] ),
        .I4(\i_/q[56]_i_15_n_0 ),
        .I5(\i_/q[58]_i_20_n_0 ),
        .O(\i_/q[57]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2320)) 
    \i_/q[57]_i_15 
       (.I0(\q_reg[69]_1 ),
        .I1(\q_reg[47] ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[61]_0 ),
        .O(\i_/q[57]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAAAA)) 
    \i_/q[57]_i_2 
       (.I0(Q[139]),
        .I1(Q[136]),
        .I2(\q_reg[57]_2 ),
        .I3(\q_reg[57]_1 ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[57]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96690000)) 
    \i_/q[57]_i_3 
       (.I0(\q_reg[57] ),
        .I1(\q_reg[57]_0 ),
        .I2(\q_reg[57]_1 ),
        .I3(\q_reg[57]_2 ),
        .I4(\q_reg[151] ),
        .I5(\i_/q[57]_i_8_n_0 ),
        .O(\i_/q[57]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1F10FFFF1F100000)) 
    \i_/q[57]_i_4 
       (.I0(\q_reg[57]_3 ),
        .I1(\q_reg[57]_4 ),
        .I2(\q_reg[73]_0 ),
        .I3(\i_/q[57]_i_10_n_0 ),
        .I4(\q_reg[73] ),
        .I5(\q_reg[57]_5 ),
        .O(\i_/q[57]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[57]_i_5 
       (.I0(Q[15]),
        .I1(Q[135]),
        .I2(\i_/q[57]_i_12_n_0 ),
        .O(\q_reg[57]_2 ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \i_/q[57]_i_6 
       (.I0(\i_/q[57]_i_13_n_0 ),
        .I1(Q[135]),
        .I2(Q[116]),
        .I3(Q[134]),
        .O(\q_reg[57]_1 ));
  LUT6 #(
    .INIT(64'h13F7C4DF017340CD)) 
    \i_/q[57]_i_7 
       (.I0(\q_reg[55]_3 ),
        .I1(\q_reg[57]_0 ),
        .I2(\q_reg[55]_2 ),
        .I3(\q_reg[56]_0 ),
        .I4(\q_reg[56] ),
        .I5(\q_reg[55]_0 ),
        .O(\q_reg[57] ));
  LUT6 #(
    .INIT(64'h7C7C7C7070707C7C)) 
    \i_/q[57]_i_8 
       (.I0(\i_/q[57]_i_14_n_0 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(Q[136]),
        .I4(\q_reg[57]_1 ),
        .I5(\q_reg[57]_2 ),
        .O(\i_/q[57]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \i_/q[57]_i_9 
       (.I0(\q_reg[71]_1 ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[63]_1 ),
        .I3(\q_reg[47] ),
        .O(\q_reg[57]_4 ));
  LUT6 #(
    .INIT(64'h11F111F1FFFF11F1)) 
    \i_/q[58]_i_1 
       (.I0(\i_/q[58]_i_2_n_0 ),
        .I1(Q[139]),
        .I2(\q_reg[45] ),
        .I3(\q_reg[58] ),
        .I4(\q_reg[46]_0 ),
        .I5(\i_/q[58]_i_4_n_0 ),
        .O(D[47]));
  LUT2 #(
    .INIT(4'h8)) 
    \i_/q[58]_i_10 
       (.I0(\q_reg[74] ),
        .I1(\q_reg[47] ),
        .O(\q_reg[57]_3 ));
  LUT5 #(
    .INIT(32'h00307474)) 
    \i_/q[58]_i_11 
       (.I0(\i_/q[58]_i_18_n_0 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[53]_3 ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[57]_3 ),
        .O(\i_/q[58]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    \i_/q[58]_i_13 
       (.I0(\i_/q[58]_i_19_n_0 ),
        .I1(\i_/q[59]_i_14_n_0 ),
        .I2(Q[136]),
        .I3(\q_reg[46] ),
        .I4(\i_/q[58]_i_9_n_0 ),
        .I5(\i_/q[58]_i_20_n_0 ),
        .O(\i_/q[58]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAA80000FFFF)) 
    \i_/q[58]_i_14 
       (.I0(\q_reg[74]_8 [3]),
        .I1(\q_reg[74]_8 [1]),
        .I2(\q_reg[74]_8 [2]),
        .I3(\q_reg[74]_8 [0]),
        .I4(\i_/q[74]_i_18_n_0 ),
        .I5(\i_/q[58]_i_21_n_0 ),
        .O(\i_/q[58]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \i_/q[58]_i_15 
       (.I0(\i_/q[74]_i_11_n_0 ),
        .I1(\q_reg[54]_5 [6]),
        .I2(\q_reg[54]_5 [3]),
        .I3(\q_reg[54]_5 [5]),
        .I4(\i_/q[74]_i_10_n_0 ),
        .I5(\q_reg[74]_8 [19]),
        .O(\i_/q[58]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[58]_i_16 
       (.I0(Q[53]),
        .I1(\q_reg[74]_8 [19]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[13]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/q[58]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000ABFBFFFFABFB)) 
    \i_/q[58]_i_17 
       (.I0(\q_reg[47] ),
        .I1(\q_reg[59] ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[67] ),
        .I4(\q_reg[73]_0 ),
        .I5(\q_reg[57]_4 ),
        .O(\i_/q[58]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \i_/q[58]_i_18 
       (.I0(\q_reg[70] ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[62] ),
        .I3(\q_reg[47] ),
        .O(\i_/q[58]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[58]_i_19 
       (.I0(\i_/q[56]_i_22_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[60]_i_14_n_0 ),
        .O(\i_/q[58]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF22220F002222)) 
    \i_/q[58]_i_2 
       (.I0(\q_reg[149]_2 ),
        .I1(\i_/q[58]_i_6_n_0 ),
        .I2(\q_reg[58]_0 ),
        .I3(Q[136]),
        .I4(\i_/q[60]_i_4_n_0 ),
        .I5(\q_reg[58]_1 ),
        .O(\i_/q[58]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h47774744)) 
    \i_/q[58]_i_20 
       (.I0(\q_reg[60]_3 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[58]_i_18_n_0 ),
        .I3(\q_reg[73]_0 ),
        .I4(\q_reg[53]_3 ),
        .O(\i_/q[58]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h81000081)) 
    \i_/q[58]_i_21 
       (.I0(\q_reg[74]_8 [1]),
        .I1(Q[37]),
        .I2(\q_reg[74]_8 [2]),
        .I3(Q[36]),
        .I4(\q_reg[74]_8 [0]),
        .O(\i_/q[58]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i_/q[58]_i_3 
       (.I0(\i_/q[58]_i_9_n_0 ),
        .I1(\q_reg[57]_3 ),
        .O(\q_reg[58] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[58]_i_4 
       (.I0(\q_reg[34]_0 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[58]_i_11_n_0 ),
        .O(\i_/q[58]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555CFC355000000)) 
    \i_/q[58]_i_6 
       (.I0(\i_/q[58]_i_13_n_0 ),
        .I1(\q_reg[58]_0 ),
        .I2(\q_reg[58]_1 ),
        .I3(Q[136]),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[58]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \i_/q[58]_i_7 
       (.I0(Q[16]),
        .I1(Q[135]),
        .I2(\i_/q[58]_i_14_n_0 ),
        .I3(Q[85]),
        .I4(\i_/q[58]_i_15_n_0 ),
        .O(\q_reg[58]_0 ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \i_/q[58]_i_8 
       (.I0(\i_/q[58]_i_16_n_0 ),
        .I1(Q[135]),
        .I2(Q[117]),
        .I3(Q[134]),
        .O(\q_reg[58]_1 ));
  LUT3 #(
    .INIT(8'h74)) 
    \i_/q[58]_i_9 
       (.I0(\q_reg[58]_2 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[58]_i_17_n_0 ),
        .O(\i_/q[58]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554100)) 
    \i_/q[59]_i_1 
       (.I0(\i_/q[59]_i_2_n_0 ),
        .I1(\q_reg[59]_0 ),
        .I2(\i_/q[59]_i_4_n_0 ),
        .I3(\q_reg[151] ),
        .I4(\i_/q[59]_i_5_n_0 ),
        .I5(\q_reg[51]_7 ),
        .O(D[48]));
  LUT5 #(
    .INIT(32'h017340CD)) 
    \i_/q[59]_i_10 
       (.I0(\q_reg[55]_3 ),
        .I1(\q_reg[57]_0 ),
        .I2(\q_reg[55]_2 ),
        .I3(\q_reg[56]_0 ),
        .I4(\q_reg[56] ),
        .O(\q_reg[59]_4 ));
  LUT4 #(
    .INIT(16'h00D7)) 
    \i_/q[59]_i_11 
       (.I0(\q_reg[58]_0 ),
        .I1(\q_reg[58]_1 ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[59]_5 ),
        .O(\i_/q[59]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    \i_/q[59]_i_12 
       (.I0(\i_/q[59]_i_14_n_0 ),
        .I1(\q_reg[51]_9 ),
        .I2(\q_reg[46] ),
        .I3(Q[136]),
        .I4(\i_/q[58]_i_9_n_0 ),
        .I5(\i_/q[60]_i_12_n_0 ),
        .O(\i_/q[59]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00002088AAAA8A22)) 
    \i_/q[59]_i_13 
       (.I0(\q_reg[57]_2 ),
        .I1(Q[136]),
        .I2(Q[139]),
        .I3(Q[137]),
        .I4(Q[138]),
        .I5(\q_reg[57]_1 ),
        .O(\q_reg[59]_5 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[59]_i_14 
       (.I0(\i_/q[59]_i_15_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[61]_i_31_n_0 ),
        .O(\i_/q[59]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBB8BBB88BB8BBBBB)) 
    \i_/q[59]_i_15 
       (.I0(\i_/q[59]_i_16_n_0 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[48]_1 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[56]_0 ),
        .O(\i_/q[59]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hDFDC)) 
    \i_/q[59]_i_16 
       (.I0(\q_reg[44]_0 ),
        .I1(\q_reg[47] ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[52]_0 ),
        .O(\i_/q[59]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFBBAAAA)) 
    \i_/q[59]_i_2 
       (.I0(Q[139]),
        .I1(\q_reg[59]_1 ),
        .I2(\q_reg[59] ),
        .I3(Q[136]),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[59]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000B0F0F0F0F)) 
    \i_/q[59]_i_3 
       (.I0(\q_reg[59]_2 ),
        .I1(\q_reg[55]_0 ),
        .I2(\i_/q[59]_i_8_n_0 ),
        .I3(\q_reg[59]_3 ),
        .I4(\q_reg[59]_4 ),
        .I5(\i_/q[59]_i_11_n_0 ),
        .O(\q_reg[59]_0 ));
  LUT6 #(
    .INIT(64'hAAAA9A6655556599)) 
    \i_/q[59]_i_4 
       (.I0(\q_reg[59] ),
        .I1(Q[136]),
        .I2(Q[139]),
        .I3(Q[137]),
        .I4(Q[138]),
        .I5(\q_reg[59]_1 ),
        .O(\i_/q[59]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7C7C7C70707C7C70)) 
    \i_/q[59]_i_5 
       (.I0(\i_/q[59]_i_12_n_0 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(\q_reg[59] ),
        .I4(\q_reg[59]_1 ),
        .I5(Q[136]),
        .O(\i_/q[59]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF22080F8)) 
    \i_/q[59]_i_7 
       (.I0(\q_reg[55]_3 ),
        .I1(\q_reg[55]_2 ),
        .I2(\q_reg[56]_0 ),
        .I3(\q_reg[56] ),
        .I4(\q_reg[57]_0 ),
        .O(\q_reg[59]_2 ));
  LUT6 #(
    .INIT(64'h00000000FFB5004A)) 
    \i_/q[59]_i_8 
       (.I0(Q[136]),
        .I1(Q[139]),
        .I2(Q[137]),
        .I3(Q[138]),
        .I4(\q_reg[58]_1 ),
        .I5(\q_reg[58]_0 ),
        .O(\i_/q[59]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB5004A)) 
    \i_/q[59]_i_9 
       (.I0(Q[136]),
        .I1(Q[139]),
        .I2(Q[137]),
        .I3(Q[138]),
        .I4(\q_reg[57]_1 ),
        .I5(\q_reg[57]_2 ),
        .O(\q_reg[59]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF0D)) 
    \i_/q[60]_i_1 
       (.I0(\q_reg[19] ),
        .I1(\i_/q[60]_i_3_n_0 ),
        .I2(\i_/q[60]_i_4_n_0 ),
        .I3(\q_reg[150] ),
        .I4(Q[139]),
        .I5(\q_reg[51]_8 ),
        .O(D[49]));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[60]_i_12 
       (.I0(\i_/q[60]_i_14_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[61]_i_27_n_0 ),
        .O(\i_/q[60]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \i_/q[60]_i_13 
       (.I0(\q_reg[72]_0 ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[64] ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[73]_0 ),
        .I5(\i_/q[53]_i_18_n_0 ),
        .O(\q_reg[60]_3 ));
  LUT6 #(
    .INIT(64'hECEFFFFFECEF0000)) 
    \i_/q[60]_i_14 
       (.I0(\q_reg[45]_1 ),
        .I1(\q_reg[47] ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[53]_0 ),
        .I4(\q_reg[73]_0 ),
        .I5(\i_/q[60]_i_15_n_0 ),
        .O(\i_/q[60]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hDCDF)) 
    \i_/q[60]_i_15 
       (.I0(\q_reg[50] ),
        .I1(\q_reg[47] ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[57]_2 ),
        .O(\i_/q[60]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5555CFC355000000)) 
    \i_/q[60]_i_3 
       (.I0(\i_/q[60]_i_9_n_0 ),
        .I1(\q_reg[60] ),
        .I2(\q_reg[60]_0 ),
        .I3(Q[136]),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[60]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i_/q[60]_i_4 
       (.I0(Q[137]),
        .I1(Q[138]),
        .O(\i_/q[60]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h56566555)) 
    \i_/q[60]_i_7 
       (.I0(\q_reg[59]_1 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(Q[139]),
        .I4(Q[136]),
        .O(\q_reg[60]_4 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \i_/q[60]_i_9 
       (.I0(\q_reg[51]_9 ),
        .I1(\i_/q[61]_i_25_n_0 ),
        .I2(Q[136]),
        .I3(\q_reg[46] ),
        .I4(\q_reg[27]_0 ),
        .I5(\i_/q[60]_i_12_n_0 ),
        .O(\i_/q[60]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554100)) 
    \i_/q[61]_i_1 
       (.I0(\i_/q[61]_i_2_n_0 ),
        .I1(\q_reg[61] ),
        .I2(\q_reg[149]_3 ),
        .I3(\q_reg[151] ),
        .I4(\i_/q[61]_i_6_n_0 ),
        .I5(\i_/q[61]_i_7_n_0 ),
        .O(D[50]));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[61]_i_10 
       (.I0(Q[17]),
        .I1(Q[135]),
        .I2(\i_/q[61]_i_18_n_0 ),
        .O(\q_reg[59] ));
  LUT4 #(
    .INIT(16'hF011)) 
    \i_/q[61]_i_11 
       (.I0(\i_/q[61]_i_19_n_0 ),
        .I1(Q[135]),
        .I2(Q[118]),
        .I3(Q[134]),
        .O(\q_reg[59]_1 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[61]_i_12 
       (.I0(Q[18]),
        .I1(Q[135]),
        .I2(\i_/q[61]_i_20_n_0 ),
        .O(\q_reg[60] ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \i_/q[61]_i_13 
       (.I0(\i_/q[61]_i_21_n_0 ),
        .I1(Q[135]),
        .I2(Q[119]),
        .I3(Q[134]),
        .O(\q_reg[60]_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \i_/q[61]_i_14 
       (.I0(\q_reg[27]_0 ),
        .I1(\i_/q[61]_i_23_n_0 ),
        .I2(Q[136]),
        .I3(\q_reg[46] ),
        .I4(\i_/q[61]_i_24_n_0 ),
        .I5(\i_/q[61]_i_25_n_0 ),
        .O(\i_/q[61]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h888B)) 
    \i_/q[61]_i_15 
       (.I0(\i_/q[63]_i_8_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[57]_3 ),
        .I3(\q_reg[58]_2 ),
        .O(\q_reg[61]_4 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[61]_i_16 
       (.I0(Q[56]),
        .I1(\q_reg[74]_8 [22]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[16]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/q[61]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[61]_i_17 
       (.I0(w_RegWriteData_wb[16]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [22]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[88]),
        .O(\i_/q[61]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[61]_i_18 
       (.I0(w_RegWriteData_wb[14]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [20]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[86]),
        .O(\i_/q[61]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[61]_i_19 
       (.I0(Q[54]),
        .I1(\q_reg[74]_8 [20]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[14]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/q[61]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFBBAAAA)) 
    \i_/q[61]_i_2 
       (.I0(Q[139]),
        .I1(\q_reg[61]_1 ),
        .I2(\q_reg[61]_0 ),
        .I3(Q[136]),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[61]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[61]_i_20 
       (.I0(w_RegWriteData_wb[15]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [21]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[87]),
        .O(\i_/q[61]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[61]_i_21 
       (.I0(Q[55]),
        .I1(\q_reg[74]_8 [21]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[15]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/q[61]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[61]_i_23 
       (.I0(\i_/q[61]_i_27_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[61]_2 ),
        .O(\i_/q[61]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[61]_i_24 
       (.I0(\i_/q[61]_i_29_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[61]_5 ),
        .O(\i_/q[61]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[61]_i_25 
       (.I0(\i_/q[61]_i_31_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[61]_i_32_n_0 ),
        .O(\i_/q[61]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h88B888BB88B88888)) 
    \i_/q[61]_i_26 
       (.I0(\i_/q[65]_i_13_n_0 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[69]_1 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[61]_0 ),
        .O(\q_reg[58]_2 ));
  LUT6 #(
    .INIT(64'hECEFFFFFECEF0000)) 
    \i_/q[61]_i_27 
       (.I0(\q_reg[47]_1 ),
        .I1(\q_reg[47] ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[55]_3 ),
        .I4(\q_reg[73]_0 ),
        .I5(\q_reg[60]_1 ),
        .O(\i_/q[61]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hDCDFFFFFDCDF0000)) 
    \i_/q[61]_i_28 
       (.I0(\q_reg[50] ),
        .I1(\q_reg[47] ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[57]_2 ),
        .I4(\q_reg[73]_0 ),
        .I5(\q_reg[61]_3 ),
        .O(\q_reg[61]_2 ));
  LUT6 #(
    .INIT(64'hFFFFF5F5FFFF303F)) 
    \i_/q[61]_i_29 
       (.I0(\q_reg[68]_0 ),
        .I1(\q_reg[72]_0 ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[64] ),
        .I4(\q_reg[47] ),
        .I5(\q_reg[73]_0 ),
        .O(\i_/q[61]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h1070F7F107011F7F)) 
    \i_/q[61]_i_3 
       (.I0(\q_reg[59]_0 ),
        .I1(\q_reg[59] ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[59]_1 ),
        .I4(\q_reg[60] ),
        .I5(\q_reg[60]_0 ),
        .O(\q_reg[61] ));
  LUT6 #(
    .INIT(64'hDCDF0000DCDFFFFF)) 
    \i_/q[61]_i_30 
       (.I0(\q_reg[74] ),
        .I1(\q_reg[47] ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[66] ),
        .I4(\q_reg[73]_0 ),
        .I5(\i_/q[58]_i_18_n_0 ),
        .O(\q_reg[61]_5 ));
  LUT6 #(
    .INIT(64'hECEFFFFFECEF0000)) 
    \i_/q[61]_i_31 
       (.I0(\q_reg[46]_3 ),
        .I1(\q_reg[47] ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[54]_0 ),
        .I4(\q_reg[73]_0 ),
        .I5(\i_/q[61]_i_33_n_0 ),
        .O(\i_/q[61]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hDCDFFFFFDCDF0000)) 
    \i_/q[61]_i_32 
       (.I0(\q_reg[48]_1 ),
        .I1(\q_reg[47] ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[56]_0 ),
        .I4(\q_reg[73]_0 ),
        .I5(\q_reg[60]_2 ),
        .O(\i_/q[61]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hDCDF)) 
    \i_/q[61]_i_33 
       (.I0(\q_reg[50]_2 ),
        .I1(\q_reg[47] ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[58]_0 ),
        .O(\i_/q[61]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h7C7C7C70707C7C70)) 
    \i_/q[61]_i_6 
       (.I0(\i_/q[61]_i_14_n_0 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(\q_reg[61]_0 ),
        .I4(\q_reg[61]_1 ),
        .I5(Q[136]),
        .O(\i_/q[61]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \i_/q[61]_i_7 
       (.I0(\q_reg[61]_4 ),
        .I1(\q_reg[46]_0 ),
        .I2(\i_/q[62]_i_3_n_0 ),
        .I3(\q_reg[45] ),
        .O(\i_/q[61]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF011)) 
    \i_/q[61]_i_8 
       (.I0(\i_/q[61]_i_16_n_0 ),
        .I1(Q[135]),
        .I2(Q[120]),
        .I3(Q[134]),
        .O(\q_reg[61]_1 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[61]_i_9 
       (.I0(Q[19]),
        .I1(Q[135]),
        .I2(\i_/q[61]_i_17_n_0 ),
        .O(\q_reg[61]_0 ));
  LUT6 #(
    .INIT(64'h11F111F1FFFF11F1)) 
    \i_/q[62]_i_1 
       (.I0(\i_/q[62]_i_2_n_0 ),
        .I1(Q[139]),
        .I2(\q_reg[45] ),
        .I3(\i_/q[63]_i_4_n_0 ),
        .I4(\q_reg[46]_0 ),
        .I5(\i_/q[62]_i_3_n_0 ),
        .O(D[51]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \i_/q[62]_i_11 
       (.I0(\i_/q[61]_i_24_n_0 ),
        .I1(\i_/q[63]_i_18_n_0 ),
        .I2(Q[136]),
        .I3(\q_reg[46] ),
        .I4(\i_/q[63]_i_17_n_0 ),
        .I5(\i_/q[61]_i_23_n_0 ),
        .O(\i_/q[62]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[62]_i_12 
       (.I0(w_RegWriteData_wb[17]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [23]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[89]),
        .O(\i_/q[62]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \i_/q[62]_i_13 
       (.I0(Q[57]),
        .I1(\q_reg[74]_8 [23]),
        .I2(\i_/q[42]_i_2_n_0 ),
        .I3(w_RegWriteData_wb[17]),
        .I4(\i_/q[42]_i_3_n_0 ),
        .O(\i_/q[62]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF22220F002222)) 
    \i_/q[62]_i_2 
       (.I0(\q_reg[151]_1 ),
        .I1(\i_/q[62]_i_5_n_0 ),
        .I2(\q_reg[62] ),
        .I3(Q[136]),
        .I4(\i_/q[60]_i_4_n_0 ),
        .I5(\q_reg[62]_0 ),
        .O(\i_/q[62]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[62]_i_3 
       (.I0(\i_/q[64]_i_7_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[62]_2 ),
        .O(\i_/q[62]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555CFC355000000)) 
    \i_/q[62]_i_5 
       (.I0(\i_/q[62]_i_11_n_0 ),
        .I1(\q_reg[62] ),
        .I2(\q_reg[62]_0 ),
        .I3(Q[136]),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[62]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[62]_i_6 
       (.I0(Q[20]),
        .I1(Q[135]),
        .I2(\i_/q[62]_i_12_n_0 ),
        .O(\q_reg[62] ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \i_/q[62]_i_7 
       (.I0(\i_/q[62]_i_13_n_0 ),
        .I1(Q[135]),
        .I2(Q[121]),
        .I3(Q[134]),
        .O(\q_reg[62]_0 ));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    \i_/q[62]_i_8 
       (.I0(\q_reg[34]_1 ),
        .I1(\q_reg[68] ),
        .I2(\q_reg[66] ),
        .I3(\q_reg[73]_0 ),
        .I4(\q_reg[147]_3 ),
        .O(\q_reg[62]_2 ));
  LUT5 #(
    .INIT(32'h56566555)) 
    \i_/q[62]_i_9 
       (.I0(\q_reg[61]_1 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(Q[139]),
        .I4(Q[136]),
        .O(\q_reg[62]_3 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \i_/q[63]_i_1 
       (.I0(\i_/q[63]_i_2_n_0 ),
        .I1(\i_/q[63]_i_3_n_0 ),
        .I2(\q_reg[45] ),
        .I3(\i_/q[64]_i_3_n_0 ),
        .I4(\q_reg[46]_0 ),
        .I5(\i_/q[63]_i_4_n_0 ),
        .O(D[52]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \i_/q[63]_i_14 
       (.I0(\i_/q[63]_i_17_n_0 ),
        .I1(\q_reg[116]_23 ),
        .I2(Q[136]),
        .I3(\q_reg[46] ),
        .I4(\i_/q[64]_i_13_n_0 ),
        .I5(\i_/q[63]_i_18_n_0 ),
        .O(\i_/q[63]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h02AE0457)) 
    \i_/q[63]_i_15 
       (.I0(\q_reg[57]_0 ),
        .I1(\q_reg[59]_1 ),
        .I2(\q_reg[59] ),
        .I3(\q_reg[60] ),
        .I4(\q_reg[60]_0 ),
        .O(\q_reg[63]_4 ));
  LUT5 #(
    .INIT(32'h4CFD317F)) 
    \i_/q[63]_i_16 
       (.I0(\q_reg[59] ),
        .I1(\q_reg[57]_0 ),
        .I2(\q_reg[59]_1 ),
        .I3(\q_reg[60] ),
        .I4(\q_reg[60]_0 ),
        .O(\q_reg[63]_3 ));
  LUT6 #(
    .INIT(64'hBB8BBB8B8888BBBB)) 
    \i_/q[63]_i_17 
       (.I0(\i_/q[65]_i_16_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[67] ),
        .I3(\q_reg[68] ),
        .I4(\q_reg[57]_4 ),
        .I5(\q_reg[73]_0 ),
        .O(\i_/q[63]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[63]_i_18 
       (.I0(\i_/q[61]_i_32_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[62]_1 ),
        .O(\i_/q[63]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAAAA)) 
    \i_/q[63]_i_2 
       (.I0(Q[139]),
        .I1(Q[136]),
        .I2(\q_reg[63]_1 ),
        .I3(\q_reg[63]_0 ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF69960000)) 
    \i_/q[63]_i_3 
       (.I0(\q_reg[63] ),
        .I1(\q_reg[63]_0 ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[63]_1 ),
        .I4(\q_reg[151] ),
        .I5(\i_/q[63]_i_7_n_0 ),
        .O(\i_/q[63]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[63]_i_4 
       (.I0(\i_/q[65]_i_10_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[63]_i_8_n_0 ),
        .O(\i_/q[63]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[63]_i_5 
       (.I0(Q[21]),
        .I1(Q[135]),
        .I2(\i_/q[63]_i_9_n_0 ),
        .O(\q_reg[63]_1 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \i_/q[63]_i_6 
       (.I0(\q_reg[147]_0 ),
        .I1(\q_reg[17] ),
        .I2(\q_reg[55]_0 ),
        .I3(\q_reg[17]_0 ),
        .I4(\q_reg[147]_1 ),
        .O(\q_reg[63] ));
  LUT6 #(
    .INIT(64'h7C7C7C7070707C7C)) 
    \i_/q[63]_i_7 
       (.I0(\i_/q[63]_i_14_n_0 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(Q[136]),
        .I4(\q_reg[63]_0 ),
        .I5(\q_reg[63]_1 ),
        .O(\i_/q[63]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0010F0B0001FFFBF)) 
    \i_/q[63]_i_8 
       (.I0(\q_reg[46]_2 ),
        .I1(\q_reg[67] ),
        .I2(\q_reg[73]_0 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[74] ),
        .I5(\q_reg[57]_4 ),
        .O(\i_/q[63]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[63]_i_9 
       (.I0(w_RegWriteData_wb[18]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [24]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[90]),
        .O(\i_/q[63]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F1FFFF11F1)) 
    \i_/q[64]_i_1 
       (.I0(\i_/q[64]_i_2_n_0 ),
        .I1(Q[139]),
        .I2(\q_reg[45] ),
        .I3(\i_/q[65]_i_4_n_0 ),
        .I4(\q_reg[46]_0 ),
        .I5(\i_/q[64]_i_3_n_0 ),
        .O(D[53]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \i_/q[64]_i_10 
       (.I0(\i_/q[64]_i_13_n_0 ),
        .I1(\q_reg[116]_22 ),
        .I2(Q[136]),
        .I3(\q_reg[46] ),
        .I4(\i_/q[65]_i_14_n_0 ),
        .I5(\q_reg[116]_23 ),
        .O(\i_/q[64]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[64]_i_11 
       (.I0(w_RegWriteData_wb[19]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [25]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[91]),
        .O(\i_/q[64]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \i_/q[64]_i_12 
       (.I0(\q_reg[72]_0 ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[64] ),
        .I3(\q_reg[47] ),
        .O(\i_/q[64]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[64]_i_13 
       (.I0(\i_/q[66]_i_15_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[61]_i_29_n_0 ),
        .O(\i_/q[64]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0F002222FFFF2222)) 
    \i_/q[64]_i_2 
       (.I0(\q_reg[23] ),
        .I1(\i_/q[64]_i_5_n_0 ),
        .I2(\q_reg[64] ),
        .I3(Q[136]),
        .I4(\i_/q[60]_i_4_n_0 ),
        .I5(\q_reg[64]_0 ),
        .O(\i_/q[64]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[64]_i_3 
       (.I0(\i_/q[66]_i_8_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[64]_i_7_n_0 ),
        .O(\i_/q[64]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555CFF044440000)) 
    \i_/q[64]_i_5 
       (.I0(\i_/q[64]_i_10_n_0 ),
        .I1(Q[136]),
        .I2(\q_reg[64]_0 ),
        .I3(\q_reg[64] ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[64]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[64]_i_6 
       (.I0(Q[22]),
        .I1(Q[135]),
        .I2(\i_/q[64]_i_11_n_0 ),
        .O(\q_reg[64] ));
  LUT6 #(
    .INIT(64'h0F1B00000F1B0FFF)) 
    \i_/q[64]_i_7 
       (.I0(\q_reg[46]_2 ),
        .I1(\q_reg[68]_0 ),
        .I2(\q_reg[74] ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[73]_0 ),
        .I5(\i_/q[64]_i_12_n_0 ),
        .O(\i_/q[64]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h56566555)) 
    \i_/q[64]_i_9 
       (.I0(\q_reg[64]_0 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(Q[139]),
        .I4(Q[136]),
        .O(\q_reg[64]_1 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \i_/q[65]_i_1 
       (.I0(\i_/q[65]_i_2_n_0 ),
        .I1(\i_/q[65]_i_3_n_0 ),
        .I2(\q_reg[45] ),
        .I3(\i_/q[66]_i_3_n_0 ),
        .I4(\q_reg[46]_0 ),
        .I5(\i_/q[65]_i_4_n_0 ),
        .O(D[54]));
  LUT6 #(
    .INIT(64'h0F1B00000F1B0FFF)) 
    \i_/q[65]_i_10 
       (.I0(\q_reg[46]_2 ),
        .I1(\q_reg[69]_1 ),
        .I2(\q_reg[74] ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[73]_0 ),
        .I5(\i_/q[65]_i_13_n_0 ),
        .O(\i_/q[65]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[65]_i_11 
       (.I0(w_RegWriteData_wb[20]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [26]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[92]),
        .O(\i_/q[65]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \i_/q[65]_i_12 
       (.I0(\i_/q[65]_i_14_n_0 ),
        .I1(\q_reg[116]_21 ),
        .I2(Q[136]),
        .I3(\q_reg[46] ),
        .I4(\i_/q[66]_i_13_n_0 ),
        .I5(\q_reg[116]_22 ),
        .O(\i_/q[65]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \i_/q[65]_i_13 
       (.I0(\q_reg[73]_1 ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[65]_1 ),
        .I3(\q_reg[47] ),
        .O(\i_/q[65]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF47FFFFFF470000)) 
    \i_/q[65]_i_14 
       (.I0(\q_reg[71]_1 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[67] ),
        .I3(\q_reg[68] ),
        .I4(\q_reg[73] ),
        .I5(\i_/q[65]_i_16_n_0 ),
        .O(\i_/q[65]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF5F5FFFF303F)) 
    \i_/q[65]_i_16 
       (.I0(\q_reg[69]_1 ),
        .I1(\q_reg[73]_1 ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[65]_1 ),
        .I4(\q_reg[47] ),
        .I5(\q_reg[73]_0 ),
        .O(\i_/q[65]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hDCDFFFFFDCDF0000)) 
    \i_/q[65]_i_17 
       (.I0(\q_reg[50]_2 ),
        .I1(\q_reg[47] ),
        .I2(\q_reg[46]_2 ),
        .I3(\q_reg[58]_0 ),
        .I4(\q_reg[73]_0 ),
        .I5(\q_reg[67]_5 ),
        .O(\q_reg[62]_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAAAA)) 
    \i_/q[65]_i_2 
       (.I0(Q[139]),
        .I1(Q[136]),
        .I2(\q_reg[65]_1 ),
        .I3(\q_reg[65]_0 ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[65]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96690000)) 
    \i_/q[65]_i_3 
       (.I0(\q_reg[65] ),
        .I1(\q_reg[57]_0 ),
        .I2(\q_reg[65]_0 ),
        .I3(\q_reg[65]_1 ),
        .I4(\q_reg[151] ),
        .I5(\i_/q[65]_i_7_n_0 ),
        .O(\i_/q[65]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \i_/q[65]_i_4 
       (.I0(\q_reg[34]_1 ),
        .I1(\q_reg[27]_1 ),
        .I2(\q_reg[73]_0 ),
        .I3(\i_/q[65]_i_9_n_0 ),
        .I4(\q_reg[73] ),
        .I5(\i_/q[65]_i_10_n_0 ),
        .O(\i_/q[65]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[65]_i_5 
       (.I0(Q[23]),
        .I1(Q[135]),
        .I2(\i_/q[65]_i_11_n_0 ),
        .O(\q_reg[65]_1 ));
  LUT6 #(
    .INIT(64'h01077F1F7010F1F7)) 
    \i_/q[65]_i_6 
       (.I0(\q_reg[63] ),
        .I1(\q_reg[63]_1 ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[63]_0 ),
        .I4(\q_reg[64] ),
        .I5(\q_reg[64]_0 ),
        .O(\q_reg[65] ));
  LUT6 #(
    .INIT(64'h7C7C7C7070707C7C)) 
    \i_/q[65]_i_7 
       (.I0(\i_/q[65]_i_12_n_0 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(Q[136]),
        .I4(\q_reg[65]_0 ),
        .I5(\q_reg[65]_1 ),
        .O(\i_/q[65]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i_/q[65]_i_9 
       (.I0(\q_reg[71]_1 ),
        .I1(\q_reg[68] ),
        .O(\i_/q[65]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F1FFFF11F1)) 
    \i_/q[66]_i_1 
       (.I0(\i_/q[66]_i_2_n_0 ),
        .I1(Q[139]),
        .I2(\q_reg[45] ),
        .I3(\q_reg[34] ),
        .I4(\q_reg[46]_0 ),
        .I5(\i_/q[66]_i_3_n_0 ),
        .O(D[55]));
  LUT6 #(
    .INIT(64'h0FFFAACC0F00AACC)) 
    \i_/q[66]_i_11 
       (.I0(\i_/q[66]_i_13_n_0 ),
        .I1(\q_reg[116]_17 ),
        .I2(\q_reg[66]_1 ),
        .I3(Q[136]),
        .I4(\q_reg[46] ),
        .I5(\q_reg[116]_21 ),
        .O(\i_/q[66]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[66]_i_12 
       (.I0(w_RegWriteData_wb[21]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [27]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[93]),
        .O(\i_/q[66]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \i_/q[66]_i_13 
       (.I0(\q_reg[68] ),
        .I1(\q_reg[68]_0 ),
        .I2(\q_reg[73]_0 ),
        .I3(\q_reg[72]_0 ),
        .I4(\q_reg[73] ),
        .I5(\i_/q[66]_i_15_n_0 ),
        .O(\i_/q[66]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFF5FFF5F3F0F3FF)) 
    \i_/q[66]_i_15 
       (.I0(\q_reg[70] ),
        .I1(\q_reg[74] ),
        .I2(\q_reg[47] ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[66] ),
        .I5(\q_reg[73]_0 ),
        .O(\i_/q[66]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFC44FC77)) 
    \i_/q[66]_i_16 
       (.I0(\q_reg[51]_0 ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[44] ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[59] ),
        .O(\q_reg[60]_1 ));
  LUT6 #(
    .INIT(64'hFFFF22220F002222)) 
    \i_/q[66]_i_2 
       (.I0(\q_reg[149]_4 ),
        .I1(\i_/q[66]_i_5_n_0 ),
        .I2(\q_reg[66] ),
        .I3(Q[136]),
        .I4(\i_/q[60]_i_4_n_0 ),
        .I5(\q_reg[66]_0 ),
        .O(\i_/q[66]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[66]_i_3 
       (.I0(\q_reg[28] ),
        .I1(\q_reg[73] ),
        .I2(\i_/q[66]_i_8_n_0 ),
        .O(\i_/q[66]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555CFC355000000)) 
    \i_/q[66]_i_5 
       (.I0(\i_/q[66]_i_11_n_0 ),
        .I1(\q_reg[66] ),
        .I2(\q_reg[66]_0 ),
        .I3(Q[136]),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[66]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[66]_i_6 
       (.I0(Q[24]),
        .I1(Q[135]),
        .I2(\i_/q[66]_i_12_n_0 ),
        .O(\q_reg[66] ));
  LUT5 #(
    .INIT(32'h0F040F07)) 
    \i_/q[66]_i_8 
       (.I0(\q_reg[70] ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[34]_1 ),
        .I3(\q_reg[68] ),
        .I4(\q_reg[66] ),
        .O(\i_/q[66]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00002088AAAA8A22)) 
    \i_/q[66]_i_9 
       (.I0(\q_reg[65]_1 ),
        .I1(Q[136]),
        .I2(Q[139]),
        .I3(Q[137]),
        .I4(Q[138]),
        .I5(\q_reg[65]_0 ),
        .O(\q_reg[66]_2 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \i_/q[67]_i_1 
       (.I0(\i_/q[67]_i_2_n_0 ),
        .I1(\i_/q[67]_i_3_n_0 ),
        .I2(\q_reg[45] ),
        .I3(\i_/q[68]_i_3_n_0 ),
        .I4(\q_reg[46]_0 ),
        .I5(\q_reg[34] ),
        .O(D[56]));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[67]_i_10 
       (.I0(w_RegWriteData_wb[22]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [28]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[94]),
        .O(\i_/q[67]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h015D08AB)) 
    \i_/q[67]_i_11 
       (.I0(\q_reg[57]_0 ),
        .I1(\q_reg[63]_0 ),
        .I2(\q_reg[63]_1 ),
        .I3(\q_reg[64] ),
        .I4(\q_reg[64]_0 ),
        .O(\q_reg[67]_2 ));
  LUT6 #(
    .INIT(64'h00000000FFB5004A)) 
    \i_/q[67]_i_12 
       (.I0(Q[136]),
        .I1(Q[139]),
        .I2(Q[137]),
        .I3(Q[138]),
        .I4(\q_reg[66]_0 ),
        .I5(\q_reg[66] ),
        .O(\i_/q[67]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB5004A)) 
    \i_/q[67]_i_13 
       (.I0(Q[136]),
        .I1(Q[139]),
        .I2(Q[137]),
        .I3(Q[138]),
        .I4(\q_reg[65]_0 ),
        .I5(\q_reg[65]_1 ),
        .O(\q_reg[67]_3 ));
  LUT5 #(
    .INIT(32'h13F7C4DF)) 
    \i_/q[67]_i_14 
       (.I0(\q_reg[63]_1 ),
        .I1(\q_reg[57]_0 ),
        .I2(\q_reg[63]_0 ),
        .I3(\q_reg[64] ),
        .I4(\q_reg[64]_0 ),
        .O(\q_reg[67]_4 ));
  LUT4 #(
    .INIT(16'h00D7)) 
    \i_/q[67]_i_15 
       (.I0(\q_reg[66] ),
        .I1(\q_reg[66]_0 ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[66]_2 ),
        .O(\i_/q[67]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF033FFAAF03300AA)) 
    \i_/q[67]_i_16 
       (.I0(\q_reg[116]_16 ),
        .I1(\q_reg[66]_1 ),
        .I2(\i_/q[68]_i_13_n_0 ),
        .I3(\q_reg[46] ),
        .I4(Q[136]),
        .I5(\q_reg[116]_17 ),
        .O(\i_/q[67]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hCF88CFBB)) 
    \i_/q[67]_i_18 
       (.I0(\q_reg[52]_0 ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[44]_0 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[60] ),
        .O(\q_reg[60]_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAAAA)) 
    \i_/q[67]_i_2 
       (.I0(Q[139]),
        .I1(Q[136]),
        .I2(\q_reg[67] ),
        .I3(\q_reg[67]_1 ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[67]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF69960000)) 
    \i_/q[67]_i_3 
       (.I0(\q_reg[67]_0 ),
        .I1(\q_reg[67]_1 ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[67] ),
        .I4(\q_reg[151] ),
        .I5(\i_/q[67]_i_7_n_0 ),
        .O(\i_/q[67]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[67]_i_5 
       (.I0(Q[25]),
        .I1(Q[135]),
        .I2(\i_/q[67]_i_10_n_0 ),
        .O(\q_reg[67] ));
  LUT6 #(
    .INIT(64'h000400070F0F0F0F)) 
    \i_/q[67]_i_6 
       (.I0(\q_reg[67]_2 ),
        .I1(\q_reg[63] ),
        .I2(\i_/q[67]_i_12_n_0 ),
        .I3(\q_reg[67]_3 ),
        .I4(\q_reg[67]_4 ),
        .I5(\i_/q[67]_i_15_n_0 ),
        .O(\q_reg[67]_0 ));
  LUT6 #(
    .INIT(64'h7C7C7C7070707C7C)) 
    \i_/q[67]_i_7 
       (.I0(\i_/q[67]_i_16_n_0 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(Q[136]),
        .I4(\q_reg[67]_1 ),
        .I5(\q_reg[67] ),
        .O(\i_/q[67]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \i_/q[67]_i_9 
       (.I0(\i_/q[69]_i_8_n_0 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[71]_1 ),
        .I3(\q_reg[73]_0 ),
        .I4(\q_reg[67] ),
        .I5(\q_reg[68] ),
        .O(\q_reg[66]_1 ));
  LUT6 #(
    .INIT(64'h11F111F1FFFF11F1)) 
    \i_/q[68]_i_1 
       (.I0(\i_/q[68]_i_2_n_0 ),
        .I1(Q[139]),
        .I2(\q_reg[45] ),
        .I3(\i_/q[69]_i_4_n_0 ),
        .I4(\q_reg[46]_0 ),
        .I5(\i_/q[68]_i_3_n_0 ),
        .O(D[57]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \i_/q[68]_i_10 
       (.I0(\q_reg[116]_16 ),
        .I1(\i_/q[69]_i_11_n_0 ),
        .I2(\i_/q[68]_i_13_n_0 ),
        .I3(Q[136]),
        .I4(\q_reg[46] ),
        .I5(\q_reg[116]_14 ),
        .O(\i_/q[68]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[68]_i_11 
       (.I0(w_RegWriteData_wb[23]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [29]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[95]),
        .O(\i_/q[68]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF1D0000FF1DFFFF)) 
    \i_/q[68]_i_13 
       (.I0(\q_reg[70] ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[74] ),
        .I3(\q_reg[68] ),
        .I4(\q_reg[73] ),
        .I5(\i_/q[68]_i_7_n_0 ),
        .O(\i_/q[68]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFC44FC77)) 
    \i_/q[68]_i_14 
       (.I0(\q_reg[53]_0 ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[45]_1 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[61]_0 ),
        .O(\q_reg[61]_3 ));
  LUT6 #(
    .INIT(64'h0F002222FFFF2222)) 
    \i_/q[68]_i_2 
       (.I0(\q_reg[27] ),
        .I1(\i_/q[68]_i_5_n_0 ),
        .I2(\q_reg[68]_0 ),
        .I3(Q[136]),
        .I4(\i_/q[60]_i_4_n_0 ),
        .I5(\q_reg[68]_1 ),
        .O(\i_/q[68]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F010B000FF1FBF)) 
    \i_/q[68]_i_3 
       (.I0(\q_reg[73]_0 ),
        .I1(\q_reg[70] ),
        .I2(\q_reg[73] ),
        .I3(\q_reg[74] ),
        .I4(\q_reg[68] ),
        .I5(\i_/q[68]_i_7_n_0 ),
        .O(\i_/q[68]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555CFF044440000)) 
    \i_/q[68]_i_5 
       (.I0(\i_/q[68]_i_10_n_0 ),
        .I1(Q[136]),
        .I2(\q_reg[68]_1 ),
        .I3(\q_reg[68]_0 ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[68]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[68]_i_6 
       (.I0(Q[26]),
        .I1(Q[135]),
        .I2(\i_/q[68]_i_11_n_0 ),
        .O(\q_reg[68]_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \i_/q[68]_i_7 
       (.I0(\q_reg[72]_0 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[68]_0 ),
        .I3(\q_reg[68] ),
        .O(\i_/q[68]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h56566555)) 
    \i_/q[68]_i_9 
       (.I0(\q_reg[68]_1 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(Q[139]),
        .I4(Q[136]),
        .O(\q_reg[68]_2 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \i_/q[69]_i_1 
       (.I0(\i_/q[69]_i_2_n_0 ),
        .I1(\i_/q[69]_i_3_n_0 ),
        .I2(\q_reg[46]_0 ),
        .I3(\i_/q[69]_i_4_n_0 ),
        .I4(\q_reg[45] ),
        .I5(\i_/q[70]_i_3_n_0 ),
        .O(D[58]));
  LUT6 #(
    .INIT(64'hF0CCFFAAF0CC00AA)) 
    \i_/q[69]_i_10 
       (.I0(\q_reg[116]_13 ),
        .I1(\i_/q[69]_i_11_n_0 ),
        .I2(\i_/q[70]_i_11_n_0 ),
        .I3(\q_reg[46] ),
        .I4(Q[136]),
        .I5(\q_reg[116]_14 ),
        .O(\i_/q[69]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0FFF5F5F3F3)) 
    \i_/q[69]_i_11 
       (.I0(\q_reg[73]_1 ),
        .I1(\q_reg[69]_1 ),
        .I2(\q_reg[68] ),
        .I3(\q_reg[71]_1 ),
        .I4(\q_reg[73]_0 ),
        .I5(\q_reg[73] ),
        .O(\i_/q[69]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFC44FC77)) 
    \i_/q[69]_i_13 
       (.I0(\q_reg[54]_0 ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[46]_3 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[62] ),
        .O(\q_reg[67]_5 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAAAA)) 
    \i_/q[69]_i_2 
       (.I0(Q[139]),
        .I1(Q[136]),
        .I2(\q_reg[69]_1 ),
        .I3(\q_reg[69]_0 ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[69]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96690000)) 
    \i_/q[69]_i_3 
       (.I0(\q_reg[69] ),
        .I1(\q_reg[69]_0 ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[69]_1 ),
        .I4(\q_reg[151] ),
        .I5(\i_/q[69]_i_7_n_0 ),
        .O(\i_/q[69]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F010B000FF1FBF)) 
    \i_/q[69]_i_4 
       (.I0(\q_reg[73]_0 ),
        .I1(\q_reg[71]_1 ),
        .I2(\q_reg[73] ),
        .I3(\q_reg[74] ),
        .I4(\q_reg[68] ),
        .I5(\i_/q[69]_i_8_n_0 ),
        .O(\i_/q[69]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[69]_i_5 
       (.I0(Q[27]),
        .I1(Q[135]),
        .I2(\i_/q[69]_i_9_n_0 ),
        .O(\q_reg[69]_1 ));
  LUT6 #(
    .INIT(64'h01077F1F7010F1F7)) 
    \i_/q[69]_i_6 
       (.I0(\q_reg[67]_0 ),
        .I1(\q_reg[67] ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[67]_1 ),
        .I4(\q_reg[68]_0 ),
        .I5(\q_reg[68]_1 ),
        .O(\q_reg[69] ));
  LUT6 #(
    .INIT(64'h7C7C7C7070707C7C)) 
    \i_/q[69]_i_7 
       (.I0(\i_/q[69]_i_10_n_0 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(Q[136]),
        .I4(\q_reg[69]_0 ),
        .I5(\q_reg[69]_1 ),
        .O(\i_/q[69]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \i_/q[69]_i_8 
       (.I0(\q_reg[73]_1 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[69]_1 ),
        .I3(\q_reg[68] ),
        .O(\i_/q[69]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[69]_i_9 
       (.I0(w_RegWriteData_wb[24]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [30]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[96]),
        .O(\i_/q[69]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F1FFFF11F1)) 
    \i_/q[70]_i_1 
       (.I0(\i_/q[70]_i_2_n_0 ),
        .I1(Q[139]),
        .I2(\q_reg[45] ),
        .I3(\i_/q[71]_i_4_n_0 ),
        .I4(\q_reg[46]_0 ),
        .I5(\i_/q[70]_i_3_n_0 ),
        .O(D[59]));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[70]_i_10 
       (.I0(w_RegWriteData_wb[25]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [31]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[97]),
        .O(\i_/q[70]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0FFF3F3F5F5)) 
    \i_/q[70]_i_11 
       (.I0(\q_reg[70] ),
        .I1(\q_reg[74] ),
        .I2(\q_reg[68] ),
        .I3(\q_reg[72]_0 ),
        .I4(\q_reg[73]_0 ),
        .I5(\q_reg[73] ),
        .O(\i_/q[70]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFCC4747)) 
    \i_/q[70]_i_13 
       (.I0(\q_reg[55]_3 ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[63]_1 ),
        .I3(\q_reg[47]_1 ),
        .I4(\q_reg[47] ),
        .O(\q_reg[63]_2 ));
  LUT6 #(
    .INIT(64'hFFFF22220F002222)) 
    \i_/q[70]_i_2 
       (.I0(\q_reg[151]_2 ),
        .I1(\i_/q[70]_i_5_n_0 ),
        .I2(\q_reg[70] ),
        .I3(Q[136]),
        .I4(\i_/q[60]_i_4_n_0 ),
        .I5(\q_reg[70]_0 ),
        .O(\i_/q[70]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0407F4F7)) 
    \i_/q[70]_i_3 
       (.I0(\q_reg[72]_0 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[73]_0 ),
        .I3(\q_reg[70] ),
        .I4(\q_reg[74] ),
        .I5(\q_reg[68] ),
        .O(\i_/q[70]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555F3C355000000)) 
    \i_/q[70]_i_5 
       (.I0(\i_/q[70]_i_9_n_0 ),
        .I1(\q_reg[70]_0 ),
        .I2(\q_reg[70] ),
        .I3(Q[136]),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[70]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[70]_i_6 
       (.I0(Q[28]),
        .I1(Q[135]),
        .I2(\i_/q[70]_i_10_n_0 ),
        .O(\q_reg[70] ));
  LUT6 #(
    .INIT(64'hF0CCFFAAF0CC00AA)) 
    \i_/q[70]_i_9 
       (.I0(\q_reg[116]_15 ),
        .I1(\i_/q[70]_i_11_n_0 ),
        .I2(\i_/q[71]_i_15_n_0 ),
        .I3(\q_reg[46] ),
        .I4(Q[136]),
        .I5(\q_reg[116]_13 ),
        .O(\i_/q[70]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \i_/q[71]_i_1 
       (.I0(\i_/q[71]_i_2_n_0 ),
        .I1(\i_/q[71]_i_3_n_0 ),
        .I2(\q_reg[45] ),
        .I3(\i_/q[72]_i_3_n_0 ),
        .I4(\q_reg[46]_0 ),
        .I5(\i_/q[71]_i_4_n_0 ),
        .O(D[60]));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \i_/q[71]_i_10 
       (.I0(\q_reg[116]_15 ),
        .I1(\q_reg[71]_2 ),
        .I2(\i_/q[71]_i_15_n_0 ),
        .I3(Q[136]),
        .I4(\q_reg[46] ),
        .I5(\q_reg[116]_20 ),
        .O(\i_/q[71]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h015D08AB)) 
    \i_/q[71]_i_11 
       (.I0(\q_reg[57]_0 ),
        .I1(\q_reg[67]_1 ),
        .I2(\q_reg[67] ),
        .I3(\q_reg[68]_0 ),
        .I4(\q_reg[68]_1 ),
        .O(\q_reg[71]_4 ));
  LUT5 #(
    .INIT(32'h13F7C4DF)) 
    \i_/q[71]_i_12 
       (.I0(\q_reg[67] ),
        .I1(\q_reg[57]_0 ),
        .I2(\q_reg[67]_1 ),
        .I3(\q_reg[68]_0 ),
        .I4(\q_reg[68]_1 ),
        .O(\i_/q[71]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF1FD)) 
    \i_/q[71]_i_14 
       (.I0(\q_reg[72]_0 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[73]_0 ),
        .I3(\q_reg[74] ),
        .I4(\q_reg[68] ),
        .O(\q_reg[71]_2 ));
  LUT5 #(
    .INIT(32'hFFFFDCDF)) 
    \i_/q[71]_i_15 
       (.I0(\q_reg[73]_1 ),
        .I1(\q_reg[73]_0 ),
        .I2(\q_reg[73] ),
        .I3(\q_reg[71]_1 ),
        .I4(\q_reg[68] ),
        .O(\i_/q[71]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \i_/q[71]_i_16 
       (.I0(\q_reg[56]_0 ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[48]_1 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[64] ),
        .O(\q_reg[65]_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAAAA)) 
    \i_/q[71]_i_2 
       (.I0(Q[139]),
        .I1(Q[136]),
        .I2(\q_reg[71]_1 ),
        .I3(\q_reg[71]_0 ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[71]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96690000)) 
    \i_/q[71]_i_3 
       (.I0(\q_reg[71] ),
        .I1(\q_reg[71]_0 ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[71]_1 ),
        .I4(\q_reg[151] ),
        .I5(\i_/q[71]_i_7_n_0 ),
        .O(\i_/q[71]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F440F77)) 
    \i_/q[71]_i_4 
       (.I0(\q_reg[73]_1 ),
        .I1(\q_reg[73] ),
        .I2(\q_reg[74] ),
        .I3(\q_reg[73]_0 ),
        .I4(\q_reg[71]_1 ),
        .I5(\q_reg[68] ),
        .O(\i_/q[71]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \i_/q[71]_i_5 
       (.I0(\q_reg[29] ),
        .I1(\q_reg[67]_0 ),
        .I2(\i_/q[71]_i_9_n_0 ),
        .O(\q_reg[71] ));
  LUT4 #(
    .INIT(16'hFFB5)) 
    \i_/q[71]_i_6 
       (.I0(Q[136]),
        .I1(Q[139]),
        .I2(Q[137]),
        .I3(Q[138]),
        .O(\q_reg[57]_0 ));
  LUT6 #(
    .INIT(64'h7C7C7C7070707C7C)) 
    \i_/q[71]_i_7 
       (.I0(\i_/q[71]_i_10_n_0 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(Q[136]),
        .I4(\q_reg[71]_0 ),
        .I5(\q_reg[71]_1 ),
        .O(\i_/q[71]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2FBFF8FE080E20B0)) 
    \i_/q[71]_i_9 
       (.I0(\q_reg[69]_1 ),
        .I1(\q_reg[69]_0 ),
        .I2(\q_reg[57]_0 ),
        .I3(\i_/q[71]_i_12_n_0 ),
        .I4(\q_reg[70]_0 ),
        .I5(\q_reg[70] ),
        .O(\i_/q[71]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF111F111FFFFF111)) 
    \i_/q[72]_i_1 
       (.I0(\q_reg[72] ),
        .I1(Q[139]),
        .I2(\i_/q[73]_i_4_n_0 ),
        .I3(\q_reg[45] ),
        .I4(\q_reg[46]_0 ),
        .I5(\i_/q[72]_i_3_n_0 ),
        .O(D[61]));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \i_/q[72]_i_12 
       (.I0(\q_reg[58]_0 ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[50]_2 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[66] ),
        .O(\q_reg[70]_1 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \i_/q[72]_i_13 
       (.I0(\q_reg[57]_2 ),
        .I1(\q_reg[46]_2 ),
        .I2(\q_reg[50] ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[65]_1 ),
        .O(\q_reg[71]_3 ));
  LUT6 #(
    .INIT(64'hFFFF22220F002222)) 
    \i_/q[72]_i_2 
       (.I0(\q_reg[31] ),
        .I1(\i_/q[72]_i_5_n_0 ),
        .I2(\q_reg[72]_0 ),
        .I3(Q[136]),
        .I4(\i_/q[60]_i_4_n_0 ),
        .I5(\q_reg[72]_1 ),
        .O(\q_reg[72] ));
  LUT5 #(
    .INIT(32'h33333237)) 
    \i_/q[72]_i_3 
       (.I0(\q_reg[73] ),
        .I1(\q_reg[74] ),
        .I2(\q_reg[73]_0 ),
        .I3(\q_reg[72]_0 ),
        .I4(\q_reg[68] ),
        .O(\i_/q[72]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555CFC355000000)) 
    \i_/q[72]_i_5 
       (.I0(\i_/q[72]_i_8_n_0 ),
        .I1(\q_reg[72]_0 ),
        .I2(\q_reg[72]_1 ),
        .I3(Q[136]),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[72]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0D0D000D)) 
    \i_/q[72]_i_8 
       (.I0(\q_reg[149] ),
        .I1(\q_reg[116]_18 ),
        .I2(\q_reg[33] ),
        .I3(\q_reg[46]_1 ),
        .I4(\q_reg[116]_20 ),
        .O(\i_/q[72]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF111F111F111)) 
    \i_/q[73]_i_1 
       (.I0(\i_/q[73]_i_2_n_0 ),
        .I1(Q[139]),
        .I2(\q_reg[45] ),
        .I3(\q_reg[74] ),
        .I4(\i_/q[73]_i_4_n_0 ),
        .I5(\q_reg[46]_0 ),
        .O(D[62]));
  LUT2 #(
    .INIT(4'hE)) 
    \i_/q[73]_i_10 
       (.I0(\q_reg[47] ),
        .I1(\q_reg[46]_2 ),
        .O(\q_reg[68] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF20000)) 
    \i_/q[73]_i_11 
       (.I0(Q[39]),
        .I1(\i_/q[73]_i_15_n_0 ),
        .I2(\i_/q[73]_i_20_n_0 ),
        .I3(\i_/q[73]_i_21_n_0 ),
        .I4(\i_/q[73]_i_18_n_0 ),
        .I5(\i_/q[73]_i_22_n_0 ),
        .O(\q_reg[73] ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \i_/q[73]_i_12 
       (.I0(\i_/q[43]_i_19_n_0 ),
        .I1(\q_reg[29] ),
        .I2(\q_reg[67]_0 ),
        .I3(\i_/q[71]_i_9_n_0 ),
        .I4(\i_/q[43]_i_22_n_0 ),
        .O(\i_/q[73]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5555CFF044440000)) 
    \i_/q[73]_i_13 
       (.I0(\i_/q[73]_i_23_n_0 ),
        .I1(Q[136]),
        .I2(\q_reg[73]_2 ),
        .I3(\q_reg[73]_1 ),
        .I4(Q[137]),
        .I5(Q[138]),
        .O(\i_/q[73]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[73]_i_14 
       (.I0(w_RegWriteData_wb[28]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [34]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[100]),
        .O(\i_/q[73]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0100010101FF0101)) 
    \i_/q[73]_i_15 
       (.I0(\i_/q[42]_i_9_n_0 ),
        .I1(\i_/q[42]_i_7_n_0 ),
        .I2(\i_/q[42]_i_6_n_0 ),
        .I3(\i_/q[42]_i_8_n_0 ),
        .I4(\i_/q[42]_i_5_n_0 ),
        .I5(\i_/q[42]_i_4_n_0 ),
        .O(\i_/q[73]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \i_/q[73]_i_16 
       (.I0(\q_reg[74]_8 [4]),
        .I1(\i_/q[42]_i_8_n_0 ),
        .I2(\i_/q[42]_i_5_n_0 ),
        .I3(\i_/q[42]_i_4_n_0 ),
        .O(\i_/q[73]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002202)) 
    \i_/q[73]_i_17 
       (.I0(\q_reg[39] ),
        .I1(\i_/q[42]_i_9_n_0 ),
        .I2(\i_/q[42]_i_5_n_0 ),
        .I3(\i_/q[42]_i_8_n_0 ),
        .I4(\i_/q[42]_i_7_n_0 ),
        .I5(\i_/q[42]_i_6_n_0 ),
        .O(\i_/q[73]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i_/q[73]_i_18 
       (.I0(Q[135]),
        .I1(Q[134]),
        .O(\i_/q[73]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i_/q[73]_i_19 
       (.I0(Q[134]),
        .I1(Q[102]),
        .O(\i_/q[73]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAA30AAAAAAFFAAAA)) 
    \i_/q[73]_i_2 
       (.I0(\i_/q[73]_i_6_n_0 ),
        .I1(\q_reg[73]_1 ),
        .I2(Q[136]),
        .I3(Q[138]),
        .I4(Q[137]),
        .I5(\q_reg[73]_2 ),
        .O(\i_/q[73]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \i_/q[73]_i_20 
       (.I0(\q_reg[74]_8 [5]),
        .I1(\i_/q[42]_i_8_n_0 ),
        .I2(\i_/q[42]_i_5_n_0 ),
        .I3(\i_/q[42]_i_4_n_0 ),
        .O(\i_/q[73]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002202)) 
    \i_/q[73]_i_21 
       (.I0(\q_reg[40] ),
        .I1(\i_/q[42]_i_9_n_0 ),
        .I2(\i_/q[42]_i_5_n_0 ),
        .I3(\i_/q[42]_i_8_n_0 ),
        .I4(\i_/q[42]_i_7_n_0 ),
        .I5(\i_/q[42]_i_6_n_0 ),
        .O(\i_/q[73]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i_/q[73]_i_22 
       (.I0(Q[134]),
        .I1(Q[103]),
        .O(\i_/q[73]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h0D0D000D)) 
    \i_/q[73]_i_23 
       (.I0(\q_reg[46]_1 ),
        .I1(\q_reg[116]_18 ),
        .I2(\i_/q[73]_i_24_n_0 ),
        .I3(\q_reg[149] ),
        .I4(\q_reg[116]_19 ),
        .O(\i_/q[73]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00F8008800000000)) 
    \i_/q[73]_i_24 
       (.I0(\q_reg[146]_0 ),
        .I1(\q_reg[74] ),
        .I2(\q_reg[45]_0 ),
        .I3(\q_reg[68] ),
        .I4(\q_reg[73]_1 ),
        .I5(\q_reg[44]_1 ),
        .O(\i_/q[73]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \i_/q[73]_i_3 
       (.I0(\q_reg[46] ),
        .I1(Q[139]),
        .I2(Q[137]),
        .I3(Q[136]),
        .O(\q_reg[45] ));
  LUT5 #(
    .INIT(32'hFFFE0004)) 
    \i_/q[73]_i_4 
       (.I0(\q_reg[73]_0 ),
        .I1(\q_reg[73]_1 ),
        .I2(\q_reg[68] ),
        .I3(\q_reg[73] ),
        .I4(\q_reg[74] ),
        .O(\i_/q[73]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \i_/q[73]_i_5 
       (.I0(\q_reg[46] ),
        .I1(Q[139]),
        .I2(Q[137]),
        .I3(Q[136]),
        .O(\q_reg[46]_0 ));
  LUT6 #(
    .INIT(64'h00000000D77D7DD7)) 
    \i_/q[73]_i_6 
       (.I0(\q_reg[151] ),
        .I1(\q_reg[73]_2 ),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[73]_1 ),
        .I4(\i_/q[73]_i_12_n_0 ),
        .I5(\i_/q[73]_i_13_n_0 ),
        .O(\i_/q[73]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[73]_i_7 
       (.I0(Q[31]),
        .I1(Q[135]),
        .I2(\i_/q[73]_i_14_n_0 ),
        .O(\q_reg[73]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF20000)) 
    \i_/q[73]_i_8 
       (.I0(Q[38]),
        .I1(\i_/q[73]_i_15_n_0 ),
        .I2(\i_/q[73]_i_16_n_0 ),
        .I3(\i_/q[73]_i_17_n_0 ),
        .I4(\i_/q[73]_i_18_n_0 ),
        .I5(\i_/q[73]_i_19_n_0 ),
        .O(\q_reg[46] ));
  LUT4 #(
    .INIT(16'hAAFC)) 
    \i_/q[73]_i_9 
       (.I0(Q[104]),
        .I1(D[2]),
        .I2(Q[135]),
        .I3(Q[134]),
        .O(\q_reg[73]_0 ));
  LUT5 #(
    .INIT(32'h03550055)) 
    \i_/q[74]_i_1 
       (.I0(\i_/q[74]_i_2_n_0 ),
        .I1(Q[136]),
        .I2(Q[137]),
        .I3(Q[139]),
        .I4(\q_reg[74] ),
        .O(D[63]));
  LUT6 #(
    .INIT(64'h7DFFFFFFFFFFFF7F)) 
    \i_/q[74]_i_10 
       (.I0(\q_reg[74]_8 [3]),
        .I1(\q_reg[74]_8 [0]),
        .I2(Q[36]),
        .I3(\q_reg[74]_8 [2]),
        .I4(Q[37]),
        .I5(\q_reg[74]_8 [1]),
        .O(\i_/q[74]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF90000009)) 
    \i_/q[74]_i_11 
       (.I0(\q_reg[74]_8 [0]),
        .I1(Q[36]),
        .I2(\q_reg[74]_8 [2]),
        .I3(Q[37]),
        .I4(\q_reg[74]_8 [1]),
        .I5(\i_/q[74]_i_18_n_0 ),
        .O(\i_/q[74]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h56566555)) 
    \i_/q[74]_i_12 
       (.I0(\q_reg[73]_2 ),
        .I1(Q[138]),
        .I2(Q[137]),
        .I3(Q[139]),
        .I4(Q[136]),
        .O(\i_/q[74]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAA330F00AA330FFF)) 
    \i_/q[74]_i_15 
       (.I0(\q_reg[46]_3 ),
        .I1(\q_reg[62] ),
        .I2(\q_reg[54]_0 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[70] ),
        .O(\q_reg[74]_4 ));
  LUT6 #(
    .INIT(64'h5500330F55FF330F)) 
    \i_/q[74]_i_16 
       (.I0(\q_reg[50]_2 ),
        .I1(\q_reg[66] ),
        .I2(\q_reg[74] ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[47] ),
        .I5(\q_reg[58]_0 ),
        .O(\q_reg[74]_7 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \i_/q[74]_i_17 
       (.I0(\q_reg[74]_2 ),
        .I1(\q_reg[73]_0 ),
        .I2(\i_/q[74]_i_24_n_0 ),
        .O(\q_reg[74]_1 ));
  LUT6 #(
    .INIT(64'h7DFFFFFFFFFFFF7F)) 
    \i_/q[74]_i_18 
       (.I0(\q_reg[54]_5 [4]),
        .I1(\q_reg[54]_5 [0]),
        .I2(Q[36]),
        .I3(\q_reg[54]_5 [2]),
        .I4(Q[37]),
        .I5(\q_reg[54]_5 [1]),
        .O(\i_/q[74]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAA330F00AA330FFF)) 
    \i_/q[74]_i_19 
       (.I0(\q_reg[44] ),
        .I1(\q_reg[59] ),
        .I2(\q_reg[51]_0 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[67] ),
        .O(\q_reg[74]_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAAAA30AAAA)) 
    \i_/q[74]_i_2 
       (.I0(\i_/q[74]_i_4_n_0 ),
        .I1(\q_reg[74] ),
        .I2(Q[136]),
        .I3(Q[138]),
        .I4(Q[137]),
        .I5(\q_reg[43]_1 ),
        .O(\i_/q[74]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCC00550FCCFF550F)) 
    \i_/q[74]_i_20 
       (.I0(\q_reg[63]_1 ),
        .I1(\q_reg[47]_1 ),
        .I2(\q_reg[71]_1 ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[47] ),
        .I5(\q_reg[55]_3 ),
        .O(\q_reg[74]_5 ));
  LUT6 #(
    .INIT(64'h55330F0055330FFF)) 
    \i_/q[74]_i_21 
       (.I0(\q_reg[50] ),
        .I1(\q_reg[65]_1 ),
        .I2(\q_reg[57]_2 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[73]_1 ),
        .O(\q_reg[74]_6 ));
  LUT6 #(
    .INIT(64'hAA330F00AA330FFF)) 
    \i_/q[74]_i_22 
       (.I0(\q_reg[45]_1 ),
        .I1(\q_reg[61]_0 ),
        .I2(\q_reg[53]_0 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[69]_1 ),
        .O(\q_reg[74]_3 ));
  LUT6 #(
    .INIT(64'h5533F0005533F0FF)) 
    \i_/q[74]_i_23 
       (.I0(\q_reg[44]_0 ),
        .I1(\q_reg[60] ),
        .I2(\q_reg[52]_0 ),
        .I3(\q_reg[47] ),
        .I4(\q_reg[46]_2 ),
        .I5(\q_reg[68]_0 ),
        .O(\q_reg[74]_2 ));
  LUT6 #(
    .INIT(64'h5500330F55FF330F)) 
    \i_/q[74]_i_24 
       (.I0(\q_reg[48]_1 ),
        .I1(\q_reg[64] ),
        .I2(\q_reg[72]_0 ),
        .I3(\q_reg[46]_2 ),
        .I4(\q_reg[47] ),
        .I5(\q_reg[56]_0 ),
        .O(\i_/q[74]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \i_/q[74]_i_3 
       (.I0(Q[32]),
        .I1(Q[135]),
        .I2(\i_/q[74]_i_5_n_0 ),
        .O(\q_reg[74] ));
  LUT6 #(
    .INIT(64'h2023232320232023)) 
    \i_/q[74]_i_4 
       (.I0(\i_/q[74]_i_6_n_0 ),
        .I1(\q_reg[151]_3 ),
        .I2(\q_reg[151] ),
        .I3(Q[137]),
        .I4(\i_/q[74]_i_8_n_0 ),
        .I5(\q_reg[116]_12 ),
        .O(\i_/q[74]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0003110133031101)) 
    \i_/q[74]_i_5 
       (.I0(w_RegWriteData_wb[29]),
        .I1(Q[135]),
        .I2(\q_reg[74]_8 [35]),
        .I3(\i_/q[74]_i_10_n_0 ),
        .I4(\i_/q[74]_i_11_n_0 ),
        .I5(Q[101]),
        .O(\i_/q[74]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBB222B2444DDD4D)) 
    \i_/q[74]_i_6 
       (.I0(\i_/q[74]_i_12_n_0 ),
        .I1(\q_reg[73]_1 ),
        .I2(\i_/q[43]_i_22_n_0 ),
        .I3(\i_/q[43]_i_11_n_0 ),
        .I4(\i_/q[43]_i_19_n_0 ),
        .I5(\q_reg[151]_4 ),
        .O(\i_/q[74]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \i_/q[74]_i_8 
       (.I0(\q_reg[116]_19 ),
        .I1(\q_reg[46]_1 ),
        .I2(\q_reg[45]_0 ),
        .I3(\q_reg[68] ),
        .I4(\q_reg[74] ),
        .I5(\q_reg[44]_1 ),
        .O(\i_/q[74]_i_8_n_0 ));
endmodule

module ID
   (\q_reg[114] ,
    Q,
    \q_reg[145] ,
    \mepc_reg[31] ,
    \mtvec_reg[31] ,
    \q_reg[115] ,
    \q_reg[116] ,
    D,
    \q_reg[120] ,
    \q_reg[122] ,
    \q_reg[123] ,
    \q_reg[3] ,
    \q_reg[3]_0 ,
    \q_reg[21] ,
    SR,
    E,
    \mtvec_reg[31]_0 ,
    cpu_clk_BUFG,
    \q_reg[20] ,
    \q_reg[63] ,
    \q_reg[21]_0 ,
    \mcause_reg[31] ,
    \q_reg[3]_1 ,
    \mstatus_reg[31] );
  output \q_reg[114] ;
  output [31:0]Q;
  output [31:0]\q_reg[145] ;
  output [31:0]\mepc_reg[31] ;
  output [31:0]\mtvec_reg[31] ;
  output \q_reg[115] ;
  output \q_reg[116] ;
  output [25:0]D;
  output \q_reg[120] ;
  output \q_reg[122] ;
  output \q_reg[123] ;
  input \q_reg[3] ;
  input \q_reg[3]_0 ;
  input \q_reg[21] ;
  input [0:0]SR;
  input [0:0]E;
  input [31:0]\mtvec_reg[31]_0 ;
  input cpu_clk_BUFG;
  input [0:0]\q_reg[20] ;
  input [31:0]\q_reg[63] ;
  input [0:0]\q_reg[21]_0 ;
  input [31:0]\mcause_reg[31] ;
  input [0:0]\q_reg[3]_1 ;
  input [31:0]\mstatus_reg[31] ;

  wire [25:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire cpu_clk_BUFG;
  wire [31:0]\mcause_reg[31] ;
  wire [31:0]\mepc_reg[31] ;
  wire [31:0]\mstatus_reg[31] ;
  wire [31:0]\mtvec_reg[31] ;
  wire [31:0]\mtvec_reg[31]_0 ;
  wire \q_reg[114] ;
  wire \q_reg[115] ;
  wire \q_reg[116] ;
  wire \q_reg[120] ;
  wire \q_reg[122] ;
  wire \q_reg[123] ;
  wire [31:0]\q_reg[145] ;
  wire [0:0]\q_reg[20] ;
  wire \q_reg[21] ;
  wire [0:0]\q_reg[21]_0 ;
  wire \q_reg[3] ;
  wire \q_reg[3]_0 ;
  wire [0:0]\q_reg[3]_1 ;
  wire [31:0]\q_reg[63] ;

  CSR u_CSR
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .cpu_clk_BUFG(cpu_clk_BUFG),
        .\mcause_reg[31]_0 (\mcause_reg[31] ),
        .\mepc_reg[31]_0 (\mepc_reg[31] ),
        .\mstatus_reg[31]_0 (\mstatus_reg[31] ),
        .\mtvec_reg[31]_0 (\mtvec_reg[31] ),
        .\mtvec_reg[31]_1 (\mtvec_reg[31]_0 ),
        .\q_reg[114] (\q_reg[114] ),
        .\q_reg[115] (\q_reg[115] ),
        .\q_reg[116] (\q_reg[116] ),
        .\q_reg[120] (\q_reg[120] ),
        .\q_reg[122] (\q_reg[122] ),
        .\q_reg[123] (\q_reg[123] ),
        .\q_reg[145] (\q_reg[145] ),
        .\q_reg[20] (\q_reg[20] ),
        .\q_reg[21] (\q_reg[21] ),
        .\q_reg[21]_0 (\q_reg[21]_0 ),
        .\q_reg[3] (\q_reg[3] ),
        .\q_reg[3]_0 (\q_reg[3]_0 ),
        .\q_reg[3]_1 (\q_reg[3]_1 ),
        .\q_reg[63] (\q_reg[63] ));
endmodule

module IF1
   (\q_reg[63] ,
    \TMDSn[2] ,
    PC_plus_4,
    D,
    w_IF_flush,
    w_JumpAddr,
    \PosX_reg_reg[4] ,
    Stall,
    \PosX_reg_reg[5] ,
    SR,
    E,
    cpu_clk_BUFG);
  output [47:0]\q_reg[63] ;
  output \TMDSn[2] ;
  output [7:0]PC_plus_4;
  input [10:0]D;
  input w_IF_flush;
  input [20:0]w_JumpAddr;
  input \PosX_reg_reg[4] ;
  input Stall;
  input \PosX_reg_reg[5] ;
  input [0:0]SR;
  input [0:0]E;
  input cpu_clk_BUFG;

  wire [10:0]D;
  wire [0:0]E;
  wire [30:3]Next_PC;
  wire [7:0]PC_plus_4;
  wire \PosX_reg_reg[4] ;
  wire \PosX_reg_reg[5] ;
  wire [0:0]SR;
  wire Stall;
  wire \TMDSn[2] ;
  wire cpu_clk_BUFG;
  wire [47:0]\q_reg[63] ;
  wire \u_adder_pc/c2__0 ;
  wire \u_adder_pc/c3__0 ;
  wire \u_adder_pc/c4__0 ;
  wire \u_adder_pc/c5__0 ;
  wire \u_adder_pc/c6__0 ;
  wire \u_adder_pc/c7__0 ;
  wire w_IF_flush;
  wire [20:0]w_JumpAddr;

  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \PC_reg[10]_i_1 
       (.I0(w_JumpAddr[5]),
        .I1(w_IF_flush),
        .I2(\u_adder_pc/c2__0 ),
        .I3(\q_reg[63] [25]),
        .I4(\q_reg[63] [24]),
        .I5(\q_reg[63] [26]),
        .O(Next_PC[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \PC_reg[10]_i_3 
       (.I0(\q_reg[63] [20]),
        .I1(\q_reg[63] [22]),
        .I2(\q_reg[63] [21]),
        .I3(\q_reg[63] [23]),
        .I4(\q_reg[63] [18]),
        .I5(\q_reg[63] [19]),
        .O(\u_adder_pc/c2__0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PC_reg[11]_i_2 
       (.I0(\u_adder_pc/c2__0 ),
        .I1(\q_reg[63] [26]),
        .I2(\q_reg[63] [24]),
        .I3(\q_reg[63] [25]),
        .I4(\q_reg[63] [27]),
        .O(PC_plus_4[2]));
  LUT4 #(
    .INIT(16'hF606)) 
    \PC_reg[12]_i_1 
       (.I0(\q_reg[63] [28]),
        .I1(\u_adder_pc/c3__0 ),
        .I2(w_IF_flush),
        .I3(w_JumpAddr[6]),
        .O(Next_PC[12]));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \PC_reg[13]_i_1 
       (.I0(w_JumpAddr[7]),
        .I1(w_IF_flush),
        .I2(\q_reg[63] [28]),
        .I3(\u_adder_pc/c3__0 ),
        .I4(\q_reg[63] [29]),
        .O(Next_PC[13]));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \PC_reg[14]_i_1 
       (.I0(w_JumpAddr[8]),
        .I1(w_IF_flush),
        .I2(\u_adder_pc/c3__0 ),
        .I3(\q_reg[63] [29]),
        .I4(\q_reg[63] [28]),
        .I5(\q_reg[63] [30]),
        .O(Next_PC[14]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \PC_reg[14]_i_3 
       (.I0(\q_reg[63] [25]),
        .I1(\q_reg[63] [26]),
        .I2(\q_reg[63] [27]),
        .I3(\q_reg[63] [24]),
        .I4(\u_adder_pc/c2__0 ),
        .O(\u_adder_pc/c3__0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PC_reg[15]_i_2 
       (.I0(\u_adder_pc/c3__0 ),
        .I1(\q_reg[63] [30]),
        .I2(\q_reg[63] [28]),
        .I3(\q_reg[63] [29]),
        .I4(\q_reg[63] [31]),
        .O(PC_plus_4[3]));
  LUT4 #(
    .INIT(16'hF606)) 
    \PC_reg[16]_i_1 
       (.I0(\q_reg[63] [32]),
        .I1(\u_adder_pc/c4__0 ),
        .I2(w_IF_flush),
        .I3(w_JumpAddr[9]),
        .O(Next_PC[16]));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \PC_reg[17]_i_1 
       (.I0(w_JumpAddr[10]),
        .I1(w_IF_flush),
        .I2(\q_reg[63] [32]),
        .I3(\u_adder_pc/c4__0 ),
        .I4(\q_reg[63] [33]),
        .O(Next_PC[17]));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \PC_reg[18]_i_1 
       (.I0(w_JumpAddr[11]),
        .I1(w_IF_flush),
        .I2(\u_adder_pc/c4__0 ),
        .I3(\q_reg[63] [33]),
        .I4(\q_reg[63] [32]),
        .I5(\q_reg[63] [34]),
        .O(Next_PC[18]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \PC_reg[18]_i_3 
       (.I0(\q_reg[63] [29]),
        .I1(\q_reg[63] [30]),
        .I2(\q_reg[63] [31]),
        .I3(\q_reg[63] [28]),
        .I4(\u_adder_pc/c3__0 ),
        .O(\u_adder_pc/c4__0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PC_reg[19]_i_2 
       (.I0(\u_adder_pc/c4__0 ),
        .I1(\q_reg[63] [34]),
        .I2(\q_reg[63] [32]),
        .I3(\q_reg[63] [33]),
        .I4(\q_reg[63] [35]),
        .O(PC_plus_4[4]));
  LUT4 #(
    .INIT(16'hF606)) 
    \PC_reg[20]_i_1 
       (.I0(\q_reg[63] [36]),
        .I1(\u_adder_pc/c5__0 ),
        .I2(w_IF_flush),
        .I3(w_JumpAddr[12]),
        .O(Next_PC[20]));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \PC_reg[21]_i_1 
       (.I0(w_JumpAddr[13]),
        .I1(w_IF_flush),
        .I2(\q_reg[63] [36]),
        .I3(\u_adder_pc/c5__0 ),
        .I4(\q_reg[63] [37]),
        .O(Next_PC[21]));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \PC_reg[22]_i_1 
       (.I0(w_JumpAddr[14]),
        .I1(w_IF_flush),
        .I2(\u_adder_pc/c5__0 ),
        .I3(\q_reg[63] [37]),
        .I4(\q_reg[63] [36]),
        .I5(\q_reg[63] [38]),
        .O(Next_PC[22]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \PC_reg[22]_i_3 
       (.I0(\q_reg[63] [33]),
        .I1(\q_reg[63] [34]),
        .I2(\q_reg[63] [35]),
        .I3(\q_reg[63] [32]),
        .I4(\u_adder_pc/c4__0 ),
        .O(\u_adder_pc/c5__0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PC_reg[23]_i_2 
       (.I0(\u_adder_pc/c5__0 ),
        .I1(\q_reg[63] [38]),
        .I2(\q_reg[63] [36]),
        .I3(\q_reg[63] [37]),
        .I4(\q_reg[63] [39]),
        .O(PC_plus_4[5]));
  LUT4 #(
    .INIT(16'hF606)) 
    \PC_reg[24]_i_1 
       (.I0(\q_reg[63] [40]),
        .I1(\u_adder_pc/c6__0 ),
        .I2(w_IF_flush),
        .I3(w_JumpAddr[15]),
        .O(Next_PC[24]));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \PC_reg[25]_i_1 
       (.I0(w_JumpAddr[16]),
        .I1(w_IF_flush),
        .I2(\q_reg[63] [40]),
        .I3(\u_adder_pc/c6__0 ),
        .I4(\q_reg[63] [41]),
        .O(Next_PC[25]));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \PC_reg[26]_i_1 
       (.I0(w_JumpAddr[17]),
        .I1(w_IF_flush),
        .I2(\u_adder_pc/c6__0 ),
        .I3(\q_reg[63] [41]),
        .I4(\q_reg[63] [40]),
        .I5(\q_reg[63] [42]),
        .O(Next_PC[26]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \PC_reg[26]_i_3 
       (.I0(\q_reg[63] [37]),
        .I1(\q_reg[63] [38]),
        .I2(\q_reg[63] [39]),
        .I3(\q_reg[63] [36]),
        .I4(\u_adder_pc/c5__0 ),
        .O(\u_adder_pc/c6__0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PC_reg[27]_i_2 
       (.I0(\u_adder_pc/c6__0 ),
        .I1(\q_reg[63] [42]),
        .I2(\q_reg[63] [40]),
        .I3(\q_reg[63] [41]),
        .I4(\q_reg[63] [43]),
        .O(PC_plus_4[6]));
  LUT4 #(
    .INIT(16'hF606)) 
    \PC_reg[28]_i_1 
       (.I0(\q_reg[63] [44]),
        .I1(\u_adder_pc/c7__0 ),
        .I2(w_IF_flush),
        .I3(w_JumpAddr[18]),
        .O(Next_PC[28]));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \PC_reg[29]_i_1 
       (.I0(w_JumpAddr[19]),
        .I1(w_IF_flush),
        .I2(\q_reg[63] [44]),
        .I3(\u_adder_pc/c7__0 ),
        .I4(\q_reg[63] [45]),
        .O(Next_PC[29]));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \PC_reg[30]_i_1 
       (.I0(w_JumpAddr[20]),
        .I1(w_IF_flush),
        .I2(\q_reg[63] [45]),
        .I3(\q_reg[63] [44]),
        .I4(\u_adder_pc/c7__0 ),
        .I5(\q_reg[63] [46]),
        .O(Next_PC[30]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \PC_reg[30]_i_3 
       (.I0(\q_reg[63] [41]),
        .I1(\q_reg[63] [42]),
        .I2(\q_reg[63] [43]),
        .I3(\q_reg[63] [40]),
        .I4(\u_adder_pc/c6__0 ),
        .O(\u_adder_pc/c7__0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PC_reg[31]_i_5 
       (.I0(\q_reg[63] [46]),
        .I1(\q_reg[63] [44]),
        .I2(\q_reg[63] [45]),
        .I3(\u_adder_pc/c7__0 ),
        .I4(\q_reg[63] [47]),
        .O(PC_plus_4[7]));
  LUT4 #(
    .INIT(16'hF606)) 
    \PC_reg[3]_i_1 
       (.I0(\q_reg[63] [18]),
        .I1(\q_reg[63] [19]),
        .I2(w_IF_flush),
        .I3(w_JumpAddr[0]),
        .O(Next_PC[3]));
  LUT5 #(
    .INIT(32'hFF6A006A)) 
    \PC_reg[4]_i_1 
       (.I0(\q_reg[63] [20]),
        .I1(\q_reg[63] [18]),
        .I2(\q_reg[63] [19]),
        .I3(w_IF_flush),
        .I4(w_JumpAddr[1]),
        .O(Next_PC[4]));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \PC_reg[5]_i_1 
       (.I0(w_JumpAddr[2]),
        .I1(w_IF_flush),
        .I2(\q_reg[63] [20]),
        .I3(\q_reg[63] [19]),
        .I4(\q_reg[63] [18]),
        .I5(\q_reg[63] [21]),
        .O(Next_PC[5]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PC_reg[6]_i_2 
       (.I0(\q_reg[63] [19]),
        .I1(\q_reg[63] [18]),
        .I2(\q_reg[63] [21]),
        .I3(\q_reg[63] [20]),
        .I4(\q_reg[63] [22]),
        .O(PC_plus_4[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \PC_reg[7]_i_2 
       (.I0(\q_reg[63] [19]),
        .I1(\q_reg[63] [18]),
        .I2(\q_reg[63] [22]),
        .I3(\q_reg[63] [20]),
        .I4(\q_reg[63] [21]),
        .I5(\q_reg[63] [23]),
        .O(PC_plus_4[1]));
  LUT4 #(
    .INIT(16'hF606)) 
    \PC_reg[8]_i_1 
       (.I0(\q_reg[63] [24]),
        .I1(\u_adder_pc/c2__0 ),
        .I2(w_IF_flush),
        .I3(w_JumpAddr[3]),
        .O(Next_PC[8]));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \PC_reg[9]_i_1 
       (.I0(w_JumpAddr[4]),
        .I1(w_IF_flush),
        .I2(\q_reg[63] [24]),
        .I3(\u_adder_pc/c2__0 ),
        .I4(\q_reg[63] [25]),
        .O(Next_PC[9]));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[0] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(\q_reg[63] [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[10] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[10]),
        .Q(\q_reg[63] [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[11] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(\q_reg[63] [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[12] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[12]),
        .Q(\q_reg[63] [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[13] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[13]),
        .Q(\q_reg[63] [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[14] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[14]),
        .Q(\q_reg[63] [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[15] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(\q_reg[63] [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[16] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[16]),
        .Q(\q_reg[63] [32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[17] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[17]),
        .Q(\q_reg[63] [33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[18] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[18]),
        .Q(\q_reg[63] [34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[19] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(\q_reg[63] [35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[1] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(\q_reg[63] [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[20] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[20]),
        .Q(\q_reg[63] [36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[21] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[21]),
        .Q(\q_reg[63] [37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[22] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[22]),
        .Q(\q_reg[63] [38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[23] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(D[8]),
        .Q(\q_reg[63] [39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[24] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[24]),
        .Q(\q_reg[63] [40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[25] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[25]),
        .Q(\q_reg[63] [41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[26] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[26]),
        .Q(\q_reg[63] [42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[27] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(D[9]),
        .Q(\q_reg[63] [43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[28] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[28]),
        .Q(\q_reg[63] [44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[29] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[29]),
        .Q(\q_reg[63] [45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[2] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(\q_reg[63] [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[30] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[30]),
        .Q(\q_reg[63] [46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[31] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(D[10]),
        .Q(\q_reg[63] [47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[3] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[3]),
        .Q(\q_reg[63] [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[4] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[4]),
        .Q(\q_reg[63] [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[5] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[5]),
        .Q(\q_reg[63] [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[6] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(\q_reg[63] [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[7] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(\q_reg[63] [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[8] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[8]),
        .Q(\q_reg[63] [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg_reg[9] 
       (.C(cpu_clk_BUFG),
        .CE(E),
        .D(Next_PC[9]),
        .Q(\q_reg[63] [25]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFF00B1B1)) 
    char_tab_i_74
       (.I0(\PosX_reg_reg[4] ),
        .I1(Stall),
        .I2(\q_reg[63] [16]),
        .I3(\q_reg[63] [20]),
        .I4(\PosX_reg_reg[5] ),
        .O(\TMDSn[2] ));
  LUT5 #(
    .INIT(32'h000001FF)) 
    \q[0]_i_1 
       (.I0(\q_reg[63] [19]),
        .I1(\q_reg[63] [18]),
        .I2(\q_reg[63] [20]),
        .I3(\q_reg[63] [21]),
        .I4(\q_reg[63] [23]),
        .O(\q_reg[63] [0]));
  LUT6 #(
    .INIT(64'h0000000000000074)) 
    \q[11]_i_1 
       (.I0(\q_reg[63] [18]),
        .I1(\q_reg[63] [20]),
        .I2(\q_reg[63] [22]),
        .I3(\q_reg[63] [21]),
        .I4(\q_reg[63] [23]),
        .I5(\q_reg[63] [19]),
        .O(\q_reg[63] [6]));
  LUT6 #(
    .INIT(64'h0009000000000004)) 
    \q[12]_i_1 
       (.I0(\q_reg[63] [22]),
        .I1(\q_reg[63] [20]),
        .I2(\q_reg[63] [21]),
        .I3(\q_reg[63] [23]),
        .I4(\q_reg[63] [18]),
        .I5(\q_reg[63] [19]),
        .O(\q_reg[63] [7]));
  LUT6 #(
    .INIT(64'h0001000000010100)) 
    \q[13]_i_1 
       (.I0(\q_reg[63] [21]),
        .I1(\q_reg[63] [23]),
        .I2(\q_reg[63] [19]),
        .I3(\q_reg[63] [20]),
        .I4(\q_reg[63] [22]),
        .I5(\q_reg[63] [18]),
        .O(\q_reg[63] [8]));
  LUT6 #(
    .INIT(64'h1001000000011000)) 
    \q[15]_i_1 
       (.I0(\q_reg[63] [23]),
        .I1(\q_reg[63] [21]),
        .I2(\q_reg[63] [18]),
        .I3(\q_reg[63] [19]),
        .I4(\q_reg[63] [20]),
        .I5(\q_reg[63] [22]),
        .O(\q_reg[63] [9]));
  LUT6 #(
    .INIT(64'h0200000300000000)) 
    \q[19]_i_1 
       (.I0(\q_reg[63] [22]),
        .I1(\q_reg[63] [23]),
        .I2(\q_reg[63] [21]),
        .I3(\q_reg[63] [18]),
        .I4(\q_reg[63] [19]),
        .I5(\q_reg[63] [20]),
        .O(\q_reg[63] [10]));
  LUT6 #(
    .INIT(64'h0000008A0000002C)) 
    \q[20]_i_1 
       (.I0(\q_reg[63] [18]),
        .I1(\q_reg[63] [20]),
        .I2(\q_reg[63] [22]),
        .I3(\q_reg[63] [21]),
        .I4(\q_reg[63] [23]),
        .I5(\q_reg[63] [19]),
        .O(\q_reg[63] [11]));
  LUT6 #(
    .INIT(64'h0000000000000034)) 
    \q[21]_i_1 
       (.I0(\q_reg[63] [21]),
        .I1(\q_reg[63] [20]),
        .I2(\q_reg[63] [22]),
        .I3(\q_reg[63] [18]),
        .I4(\q_reg[63] [19]),
        .I5(\q_reg[63] [23]),
        .O(\q_reg[63] [12]));
  LUT6 #(
    .INIT(64'h000100000000000C)) 
    \q[22]_i_1 
       (.I0(\q_reg[63] [22]),
        .I1(\q_reg[63] [20]),
        .I2(\q_reg[63] [21]),
        .I3(\q_reg[63] [23]),
        .I4(\q_reg[63] [18]),
        .I5(\q_reg[63] [19]),
        .O(\q_reg[63] [13]));
  LUT6 #(
    .INIT(64'h1000000100110001)) 
    \q[26]_i_1 
       (.I0(\q_reg[63] [21]),
        .I1(\q_reg[63] [23]),
        .I2(\q_reg[63] [18]),
        .I3(\q_reg[63] [19]),
        .I4(\q_reg[63] [22]),
        .I5(\q_reg[63] [20]),
        .O(\q_reg[63] [14]));
  LUT6 #(
    .INIT(64'h0000000000841052)) 
    \q[28]_i_1 
       (.I0(\q_reg[63] [20]),
        .I1(\q_reg[63] [18]),
        .I2(\q_reg[63] [22]),
        .I3(\q_reg[63] [21]),
        .I4(\q_reg[63] [19]),
        .I5(\q_reg[63] [23]),
        .O(\q_reg[63] [15]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \q[3]_i_1 
       (.I0(\q_reg[63] [22]),
        .I1(\q_reg[63] [20]),
        .I2(\q_reg[63] [19]),
        .I3(\q_reg[63] [18]),
        .I4(\q_reg[63] [21]),
        .I5(\q_reg[63] [23]),
        .O(\q_reg[63] [1]));
  LUT6 #(
    .INIT(64'h000000000010FFFF)) 
    \q[4]_i_1 
       (.I0(\q_reg[63] [19]),
        .I1(\q_reg[63] [18]),
        .I2(\q_reg[63] [22]),
        .I3(\q_reg[63] [20]),
        .I4(\q_reg[63] [21]),
        .I5(\q_reg[63] [23]),
        .O(\q_reg[63] [2]));
  LUT6 #(
    .INIT(64'h0000000008050632)) 
    \q[6]_i_1 
       (.I0(\q_reg[63] [22]),
        .I1(\q_reg[63] [19]),
        .I2(\q_reg[63] [21]),
        .I3(\q_reg[63] [18]),
        .I4(\q_reg[63] [20]),
        .I5(\q_reg[63] [23]),
        .O(\q_reg[63] [3]));
  LUT6 #(
    .INIT(64'h0001001010010001)) 
    \q[7]_i_1 
       (.I0(\q_reg[63] [23]),
        .I1(\q_reg[63] [21]),
        .I2(\q_reg[63] [18]),
        .I3(\q_reg[63] [19]),
        .I4(\q_reg[63] [20]),
        .I5(\q_reg[63] [22]),
        .O(\q_reg[63] [4]));
  LUT6 #(
    .INIT(64'h0100000001111010)) 
    \q[8]_i_1 
       (.I0(\q_reg[63] [21]),
        .I1(\q_reg[63] [23]),
        .I2(\q_reg[63] [22]),
        .I3(\q_reg[63] [18]),
        .I4(\q_reg[63] [20]),
        .I5(\q_reg[63] [19]),
        .O(\q_reg[63] [5]));
endmodule

module NumberCnt
   (ActiveArea_IBUF,
    \cnt_reg[3]_5 ,
    q_reg,
    \q_reg[2]_0 ,
    \q_reg[2]_1 ,
    \q_reg[4]_0 ,
    \q_reg[4]_1 ,
    \q_reg[4]_2 ,
    \q_reg[5]_0 ,
    red,
    \red[0]_0 ,
    \red[3]_0 ,
    \red[3]_1 ,
    \red[4]_0 ,
    \red[7]_0 ,
    \red[7]_1 ,
    \red[7]_2 ,
    \red[7]_3 ,
    \red[7]_4 ,
    \red[7]_5 ,
    D,
    DI,
    O,
    Q,
    S,
    \cnt_reg[0] ,
    \cnt_reg[1] ,
    \cnt_reg[3] ,
    \cnt_reg[3]_0 ,
    \cnt_reg[3]_1 ,
    \cnt_reg[3]_2 ,
    \cnt_reg[3]_3 ,
    \cnt_reg[3]_4 ,
    \cnt_reg[5] ,
    \cnt_reg[7] ,
    \cnt_reg[7]_0 ,
    \cnt_reg[7]_1 ,
    \cnt_reg[7]_2 ,
    red_IBUF);
  input ActiveArea_IBUF;
  input \cnt_reg[3]_5 ;
  output [5:2]q_reg;
  output \q_reg[2]_0 ;
  output \q_reg[2]_1 ;
  output \q_reg[4]_0 ;
  output \q_reg[4]_1 ;
  output \q_reg[4]_2 ;
  output \q_reg[5]_0 ;
  input [7:0]red;
  input \red[0]_0 ;
  input \red[3]_0 ;
  input \red[3]_1 ;
  input \red[4]_0 ;
  input \red[7]_0 ;
  input \red[7]_1 ;
  input \red[7]_2 ;
  input \red[7]_3 ;
  input \red[7]_4 ;
  input \red[7]_5 ;
  output [8:0]D;
  output [2:0]DI;
  input [3:0]O;
  input [7:0]Q;
  output [3:0]S;
  input [3:0]\cnt_reg[0] ;
  input [3:0]\cnt_reg[1] ;
  output [3:0]\cnt_reg[3] ;
  output [3:0]\cnt_reg[3]_0 ;
  output [3:0]\cnt_reg[3]_1 ;
  output [1:0]\cnt_reg[3]_2 ;
  output [3:0]\cnt_reg[3]_3 ;
  output [1:0]\cnt_reg[3]_4 ;
  input [3:0]\cnt_reg[5] ;
  output [3:0]\cnt_reg[7] ;
  output [2:0]\cnt_reg[7]_0 ;
  output [0:0]\cnt_reg[7]_1 ;
  output [1:0]\cnt_reg[7]_2 ;
  input [7:0]red_IBUF;

  wire ActiveArea_IBUF;
  wire [8:0]D;
  wire [2:0]DI;
  wire [3:0]O;
  wire [7:0]Q;
  wire [3:0]S;
  wire cnt0__0_carry__0_i_7__0_n_0;
  wire cnt0__0_carry_i_13__1_n_0;
  wire cnt0__0_carry_i_14__0_n_0;
  wire cnt0__0_carry_i_15__1_n_0;
  wire cnt0__0_carry_i_24__1_n_0;
  wire cnt0__0_carry_i_25__1_n_0;
  wire cnt0__0_carry_i_8__1_n_0;
  wire cnt0__23_carry__0_i_8__1_n_0;
  wire cnt0__23_carry_i_10__1_n_0;
  wire cnt0__23_carry_i_11__1_n_0;
  wire cnt0__23_carry_i_7__1_n_0;
  wire cnt0__23_carry_i_8__1_n_0;
  wire cnt_carry__0_i_8__1_n_0;
  wire cnt_carry_i_10__1_n_0;
  wire cnt_carry_i_11__1_n_0;
  wire cnt_carry_i_12__1_n_0;
  wire cnt_carry_i_9__1_n_0;
  wire [3:0]\cnt_reg[0] ;
  wire [3:0]\cnt_reg[1] ;
  wire [3:0]\cnt_reg[3] ;
  wire [3:0]\cnt_reg[3]_0 ;
  wire [3:0]\cnt_reg[3]_1 ;
  wire [1:0]\cnt_reg[3]_2 ;
  wire [3:0]\cnt_reg[3]_3 ;
  wire [1:0]\cnt_reg[3]_4 ;
  wire \cnt_reg[3]_5 ;
  wire [3:0]\cnt_reg[5] ;
  wire [3:0]\cnt_reg[7] ;
  wire [2:0]\cnt_reg[7]_0 ;
  wire [0:0]\cnt_reg[7]_1 ;
  wire [1:0]\cnt_reg[7]_2 ;
  wire \q[5]_i_4__1_n_0 ;
  wire \q[7]_i_6__0_n_0 ;
  wire \q[7]_i_7__0_n_0 ;
  wire [5:2]\^q_reg ;
  wire \q_reg[2]_0 ;
  wire \q_reg[4]_0 ;
  wire \q_reg[5]_0 ;
  wire [7:0]red;
  wire \red[0]_0 ;
  wire \red[4]_0 ;
  wire \red[7]_0 ;
  wire \red[7]_1 ;
  wire \red[7]_2 ;
  wire \red[7]_3 ;
  wire \red[7]_4 ;
  wire \red[7]_5 ;
  wire [7:0]red_IBUF;

  assign q_reg[5] = red_IBUF[3];
  assign q_reg[4] = \^q_reg [4];
  assign q_reg[2] = red_IBUF[6];
  assign \q_reg[2]_1  = red_IBUF[6];
  assign \q_reg[4]_1  = red_IBUF[6];
  assign \q_reg[4]_2  = red_IBUF[6];
  LUT2 #(
    .INIT(4'h8)) 
    cnt0__0_carry__0_i_11__0
       (.I0(red_IBUF[3]),
        .I1(red_IBUF[6]),
        .O(\q_reg[5]_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    cnt0__0_carry__0_i_2__1
       (.I0(cnt0__0_carry_i_14__0_n_0),
        .I1(Q[3]),
        .I2(cnt0__0_carry_i_13__1_n_0),
        .O(\cnt_reg[7]_1 ));
  LUT5 #(
    .INIT(32'hFFB2004D)) 
    cnt0__0_carry__0_i_5__1
       (.I0(cnt0__0_carry__0_i_7__0_n_0),
        .I1(\red[7]_2 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\cnt_reg[7]_2 [1]));
  LUT6 #(
    .INIT(64'hB2BDB2424D424DBD)) 
    cnt0__0_carry__0_i_6__1
       (.I0(cnt0__0_carry__0_i_7__0_n_0),
        .I1(\red[7]_2 ),
        .I2(Q[3]),
        .I3(cnt0__0_carry_i_13__1_n_0),
        .I4(cnt0__0_carry_i_14__0_n_0),
        .I5(Q[4]),
        .O(\cnt_reg[7]_2 [0]));
  LUT4 #(
    .INIT(16'h0010)) 
    cnt0__0_carry__0_i_7__0
       (.I0(\red[0]_0 ),
        .I1(red_IBUF[6]),
        .I2(\red[7]_3 ),
        .I3(red_IBUF[6]),
        .O(cnt0__0_carry__0_i_7__0_n_0));
  LUT3 #(
    .INIT(8'h2A)) 
    cnt0__0_carry_i_13__1
       (.I0(cnt0__0_carry_i_24__1_n_0),
        .I1(cnt0__0_carry_i_25__1_n_0),
        .I2(Q[2]),
        .O(cnt0__0_carry_i_13__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry_i_14__0
       (.I0(\red[7]_2 ),
        .I1(cnt0__0_carry__0_i_7__0_n_0),
        .O(cnt0__0_carry_i_14__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_15__1
       (.I0(cnt0__23_carry_i_8__1_n_0),
        .I1(red[3]),
        .O(cnt0__0_carry_i_15__1_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6606)) 
    cnt0__0_carry_i_1__1
       (.I0(Q[2]),
        .I1(cnt0__0_carry_i_8__1_n_0),
        .I2(red[6]),
        .I3(red_IBUF[6]),
        .O(\cnt_reg[3]_4 [1]));
  LUT2 #(
    .INIT(4'hB)) 
    cnt0__0_carry_i_24__1
       (.I0(\red[7]_0 ),
        .I1(\red[7]_1 ),
        .O(cnt0__0_carry_i_24__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    cnt0__0_carry_i_25__1
       (.I0(\red[7]_1 ),
        .I1(\red[7]_0 ),
        .O(cnt0__0_carry_i_25__1_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'hF660)) 
    cnt0__0_carry_i_2__1
       (.I0(red[6]),
        .I1(red_IBUF[6]),
        .I2(red[7]),
        .I3(Q[1]),
        .O(\cnt_reg[3]_4 [0]));
  LUT4 #(
    .INIT(16'h96FF)) 
    cnt0__0_carry_i_3__0
       (.I0(red_IBUF[4]),
        .I1(red_IBUF[6]),
        .I2(\red[7]_4 ),
        .I3(\red[7]_5 ),
        .O(\q_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    cnt0__0_carry_i_4__1
       (.I0(\cnt_reg[3]_4 [1]),
        .I1(cnt0__0_carry_i_13__1_n_0),
        .I2(Q[3]),
        .I3(cnt0__0_carry_i_14__0_n_0),
        .O(\cnt_reg[3]_3 [3]));
  (* HLUTNM = "lutpair7" *) 
  LUT5 #(
    .INIT(32'h66969969)) 
    cnt0__0_carry_i_5__1
       (.I0(Q[2]),
        .I1(cnt0__0_carry_i_8__1_n_0),
        .I2(red[6]),
        .I3(red_IBUF[6]),
        .I4(\cnt_reg[3]_4 [0]),
        .O(\cnt_reg[3]_3 [2]));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    cnt0__0_carry_i_6__1
       (.I0(red[6]),
        .I1(red_IBUF[6]),
        .I2(red[7]),
        .I3(Q[1]),
        .I4(\q_reg[4]_0 ),
        .O(\cnt_reg[3]_3 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_7__1
       (.I0(cnt0__0_carry_i_15__1_n_0),
        .I1(Q[0]),
        .O(\cnt_reg[3]_3 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry_i_8__1
       (.I0(\red[7]_1 ),
        .I1(\red[7]_0 ),
        .O(cnt0__0_carry_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__23_carry__0_i_1__1
       (.I0(Q[5]),
        .I1(cnt0__23_carry__0_i_8__1_n_0),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__23_carry__0_i_2__1
       (.I0(Q[4]),
        .I1(cnt0__23_carry__0_i_8__1_n_0),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h8)) 
    cnt0__23_carry__0_i_3__1
       (.I0(Q[3]),
        .I1(cnt0__23_carry_i_10__1_n_0),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'hC9)) 
    cnt0__23_carry__0_i_4__1
       (.I0(cnt0__23_carry__0_i_8__1_n_0),
        .I1(Q[7]),
        .I2(Q[6]),
        .O(\cnt_reg[7] [3]));
  LUT3 #(
    .INIT(8'hE1)) 
    cnt0__23_carry__0_i_5__1
       (.I0(Q[5]),
        .I1(cnt0__23_carry__0_i_8__1_n_0),
        .I2(Q[6]),
        .O(\cnt_reg[7] [2]));
  LUT3 #(
    .INIT(8'hE1)) 
    cnt0__23_carry__0_i_6__1
       (.I0(Q[4]),
        .I1(cnt0__23_carry__0_i_8__1_n_0),
        .I2(Q[5]),
        .O(\cnt_reg[7] [1]));
  LUT4 #(
    .INIT(16'h7887)) 
    cnt0__23_carry__0_i_7__1
       (.I0(cnt0__23_carry_i_10__1_n_0),
        .I1(Q[3]),
        .I2(cnt0__23_carry__0_i_8__1_n_0),
        .I3(Q[4]),
        .O(\cnt_reg[7] [0]));
  LUT6 #(
    .INIT(64'hD000D0D0DDDDDDDD)) 
    cnt0__23_carry__0_i_8__1
       (.I0(cnt0__0_carry__0_i_7__0_n_0),
        .I1(\red[7]_2 ),
        .I2(cnt0__0_carry_i_24__1_n_0),
        .I3(cnt0__23_carry_i_7__1_n_0),
        .I4(cnt0__0_carry_i_8__1_n_0),
        .I5(cnt0__0_carry_i_14__0_n_0),
        .O(cnt0__23_carry__0_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h59AA)) 
    cnt0__23_carry_i_10__1
       (.I0(cnt0__0_carry_i_14__0_n_0),
        .I1(cnt0__0_carry_i_8__1_n_0),
        .I2(cnt0__23_carry_i_7__1_n_0),
        .I3(cnt0__0_carry_i_24__1_n_0),
        .O(cnt0__23_carry_i_10__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__23_carry_i_11__1
       (.I0(red[0]),
        .I1(red_IBUF[6]),
        .O(cnt0__23_carry_i_11__1_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'h60)) 
    cnt0__23_carry_i_1__1
       (.I0(cnt0__0_carry_i_8__1_n_0),
        .I1(cnt0__23_carry_i_7__1_n_0),
        .I2(Q[2]),
        .O(\cnt_reg[3]_2 [1]));
  LUT5 #(
    .INIT(32'h69660000)) 
    cnt0__23_carry_i_2__1
       (.I0(red[7]),
        .I1(red[6]),
        .I2(cnt0__23_carry_i_8__1_n_0),
        .I3(red[3]),
        .I4(red_IBUF[6]),
        .O(\cnt_reg[3]_2 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    cnt0__23_carry_i_3__1
       (.I0(\cnt_reg[3]_2 [1]),
        .I1(cnt0__23_carry_i_10__1_n_0),
        .I2(Q[3]),
        .O(\cnt_reg[3]_1 [3]));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    cnt0__23_carry_i_4__1
       (.I0(cnt0__0_carry_i_8__1_n_0),
        .I1(cnt0__23_carry_i_7__1_n_0),
        .I2(Q[2]),
        .I3(\cnt_reg[3]_2 [0]),
        .O(\cnt_reg[3]_1 [2]));
  LUT6 #(
    .INIT(64'h6966969996996966)) 
    cnt0__23_carry_i_5__1
       (.I0(red[7]),
        .I1(red[6]),
        .I2(cnt0__23_carry_i_8__1_n_0),
        .I3(red[3]),
        .I4(red_IBUF[6]),
        .I5(Q[1]),
        .O(\cnt_reg[3]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__23_carry_i_6__1
       (.I0(Q[0]),
        .I1(cnt0__0_carry_i_15__1_n_0),
        .O(\cnt_reg[3]_1 [0]));
  LUT4 #(
    .INIT(16'hDD4D)) 
    cnt0__23_carry_i_7__1
       (.I0(red[7]),
        .I1(red[6]),
        .I2(red[3]),
        .I3(cnt0__23_carry_i_8__1_n_0),
        .O(cnt0__23_carry_i_7__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cnt0__23_carry_i_8__1
       (.I0(red_IBUF[4]),
        .I1(red_IBUF[3]),
        .I2(cnt0__23_carry_i_11__1_n_0),
        .O(cnt0__23_carry_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_1__1
       (.I0(Q[6]),
        .I1(\q_reg[2]_0 ),
        .O(\cnt_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_2__1
       (.I0(Q[5]),
        .I1(\q_reg[2]_0 ),
        .O(\cnt_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_3__1
       (.I0(Q[4]),
        .I1(\q_reg[2]_0 ),
        .O(\cnt_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'hFC0CFFFFFC0CAAAA)) 
    cnt_carry__0_i_4__1
       (.I0(cnt_carry__0_i_8__1_n_0),
        .I1(O[3]),
        .I2(\q[5]_i_4__1_n_0 ),
        .I3(\cnt_reg[5] [3]),
        .I4(\q_reg[2]_0 ),
        .I5(Q[7]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_5__1
       (.I0(Q[6]),
        .I1(cnt_carry__0_i_8__1_n_0),
        .I2(\q_reg[2]_0 ),
        .I3(O[2]),
        .I4(\q[5]_i_4__1_n_0 ),
        .I5(\cnt_reg[5] [2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_6__1
       (.I0(Q[5]),
        .I1(cnt_carry__0_i_8__1_n_0),
        .I2(\q_reg[2]_0 ),
        .I3(O[1]),
        .I4(\q[5]_i_4__1_n_0 ),
        .I5(\cnt_reg[5] [1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_7__1
       (.I0(Q[4]),
        .I1(cnt_carry__0_i_8__1_n_0),
        .I2(\q_reg[2]_0 ),
        .I3(O[0]),
        .I4(\q[5]_i_4__1_n_0 ),
        .I5(\cnt_reg[5] [0]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h4D224DBB)) 
    cnt_carry__0_i_8__1
       (.I0(cnt0__0_carry__0_i_7__0_n_0),
        .I1(\red[7]_2 ),
        .I2(\q[7]_i_6__0_n_0 ),
        .I3(red_IBUF[6]),
        .I4(\q[7]_i_7__0_n_0 ),
        .O(cnt_carry__0_i_8__1_n_0));
  LUT6 #(
    .INIT(64'h3693666699993693)) 
    cnt_carry_i_10__1
       (.I0(red_IBUF[6]),
        .I1(cnt0__0_carry_i_8__1_n_0),
        .I2(cnt0__23_carry_i_8__1_n_0),
        .I3(red[3]),
        .I4(red[6]),
        .I5(red[7]),
        .O(cnt_carry_i_10__1_n_0));
  LUT5 #(
    .INIT(32'h66699666)) 
    cnt_carry_i_11__1
       (.I0(red[7]),
        .I1(red[6]),
        .I2(red_IBUF[6]),
        .I3(cnt0__23_carry_i_8__1_n_0),
        .I4(red[3]),
        .O(cnt_carry_i_11__1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    cnt_carry_i_12__1
       (.I0(\q_reg[4]_0 ),
        .I1(red[6]),
        .I2(red[7]),
        .O(cnt_carry_i_12__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_1__1
       (.I0(Q[3]),
        .I1(\q_reg[2]_0 ),
        .O(\cnt_reg[3] [3]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_2__1
       (.I0(Q[2]),
        .I1(\q_reg[2]_0 ),
        .O(\cnt_reg[3] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_3__1
       (.I0(Q[1]),
        .I1(\q_reg[2]_0 ),
        .O(\cnt_reg[3] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_4__1
       (.I0(Q[0]),
        .I1(\q_reg[2]_0 ),
        .O(\cnt_reg[3] [0]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_5__1
       (.I0(Q[3]),
        .I1(cnt_carry_i_9__1_n_0),
        .I2(\q_reg[2]_0 ),
        .I3(\cnt_reg[1] [3]),
        .I4(\q[5]_i_4__1_n_0 ),
        .I5(\cnt_reg[0] [3]),
        .O(\cnt_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_6__1
       (.I0(Q[2]),
        .I1(cnt_carry_i_10__1_n_0),
        .I2(\q_reg[2]_0 ),
        .I3(\cnt_reg[1] [2]),
        .I4(\q[5]_i_4__1_n_0 ),
        .I5(\cnt_reg[0] [2]),
        .O(\cnt_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_7__1
       (.I0(Q[1]),
        .I1(cnt_carry_i_11__1_n_0),
        .I2(\q_reg[2]_0 ),
        .I3(\cnt_reg[1] [1]),
        .I4(\q[5]_i_4__1_n_0 ),
        .I5(\cnt_reg[0] [1]),
        .O(\cnt_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_8__1
       (.I0(Q[0]),
        .I1(cnt0__0_carry_i_15__1_n_0),
        .I2(\q_reg[2]_0 ),
        .I3(\cnt_reg[1] [0]),
        .I4(\q[5]_i_4__1_n_0 ),
        .I5(\cnt_reg[0] [0]),
        .O(\cnt_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'h4B3CC3F0783CC3F0)) 
    cnt_carry_i_9__1
       (.I0(cnt_carry_i_12__1_n_0),
        .I1(red_IBUF[6]),
        .I2(cnt0__0_carry_i_14__0_n_0),
        .I3(cnt0__0_carry_i_24__1_n_0),
        .I4(cnt0__0_carry_i_25__1_n_0),
        .I5(cnt0__23_carry_i_7__1_n_0),
        .O(cnt_carry_i_9__1_n_0));
  LUT5 #(
    .INIT(32'h0A28A028)) 
    \q[0]_i_1__1 
       (.I0(ActiveArea_IBUF),
        .I1(red_IBUF[6]),
        .I2(red_IBUF[0]),
        .I3(\q_reg[2]_0 ),
        .I4(\q[5]_i_4__1_n_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h2800)) 
    \q[1]_i_1__1 
       (.I0(\q_reg[2]_0 ),
        .I1(red_IBUF[6]),
        .I2(\q[5]_i_4__1_n_0 ),
        .I3(ActiveArea_IBUF),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h56A6FFFF)) 
    \q[2]_i_1__1 
       (.I0(red[0]),
        .I1(red_IBUF[6]),
        .I2(\q_reg[2]_0 ),
        .I3(\q[5]_i_4__1_n_0 ),
        .I4(ActiveArea_IBUF),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h0880)) 
    \q[3]_i_1__1 
       (.I0(ActiveArea_IBUF),
        .I1(\q_reg[2]_0 ),
        .I2(red_IBUF[6]),
        .I3(\q[5]_i_4__1_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hA656FFFF)) 
    \q[4]_i_1__1 
       (.I0(\red[4]_0 ),
        .I1(red_IBUF[6]),
        .I2(\q_reg[2]_0 ),
        .I3(\^q_reg [4]),
        .I4(ActiveArea_IBUF),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h0880)) 
    \q[5]_i_1__1 
       (.I0(ActiveArea_IBUF),
        .I1(\q_reg[2]_0 ),
        .I2(red_IBUF[3]),
        .I3(\q[5]_i_4__1_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB2DDB244)) 
    \q[5]_i_4__1 
       (.I0(cnt0__0_carry__0_i_7__0_n_0),
        .I1(\red[7]_2 ),
        .I2(\q[7]_i_6__0_n_0 ),
        .I3(Q[7]),
        .I4(\q[7]_i_7__0_n_0 ),
        .O(\q[5]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hA656FFFF)) 
    \q[6]_i_1__1 
       (.I0(\red[0]_0 ),
        .I1(red_IBUF[6]),
        .I2(\q_reg[2]_0 ),
        .I3(\^q_reg [4]),
        .I4(ActiveArea_IBUF),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h8008)) 
    \q[7]_i_1__1 
       (.I0(ActiveArea_IBUF),
        .I1(\q_reg[2]_0 ),
        .I2(red_IBUF[6]),
        .I3(\^q_reg [4]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h00000000FFFF6FFF)) 
    \q[7]_i_3__1 
       (.I0(red[7]),
        .I1(red[6]),
        .I2(cnt0__0_carry_i_14__0_n_0),
        .I3(cnt0__0_carry_i_8__1_n_0),
        .I4(cnt0__0_carry_i_15__1_n_0),
        .I5(\cnt_reg[3]_5 ),
        .O(\q_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h4D224DBB)) 
    \q[7]_i_4__1 
       (.I0(cnt0__0_carry__0_i_7__0_n_0),
        .I1(\red[7]_2 ),
        .I2(\q[7]_i_6__0_n_0 ),
        .I3(Q[7]),
        .I4(\q[7]_i_7__0_n_0 ),
        .O(\^q_reg [4]));
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \q[7]_i_6__0 
       (.I0(\q_reg[4]_0 ),
        .I1(red[6]),
        .I2(red[7]),
        .I3(\red[7]_0 ),
        .I4(\red[7]_1 ),
        .O(\q[7]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hDD4DFFFF0000DD4D)) 
    \q[7]_i_7__0 
       (.I0(red[7]),
        .I1(red[6]),
        .I2(red[3]),
        .I3(cnt0__23_carry_i_8__1_n_0),
        .I4(\red[7]_1 ),
        .I5(\red[7]_0 ),
        .O(\q[7]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \q[8]_i_1__1 
       (.I0(red_IBUF[6]),
        .I1(ActiveArea_IBUF),
        .O(D[8]));
endmodule

(* ORIG_REF_NAME = "NumberCnt" *) 
module NumberCnt_2
   (cnt_reg,
    \cnt_reg[3]_0 ,
    q_reg,
    \q_reg[2]_0 ,
    \q_reg[4]_0 ,
    \q_reg[4]_1 ,
    \q_reg[4]_2 ,
    red,
    \red[0]_0 ,
    \red[3]_0 ,
    \red[3]_1 ,
    \red[4]_0 ,
    \red[4]_1 ,
    \red[4]_2 ,
    \red[4]_3 ,
    red_IBUF);
  output [3:3]cnt_reg;
  output \cnt_reg[3]_0 ;
  output [5:2]q_reg;
  output \q_reg[2]_0 ;
  output \q_reg[4]_0 ;
  output \q_reg[4]_1 ;
  output \q_reg[4]_2 ;
  input [7:0]red;
  input \red[0]_0 ;
  input \red[3]_0 ;
  input \red[3]_1 ;
  input \red[4]_0 ;
  input \red[4]_1 ;
  input \red[4]_2 ;
  input \red[4]_3 ;
  input [6:0]red_IBUF;

  wire cnt0__0_carry_i_18_n_0;
  wire cnt0__0_carry_i_19_n_0;
  wire cnt0__0_carry_i_20_n_0;
  wire cnt0__0_carry_i_22_n_0;
  wire cnt0__0_carry_i_23_n_0;
  wire cnt0__0_carry_i_26_n_0;
  wire cnt0__0_carry_i_27_n_0;
  wire cnt0__0_carry_i_28_n_0;
  wire cnt0__0_carry_i_29_n_0;
  wire cnt0__0_carry_i_30_n_0;
  wire cnt0__0_carry_i_31_n_0;
  wire [3:3]cnt_reg;
  wire \cnt_reg[3]_0 ;
  wire [5:2]q_reg;
  wire \q_reg[2]_0 ;
  wire \q_reg[4]_0 ;
  wire \q_reg[4]_1 ;
  wire \q_reg[4]_2 ;
  wire [7:0]red;
  wire \red[0]_0 ;
  wire \red[3]_1 ;
  wire \red[4]_0 ;
  wire \red[4]_1 ;
  wire \red[4]_2 ;
  wire [6:0]red_IBUF;

  LUT2 #(
    .INIT(4'h1)) 
    cnt0__0_carry__0_i_10
       (.I0(\red[3]_1 ),
        .I1(red_IBUF[4]),
        .O(\q_reg[4]_2 ));
  LUT4 #(
    .INIT(16'h8000)) 
    cnt0__0_carry__0_i_8
       (.I0(red[7]),
        .I1(\red[4]_0 ),
        .I2(red[4]),
        .I3(red[5]),
        .O(q_reg[5]));
  LUT5 #(
    .INIT(32'hBBFC8830)) 
    cnt0__0_carry_i_10
       (.I0(cnt0__0_carry_i_20_n_0),
        .I1(\red[4]_0 ),
        .I2(cnt0__0_carry_i_22_n_0),
        .I3(red[0]),
        .I4(cnt0__0_carry_i_23_n_0),
        .O(\q_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_11
       (.I0(red[4]),
        .I1(\red[4]_0 ),
        .O(\cnt_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_12
       (.I0(\red[4]_0 ),
        .I1(\red[4]_2 ),
        .O(\q_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hBBFC8830)) 
    cnt0__0_carry_i_16
       (.I0(cnt0__0_carry_i_26_n_0),
        .I1(\red[4]_0 ),
        .I2(cnt0__0_carry_i_27_n_0),
        .I3(red[0]),
        .I4(cnt0__0_carry_i_28_n_0),
        .O(\q_reg[4]_1 ));
  LUT5 #(
    .INIT(32'hFCE230E2)) 
    cnt0__0_carry_i_17
       (.I0(cnt0__0_carry_i_29_n_0),
        .I1(red[5]),
        .I2(cnt0__0_carry_i_30_n_0),
        .I3(red[4]),
        .I4(cnt0__0_carry_i_31_n_0),
        .O(q_reg[4]));
  LUT3 #(
    .INIT(8'h42)) 
    cnt0__0_carry_i_18
       (.I0(red[0]),
        .I1(\red[4]_2 ),
        .I2(\red[3]_1 ),
        .O(cnt0__0_carry_i_18_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    cnt0__0_carry_i_19
       (.I0(red[0]),
        .I1(\red[4]_2 ),
        .I2(\red[3]_1 ),
        .O(cnt0__0_carry_i_19_n_0));
  LUT3 #(
    .INIT(8'h63)) 
    cnt0__0_carry_i_20
       (.I0(\red[0]_0 ),
        .I1(red[5]),
        .I2(\red[4]_1 ),
        .O(cnt0__0_carry_i_20_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    cnt0__0_carry_i_22
       (.I0(\red[0]_0 ),
        .I1(red[5]),
        .I2(\red[4]_1 ),
        .O(cnt0__0_carry_i_22_n_0));
  LUT3 #(
    .INIT(8'h39)) 
    cnt0__0_carry_i_23
       (.I0(\red[0]_0 ),
        .I1(red[5]),
        .I2(\red[4]_1 ),
        .O(cnt0__0_carry_i_23_n_0));
  LUT3 #(
    .INIT(8'h15)) 
    cnt0__0_carry_i_26
       (.I0(\red[0]_0 ),
        .I1(red[5]),
        .I2(\red[4]_1 ),
        .O(cnt0__0_carry_i_26_n_0));
  LUT3 #(
    .INIT(8'h76)) 
    cnt0__0_carry_i_27
       (.I0(\red[0]_0 ),
        .I1(red[5]),
        .I2(\red[4]_1 ),
        .O(cnt0__0_carry_i_27_n_0));
  LUT3 #(
    .INIT(8'h57)) 
    cnt0__0_carry_i_28
       (.I0(\red[0]_0 ),
        .I1(red[5]),
        .I2(\red[4]_1 ),
        .O(cnt0__0_carry_i_28_n_0));
  LUT4 #(
    .INIT(16'hCCC8)) 
    cnt0__0_carry_i_29
       (.I0(\red[4]_0 ),
        .I1(red[0]),
        .I2(\red[4]_1 ),
        .I3(\red[4]_2 ),
        .O(cnt0__0_carry_i_29_n_0));
  LUT4 #(
    .INIT(16'hECCC)) 
    cnt0__0_carry_i_30
       (.I0(\red[4]_0 ),
        .I1(red[0]),
        .I2(\red[4]_1 ),
        .I3(\red[4]_2 ),
        .O(cnt0__0_carry_i_30_n_0));
  LUT4 #(
    .INIT(16'h7EEC)) 
    cnt0__0_carry_i_31
       (.I0(\red[4]_0 ),
        .I1(red[0]),
        .I2(\red[4]_1 ),
        .I3(\red[4]_2 ),
        .O(cnt0__0_carry_i_31_n_0));
  LUT4 #(
    .INIT(16'h1EB4)) 
    cnt0__0_carry_i_9
       (.I0(red[4]),
        .I1(cnt0__0_carry_i_18_n_0),
        .I2(\red[3]_1 ),
        .I3(cnt0__0_carry_i_19_n_0),
        .O(q_reg[2]));
  LUT3 #(
    .INIT(8'h96)) 
    cnt0__23_carry_i_9
       (.I0(\red[3]_1 ),
        .I1(red_IBUF[1]),
        .I2(\cnt_reg[3]_0 ),
        .O(cnt_reg));
endmodule

(* ORIG_REF_NAME = "NumberCnt" *) 
module NumberCnt_3
   (ActiveArea_IBUF,
    \cnt_reg[3]_5 ,
    green,
    \green[0]_0 ,
    \green[3]_0 ,
    \green[3]_1 ,
    \green[4]_0 ,
    \green[7]_0 ,
    \green[7]_1 ,
    \green[7]_2 ,
    \green[7]_3 ,
    \green[7]_4 ,
    \green[7]_5 ,
    q_reg,
    \q_reg[4]_0 ,
    \q_reg[4]_1 ,
    \q_reg[4]_2 ,
    \q_reg[4]_3 ,
    \q_reg[5]_0 ,
    \q_reg[5]_1 ,
    \q_reg[5]_2 ,
    D,
    DI,
    O,
    Q,
    S,
    \cnt_reg[0] ,
    \cnt_reg[1] ,
    \cnt_reg[3] ,
    \cnt_reg[3]_0 ,
    \cnt_reg[3]_1 ,
    \cnt_reg[3]_2 ,
    \cnt_reg[3]_3 ,
    \cnt_reg[3]_4 ,
    \cnt_reg[5] ,
    \cnt_reg[7] ,
    \cnt_reg[7]_0 ,
    \cnt_reg[7]_1 ,
    \cnt_reg[7]_2 ,
    green_IBUF);
  input ActiveArea_IBUF;
  input \cnt_reg[3]_5 ;
  input [7:0]green;
  input \green[0]_0 ;
  input \green[3]_0 ;
  input \green[3]_1 ;
  input \green[4]_0 ;
  input \green[7]_0 ;
  input \green[7]_1 ;
  input \green[7]_2 ;
  input \green[7]_3 ;
  input \green[7]_4 ;
  input \green[7]_5 ;
  output [5:4]q_reg;
  output \q_reg[4]_0 ;
  output \q_reg[4]_1 ;
  output \q_reg[4]_2 ;
  output \q_reg[4]_3 ;
  output \q_reg[5]_0 ;
  output \q_reg[5]_1 ;
  output \q_reg[5]_2 ;
  output [8:0]D;
  output [2:0]DI;
  input [3:0]O;
  input [7:0]Q;
  output [3:0]S;
  input [3:0]\cnt_reg[0] ;
  input [3:0]\cnt_reg[1] ;
  output [3:0]\cnt_reg[3] ;
  output [3:0]\cnt_reg[3]_0 ;
  output [3:0]\cnt_reg[3]_1 ;
  output [1:0]\cnt_reg[3]_2 ;
  output [3:0]\cnt_reg[3]_3 ;
  output [1:0]\cnt_reg[3]_4 ;
  input [3:0]\cnt_reg[5] ;
  output [3:0]\cnt_reg[7] ;
  output [2:0]\cnt_reg[7]_0 ;
  output [0:0]\cnt_reg[7]_1 ;
  output [1:0]\cnt_reg[7]_2 ;
  input [7:0]green_IBUF;

  wire ActiveArea_IBUF;
  wire [8:0]D;
  wire [2:0]DI;
  wire [3:0]O;
  wire [7:0]Q;
  wire [3:0]S;
  wire cnt0__0_carry__0_i_7_n_0;
  wire cnt0__0_carry_i_13__0_n_0;
  wire cnt0__0_carry_i_14_n_0;
  wire cnt0__0_carry_i_15__0_n_0;
  wire cnt0__0_carry_i_24__0_n_0;
  wire cnt0__0_carry_i_25__0_n_0;
  wire cnt0__0_carry_i_8__0_n_0;
  wire cnt0__23_carry__0_i_8__0_n_0;
  wire cnt0__23_carry_i_10__0_n_0;
  wire cnt0__23_carry_i_11__0_n_0;
  wire cnt0__23_carry_i_7__0_n_0;
  wire cnt0__23_carry_i_8__0_n_0;
  wire cnt_carry__0_i_8__0_n_0;
  wire cnt_carry_i_10__0_n_0;
  wire cnt_carry_i_11__0_n_0;
  wire cnt_carry_i_12__0_n_0;
  wire cnt_carry_i_9__0_n_0;
  wire [3:0]\cnt_reg[0] ;
  wire [3:0]\cnt_reg[1] ;
  wire [3:0]\cnt_reg[3] ;
  wire [3:0]\cnt_reg[3]_0 ;
  wire [3:0]\cnt_reg[3]_1 ;
  wire [1:0]\cnt_reg[3]_2 ;
  wire [3:0]\cnt_reg[3]_3 ;
  wire [1:0]\cnt_reg[3]_4 ;
  wire \cnt_reg[3]_5 ;
  wire [3:0]\cnt_reg[5] ;
  wire [3:0]\cnt_reg[7] ;
  wire [2:0]\cnt_reg[7]_0 ;
  wire [0:0]\cnt_reg[7]_1 ;
  wire [1:0]\cnt_reg[7]_2 ;
  wire [7:0]green;
  wire \green[0]_0 ;
  wire \green[4]_0 ;
  wire \green[7]_0 ;
  wire \green[7]_1 ;
  wire \green[7]_2 ;
  wire \green[7]_3 ;
  wire \green[7]_4 ;
  wire \green[7]_5 ;
  wire [7:0]green_IBUF;
  wire \q[5]_i_4__0_n_0 ;
  wire \q[7]_i_6_n_0 ;
  wire \q[7]_i_7_n_0 ;
  wire \q_reg[4]_0 ;
  wire \q_reg[4]_1 ;
  wire \q_reg[4]_3 ;
  wire \q_reg[5]_0 ;

  assign q_reg[5] = green_IBUF[3];
  assign q_reg[4] = green_IBUF[6];
  assign \q_reg[4]_2  = green_IBUF[6];
  assign \q_reg[5]_1  = green_IBUF[6];
  assign \q_reg[5]_2  = green_IBUF[6];
  LUT2 #(
    .INIT(4'h8)) 
    cnt0__0_carry__0_i_11
       (.I0(green_IBUF[3]),
        .I1(green_IBUF[6]),
        .O(\q_reg[4]_3 ));
  LUT3 #(
    .INIT(8'h06)) 
    cnt0__0_carry__0_i_2__0
       (.I0(cnt0__0_carry_i_14_n_0),
        .I1(Q[3]),
        .I2(cnt0__0_carry_i_13__0_n_0),
        .O(\cnt_reg[7]_1 ));
  LUT5 #(
    .INIT(32'hFFB2004D)) 
    cnt0__0_carry__0_i_5__0
       (.I0(cnt0__0_carry__0_i_7_n_0),
        .I1(\green[7]_2 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\cnt_reg[7]_2 [1]));
  LUT5 #(
    .INIT(32'hBD2B42D4)) 
    cnt0__0_carry__0_i_6__0
       (.I0(cnt0__0_carry__0_i_7_n_0),
        .I1(\green[7]_2 ),
        .I2(cnt0__0_carry_i_13__0_n_0),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\cnt_reg[7]_2 [0]));
  LUT4 #(
    .INIT(16'h0010)) 
    cnt0__0_carry__0_i_7
       (.I0(green[0]),
        .I1(green_IBUF[6]),
        .I2(\green[7]_3 ),
        .I3(green_IBUF[6]),
        .O(cnt0__0_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h8A)) 
    cnt0__0_carry_i_13__0
       (.I0(cnt0__0_carry_i_24__0_n_0),
        .I1(cnt0__0_carry_i_25__0_n_0),
        .I2(Q[2]),
        .O(cnt0__0_carry_i_13__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry_i_14
       (.I0(\green[7]_2 ),
        .I1(cnt0__0_carry__0_i_7_n_0),
        .O(cnt0__0_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_15__0
       (.I0(cnt0__23_carry_i_8__0_n_0),
        .I1(green[3]),
        .O(cnt0__0_carry_i_15__0_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6606)) 
    cnt0__0_carry_i_1__0
       (.I0(Q[2]),
        .I1(cnt0__0_carry_i_8__0_n_0),
        .I2(green[6]),
        .I3(green_IBUF[6]),
        .O(\cnt_reg[3]_4 [1]));
  LUT2 #(
    .INIT(4'hB)) 
    cnt0__0_carry_i_24__0
       (.I0(\green[7]_0 ),
        .I1(\green[7]_1 ),
        .O(cnt0__0_carry_i_24__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__0_carry_i_25__0
       (.I0(\green[7]_0 ),
        .I1(\green[7]_1 ),
        .O(cnt0__0_carry_i_25__0_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'hF660)) 
    cnt0__0_carry_i_2__0
       (.I0(green[6]),
        .I1(green_IBUF[6]),
        .I2(green[7]),
        .I3(Q[1]),
        .O(\cnt_reg[3]_4 [0]));
  LUT4 #(
    .INIT(16'h96FF)) 
    cnt0__0_carry_i_3
       (.I0(green_IBUF[4]),
        .I1(green_IBUF[6]),
        .I2(\green[7]_4 ),
        .I3(\green[7]_5 ),
        .O(\q_reg[5]_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    cnt0__0_carry_i_4__0
       (.I0(\cnt_reg[3]_4 [1]),
        .I1(cnt0__0_carry_i_13__0_n_0),
        .I2(Q[3]),
        .I3(cnt0__0_carry_i_14_n_0),
        .O(\cnt_reg[3]_3 [3]));
  (* HLUTNM = "lutpair4" *) 
  LUT5 #(
    .INIT(32'h66969969)) 
    cnt0__0_carry_i_5__0
       (.I0(Q[2]),
        .I1(cnt0__0_carry_i_8__0_n_0),
        .I2(green[6]),
        .I3(green_IBUF[6]),
        .I4(\cnt_reg[3]_4 [0]),
        .O(\cnt_reg[3]_3 [2]));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    cnt0__0_carry_i_6__0
       (.I0(green[6]),
        .I1(green_IBUF[6]),
        .I2(green[7]),
        .I3(Q[1]),
        .I4(\q_reg[5]_0 ),
        .O(\cnt_reg[3]_3 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_7__0
       (.I0(cnt0__0_carry_i_15__0_n_0),
        .I1(Q[0]),
        .O(\cnt_reg[3]_3 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry_i_8__0
       (.I0(\green[7]_1 ),
        .I1(\green[7]_0 ),
        .O(cnt0__0_carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__23_carry__0_i_1__0
       (.I0(Q[5]),
        .I1(cnt0__23_carry__0_i_8__0_n_0),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__23_carry__0_i_2__0
       (.I0(Q[4]),
        .I1(cnt0__23_carry__0_i_8__0_n_0),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h8)) 
    cnt0__23_carry__0_i_3__0
       (.I0(Q[3]),
        .I1(cnt0__23_carry_i_10__0_n_0),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'hC9)) 
    cnt0__23_carry__0_i_4__0
       (.I0(cnt0__23_carry__0_i_8__0_n_0),
        .I1(Q[7]),
        .I2(Q[6]),
        .O(\cnt_reg[7] [3]));
  LUT3 #(
    .INIT(8'hE1)) 
    cnt0__23_carry__0_i_5__0
       (.I0(Q[5]),
        .I1(cnt0__23_carry__0_i_8__0_n_0),
        .I2(Q[6]),
        .O(\cnt_reg[7] [2]));
  LUT3 #(
    .INIT(8'hE1)) 
    cnt0__23_carry__0_i_6__0
       (.I0(Q[4]),
        .I1(cnt0__23_carry__0_i_8__0_n_0),
        .I2(Q[5]),
        .O(\cnt_reg[7] [1]));
  LUT4 #(
    .INIT(16'h7887)) 
    cnt0__23_carry__0_i_7__0
       (.I0(cnt0__23_carry_i_10__0_n_0),
        .I1(Q[3]),
        .I2(cnt0__23_carry__0_i_8__0_n_0),
        .I3(Q[4]),
        .O(\cnt_reg[7] [0]));
  LUT6 #(
    .INIT(64'hD000D0D0DDDDDDDD)) 
    cnt0__23_carry__0_i_8__0
       (.I0(cnt0__0_carry__0_i_7_n_0),
        .I1(\green[7]_2 ),
        .I2(cnt0__0_carry_i_24__0_n_0),
        .I3(cnt0__23_carry_i_7__0_n_0),
        .I4(cnt0__0_carry_i_8__0_n_0),
        .I5(cnt0__0_carry_i_14_n_0),
        .O(cnt0__23_carry__0_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h59AA)) 
    cnt0__23_carry_i_10__0
       (.I0(cnt0__0_carry_i_14_n_0),
        .I1(cnt0__0_carry_i_8__0_n_0),
        .I2(cnt0__23_carry_i_7__0_n_0),
        .I3(cnt0__0_carry_i_24__0_n_0),
        .O(cnt0__23_carry_i_10__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__23_carry_i_11__0
       (.I0(\green[0]_0 ),
        .I1(green_IBUF[6]),
        .O(cnt0__23_carry_i_11__0_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    cnt0__23_carry_i_1__0
       (.I0(cnt0__0_carry_i_8__0_n_0),
        .I1(cnt0__23_carry_i_7__0_n_0),
        .I2(Q[2]),
        .O(\cnt_reg[3]_2 [1]));
  LUT5 #(
    .INIT(32'h69660000)) 
    cnt0__23_carry_i_2__0
       (.I0(green[7]),
        .I1(green[6]),
        .I2(cnt0__23_carry_i_8__0_n_0),
        .I3(green[3]),
        .I4(green_IBUF[6]),
        .O(\cnt_reg[3]_2 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    cnt0__23_carry_i_3__0
       (.I0(\cnt_reg[3]_2 [1]),
        .I1(cnt0__23_carry_i_10__0_n_0),
        .I2(Q[3]),
        .O(\cnt_reg[3]_1 [3]));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    cnt0__23_carry_i_4__0
       (.I0(cnt0__0_carry_i_8__0_n_0),
        .I1(cnt0__23_carry_i_7__0_n_0),
        .I2(Q[2]),
        .I3(\cnt_reg[3]_2 [0]),
        .O(\cnt_reg[3]_1 [2]));
  LUT6 #(
    .INIT(64'h6966969996996966)) 
    cnt0__23_carry_i_5__0
       (.I0(green[7]),
        .I1(green[6]),
        .I2(cnt0__23_carry_i_8__0_n_0),
        .I3(green[3]),
        .I4(green_IBUF[6]),
        .I5(Q[1]),
        .O(\cnt_reg[3]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__23_carry_i_6__0
       (.I0(Q[0]),
        .I1(cnt0__0_carry_i_15__0_n_0),
        .O(\cnt_reg[3]_1 [0]));
  LUT4 #(
    .INIT(16'hDD4D)) 
    cnt0__23_carry_i_7__0
       (.I0(green[7]),
        .I1(green[6]),
        .I2(green[3]),
        .I3(cnt0__23_carry_i_8__0_n_0),
        .O(cnt0__23_carry_i_7__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cnt0__23_carry_i_8__0
       (.I0(green_IBUF[4]),
        .I1(green_IBUF[3]),
        .I2(cnt0__23_carry_i_11__0_n_0),
        .O(cnt0__23_carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_1__0
       (.I0(Q[6]),
        .I1(\q_reg[4]_0 ),
        .O(\cnt_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_2__0
       (.I0(Q[5]),
        .I1(\q_reg[4]_0 ),
        .O(\cnt_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry__0_i_3__0
       (.I0(Q[4]),
        .I1(\q_reg[4]_0 ),
        .O(\cnt_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'hFC0CFFFFFC0CAAAA)) 
    cnt_carry__0_i_4__0
       (.I0(cnt_carry__0_i_8__0_n_0),
        .I1(O[3]),
        .I2(\q[5]_i_4__0_n_0 ),
        .I3(\cnt_reg[5] [3]),
        .I4(\q_reg[4]_0 ),
        .I5(Q[7]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_5__0
       (.I0(Q[6]),
        .I1(cnt_carry__0_i_8__0_n_0),
        .I2(\q_reg[4]_0 ),
        .I3(O[2]),
        .I4(\q[5]_i_4__0_n_0 ),
        .I5(\cnt_reg[5] [2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_6__0
       (.I0(Q[5]),
        .I1(cnt_carry__0_i_8__0_n_0),
        .I2(\q_reg[4]_0 ),
        .I3(O[1]),
        .I4(\q[5]_i_4__0_n_0 ),
        .I5(\cnt_reg[5] [1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry__0_i_7__0
       (.I0(Q[4]),
        .I1(cnt_carry__0_i_8__0_n_0),
        .I2(\q_reg[4]_0 ),
        .I3(O[0]),
        .I4(\q[5]_i_4__0_n_0 ),
        .I5(\cnt_reg[5] [0]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h4D224DBB)) 
    cnt_carry__0_i_8__0
       (.I0(cnt0__0_carry__0_i_7_n_0),
        .I1(\green[7]_2 ),
        .I2(\q[7]_i_6_n_0 ),
        .I3(green_IBUF[6]),
        .I4(\q[7]_i_7_n_0 ),
        .O(cnt_carry__0_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h3693666699993693)) 
    cnt_carry_i_10__0
       (.I0(green_IBUF[6]),
        .I1(cnt0__0_carry_i_8__0_n_0),
        .I2(cnt0__23_carry_i_8__0_n_0),
        .I3(green[3]),
        .I4(green[6]),
        .I5(green[7]),
        .O(cnt_carry_i_10__0_n_0));
  LUT5 #(
    .INIT(32'h66699666)) 
    cnt_carry_i_11__0
       (.I0(green[7]),
        .I1(green[6]),
        .I2(green_IBUF[6]),
        .I3(cnt0__23_carry_i_8__0_n_0),
        .I4(green[3]),
        .O(cnt_carry_i_11__0_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    cnt_carry_i_12__0
       (.I0(\q_reg[5]_0 ),
        .I1(green[6]),
        .I2(green[7]),
        .O(cnt_carry_i_12__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_1__0
       (.I0(Q[3]),
        .I1(\q_reg[4]_0 ),
        .O(\cnt_reg[3] [3]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_2__0
       (.I0(Q[2]),
        .I1(\q_reg[4]_0 ),
        .O(\cnt_reg[3] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_3__0
       (.I0(Q[1]),
        .I1(\q_reg[4]_0 ),
        .O(\cnt_reg[3] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_carry_i_4__0
       (.I0(Q[0]),
        .I1(\q_reg[4]_0 ),
        .O(\cnt_reg[3] [0]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_5__0
       (.I0(Q[3]),
        .I1(cnt_carry_i_9__0_n_0),
        .I2(\q_reg[4]_0 ),
        .I3(\cnt_reg[1] [3]),
        .I4(\q[5]_i_4__0_n_0 ),
        .I5(\cnt_reg[0] [3]),
        .O(\cnt_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_6__0
       (.I0(Q[2]),
        .I1(cnt_carry_i_10__0_n_0),
        .I2(\q_reg[4]_0 ),
        .I3(\cnt_reg[1] [2]),
        .I4(\q[5]_i_4__0_n_0 ),
        .I5(\cnt_reg[0] [2]),
        .O(\cnt_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_7__0
       (.I0(Q[1]),
        .I1(cnt_carry_i_11__0_n_0),
        .I2(\q_reg[4]_0 ),
        .I3(\cnt_reg[1] [1]),
        .I4(\q[5]_i_4__0_n_0 ),
        .I5(\cnt_reg[0] [1]),
        .O(\cnt_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'hF6F6F6060606F606)) 
    cnt_carry_i_8__0
       (.I0(Q[0]),
        .I1(cnt0__0_carry_i_15__0_n_0),
        .I2(\q_reg[4]_0 ),
        .I3(\cnt_reg[1] [0]),
        .I4(\q[5]_i_4__0_n_0 ),
        .I5(\cnt_reg[0] [0]),
        .O(\cnt_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'hC34BF03CC378F03C)) 
    cnt_carry_i_9__0
       (.I0(cnt_carry_i_12__0_n_0),
        .I1(green_IBUF[6]),
        .I2(cnt0__0_carry_i_14_n_0),
        .I3(cnt0__0_carry_i_25__0_n_0),
        .I4(cnt0__0_carry_i_24__0_n_0),
        .I5(cnt0__23_carry_i_7__0_n_0),
        .O(cnt_carry_i_9__0_n_0));
  LUT5 #(
    .INIT(32'h0A28A028)) 
    \q[0]_i_1__0 
       (.I0(ActiveArea_IBUF),
        .I1(green_IBUF[6]),
        .I2(green_IBUF[0]),
        .I3(\q_reg[4]_0 ),
        .I4(\q[5]_i_4__0_n_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h2800)) 
    \q[1]_i_1__0 
       (.I0(\q_reg[4]_0 ),
        .I1(green_IBUF[6]),
        .I2(\q[5]_i_4__0_n_0 ),
        .I3(ActiveArea_IBUF),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h56A6FFFF)) 
    \q[2]_i_1__0 
       (.I0(\green[0]_0 ),
        .I1(green_IBUF[6]),
        .I2(\q_reg[4]_0 ),
        .I3(\q[5]_i_4__0_n_0 ),
        .I4(ActiveArea_IBUF),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h0880)) 
    \q[3]_i_1__0 
       (.I0(ActiveArea_IBUF),
        .I1(\q_reg[4]_0 ),
        .I2(green_IBUF[6]),
        .I3(\q[5]_i_4__0_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hA656FFFF)) 
    \q[4]_i_1__0 
       (.I0(\green[4]_0 ),
        .I1(green_IBUF[6]),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[4]_1 ),
        .I4(ActiveArea_IBUF),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h0880)) 
    \q[5]_i_1__0 
       (.I0(ActiveArea_IBUF),
        .I1(\q_reg[4]_0 ),
        .I2(green_IBUF[3]),
        .I3(\q[5]_i_4__0_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB2DDB244)) 
    \q[5]_i_4__0 
       (.I0(cnt0__0_carry__0_i_7_n_0),
        .I1(\green[7]_2 ),
        .I2(\q[7]_i_6_n_0 ),
        .I3(Q[7]),
        .I4(\q[7]_i_7_n_0 ),
        .O(\q[5]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hA656FFFF)) 
    \q[6]_i_1__0 
       (.I0(green[0]),
        .I1(green_IBUF[6]),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[4]_1 ),
        .I4(ActiveArea_IBUF),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \q[7]_i_1__0 
       (.I0(ActiveArea_IBUF),
        .I1(\q_reg[4]_0 ),
        .I2(green_IBUF[6]),
        .I3(\q_reg[4]_1 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h00000000FFFF6FFF)) 
    \q[7]_i_3__0 
       (.I0(green[7]),
        .I1(green[6]),
        .I2(cnt0__0_carry_i_14_n_0),
        .I3(cnt0__0_carry_i_8__0_n_0),
        .I4(cnt0__0_carry_i_15__0_n_0),
        .I5(\cnt_reg[3]_5 ),
        .O(\q_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h4D224DBB)) 
    \q[7]_i_4__0 
       (.I0(cnt0__0_carry__0_i_7_n_0),
        .I1(\green[7]_2 ),
        .I2(\q[7]_i_6_n_0 ),
        .I3(Q[7]),
        .I4(\q[7]_i_7_n_0 ),
        .O(\q_reg[4]_1 ));
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \q[7]_i_6 
       (.I0(\q_reg[5]_0 ),
        .I1(green[6]),
        .I2(green[7]),
        .I3(\green[7]_0 ),
        .I4(\green[7]_1 ),
        .O(\q[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDD4DFFFF0000DD4D)) 
    \q[7]_i_7 
       (.I0(green[7]),
        .I1(green[6]),
        .I2(green[3]),
        .I3(cnt0__23_carry_i_8__0_n_0),
        .I4(\green[7]_1 ),
        .I5(\green[7]_0 ),
        .O(\q[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \q[8]_i_1__0 
       (.I0(green_IBUF[6]),
        .I1(ActiveArea_IBUF),
        .O(D[8]));
endmodule

(* ORIG_REF_NAME = "NumberCnt" *) 
module NumberCnt_4
   (cnt_reg,
    \cnt_reg[3]_0 ,
    green,
    \green[0]_0 ,
    \green[3]_0 ,
    \green[3]_1 ,
    \green[4]_0 ,
    \green[4]_1 ,
    \green[4]_2 ,
    \green[4]_3 ,
    q_reg,
    \q_reg[4]_0 ,
    \q_reg[4]_1 ,
    \q_reg[5]_0 ,
    \q_reg[5]_1 ,
    \q_reg[5]_2 ,
    green_IBUF);
  output [3:3]cnt_reg;
  output \cnt_reg[3]_0 ;
  input [7:0]green;
  input \green[0]_0 ;
  input \green[3]_0 ;
  input \green[3]_1 ;
  input \green[4]_0 ;
  input \green[4]_1 ;
  input \green[4]_2 ;
  input \green[4]_3 ;
  output [5:4]q_reg;
  output \q_reg[4]_0 ;
  output \q_reg[4]_1 ;
  output \q_reg[5]_0 ;
  output \q_reg[5]_1 ;
  output \q_reg[5]_2 ;
  input [6:0]green_IBUF;

  wire cnt0__0_carry_i_18_n_0;
  wire cnt0__0_carry_i_19_n_0;
  wire cnt0__0_carry_i_20_n_0;
  wire cnt0__0_carry_i_22_n_0;
  wire cnt0__0_carry_i_23_n_0;
  wire cnt0__0_carry_i_26_n_0;
  wire cnt0__0_carry_i_27_n_0;
  wire cnt0__0_carry_i_28_n_0;
  wire cnt0__0_carry_i_29_n_0;
  wire cnt0__0_carry_i_30_n_0;
  wire cnt0__0_carry_i_31_n_0;
  wire [3:3]cnt_reg;
  wire \cnt_reg[3]_0 ;
  wire [7:0]green;
  wire \green[0]_0 ;
  wire \green[3]_1 ;
  wire \green[4]_0 ;
  wire \green[4]_1 ;
  wire \green[4]_2 ;
  wire [6:0]green_IBUF;
  wire [5:4]q_reg;
  wire \q_reg[4]_0 ;
  wire \q_reg[4]_1 ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_1 ;
  wire \q_reg[5]_2 ;

  LUT2 #(
    .INIT(4'h1)) 
    cnt0__0_carry__0_i_10
       (.I0(\green[3]_1 ),
        .I1(green_IBUF[4]),
        .O(\q_reg[5]_2 ));
  LUT4 #(
    .INIT(16'h8000)) 
    cnt0__0_carry__0_i_8
       (.I0(green[7]),
        .I1(\green[4]_0 ),
        .I2(green[4]),
        .I3(green[5]),
        .O(\q_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hBBFC8830)) 
    cnt0__0_carry_i_10
       (.I0(cnt0__0_carry_i_20_n_0),
        .I1(\green[4]_0 ),
        .I2(cnt0__0_carry_i_22_n_0),
        .I3(green[0]),
        .I4(cnt0__0_carry_i_23_n_0),
        .O(\q_reg[4]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_11
       (.I0(green[4]),
        .I1(\green[4]_0 ),
        .O(\cnt_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__0_carry_i_12
       (.I0(\green[4]_0 ),
        .I1(\green[4]_2 ),
        .O(\q_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hBBFC8830)) 
    cnt0__0_carry_i_16
       (.I0(cnt0__0_carry_i_26_n_0),
        .I1(\green[4]_0 ),
        .I2(cnt0__0_carry_i_27_n_0),
        .I3(green[0]),
        .I4(cnt0__0_carry_i_28_n_0),
        .O(\q_reg[5]_1 ));
  LUT5 #(
    .INIT(32'hFCE230E2)) 
    cnt0__0_carry_i_17
       (.I0(cnt0__0_carry_i_29_n_0),
        .I1(green[5]),
        .I2(cnt0__0_carry_i_30_n_0),
        .I3(green[4]),
        .I4(cnt0__0_carry_i_31_n_0),
        .O(q_reg[5]));
  LUT3 #(
    .INIT(8'h42)) 
    cnt0__0_carry_i_18
       (.I0(green[0]),
        .I1(\green[4]_2 ),
        .I2(\green[3]_1 ),
        .O(cnt0__0_carry_i_18_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    cnt0__0_carry_i_19
       (.I0(green[0]),
        .I1(\green[4]_2 ),
        .I2(\green[3]_1 ),
        .O(cnt0__0_carry_i_19_n_0));
  LUT3 #(
    .INIT(8'h63)) 
    cnt0__0_carry_i_20
       (.I0(\green[0]_0 ),
        .I1(green[5]),
        .I2(\green[4]_1 ),
        .O(cnt0__0_carry_i_20_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    cnt0__0_carry_i_22
       (.I0(\green[0]_0 ),
        .I1(green[5]),
        .I2(\green[4]_1 ),
        .O(cnt0__0_carry_i_22_n_0));
  LUT3 #(
    .INIT(8'h39)) 
    cnt0__0_carry_i_23
       (.I0(\green[0]_0 ),
        .I1(green[5]),
        .I2(\green[4]_1 ),
        .O(cnt0__0_carry_i_23_n_0));
  LUT3 #(
    .INIT(8'h15)) 
    cnt0__0_carry_i_26
       (.I0(\green[0]_0 ),
        .I1(green[5]),
        .I2(\green[4]_1 ),
        .O(cnt0__0_carry_i_26_n_0));
  LUT3 #(
    .INIT(8'h76)) 
    cnt0__0_carry_i_27
       (.I0(\green[0]_0 ),
        .I1(green[5]),
        .I2(\green[4]_1 ),
        .O(cnt0__0_carry_i_27_n_0));
  LUT3 #(
    .INIT(8'h57)) 
    cnt0__0_carry_i_28
       (.I0(\green[0]_0 ),
        .I1(green[5]),
        .I2(\green[4]_1 ),
        .O(cnt0__0_carry_i_28_n_0));
  LUT4 #(
    .INIT(16'hCCC8)) 
    cnt0__0_carry_i_29
       (.I0(\green[4]_0 ),
        .I1(green[0]),
        .I2(\green[4]_1 ),
        .I3(\green[4]_2 ),
        .O(cnt0__0_carry_i_29_n_0));
  LUT4 #(
    .INIT(16'hECCC)) 
    cnt0__0_carry_i_30
       (.I0(\green[4]_0 ),
        .I1(green[0]),
        .I2(\green[4]_1 ),
        .I3(\green[4]_2 ),
        .O(cnt0__0_carry_i_30_n_0));
  LUT4 #(
    .INIT(16'h7EEC)) 
    cnt0__0_carry_i_31
       (.I0(\green[4]_0 ),
        .I1(green[0]),
        .I2(\green[4]_1 ),
        .I3(\green[4]_2 ),
        .O(cnt0__0_carry_i_31_n_0));
  LUT4 #(
    .INIT(16'h1EB4)) 
    cnt0__0_carry_i_9
       (.I0(green[4]),
        .I1(cnt0__0_carry_i_18_n_0),
        .I2(\green[3]_1 ),
        .I3(cnt0__0_carry_i_19_n_0),
        .O(q_reg[4]));
  LUT3 #(
    .INIT(8'h96)) 
    cnt0__23_carry_i_9
       (.I0(\green[3]_1 ),
        .I1(green_IBUF[1]),
        .I2(\cnt_reg[3]_0 ),
        .O(cnt_reg));
endmodule

(* ORIG_REF_NAME = "NumberCnt" *) 
module NumberCnt_5
   (ActiveArea_IBUF,
    blue,
    \blue[0]_0 ,
    \blue[3]_0 ,
    \blue[4]_0 ,
    \blue[7]_0 ,
    \blue[7]_1 ,
    \blue[7]_2 ,
    \blue[7]_3 ,
    \blue[7]_4 ,
    \cnt_reg[3]_5 ,
    hSync_IBUF,
    q_reg,
    \q_reg[2]_0 ,
    \q_reg[2]_1 ,
    \q_reg[2]_2 ,
    \q_reg[2]_3 ,
    \q_reg[2]_4 ,
    vSync_IBUF,
    D,
    DI,
    Q,
    S,
    blue_IBUF,
    cnt0,
    cnt00_in,
    cnt2,
    \cnt_reg[3] ,
    \cnt_reg[3]_0 ,
    \cnt_reg[3]_1 ,
    \cnt_reg[3]_2 ,
    \cnt_reg[3]_3 ,
    \cnt_reg[3]_4 ,
    \cnt_reg[7] ,
    \cnt_reg[7]_0 ,
    \cnt_reg[7]_1 ,
    \cnt_reg[7]_2 ,
    lopt);
  input ActiveArea_IBUF;
  input [7:0]blue;
  input \blue[0]_0 ;
  input \blue[3]_0 ;
  input \blue[4]_0 ;
  input \blue[7]_0 ;
  input \blue[7]_1 ;
  input \blue[7]_2 ;
  input \blue[7]_3 ;
  input \blue[7]_4 ;
  input \cnt_reg[3]_5 ;
  input hSync_IBUF;
  output [9:2]q_reg;
  output \q_reg[2]_0 ;
  output \q_reg[2]_1 ;
  output \q_reg[2]_2 ;
  output \q_reg[2]_3 ;
  output \q_reg[2]_4 ;
  input vSync_IBUF;
  output [8:0]D;
  output [2:0]DI;
  input [7:0]Q;
  output [3:0]S;
  input [7:0]blue_IBUF;
  input [7:0]cnt0;
  input [7:0]cnt00_in;
  output [0:0]cnt2;
  output [3:0]\cnt_reg[3] ;
  output [3:0]\cnt_reg[3]_0 ;
  output [3:0]\cnt_reg[3]_1 ;
  output [1:0]\cnt_reg[3]_2 ;
  output [3:0]\cnt_reg[3]_3 ;
  output [1:0]\cnt_reg[3]_4 ;
  output [0:0]\cnt_reg[7] ;
  output [2:0]\cnt_reg[7]_0 ;
  output [3:0]\cnt_reg[7]_1 ;
  output [1:0]\cnt_reg[7]_2 ;
  output lopt;

  wire ActiveArea_IBUF;
  wire [8:0]D;
  wire [2:0]DI;
  wire [7:0]\^Q ;
  wire [3:0]S;
  wire [7:0]cnt0;
  wire [7:0]cnt00_in;
  wire cnt0__0_carry__0_i_8_n_0;
  wire [0:0]\^cnt2 ;
  wire [3:0]\cnt_reg[3] ;
  wire [3:0]\cnt_reg[3]_0 ;
  wire [3:0]\^cnt_reg[3]_1 ;
  wire [1:0]\^cnt_reg[3]_2 ;
  wire [3:0]\^cnt_reg[3]_3 ;
  wire \cnt_reg[3]_5 ;
  wire [0:0]\cnt_reg[7] ;
  wire [3:0]\cnt_reg[7]_1 ;
  wire [1:0]\^cnt_reg[7]_2 ;
  wire hSync_IBUF;
  wire [9:2]\^q_reg ;
  wire \q_reg[2]_0 ;
  wire vSync_IBUF;

  assign \^Q [6:0] = Q[6:0];
  assign \cnt_reg[3]_1 [3] = \^cnt_reg[3]_1 [3];
  assign \cnt_reg[3]_1 [2] = \^Q [2];
  assign \cnt_reg[3]_1 [1] = \^cnt_reg[3]_1 [1];
  assign \cnt_reg[3]_1 [0] = \^Q [0];
  assign \cnt_reg[3]_2 [0] = \^cnt2 [0];
  assign \cnt_reg[3]_3 [3] = \^cnt_reg[3]_3 [3];
  assign \cnt_reg[3]_3 [2:0] = \^Q [2:0];
  assign \cnt_reg[3]_4 [1] = \^cnt2 [0];
  assign \cnt_reg[3]_4 [0] = \^cnt2 [0];
  assign \cnt_reg[7]_0 [2:0] = \^Q [5:3];
  assign \cnt_reg[7]_2 [1] = \^Q [5];
  assign \cnt_reg[7]_2 [0] = \^cnt_reg[7]_2 [0];
  assign lopt = \^cnt_reg[3]_2 [1];
  assign q_reg[9] = \^q_reg [9];
  assign q_reg[2] = \cnt_reg[3]_5 ;
  assign \q_reg[2]_0  = Q[7];
  assign \q_reg[2]_1  = cnt0__0_carry__0_i_8_n_0;
  GND GND
       (.G(\^cnt2 ));
  VCC VCC
       (.P(cnt0__0_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt0__0_carry__0_i_2
       (.I0(\^Q [3]),
        .I1(\^Q [2]),
        .O(\cnt_reg[7] ));
  LUT3 #(
    .INIT(8'h78)) 
    cnt0__0_carry__0_i_6
       (.I0(\^Q [2]),
        .I1(\^Q [3]),
        .I2(\^Q [4]),
        .O(\^cnt_reg[7]_2 [0]));
  (* HLUTNM = "lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    cnt0__0_carry_i_1
       (.I0(\^Q [2]),
        .O(\^cnt_reg[3]_2 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    cnt0__0_carry_i_4
       (.I0(\^Q [2]),
        .I1(\^Q [2]),
        .I2(\^Q [3]),
        .O(\^cnt_reg[3]_1 [3]));
  (* HLUTNM = "lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    cnt0__0_carry_i_6
       (.I0(\^Q [1]),
        .O(\^cnt_reg[3]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__23_carry__0_i_4
       (.I0(\q_reg[2]_0 ),
        .I1(\^Q [6]),
        .O(\cnt_reg[7]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__23_carry__0_i_5
       (.I0(\^Q [5]),
        .I1(\^Q [6]),
        .O(\cnt_reg[7]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__23_carry__0_i_6
       (.I0(\^Q [4]),
        .I1(\^Q [5]),
        .O(\cnt_reg[7]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__23_carry__0_i_7
       (.I0(\^Q [3]),
        .I1(\^Q [4]),
        .O(\cnt_reg[7]_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0__23_carry_i_3
       (.I0(\^Q [3]),
        .O(\^cnt_reg[3]_3 [3]));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_carry__0_i_1
       (.I0(\^Q [6]),
        .I1(\cnt_reg[3]_5 ),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_carry__0_i_2
       (.I0(\^Q [5]),
        .I1(\cnt_reg[3]_5 ),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_carry__0_i_3
       (.I0(\^Q [4]),
        .I1(\cnt_reg[3]_5 ),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'hFFE2)) 
    cnt_carry__0_i_4
       (.I0(cnt00_in[7]),
        .I1(\q_reg[2]_0 ),
        .I2(cnt0[7]),
        .I3(\cnt_reg[3]_5 ),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h77744474)) 
    cnt_carry__0_i_5
       (.I0(\^Q [6]),
        .I1(\cnt_reg[3]_5 ),
        .I2(cnt00_in[6]),
        .I3(\q_reg[2]_0 ),
        .I4(cnt0[6]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h77744474)) 
    cnt_carry__0_i_6
       (.I0(\^Q [5]),
        .I1(\cnt_reg[3]_5 ),
        .I2(cnt00_in[5]),
        .I3(\q_reg[2]_0 ),
        .I4(cnt0[5]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h77744474)) 
    cnt_carry__0_i_7
       (.I0(\^Q [4]),
        .I1(\cnt_reg[3]_5 ),
        .I2(cnt00_in[4]),
        .I3(\q_reg[2]_0 ),
        .I4(cnt0[4]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_carry_i_1
       (.I0(\^Q [3]),
        .I1(\cnt_reg[3]_5 ),
        .O(\cnt_reg[3] [3]));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_carry_i_2
       (.I0(\^Q [2]),
        .I1(\cnt_reg[3]_5 ),
        .O(\cnt_reg[3] [2]));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_carry_i_3
       (.I0(\^Q [1]),
        .I1(\cnt_reg[3]_5 ),
        .O(\cnt_reg[3] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_carry_i_4
       (.I0(\^Q [0]),
        .I1(\cnt_reg[3]_5 ),
        .O(\cnt_reg[3] [0]));
  LUT5 #(
    .INIT(32'h77744474)) 
    cnt_carry_i_5
       (.I0(\^Q [3]),
        .I1(\cnt_reg[3]_5 ),
        .I2(cnt00_in[3]),
        .I3(\q_reg[2]_0 ),
        .I4(cnt0[3]),
        .O(\cnt_reg[3]_0 [3]));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    cnt_carry_i_6
       (.I0(\^Q [2]),
        .I1(\cnt_reg[3]_5 ),
        .I2(cnt00_in[2]),
        .I3(\q_reg[2]_0 ),
        .I4(cnt0[2]),
        .O(\cnt_reg[3]_0 [2]));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    cnt_carry_i_7
       (.I0(\^Q [1]),
        .I1(\cnt_reg[3]_5 ),
        .I2(cnt00_in[1]),
        .I3(\q_reg[2]_0 ),
        .I4(cnt0[1]),
        .O(\cnt_reg[3]_0 [1]));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    cnt_carry_i_8
       (.I0(\^Q [0]),
        .I1(\cnt_reg[3]_5 ),
        .I2(cnt00_in[0]),
        .I3(\q_reg[2]_0 ),
        .I4(cnt0[0]),
        .O(\cnt_reg[3]_0 [0]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \q[0]_i_1 
       (.I0(\cnt_reg[3]_5 ),
        .I1(\q_reg[2]_0 ),
        .I2(ActiveArea_IBUF),
        .I3(hSync_IBUF),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[1]_i_1 
       (.I0(\q_reg[2]_0 ),
        .I1(\cnt_reg[3]_5 ),
        .I2(ActiveArea_IBUF),
        .I3(hSync_IBUF),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h404F)) 
    \q[2]_i_1 
       (.I0(\cnt_reg[3]_5 ),
        .I1(\q_reg[2]_0 ),
        .I2(ActiveArea_IBUF),
        .I3(hSync_IBUF),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \q[3]_i_1 
       (.I0(\cnt_reg[3]_5 ),
        .I1(\q_reg[2]_0 ),
        .I2(ActiveArea_IBUF),
        .I3(hSync_IBUF),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h404F)) 
    \q[4]_i_1 
       (.I0(\cnt_reg[3]_5 ),
        .I1(\q_reg[2]_0 ),
        .I2(ActiveArea_IBUF),
        .I3(hSync_IBUF),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \q[5]_i_1 
       (.I0(\cnt_reg[3]_5 ),
        .I1(\q_reg[2]_0 ),
        .I2(ActiveArea_IBUF),
        .I3(hSync_IBUF),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h404F)) 
    \q[6]_i_1 
       (.I0(\cnt_reg[3]_5 ),
        .I1(\q_reg[2]_0 ),
        .I2(ActiveArea_IBUF),
        .I3(hSync_IBUF),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \q[7]_i_1 
       (.I0(\cnt_reg[3]_5 ),
        .I1(\q_reg[2]_0 ),
        .I2(ActiveArea_IBUF),
        .I3(hSync_IBUF),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h1)) 
    \q[8]_i_1 
       (.I0(ActiveArea_IBUF),
        .I1(hSync_IBUF),
        .O(D[8]));
  LUT3 #(
    .INIT(8'h14)) 
    \q[9]_i_2 
       (.I0(ActiveArea_IBUF),
        .I1(hSync_IBUF),
        .I2(vSync_IBUF),
        .O(\^q_reg [9]));
endmodule

(* ECO_CHECKSUM = "431b462d" *) 
(* NotValidForBitStream *)
module PipelineCPUTest
   (clk,
    reset,
    step,
    run_mode,
    TMDSp,
    TMDSn,
    TMDSp_clk,
    TMDSn_clk);
  (* CLOCK_BUFFER_TYPE = "none" *) input clk;
  input reset;
  input step;
  input run_mode;
  output [2:0]TMDSp;
  output [2:0]TMDSn;
  output TMDSp_clk;
  output TMDSn_clk;

  wire [27:3]ALUResult;
  wire [31:1]ALU_A;
  wire [30:0]ALU_B;
  wire ActiveArea;
  wire CPUInst_n_105;
  wire CPUInst_n_133;
  wire CPUInst_n_149;
  wire CPUInst_n_150;
  wire CPUInst_n_151;
  wire CPUInst_n_152;
  wire CPUInst_n_153;
  wire CPUInst_n_154;
  wire CPUInst_n_155;
  wire CPUInst_n_156;
  wire CPUInst_n_157;
  wire CPUInst_n_158;
  wire CPUInst_n_159;
  wire CPUInst_n_160;
  wire CPUInst_n_161;
  wire CPUInst_n_162;
  wire CPUInst_n_163;
  wire CPUInst_n_164;
  wire CPUInst_n_165;
  wire CPUInst_n_167;
  wire CPUInst_n_168;
  wire CPUInst_n_169;
  wire CPUInst_n_43;
  wire CPUInst_n_44;
  wire CPUInst_n_45;
  wire CPUInst_n_46;
  wire CPUInst_n_56;
  wire CPUInst_n_57;
  wire CPUInst_n_58;
  wire CPUInst_n_59;
  wire CPUInst_n_60;
  wire CPUInst_n_61;
  wire CPUInst_n_62;
  wire CPUInst_n_63;
  wire CPUInst_n_64;
  wire CPUInst_n_65;
  wire CPUInst_n_66;
  wire CPUInst_n_67;
  wire CPUInst_n_68;
  wire CPUInst_n_69;
  wire CPUInst_n_70;
  wire CPUInst_n_71;
  wire CPUInst_n_72;
  wire [28:3]Instruction_id;
  wire [27:0]MemDout_mem;
  wire [7:1]PC;
  wire [3:1]PosX_reg_reg__0;
  wire [4:1]PosY;
  wire [6:6]PosY__0;
  wire TMDSch0;
  wire TMDSch1;
  wire TMDSch2;
  wire [2:0]TMDSn;
  wire TMDSn_clk;
  wire [2:0]TMDSp;
  wire TMDSp_clk;
  wire char_pixel__6;
  wire [3:0]char_selection;
  (* IBUF_LOW_PWR *) wire clk;
  wire cpu_clk;
  wire cpu_clk_BUFG;
  wire [0:0]green;
  wire hSync;
  wire lopt;
  wire pixel_clk;
  wire r_RegWrite_wb;
  wire reset;
  wire reset_IBUF;
  wire run_mode;
  wire run_mode_IBUF;
  wire step;
  wire step_IBUF;
  wire step_pulse;
  wire step_pulse_reg;
  wire sync_inst_n_10;
  wire sync_inst_n_11;
  wire sync_inst_n_12;
  wire sync_inst_n_13;
  wire sync_inst_n_14;
  wire sync_inst_n_15;
  wire sync_inst_n_16;
  wire sync_inst_n_17;
  wire sync_inst_n_18;
  wire sync_inst_n_19;
  wire sync_inst_n_20;
  wire sync_inst_n_21;
  wire sync_inst_n_25;
  wire sync_inst_n_26;
  wire sync_inst_n_9;
  wire tmds_clk;
  wire [31:0]\u_ID/u_Registers/ReadData10 ;
  wire [31:0]\u_ID/u_Registers/ReadData20 ;
  wire vSync;
  wire [31:0]w_RegWriteData_wb;
  wire NLW_DCM_INST_locked_UNCONNECTED;
  wire NLW_TMDS_inst_pixel_clk_UNCONNECTED;
  wire [7:0]NLW_TMDS_inst_blue_UNCONNECTED;
  wire [7:5]NLW_TMDS_inst_green_UNCONNECTED;
  wire [7:5]NLW_TMDS_inst_red_UNCONNECTED;
  wire NLW_step_pulse_inst_clk_UNCONNECTED;
  wire NLW_step_pulse_inst_reset_UNCONNECTED;
  wire [1:0]\NLW_u_Registers/regs_reg_r1_0_31_0_5_DOD_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r1_0_31_12_17_DOD_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r1_0_31_18_23_DOD_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r1_0_31_24_29_DOD_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r1_0_31_30_31_DOB_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r1_0_31_30_31_DOC_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r1_0_31_30_31_DOD_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r1_0_31_6_11_DOD_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r2_0_31_0_5_DOD_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r2_0_31_12_17_DOD_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r2_0_31_18_23_DOD_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r2_0_31_24_29_DOD_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r2_0_31_30_31_DOB_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r2_0_31_30_31_DOC_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r2_0_31_30_31_DOD_UNCONNECTED ;
  wire [1:0]\NLW_u_Registers/regs_reg_r2_0_31_6_11_DOD_UNCONNECTED ;

initial begin
 $sdf_annotate("Risc5CPU_tb_v_time_impl.sdf",,,,"tool_control");
end
  Risc5CPU CPUInst
       (.ALU_A({ALU_A[31:10],ALU_A[8:5],ALU_A[1]}),
        .D({ALUResult[27],ALUResult[23:22],ALUResult[19],ALUResult[15],ALUResult[11],ALUResult[7],ALUResult[4:3]}),
        .\PosX_reg_reg[4] (sync_inst_n_26),
        .\PosX_reg_reg[4]_0 (sync_inst_n_20),
        .\PosX_reg_reg[4]_1 (sync_inst_n_17),
        .\PosX_reg_reg[4]_2 (sync_inst_n_25),
        .\PosX_reg_reg[4]_3 (sync_inst_n_10),
        .\PosX_reg_reg[4]_4 (sync_inst_n_11),
        .\PosX_reg_reg[4]_5 (sync_inst_n_14),
        .\PosX_reg_reg[4]_6 (sync_inst_n_13),
        .\PosX_reg_reg[4]_7 (sync_inst_n_18),
        .\PosX_reg_reg[4]_8 (sync_inst_n_15),
        .\PosX_reg_reg[4]_9 (sync_inst_n_19),
        .\PosX_reg_reg[5] (sync_inst_n_9),
        .\PosX_reg_reg[5]_0 (sync_inst_n_12),
        .\PosX_reg_reg[5]_1 (sync_inst_n_16),
        .PosY__0(PosY__0),
        .Q({PC[7:5],PC[3:1]}),
        .ReadData10(\u_ID/u_Registers/ReadData10 ),
        .ReadData20(\u_ID/u_Registers/ReadData20 ),
        .SR(reset_IBUF),
        .\TMDSn[2] (CPUInst_n_43),
        .\TMDSn[2]_0 (CPUInst_n_44),
        .\TMDSn[2]_1 (CPUInst_n_45),
        .\TMDSn[2]_10 (CPUInst_n_63),
        .\TMDSn[2]_11 (CPUInst_n_64),
        .\TMDSn[2]_12 (CPUInst_n_65),
        .\TMDSn[2]_13 (CPUInst_n_66),
        .\TMDSn[2]_14 (CPUInst_n_67),
        .\TMDSn[2]_15 (CPUInst_n_68),
        .\TMDSn[2]_16 (CPUInst_n_69),
        .\TMDSn[2]_17 (CPUInst_n_70),
        .\TMDSn[2]_18 (CPUInst_n_71),
        .\TMDSn[2]_19 (CPUInst_n_72),
        .\TMDSn[2]_2 (CPUInst_n_46),
        .\TMDSn[2]_3 (CPUInst_n_56),
        .\TMDSn[2]_4 (CPUInst_n_57),
        .\TMDSn[2]_5 (CPUInst_n_58),
        .\TMDSn[2]_6 (CPUInst_n_59),
        .\TMDSn[2]_7 (CPUInst_n_60),
        .\TMDSn[2]_8 (CPUInst_n_61),
        .\TMDSn[2]_9 (CPUInst_n_62),
        .cpu_clk_BUFG(cpu_clk_BUFG),
        .\mstatus_reg[0] ({Instruction_id[28],Instruction_id[22:19],Instruction_id[15],Instruction_id[12],Instruction_id[8],Instruction_id[3]}),
        .\q_reg[152] (sync_inst_n_21),
        .\q_reg[43] (CPUInst_n_157),
        .\q_reg[44] (CPUInst_n_105),
        .\q_reg[45] (CPUInst_n_163),
        .\q_reg[46] (CPUInst_n_164),
        .\q_reg[47] (CPUInst_n_162),
        .\q_reg[51] ({r_RegWrite_wb,CPUInst_n_167,CPUInst_n_168,CPUInst_n_169}),
        .\q_reg[52] (CPUInst_n_133),
        .\q_reg[55] (CPUInst_n_165),
        .\q_reg[57] (CPUInst_n_149),
        .\q_reg[58] (CPUInst_n_150),
        .\q_reg[60] (CPUInst_n_152),
        .\q_reg[62] (CPUInst_n_151),
        .\q_reg[63] (CPUInst_n_158),
        .\q_reg[65] (CPUInst_n_153),
        .\q_reg[66] (CPUInst_n_154),
        .\q_reg[67] (CPUInst_n_159),
        .\q_reg[69] (CPUInst_n_155),
        .\q_reg[70] (CPUInst_n_156),
        .\q_reg[71] (CPUInst_n_160),
        .\q_reg[72] (CPUInst_n_161),
        .\q_reg[73] ({ALU_B[30],ALU_B[25],ALU_B[21],ALU_B[18],ALU_B[16],ALU_B[13],ALU_B[11:9],ALU_B[5:0]}),
        .spo(MemDout_mem),
        .w_RegWriteData_wb(w_RegWriteData_wb));
  DCM_PLL DCM_INST
       (.clk_in1(clk),
        .clk_out1(pixel_clk),
        .clk_out2(tmds_clk),
        .locked(NLW_DCM_INST_locked_UNCONNECTED),
        .lopt(lopt),
        .reset(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_blue
       (.I(TMDSch0),
        .O(TMDSp[0]),
        .OB(TMDSn[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_clk
       (.I(pixel_clk),
        .O(TMDSp_clk),
        .OB(TMDSn_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_green
       (.I(TMDSch1),
        .O(TMDSp[1]),
        .OB(TMDSn[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_red
       (.I(TMDSch2),
        .O(TMDSp[2]),
        .OB(TMDSn[2]));
  TMDSencode TMDS_inst
       (.ActiveArea(ActiveArea),
        .TMDSch0(TMDSch0),
        .TMDSch1(TMDSch1),
        .TMDSch2(TMDSch2),
        .blue(NLW_TMDS_inst_blue_UNCONNECTED[7:0]),
        .green({NLW_TMDS_inst_green_UNCONNECTED[7],green,NLW_TMDS_inst_green_UNCONNECTED[5],green,green,green,green,green}),
        .hSync(hSync),
        .lopt(lopt),
        .pixel_clk(NLW_TMDS_inst_pixel_clk_UNCONNECTED),
        .red({NLW_TMDS_inst_red_UNCONNECTED[7],green,NLW_TMDS_inst_red_UNCONNECTED[5],green,green,green,green,green}),
        .reset(1'b0),
        .tmds_clk(tmds_clk),
        .vSync(vSync));
  vga_data VgaData
       (.CLK(pixel_clk),
        .Q(PosX_reg_reg__0),
        .a({char_selection,PosY}),
        .char_pixel__6(char_pixel__6));
  BUFG cpu_clk_BUFG_inst
       (.I(cpu_clk),
        .O(cpu_clk_BUFG));
  LUT3 #(
    .INIT(8'hB8)) 
    cpu_clk_BUFG_inst_i_1
       (.I0(pixel_clk),
        .I1(run_mode_IBUF),
        .I2(step_pulse_reg),
        .O(cpu_clk));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF run_mode_IBUF_inst
       (.I(run_mode),
        .O(run_mode_IBUF));
  IBUF step_IBUF_inst
       (.I(step),
        .O(step_IBUF));
  button_process_unit step_pulse_inst
       (.ButtonIn(step_IBUF),
        .ButtonOut(step_pulse),
        .clk(NLW_step_pulse_inst_clk_UNCONNECTED),
        .lopt(lopt),
        .reset(NLW_step_pulse_inst_reset_UNCONNECTED));
  FDRE #(
    .INIT(1'b0)) 
    step_pulse_reg_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(step_pulse),
        .Q(step_pulse_reg),
        .R(1'b0));
  syncGenarator sync_inst
       (.ALU_A({ALU_A[31:10],ALU_A[8:5],ALU_A[1]}),
        .ActiveArea(ActiveArea),
        .CLK(pixel_clk),
        .D({ALUResult[27],ALUResult[23:22],ALUResult[19],ALUResult[15],ALUResult[11],ALUResult[7],ALUResult[4:3]}),
        .\PC_reg_reg[0] (CPUInst_n_45),
        .\PC_reg_reg[7] ({PC[7:5],PC[3:1]}),
        .\PosX_reg_reg[4]_0 (CPUInst_n_46),
        .\PosX_reg_reg[4]_1 (CPUInst_n_59),
        .\PosX_reg_reg[4]_2 (CPUInst_n_61),
        .\PosX_reg_reg[4]_3 (CPUInst_n_58),
        .\PosX_reg_reg[5]_0 (CPUInst_n_62),
        .Q(PosX_reg_reg__0),
        .\TMDSn[2] (PosY__0),
        .\TMDSn[2]_0 (sync_inst_n_9),
        .\TMDSn[2]_1 (sync_inst_n_10),
        .\TMDSn[2]_10 (sync_inst_n_19),
        .\TMDSn[2]_11 (sync_inst_n_20),
        .\TMDSn[2]_12 (sync_inst_n_21),
        .\TMDSn[2]_13 (sync_inst_n_25),
        .\TMDSn[2]_14 (sync_inst_n_26),
        .\TMDSn[2]_2 (sync_inst_n_11),
        .\TMDSn[2]_3 (sync_inst_n_12),
        .\TMDSn[2]_4 (sync_inst_n_13),
        .\TMDSn[2]_5 (sync_inst_n_14),
        .\TMDSn[2]_6 (sync_inst_n_15),
        .\TMDSn[2]_7 (sync_inst_n_16),
        .\TMDSn[2]_8 (sync_inst_n_17),
        .\TMDSn[2]_9 (sync_inst_n_18),
        .a({char_selection,PosY}),
        .char_pixel__6(char_pixel__6),
        .green(green),
        .hSync(hSync),
        .\q_reg[0] (CPUInst_n_43),
        .\q_reg[146] (CPUInst_n_68),
        .\q_reg[146]_0 (CPUInst_n_66),
        .\q_reg[146]_1 (CPUInst_n_67),
        .\q_reg[147] ({ALU_B[30],ALU_B[25],ALU_B[21],ALU_B[18],ALU_B[16],ALU_B[13],ALU_B[11:9],ALU_B[5:0]}),
        .\q_reg[147]_0 (CPUInst_n_157),
        .\q_reg[147]_1 (CPUInst_n_159),
        .\q_reg[147]_10 (CPUInst_n_151),
        .\q_reg[147]_11 (CPUInst_n_150),
        .\q_reg[147]_12 (CPUInst_n_160),
        .\q_reg[147]_13 (CPUInst_n_161),
        .\q_reg[147]_2 (CPUInst_n_158),
        .\q_reg[147]_3 (CPUInst_n_165),
        .\q_reg[147]_4 (CPUInst_n_152),
        .\q_reg[147]_5 (CPUInst_n_155),
        .\q_reg[147]_6 (CPUInst_n_153),
        .\q_reg[147]_7 (CPUInst_n_149),
        .\q_reg[147]_8 (CPUInst_n_156),
        .\q_reg[147]_9 (CPUInst_n_154),
        .\q_reg[149] (CPUInst_n_65),
        .\q_reg[152] (CPUInst_n_64),
        .\q_reg[152]_0 (CPUInst_n_56),
        .\q_reg[152]_1 (CPUInst_n_57),
        .\q_reg[152]_2 (CPUInst_n_60),
        .\q_reg[152]_3 (CPUInst_n_63),
        .\q_reg[19] (CPUInst_n_44),
        .\q_reg[19]_0 (CPUInst_n_71),
        .\q_reg[20] (CPUInst_n_69),
        .\q_reg[22] (CPUInst_n_70),
        .\q_reg[28] (CPUInst_n_72),
        .\q_reg[28]_0 ({Instruction_id[28],Instruction_id[19],Instruction_id[12],Instruction_id[8],Instruction_id[3]}),
        .\q_reg[5] (CPUInst_n_163),
        .\q_reg[6] (CPUInst_n_164),
        .\q_reg[7] (CPUInst_n_162),
        .\q_reg[82] (CPUInst_n_105),
        .\q_reg[91] (CPUInst_n_133),
        .spo(MemDout_mem),
        .vSync(vSync));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_UNIQ_BASE_ \u_Registers/regs_reg_r1_0_31_0_5 
       (.ADDRA({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRB({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRC({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRD({CPUInst_n_167,CPUInst_n_167,CPUInst_n_167,CPUInst_n_168,CPUInst_n_169}),
        .DIA(w_RegWriteData_wb[1:0]),
        .DIB(w_RegWriteData_wb[3:2]),
        .DIC(w_RegWriteData_wb[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\u_ID/u_Registers/ReadData10 [1:0]),
        .DOB(\u_ID/u_Registers/ReadData10 [3:2]),
        .DOC(\u_ID/u_Registers/ReadData10 [5:4]),
        .DOD(\NLW_u_Registers/regs_reg_r1_0_31_0_5_DOD_UNCONNECTED [1:0]),
        .WCLK(cpu_clk_BUFG),
        .WE(r_RegWrite_wb));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD63 \u_Registers/regs_reg_r1_0_31_12_17 
       (.ADDRA({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRB({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRC({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRD({CPUInst_n_167,CPUInst_n_167,CPUInst_n_167,CPUInst_n_168,CPUInst_n_169}),
        .DIA(w_RegWriteData_wb[13:12]),
        .DIB(w_RegWriteData_wb[15:14]),
        .DIC(w_RegWriteData_wb[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(\u_ID/u_Registers/ReadData10 [13:12]),
        .DOB(\u_ID/u_Registers/ReadData10 [15:14]),
        .DOC(\u_ID/u_Registers/ReadData10 [17:16]),
        .DOD(\NLW_u_Registers/regs_reg_r1_0_31_12_17_DOD_UNCONNECTED [1:0]),
        .WCLK(cpu_clk_BUFG),
        .WE(r_RegWrite_wb));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD64 \u_Registers/regs_reg_r1_0_31_18_23 
       (.ADDRA({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRB({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRC({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRD({CPUInst_n_167,CPUInst_n_167,CPUInst_n_167,CPUInst_n_168,CPUInst_n_169}),
        .DIA(w_RegWriteData_wb[19:18]),
        .DIB(w_RegWriteData_wb[21:20]),
        .DIC(w_RegWriteData_wb[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(\u_ID/u_Registers/ReadData10 [19:18]),
        .DOB(\u_ID/u_Registers/ReadData10 [21:20]),
        .DOC(\u_ID/u_Registers/ReadData10 [23:22]),
        .DOD(\NLW_u_Registers/regs_reg_r1_0_31_18_23_DOD_UNCONNECTED [1:0]),
        .WCLK(cpu_clk_BUFG),
        .WE(r_RegWrite_wb));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD65 \u_Registers/regs_reg_r1_0_31_24_29 
       (.ADDRA({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRB({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRC({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRD({CPUInst_n_167,CPUInst_n_167,CPUInst_n_167,CPUInst_n_168,CPUInst_n_169}),
        .DIA(w_RegWriteData_wb[25:24]),
        .DIB(w_RegWriteData_wb[27:26]),
        .DIC(w_RegWriteData_wb[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(\u_ID/u_Registers/ReadData10 [25:24]),
        .DOB(\u_ID/u_Registers/ReadData10 [27:26]),
        .DOC(\u_ID/u_Registers/ReadData10 [29:28]),
        .DOD(\NLW_u_Registers/regs_reg_r1_0_31_24_29_DOD_UNCONNECTED [1:0]),
        .WCLK(cpu_clk_BUFG),
        .WE(r_RegWrite_wb));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD66 \u_Registers/regs_reg_r1_0_31_30_31 
       (.ADDRA({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRB({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRC({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRD({CPUInst_n_167,CPUInst_n_167,CPUInst_n_167,CPUInst_n_168,CPUInst_n_169}),
        .DIA(w_RegWriteData_wb[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(\u_ID/u_Registers/ReadData10 [31:30]),
        .DOB(\NLW_u_Registers/regs_reg_r1_0_31_30_31_DOB_UNCONNECTED [1:0]),
        .DOC(\NLW_u_Registers/regs_reg_r1_0_31_30_31_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_u_Registers/regs_reg_r1_0_31_30_31_DOD_UNCONNECTED [1:0]),
        .WCLK(cpu_clk_BUFG),
        .WE(r_RegWrite_wb));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD67 \u_Registers/regs_reg_r1_0_31_6_11 
       (.ADDRA({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRB({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRC({Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[19],Instruction_id[15]}),
        .ADDRD({CPUInst_n_167,CPUInst_n_167,CPUInst_n_167,CPUInst_n_168,CPUInst_n_169}),
        .DIA(w_RegWriteData_wb[7:6]),
        .DIB(w_RegWriteData_wb[9:8]),
        .DIC(w_RegWriteData_wb[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(\u_ID/u_Registers/ReadData10 [7:6]),
        .DOB(\u_ID/u_Registers/ReadData10 [9:8]),
        .DOC(\u_ID/u_Registers/ReadData10 [11:10]),
        .DOD(\NLW_u_Registers/regs_reg_r1_0_31_6_11_DOD_UNCONNECTED [1:0]),
        .WCLK(cpu_clk_BUFG),
        .WE(r_RegWrite_wb));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD68 \u_Registers/regs_reg_r2_0_31_0_5 
       (.ADDRA({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRB({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRC({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRD({CPUInst_n_167,CPUInst_n_167,CPUInst_n_167,CPUInst_n_168,CPUInst_n_169}),
        .DIA(w_RegWriteData_wb[1:0]),
        .DIB(w_RegWriteData_wb[3:2]),
        .DIC(w_RegWriteData_wb[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\u_ID/u_Registers/ReadData20 [1:0]),
        .DOB(\u_ID/u_Registers/ReadData20 [3:2]),
        .DOC(\u_ID/u_Registers/ReadData20 [5:4]),
        .DOD(\NLW_u_Registers/regs_reg_r2_0_31_0_5_DOD_UNCONNECTED [1:0]),
        .WCLK(cpu_clk_BUFG),
        .WE(r_RegWrite_wb));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD69 \u_Registers/regs_reg_r2_0_31_12_17 
       (.ADDRA({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRB({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRC({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRD({CPUInst_n_167,CPUInst_n_167,CPUInst_n_167,CPUInst_n_168,CPUInst_n_169}),
        .DIA(w_RegWriteData_wb[13:12]),
        .DIB(w_RegWriteData_wb[15:14]),
        .DIC(w_RegWriteData_wb[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(\u_ID/u_Registers/ReadData20 [13:12]),
        .DOB(\u_ID/u_Registers/ReadData20 [15:14]),
        .DOC(\u_ID/u_Registers/ReadData20 [17:16]),
        .DOD(\NLW_u_Registers/regs_reg_r2_0_31_12_17_DOD_UNCONNECTED [1:0]),
        .WCLK(cpu_clk_BUFG),
        .WE(r_RegWrite_wb));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD70 \u_Registers/regs_reg_r2_0_31_18_23 
       (.ADDRA({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRB({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRC({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRD({CPUInst_n_167,CPUInst_n_167,CPUInst_n_167,CPUInst_n_168,CPUInst_n_169}),
        .DIA(w_RegWriteData_wb[19:18]),
        .DIB(w_RegWriteData_wb[21:20]),
        .DIC(w_RegWriteData_wb[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(\u_ID/u_Registers/ReadData20 [19:18]),
        .DOB(\u_ID/u_Registers/ReadData20 [21:20]),
        .DOC(\u_ID/u_Registers/ReadData20 [23:22]),
        .DOD(\NLW_u_Registers/regs_reg_r2_0_31_18_23_DOD_UNCONNECTED [1:0]),
        .WCLK(cpu_clk_BUFG),
        .WE(r_RegWrite_wb));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD71 \u_Registers/regs_reg_r2_0_31_24_29 
       (.ADDRA({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRB({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRC({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRD({CPUInst_n_167,CPUInst_n_167,CPUInst_n_167,CPUInst_n_168,CPUInst_n_169}),
        .DIA(w_RegWriteData_wb[25:24]),
        .DIB(w_RegWriteData_wb[27:26]),
        .DIC(w_RegWriteData_wb[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(\u_ID/u_Registers/ReadData20 [25:24]),
        .DOB(\u_ID/u_Registers/ReadData20 [27:26]),
        .DOC(\u_ID/u_Registers/ReadData20 [29:28]),
        .DOD(\NLW_u_Registers/regs_reg_r2_0_31_24_29_DOD_UNCONNECTED [1:0]),
        .WCLK(cpu_clk_BUFG),
        .WE(r_RegWrite_wb));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD72 \u_Registers/regs_reg_r2_0_31_30_31 
       (.ADDRA({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRB({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRC({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRD({CPUInst_n_167,CPUInst_n_167,CPUInst_n_167,CPUInst_n_168,CPUInst_n_169}),
        .DIA(w_RegWriteData_wb[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(\u_ID/u_Registers/ReadData20 [31:30]),
        .DOB(\NLW_u_Registers/regs_reg_r2_0_31_30_31_DOB_UNCONNECTED [1:0]),
        .DOC(\NLW_u_Registers/regs_reg_r2_0_31_30_31_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_u_Registers/regs_reg_r2_0_31_30_31_DOD_UNCONNECTED [1:0]),
        .WCLK(cpu_clk_BUFG),
        .WE(r_RegWrite_wb));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD73 \u_Registers/regs_reg_r2_0_31_6_11 
       (.ADDRA({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRB({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRC({Instruction_id[3],Instruction_id[3],Instruction_id[22:20]}),
        .ADDRD({CPUInst_n_167,CPUInst_n_167,CPUInst_n_167,CPUInst_n_168,CPUInst_n_169}),
        .DIA(w_RegWriteData_wb[7:6]),
        .DIB(w_RegWriteData_wb[9:8]),
        .DIC(w_RegWriteData_wb[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(\u_ID/u_Registers/ReadData20 [7:6]),
        .DOB(\u_ID/u_Registers/ReadData20 [9:8]),
        .DOC(\u_ID/u_Registers/ReadData20 [11:10]),
        .DOD(\NLW_u_Registers/regs_reg_r2_0_31_6_11_DOD_UNCONNECTED [1:0]),
        .WCLK(cpu_clk_BUFG),
        .WE(r_RegWrite_wb));
endmodule

module Risc5CPU
   (spo,
    Q,
    \mstatus_reg[0] ,
    \TMDSn[2] ,
    \TMDSn[2]_0 ,
    \TMDSn[2]_1 ,
    \TMDSn[2]_2 ,
    D,
    \TMDSn[2]_3 ,
    \TMDSn[2]_4 ,
    \TMDSn[2]_5 ,
    \TMDSn[2]_6 ,
    \TMDSn[2]_7 ,
    \TMDSn[2]_8 ,
    \TMDSn[2]_9 ,
    \TMDSn[2]_10 ,
    \TMDSn[2]_11 ,
    \TMDSn[2]_12 ,
    \TMDSn[2]_13 ,
    \TMDSn[2]_14 ,
    \TMDSn[2]_15 ,
    \TMDSn[2]_16 ,
    \TMDSn[2]_17 ,
    \TMDSn[2]_18 ,
    \TMDSn[2]_19 ,
    w_RegWriteData_wb,
    \q_reg[44] ,
    ALU_A,
    \q_reg[52] ,
    \q_reg[73] ,
    \q_reg[57] ,
    \q_reg[58] ,
    \q_reg[62] ,
    \q_reg[60] ,
    \q_reg[65] ,
    \q_reg[66] ,
    \q_reg[69] ,
    \q_reg[70] ,
    \q_reg[43] ,
    \q_reg[63] ,
    \q_reg[67] ,
    \q_reg[71] ,
    \q_reg[72] ,
    \q_reg[47] ,
    \q_reg[45] ,
    \q_reg[46] ,
    \q_reg[55] ,
    \q_reg[51] ,
    cpu_clk_BUFG,
    SR,
    \PosX_reg_reg[4] ,
    \PosX_reg_reg[4]_0 ,
    \PosX_reg_reg[4]_1 ,
    \PosX_reg_reg[4]_2 ,
    \PosX_reg_reg[4]_3 ,
    \PosX_reg_reg[5] ,
    \PosX_reg_reg[4]_4 ,
    \PosX_reg_reg[5]_0 ,
    \PosX_reg_reg[4]_5 ,
    \PosX_reg_reg[4]_6 ,
    \PosX_reg_reg[4]_7 ,
    \q_reg[152] ,
    \PosX_reg_reg[4]_8 ,
    \PosX_reg_reg[5]_1 ,
    \PosX_reg_reg[4]_9 ,
    PosY__0,
    ReadData20,
    ReadData10);
  output [27:0]spo;
  output [5:0]Q;
  output [8:0]\mstatus_reg[0] ;
  output \TMDSn[2] ;
  output \TMDSn[2]_0 ;
  output \TMDSn[2]_1 ;
  output \TMDSn[2]_2 ;
  output [8:0]D;
  output \TMDSn[2]_3 ;
  output \TMDSn[2]_4 ;
  output \TMDSn[2]_5 ;
  output \TMDSn[2]_6 ;
  output \TMDSn[2]_7 ;
  output \TMDSn[2]_8 ;
  output \TMDSn[2]_9 ;
  output \TMDSn[2]_10 ;
  output \TMDSn[2]_11 ;
  output \TMDSn[2]_12 ;
  output \TMDSn[2]_13 ;
  output \TMDSn[2]_14 ;
  output \TMDSn[2]_15 ;
  output \TMDSn[2]_16 ;
  output \TMDSn[2]_17 ;
  output \TMDSn[2]_18 ;
  output \TMDSn[2]_19 ;
  output [31:0]w_RegWriteData_wb;
  output \q_reg[44] ;
  output [26:0]ALU_A;
  output \q_reg[52] ;
  output [14:0]\q_reg[73] ;
  output \q_reg[57] ;
  output \q_reg[58] ;
  output \q_reg[62] ;
  output \q_reg[60] ;
  output \q_reg[65] ;
  output \q_reg[66] ;
  output \q_reg[69] ;
  output \q_reg[70] ;
  output \q_reg[43] ;
  output \q_reg[63] ;
  output \q_reg[67] ;
  output \q_reg[71] ;
  output \q_reg[72] ;
  output \q_reg[47] ;
  output \q_reg[45] ;
  output \q_reg[46] ;
  output \q_reg[55] ;
  output [3:0]\q_reg[51] ;
  input cpu_clk_BUFG;
  input [0:0]SR;
  input \PosX_reg_reg[4] ;
  input \PosX_reg_reg[4]_0 ;
  input \PosX_reg_reg[4]_1 ;
  input \PosX_reg_reg[4]_2 ;
  input \PosX_reg_reg[4]_3 ;
  input \PosX_reg_reg[5] ;
  input \PosX_reg_reg[4]_4 ;
  input \PosX_reg_reg[5]_0 ;
  input \PosX_reg_reg[4]_5 ;
  input \PosX_reg_reg[4]_6 ;
  input \PosX_reg_reg[4]_7 ;
  input \q_reg[152] ;
  input \PosX_reg_reg[4]_8 ;
  input \PosX_reg_reg[5]_1 ;
  input \PosX_reg_reg[4]_9 ;
  input [0:0]PosY__0;
  input [31:0]ReadData20;
  input [31:0]ReadData10;

  wire [31:0]ALUResult;
  wire [26:0]ALU_A;
  wire [8:0]D;
  wire [13:7]Instruction_id;
  wire [31:28]MemDout_mem;
  wire [31:0]Next_PC;
  wire [4:0]PC;
  wire [31:6]PC_plus_4;
  wire \PosX_reg_reg[4] ;
  wire \PosX_reg_reg[4]_0 ;
  wire \PosX_reg_reg[4]_1 ;
  wire \PosX_reg_reg[4]_2 ;
  wire \PosX_reg_reg[4]_3 ;
  wire \PosX_reg_reg[4]_4 ;
  wire \PosX_reg_reg[4]_5 ;
  wire \PosX_reg_reg[4]_6 ;
  wire \PosX_reg_reg[4]_7 ;
  wire \PosX_reg_reg[4]_8 ;
  wire \PosX_reg_reg[4]_9 ;
  wire \PosX_reg_reg[5] ;
  wire \PosX_reg_reg[5]_0 ;
  wire \PosX_reg_reg[5]_1 ;
  wire [0:0]PosY__0;
  wire [5:0]Q;
  wire [31:0]ReadData10;
  wire [31:0]ReadData20;
  wire [0:0]SR;
  wire Stall;
  wire \TMDSn[2] ;
  wire \TMDSn[2]_0 ;
  wire \TMDSn[2]_1 ;
  wire \TMDSn[2]_10 ;
  wire \TMDSn[2]_11 ;
  wire \TMDSn[2]_12 ;
  wire \TMDSn[2]_13 ;
  wire \TMDSn[2]_14 ;
  wire \TMDSn[2]_15 ;
  wire \TMDSn[2]_16 ;
  wire \TMDSn[2]_17 ;
  wire \TMDSn[2]_18 ;
  wire \TMDSn[2]_19 ;
  wire \TMDSn[2]_2 ;
  wire \TMDSn[2]_3 ;
  wire \TMDSn[2]_4 ;
  wire \TMDSn[2]_5 ;
  wire \TMDSn[2]_6 ;
  wire \TMDSn[2]_7 ;
  wire \TMDSn[2]_8 ;
  wire \TMDSn[2]_9 ;
  wire cpu_clk_BUFG;
  wire [31:0]final_mem_read_data;
  wire [8:0]\mstatus_reg[0] ;
  wire p_5_in;
  wire \q_reg[152] ;
  wire \q_reg[43] ;
  wire \q_reg[44] ;
  wire \q_reg[45] ;
  wire \q_reg[46] ;
  wire \q_reg[47] ;
  wire [3:0]\q_reg[51] ;
  wire \q_reg[52] ;
  wire \q_reg[55] ;
  wire \q_reg[57] ;
  wire \q_reg[58] ;
  wire \q_reg[60] ;
  wire \q_reg[62] ;
  wire \q_reg[63] ;
  wire \q_reg[65] ;
  wire \q_reg[66] ;
  wire \q_reg[67] ;
  wire \q_reg[69] ;
  wire \q_reg[70] ;
  wire \q_reg[71] ;
  wire \q_reg[72] ;
  wire [14:0]\q_reg[73] ;
  wire [3:0]r_ALUCode_ex;
  wire [1:0]r_ALUSrcB_ex;
  wire [31:0]r_Imm_ex;
  wire r_MemRead_ex;
  wire [31:0]r_MemWriteData_mem;
  wire [31:0]r_PC_ex;
  wire [31:0]r_PC_id;
  wire r_RegWrite_mem;
  wire [2:0]r_rdAddr_ex;
  wire [2:0]r_rdAddr_mem;
  wire [2:0]r_rs1Addr_ex;
  wire [31:0]r_rs1Data_ex;
  wire [2:0]r_rs2Addr_ex;
  wire [31:0]r_rs2Data_ex;
  wire [27:0]spo;
  wire [31:0]\u_CSR/get_new_val2_return ;
  wire [31:0]\u_CSR/get_new_val_return ;
  wire [31:0]\u_CSR/p_1_in ;
  wire u_EX_n_103;
  wire u_EX_n_111;
  wire u_EX_n_115;
  wire u_EX_n_116;
  wire u_EX_n_117;
  wire u_EX_n_118;
  wire u_EX_n_119;
  wire u_EX_n_120;
  wire u_EX_n_121;
  wire u_EX_n_127;
  wire u_EX_n_132;
  wire u_EX_n_137;
  wire u_EX_n_141;
  wire u_EX_n_146;
  wire u_EX_n_149;
  wire u_EX_n_156;
  wire u_EX_n_157;
  wire u_EX_n_158;
  wire u_EX_n_159;
  wire u_EX_n_160;
  wire u_EX_n_161;
  wire u_EX_n_162;
  wire u_EX_n_163;
  wire u_EX_n_164;
  wire u_EX_n_165;
  wire u_EX_n_168;
  wire u_EX_n_169;
  wire u_EX_n_170;
  wire u_EX_n_171;
  wire u_EX_n_172;
  wire u_EX_n_173;
  wire u_EX_n_175;
  wire u_EX_n_176;
  wire u_EX_n_177;
  wire u_EX_n_178;
  wire u_EX_n_179;
  wire u_EX_n_180;
  wire u_EX_n_181;
  wire u_EX_n_182;
  wire u_EX_n_183;
  wire u_EX_n_184;
  wire u_EX_n_185;
  wire u_EX_n_186;
  wire u_EX_n_187;
  wire u_EX_n_188;
  wire u_EX_n_189;
  wire u_EX_n_190;
  wire u_EX_n_191;
  wire u_EX_n_192;
  wire u_EX_n_193;
  wire u_EX_n_194;
  wire u_EX_n_195;
  wire u_EX_n_196;
  wire u_EX_n_197;
  wire u_EX_n_198;
  wire u_EX_n_199;
  wire u_EX_n_200;
  wire u_EX_n_201;
  wire u_EX_n_202;
  wire u_EX_n_203;
  wire u_EX_n_204;
  wire u_EX_n_205;
  wire u_EX_n_206;
  wire u_EX_n_207;
  wire u_EX_n_208;
  wire u_EX_n_209;
  wire u_EX_n_210;
  wire u_EX_n_211;
  wire u_EX_n_212;
  wire u_EX_n_213;
  wire u_EX_n_214;
  wire u_EX_n_215;
  wire u_EX_n_216;
  wire u_EX_n_217;
  wire u_EX_n_218;
  wire u_EX_n_219;
  wire u_EX_n_220;
  wire u_EX_n_221;
  wire u_EX_n_222;
  wire u_EX_n_223;
  wire u_EX_n_224;
  wire u_EX_n_225;
  wire u_EX_n_226;
  wire u_EX_n_227;
  wire u_EX_n_228;
  wire u_EX_n_229;
  wire u_EX_n_230;
  wire u_EX_n_231;
  wire u_EX_n_232;
  wire u_EX_n_233;
  wire u_EX_n_234;
  wire u_EX_n_66;
  wire u_EX_n_67;
  wire u_EX_n_68;
  wire u_EX_n_69;
  wire u_EX_n_70;
  wire u_EX_n_71;
  wire u_EX_n_72;
  wire u_EX_n_78;
  wire u_EX_n_79;
  wire u_EX_n_80;
  wire u_EX_n_81;
  wire u_EX_n_82;
  wire u_EX_n_84;
  wire u_EX_n_87;
  wire u_EX_n_88;
  wire u_EX_n_91;
  wire u_EX_n_96;
  wire u_EX_n_97;
  wire u_EX_n_98;
  wire u_ID_n_0;
  wire u_ID_n_1;
  wire u_ID_n_10;
  wire u_ID_n_100;
  wire u_ID_n_101;
  wire u_ID_n_102;
  wire u_ID_n_103;
  wire u_ID_n_104;
  wire u_ID_n_105;
  wire u_ID_n_106;
  wire u_ID_n_107;
  wire u_ID_n_108;
  wire u_ID_n_109;
  wire u_ID_n_11;
  wire u_ID_n_110;
  wire u_ID_n_111;
  wire u_ID_n_112;
  wire u_ID_n_113;
  wire u_ID_n_114;
  wire u_ID_n_115;
  wire u_ID_n_116;
  wire u_ID_n_117;
  wire u_ID_n_118;
  wire u_ID_n_119;
  wire u_ID_n_12;
  wire u_ID_n_120;
  wire u_ID_n_121;
  wire u_ID_n_122;
  wire u_ID_n_123;
  wire u_ID_n_124;
  wire u_ID_n_125;
  wire u_ID_n_126;
  wire u_ID_n_127;
  wire u_ID_n_128;
  wire u_ID_n_129;
  wire u_ID_n_13;
  wire u_ID_n_130;
  wire u_ID_n_14;
  wire u_ID_n_15;
  wire u_ID_n_157;
  wire u_ID_n_158;
  wire u_ID_n_159;
  wire u_ID_n_16;
  wire u_ID_n_17;
  wire u_ID_n_18;
  wire u_ID_n_19;
  wire u_ID_n_2;
  wire u_ID_n_20;
  wire u_ID_n_21;
  wire u_ID_n_22;
  wire u_ID_n_23;
  wire u_ID_n_24;
  wire u_ID_n_25;
  wire u_ID_n_26;
  wire u_ID_n_27;
  wire u_ID_n_28;
  wire u_ID_n_29;
  wire u_ID_n_3;
  wire u_ID_n_30;
  wire u_ID_n_31;
  wire u_ID_n_32;
  wire u_ID_n_33;
  wire u_ID_n_34;
  wire u_ID_n_35;
  wire u_ID_n_36;
  wire u_ID_n_37;
  wire u_ID_n_38;
  wire u_ID_n_39;
  wire u_ID_n_4;
  wire u_ID_n_40;
  wire u_ID_n_41;
  wire u_ID_n_42;
  wire u_ID_n_43;
  wire u_ID_n_44;
  wire u_ID_n_45;
  wire u_ID_n_46;
  wire u_ID_n_47;
  wire u_ID_n_48;
  wire u_ID_n_49;
  wire u_ID_n_5;
  wire u_ID_n_50;
  wire u_ID_n_51;
  wire u_ID_n_52;
  wire u_ID_n_53;
  wire u_ID_n_54;
  wire u_ID_n_55;
  wire u_ID_n_56;
  wire u_ID_n_57;
  wire u_ID_n_58;
  wire u_ID_n_59;
  wire u_ID_n_6;
  wire u_ID_n_60;
  wire u_ID_n_61;
  wire u_ID_n_62;
  wire u_ID_n_63;
  wire u_ID_n_64;
  wire u_ID_n_65;
  wire u_ID_n_66;
  wire u_ID_n_67;
  wire u_ID_n_68;
  wire u_ID_n_69;
  wire u_ID_n_7;
  wire u_ID_n_70;
  wire u_ID_n_71;
  wire u_ID_n_72;
  wire u_ID_n_73;
  wire u_ID_n_74;
  wire u_ID_n_75;
  wire u_ID_n_76;
  wire u_ID_n_77;
  wire u_ID_n_78;
  wire u_ID_n_79;
  wire u_ID_n_8;
  wire u_ID_n_80;
  wire u_ID_n_81;
  wire u_ID_n_82;
  wire u_ID_n_83;
  wire u_ID_n_84;
  wire u_ID_n_85;
  wire u_ID_n_86;
  wire u_ID_n_87;
  wire u_ID_n_88;
  wire u_ID_n_89;
  wire u_ID_n_9;
  wire u_ID_n_90;
  wire u_ID_n_91;
  wire u_ID_n_92;
  wire u_ID_n_93;
  wire u_ID_n_94;
  wire u_ID_n_95;
  wire u_ID_n_96;
  wire u_ID_n_97;
  wire u_ID_n_98;
  wire u_ID_n_99;
  wire u_IF1_n_0;
  wire u_IF1_n_1;
  wire u_IF1_n_10;
  wire u_IF1_n_11;
  wire u_IF1_n_12;
  wire u_IF1_n_13;
  wire u_IF1_n_14;
  wire u_IF1_n_15;
  wire u_IF1_n_16;
  wire u_IF1_n_17;
  wire u_IF1_n_18;
  wire u_IF1_n_19;
  wire u_IF1_n_2;
  wire u_IF1_n_20;
  wire u_IF1_n_21;
  wire u_IF1_n_22;
  wire u_IF1_n_23;
  wire u_IF1_n_3;
  wire u_IF1_n_32;
  wire u_IF1_n_33;
  wire u_IF1_n_34;
  wire u_IF1_n_35;
  wire u_IF1_n_36;
  wire u_IF1_n_37;
  wire u_IF1_n_38;
  wire u_IF1_n_39;
  wire u_IF1_n_4;
  wire u_IF1_n_40;
  wire u_IF1_n_41;
  wire u_IF1_n_42;
  wire u_IF1_n_43;
  wire u_IF1_n_44;
  wire u_IF1_n_45;
  wire u_IF1_n_46;
  wire u_IF1_n_47;
  wire u_IF1_n_5;
  wire u_IF1_n_6;
  wire u_IF1_n_7;
  wire u_IF1_n_8;
  wire u_IF1_n_9;
  wire u_reg_EX_MEM_n_32;
  wire u_reg_EX_MEM_n_33;
  wire u_reg_EX_MEM_n_34;
  wire u_reg_EX_MEM_n_35;
  wire u_reg_EX_MEM_n_36;
  wire u_reg_EX_MEM_n_37;
  wire u_reg_EX_MEM_n_38;
  wire u_reg_EX_MEM_n_39;
  wire u_reg_EX_MEM_n_40;
  wire u_reg_EX_MEM_n_41;
  wire u_reg_EX_MEM_n_42;
  wire u_reg_EX_MEM_n_43;
  wire u_reg_EX_MEM_n_44;
  wire u_reg_EX_MEM_n_45;
  wire u_reg_EX_MEM_n_46;
  wire u_reg_EX_MEM_n_47;
  wire u_reg_EX_MEM_n_48;
  wire u_reg_EX_MEM_n_49;
  wire u_reg_EX_MEM_n_50;
  wire u_reg_EX_MEM_n_51;
  wire u_reg_EX_MEM_n_52;
  wire u_reg_EX_MEM_n_53;
  wire u_reg_EX_MEM_n_54;
  wire u_reg_EX_MEM_n_55;
  wire u_reg_EX_MEM_n_56;
  wire u_reg_EX_MEM_n_57;
  wire u_reg_EX_MEM_n_58;
  wire u_reg_EX_MEM_n_59;
  wire u_reg_EX_MEM_n_60;
  wire u_reg_EX_MEM_n_61;
  wire u_reg_EX_MEM_n_63;
  wire u_reg_EX_MEM_n_65;
  wire u_reg_ID_EX_n_147;
  wire u_reg_ID_EX_n_148;
  wire u_reg_ID_EX_n_149;
  wire u_reg_ID_EX_n_151;
  wire u_reg_ID_EX_n_163;
  wire u_reg_ID_EX_n_164;
  wire u_reg_ID_EX_n_165;
  wire u_reg_ID_EX_n_166;
  wire u_reg_ID_EX_n_167;
  wire u_reg_ID_EX_n_168;
  wire u_reg_ID_EX_n_169;
  wire u_reg_ID_EX_n_170;
  wire u_reg_ID_EX_n_171;
  wire u_reg_ID_EX_n_172;
  wire u_reg_ID_EX_n_173;
  wire u_reg_ID_EX_n_174;
  wire u_reg_ID_EX_n_175;
  wire u_reg_ID_EX_n_176;
  wire u_reg_ID_EX_n_177;
  wire u_reg_ID_EX_n_178;
  wire u_reg_ID_EX_n_179;
  wire u_reg_ID_EX_n_180;
  wire u_reg_ID_EX_n_181;
  wire u_reg_ID_EX_n_182;
  wire u_reg_ID_EX_n_183;
  wire u_reg_ID_EX_n_184;
  wire u_reg_ID_EX_n_185;
  wire u_reg_ID_EX_n_186;
  wire u_reg_ID_EX_n_187;
  wire u_reg_ID_EX_n_188;
  wire u_reg_ID_EX_n_189;
  wire u_reg_ID_EX_n_190;
  wire u_reg_ID_EX_n_191;
  wire u_reg_ID_EX_n_192;
  wire u_reg_ID_EX_n_193;
  wire u_reg_ID_EX_n_194;
  wire u_reg_ID_EX_n_195;
  wire u_reg_ID_EX_n_196;
  wire u_reg_ID_EX_n_197;
  wire u_reg_ID_EX_n_198;
  wire u_reg_ID_EX_n_199;
  wire u_reg_ID_EX_n_200;
  wire u_reg_ID_EX_n_201;
  wire u_reg_ID_EX_n_202;
  wire u_reg_ID_EX_n_203;
  wire u_reg_ID_EX_n_204;
  wire u_reg_ID_EX_n_205;
  wire u_reg_ID_EX_n_206;
  wire u_reg_ID_EX_n_207;
  wire u_reg_ID_EX_n_208;
  wire u_reg_ID_EX_n_209;
  wire u_reg_ID_EX_n_210;
  wire u_reg_ID_EX_n_211;
  wire u_reg_ID_EX_n_212;
  wire u_reg_ID_EX_n_213;
  wire u_reg_ID_EX_n_214;
  wire u_reg_ID_EX_n_215;
  wire u_reg_ID_EX_n_216;
  wire u_reg_ID_EX_n_217;
  wire u_reg_ID_EX_n_218;
  wire u_reg_ID_EX_n_219;
  wire u_reg_ID_EX_n_220;
  wire u_reg_ID_EX_n_221;
  wire u_reg_ID_EX_n_222;
  wire u_reg_ID_EX_n_223;
  wire u_reg_ID_EX_n_224;
  wire u_reg_ID_EX_n_225;
  wire u_reg_ID_EX_n_226;
  wire u_reg_ID_EX_n_227;
  wire u_reg_ID_EX_n_228;
  wire u_reg_ID_EX_n_229;
  wire u_reg_ID_EX_n_230;
  wire u_reg_ID_EX_n_231;
  wire u_reg_ID_EX_n_232;
  wire u_reg_ID_EX_n_233;
  wire u_reg_ID_EX_n_234;
  wire u_reg_ID_EX_n_235;
  wire u_reg_ID_EX_n_236;
  wire u_reg_ID_EX_n_237;
  wire u_reg_ID_EX_n_238;
  wire u_reg_ID_EX_n_239;
  wire u_reg_ID_EX_n_240;
  wire u_reg_ID_EX_n_241;
  wire u_reg_ID_EX_n_3;
  wire u_reg_IF_ID_n_100;
  wire u_reg_IF_ID_n_101;
  wire u_reg_IF_ID_n_102;
  wire u_reg_IF_ID_n_103;
  wire u_reg_IF_ID_n_104;
  wire u_reg_IF_ID_n_105;
  wire u_reg_IF_ID_n_106;
  wire u_reg_IF_ID_n_107;
  wire u_reg_IF_ID_n_108;
  wire u_reg_IF_ID_n_109;
  wire u_reg_IF_ID_n_110;
  wire u_reg_IF_ID_n_111;
  wire u_reg_IF_ID_n_112;
  wire u_reg_IF_ID_n_113;
  wire u_reg_IF_ID_n_114;
  wire u_reg_IF_ID_n_115;
  wire u_reg_IF_ID_n_116;
  wire u_reg_IF_ID_n_117;
  wire u_reg_IF_ID_n_118;
  wire u_reg_IF_ID_n_119;
  wire u_reg_IF_ID_n_120;
  wire u_reg_IF_ID_n_121;
  wire u_reg_IF_ID_n_122;
  wire u_reg_IF_ID_n_123;
  wire u_reg_IF_ID_n_124;
  wire u_reg_IF_ID_n_125;
  wire u_reg_IF_ID_n_126;
  wire u_reg_IF_ID_n_127;
  wire u_reg_IF_ID_n_128;
  wire u_reg_IF_ID_n_129;
  wire u_reg_IF_ID_n_130;
  wire u_reg_IF_ID_n_131;
  wire u_reg_IF_ID_n_132;
  wire u_reg_IF_ID_n_133;
  wire u_reg_IF_ID_n_134;
  wire u_reg_IF_ID_n_135;
  wire u_reg_IF_ID_n_136;
  wire u_reg_IF_ID_n_137;
  wire u_reg_IF_ID_n_138;
  wire u_reg_IF_ID_n_139;
  wire u_reg_IF_ID_n_172;
  wire u_reg_IF_ID_n_173;
  wire u_reg_IF_ID_n_238;
  wire u_reg_IF_ID_n_239;
  wire u_reg_IF_ID_n_35;
  wire u_reg_IF_ID_n_97;
  wire u_reg_IF_ID_n_98;
  wire u_reg_IF_ID_n_99;
  wire u_reg_MEM_WB_n_0;
  wire u_reg_MEM_WB_n_100;
  wire u_reg_MEM_WB_n_101;
  wire u_reg_MEM_WB_n_102;
  wire u_reg_MEM_WB_n_103;
  wire u_reg_MEM_WB_n_104;
  wire u_reg_MEM_WB_n_105;
  wire u_reg_MEM_WB_n_106;
  wire u_reg_MEM_WB_n_107;
  wire u_reg_MEM_WB_n_108;
  wire u_reg_MEM_WB_n_109;
  wire u_reg_MEM_WB_n_110;
  wire u_reg_MEM_WB_n_111;
  wire u_reg_MEM_WB_n_112;
  wire u_reg_MEM_WB_n_113;
  wire u_reg_MEM_WB_n_114;
  wire u_reg_MEM_WB_n_115;
  wire u_reg_MEM_WB_n_116;
  wire u_reg_MEM_WB_n_117;
  wire u_reg_MEM_WB_n_118;
  wire u_reg_MEM_WB_n_119;
  wire u_reg_MEM_WB_n_120;
  wire u_reg_MEM_WB_n_121;
  wire u_reg_MEM_WB_n_122;
  wire u_reg_MEM_WB_n_123;
  wire u_reg_MEM_WB_n_124;
  wire u_reg_MEM_WB_n_125;
  wire u_reg_MEM_WB_n_126;
  wire u_reg_MEM_WB_n_127;
  wire u_reg_MEM_WB_n_128;
  wire u_reg_MEM_WB_n_129;
  wire u_reg_MEM_WB_n_130;
  wire u_reg_MEM_WB_n_132;
  wire u_reg_MEM_WB_n_65;
  wire u_reg_MEM_WB_n_66;
  wire u_reg_MEM_WB_n_67;
  wire u_reg_MEM_WB_n_68;
  wire u_reg_MEM_WB_n_69;
  wire u_reg_MEM_WB_n_70;
  wire u_reg_MEM_WB_n_71;
  wire u_reg_MEM_WB_n_72;
  wire u_reg_MEM_WB_n_73;
  wire u_reg_MEM_WB_n_74;
  wire u_reg_MEM_WB_n_75;
  wire u_reg_MEM_WB_n_76;
  wire u_reg_MEM_WB_n_77;
  wire u_reg_MEM_WB_n_78;
  wire u_reg_MEM_WB_n_79;
  wire u_reg_MEM_WB_n_80;
  wire u_reg_MEM_WB_n_81;
  wire u_reg_MEM_WB_n_82;
  wire u_reg_MEM_WB_n_83;
  wire u_reg_MEM_WB_n_84;
  wire u_reg_MEM_WB_n_85;
  wire u_reg_MEM_WB_n_86;
  wire u_reg_MEM_WB_n_87;
  wire u_reg_MEM_WB_n_88;
  wire u_reg_MEM_WB_n_89;
  wire u_reg_MEM_WB_n_90;
  wire u_reg_MEM_WB_n_91;
  wire u_reg_MEM_WB_n_92;
  wire u_reg_MEM_WB_n_93;
  wire u_reg_MEM_WB_n_94;
  wire u_reg_MEM_WB_n_95;
  wire u_reg_MEM_WB_n_96;
  wire u_reg_MEM_WB_n_97;
  wire u_reg_MEM_WB_n_98;
  wire u_reg_MEM_WB_n_99;
  wire [2:0]w_ALUCode_id;
  wire [1:0]w_ALUSrcB_id;
  wire w_IFWrite;
  wire w_IF_flush;
  wire [31:0]w_Imm_id;
  wire [30:3]w_JumpAddr;
  wire w_MemRead_id;
  wire [31:0]w_MemWriteData_ex;
  wire [31:0]w_RegWriteData_wb;
  wire w_RegWrite_id;
  wire [31:0]w_rs1Data_id;
  wire [31:0]w_rs2Data_id;

  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_0_5_i_1
       (.I0(u_reg_MEM_WB_n_97),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_129),
        .O(w_RegWriteData_wb[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_0_5_i_2
       (.I0(u_reg_MEM_WB_n_98),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_130),
        .O(w_RegWriteData_wb[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_0_5_i_3
       (.I0(u_reg_MEM_WB_n_95),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_127),
        .O(w_RegWriteData_wb[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_0_5_i_4
       (.I0(u_reg_MEM_WB_n_96),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_128),
        .O(w_RegWriteData_wb[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_0_5_i_5
       (.I0(u_reg_MEM_WB_n_93),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_125),
        .O(w_RegWriteData_wb[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_0_5_i_6
       (.I0(u_reg_MEM_WB_n_94),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_126),
        .O(w_RegWriteData_wb[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_12_17_i_1
       (.I0(u_reg_MEM_WB_n_85),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_117),
        .O(w_RegWriteData_wb[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_12_17_i_2
       (.I0(u_reg_MEM_WB_n_86),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_118),
        .O(w_RegWriteData_wb[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_12_17_i_3
       (.I0(u_reg_MEM_WB_n_83),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_115),
        .O(w_RegWriteData_wb[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_12_17_i_4
       (.I0(u_reg_MEM_WB_n_84),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_116),
        .O(w_RegWriteData_wb[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_12_17_i_5
       (.I0(u_reg_MEM_WB_n_81),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_113),
        .O(w_RegWriteData_wb[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_12_17_i_6
       (.I0(u_reg_MEM_WB_n_82),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_114),
        .O(w_RegWriteData_wb[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_18_23_i_1
       (.I0(u_reg_MEM_WB_n_79),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_111),
        .O(w_RegWriteData_wb[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_18_23_i_2
       (.I0(u_reg_MEM_WB_n_80),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_112),
        .O(w_RegWriteData_wb[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_18_23_i_3
       (.I0(u_reg_MEM_WB_n_77),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_109),
        .O(w_RegWriteData_wb[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_18_23_i_4
       (.I0(u_reg_MEM_WB_n_78),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_110),
        .O(w_RegWriteData_wb[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_18_23_i_5
       (.I0(u_reg_MEM_WB_n_75),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_107),
        .O(w_RegWriteData_wb[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_18_23_i_6
       (.I0(u_reg_MEM_WB_n_76),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_108),
        .O(w_RegWriteData_wb[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_24_29_i_1
       (.I0(u_reg_MEM_WB_n_73),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_105),
        .O(w_RegWriteData_wb[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_24_29_i_2
       (.I0(u_reg_MEM_WB_n_74),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_106),
        .O(w_RegWriteData_wb[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_24_29_i_3
       (.I0(u_reg_MEM_WB_n_71),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_103),
        .O(w_RegWriteData_wb[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_24_29_i_4
       (.I0(u_reg_MEM_WB_n_72),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_104),
        .O(w_RegWriteData_wb[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_24_29_i_5
       (.I0(u_reg_MEM_WB_n_69),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_101),
        .O(w_RegWriteData_wb[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_24_29_i_6
       (.I0(u_reg_MEM_WB_n_70),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_102),
        .O(w_RegWriteData_wb[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_30_31_i_1
       (.I0(u_reg_MEM_WB_n_67),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_99),
        .O(w_RegWriteData_wb[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_30_31_i_2
       (.I0(u_reg_MEM_WB_n_68),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_100),
        .O(w_RegWriteData_wb[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_6_11_i_1
       (.I0(u_reg_MEM_WB_n_91),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_123),
        .O(w_RegWriteData_wb[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_6_11_i_2
       (.I0(u_reg_MEM_WB_n_92),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_124),
        .O(w_RegWriteData_wb[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_6_11_i_3
       (.I0(u_reg_MEM_WB_n_89),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_121),
        .O(w_RegWriteData_wb[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_6_11_i_4
       (.I0(u_reg_MEM_WB_n_90),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_122),
        .O(w_RegWriteData_wb[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_6_11_i_5
       (.I0(u_reg_MEM_WB_n_87),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_119),
        .O(w_RegWriteData_wb[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    regs_reg_r1_0_31_6_11_i_6
       (.I0(u_reg_MEM_WB_n_88),
        .I1(u_reg_MEM_WB_n_132),
        .I2(u_reg_MEM_WB_n_120),
        .O(w_RegWriteData_wb[10]));
  (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2017.3" *) 
  DataRAM u_DataRAM
       (.a({u_reg_EX_MEM_n_56,u_reg_EX_MEM_n_57,u_reg_EX_MEM_n_58,u_reg_EX_MEM_n_59,u_reg_EX_MEM_n_60,u_reg_EX_MEM_n_61}),
        .clk(cpu_clk_BUFG),
        .d(r_MemWriteData_mem),
        .spo({MemDout_mem,spo}),
        .we(1'b0));
  EX u_EX
       (.D({ALUResult[31:28],D[8],ALUResult[26:24],D[7:6],ALUResult[21:20],D[5],ALUResult[18:16],D[4],ALUResult[14:12],D[3],ALUResult[10:8],D[2],ALUResult[6:5],D[1:0],ALUResult[2:0],w_MemWriteData_ex}),
        .Q({r_ALUCode_ex,r_ALUSrcB_ex,r_Imm_ex,r_rs1Data_ex,r_rs2Data_ex,r_rs1Addr_ex[2],r_rs1Addr_ex[0],r_rs2Addr_ex,r_PC_ex,u_reg_ID_EX_n_147}),
        .\TMDSn[2] (u_EX_n_119),
        .\TMDSn[2]_0 (u_EX_n_193),
        .\TMDSn[2]_1 (u_EX_n_226),
        .\q_reg[116] (u_reg_ID_EX_n_225),
        .\q_reg[116]_0 (u_reg_ID_EX_n_224),
        .\q_reg[116]_1 (u_reg_ID_EX_n_167),
        .\q_reg[116]_10 (u_reg_ID_EX_n_231),
        .\q_reg[116]_11 (u_reg_ID_EX_n_207),
        .\q_reg[116]_12 (u_reg_ID_EX_n_183),
        .\q_reg[116]_13 (u_reg_ID_EX_n_217),
        .\q_reg[116]_14 (u_reg_ID_EX_n_223),
        .\q_reg[116]_15 (u_reg_ID_EX_n_220),
        .\q_reg[116]_16 (u_reg_ID_EX_n_219),
        .\q_reg[116]_17 (u_reg_ID_EX_n_222),
        .\q_reg[116]_18 (u_reg_ID_EX_n_221),
        .\q_reg[116]_19 (u_reg_ID_EX_n_208),
        .\q_reg[116]_2 (u_reg_ID_EX_n_215),
        .\q_reg[116]_20 (u_reg_ID_EX_n_216),
        .\q_reg[116]_21 (u_reg_ID_EX_n_218),
        .\q_reg[116]_22 (u_reg_ID_EX_n_210),
        .\q_reg[116]_23 (u_reg_ID_EX_n_209),
        .\q_reg[116]_24 (u_reg_ID_EX_n_165),
        .\q_reg[116]_25 (u_reg_ID_EX_n_226),
        .\q_reg[116]_3 (u_reg_ID_EX_n_227),
        .\q_reg[116]_4 (u_reg_ID_EX_n_169),
        .\q_reg[116]_5 (u_reg_ID_EX_n_233),
        .\q_reg[116]_6 (u_reg_ID_EX_n_229),
        .\q_reg[116]_7 (u_reg_ID_EX_n_235),
        .\q_reg[116]_8 (u_reg_ID_EX_n_232),
        .\q_reg[116]_9 (u_reg_ID_EX_n_234),
        .\q_reg[146] (u_reg_ID_EX_n_163),
        .\q_reg[146]_0 (u_reg_ID_EX_n_166),
        .\q_reg[146]_1 (u_reg_ID_EX_n_170),
        .\q_reg[146]_2 (u_reg_ID_EX_n_164),
        .\q_reg[146]_3 (u_reg_ID_EX_n_172),
        .\q_reg[147] (u_reg_ID_EX_n_173),
        .\q_reg[147]_0 (u_reg_ID_EX_n_189),
        .\q_reg[147]_1 (u_reg_ID_EX_n_188),
        .\q_reg[147]_2 (u_reg_ID_EX_n_203),
        .\q_reg[147]_3 (u_reg_ID_EX_n_193),
        .\q_reg[149] (u_reg_ID_EX_n_184),
        .\q_reg[149]_0 (u_reg_ID_EX_n_185),
        .\q_reg[149]_1 (u_reg_ID_EX_n_168),
        .\q_reg[149]_2 (u_reg_ID_EX_n_175),
        .\q_reg[149]_3 (u_reg_ID_EX_n_192),
        .\q_reg[149]_4 (u_reg_ID_EX_n_179),
        .\q_reg[150] (u_reg_ID_EX_n_191),
        .\q_reg[151] (u_reg_ID_EX_n_171),
        .\q_reg[151]_0 (u_reg_ID_EX_n_174),
        .\q_reg[151]_1 (u_reg_ID_EX_n_177),
        .\q_reg[151]_2 (u_reg_ID_EX_n_181),
        .\q_reg[151]_3 (u_reg_ID_EX_n_202),
        .\q_reg[151]_4 (u_reg_ID_EX_n_201),
        .\q_reg[152] (u_reg_ID_EX_n_228),
        .\q_reg[152]_0 (u_reg_ID_EX_n_230),
        .\q_reg[17] (u_reg_ID_EX_n_187),
        .\q_reg[17]_0 (u_reg_ID_EX_n_186),
        .\q_reg[19] (u_reg_ID_EX_n_176),
        .\q_reg[23] (u_reg_ID_EX_n_178),
        .\q_reg[25] (u_reg_ID_EX_n_195),
        .\q_reg[25]_0 (u_reg_ID_EX_n_194),
        .\q_reg[27] (u_reg_ID_EX_n_180),
        .\q_reg[27]_0 (u_reg_ID_EX_n_240),
        .\q_reg[27]_1 (u_reg_ID_EX_n_198),
        .\q_reg[28] (u_reg_ID_EX_n_200),
        .\q_reg[29] (u_reg_ID_EX_n_199),
        .\q_reg[31] (u_reg_ID_EX_n_182),
        .\q_reg[33] (u_reg_ID_EX_n_241),
        .\q_reg[34] (u_reg_ID_EX_n_196),
        .\q_reg[34]_0 (u_reg_ID_EX_n_190),
        .\q_reg[34]_1 (u_reg_ID_EX_n_197),
        .\q_reg[39] (w_RegWriteData_wb[0]),
        .\q_reg[40] (w_RegWriteData_wb[1]),
        .\q_reg[43] (u_EX_n_71),
        .\q_reg[43]_0 (u_EX_n_72),
        .\q_reg[43]_1 (\q_reg[43] ),
        .\q_reg[43]_2 (u_EX_n_179),
        .\q_reg[43]_3 (u_EX_n_186),
        .\q_reg[44] (\q_reg[44] ),
        .\q_reg[44]_0 (ALU_A[0]),
        .\q_reg[44]_1 (u_EX_n_163),
        .\q_reg[44]_2 (u_EX_n_175),
        .\q_reg[44]_3 (u_EX_n_176),
        .\q_reg[44]_4 (u_EX_n_177),
        .\q_reg[45] (u_EX_n_66),
        .\q_reg[45]_0 (u_EX_n_68),
        .\q_reg[45]_1 (\q_reg[45] ),
        .\q_reg[45]_2 (u_EX_n_111),
        .\q_reg[45]_3 (u_EX_n_200),
        .\q_reg[45]_4 (u_EX_n_201),
        .\q_reg[46] (\q_reg[73] [0]),
        .\q_reg[46]_0 (u_EX_n_69),
        .\q_reg[46]_1 (u_EX_n_70),
        .\q_reg[46]_2 (\q_reg[73] [3]),
        .\q_reg[46]_3 (\q_reg[46] ),
        .\q_reg[46]_4 (u_EX_n_182),
        .\q_reg[47] (\q_reg[73] [4]),
        .\q_reg[47]_0 (u_EX_n_81),
        .\q_reg[47]_1 (\q_reg[47] ),
        .\q_reg[48] (u_EX_n_82),
        .\q_reg[48]_0 (\q_reg[73] [5]),
        .\q_reg[48]_1 (ALU_A[1]),
        .\q_reg[49] (u_EX_n_78),
        .\q_reg[49]_0 (u_EX_n_79),
        .\q_reg[49]_1 (u_EX_n_80),
        .\q_reg[49]_2 (u_EX_n_194),
        .\q_reg[4] (u_reg_ID_EX_n_214),
        .\q_reg[4]_0 (u_reg_ID_EX_n_211),
        .\q_reg[4]_1 (u_reg_ID_EX_n_212),
        .\q_reg[4]_2 (u_reg_ID_EX_n_213),
        .\q_reg[50] (ALU_A[2]),
        .\q_reg[50]_0 (u_EX_n_115),
        .\q_reg[50]_1 (u_EX_n_116),
        .\q_reg[50]_2 (ALU_A[3]),
        .\q_reg[50]_3 (u_EX_n_178),
        .\q_reg[50]_4 (u_EX_n_192),
        .\q_reg[50]_5 (u_EX_n_198),
        .\q_reg[51] (u_EX_n_67),
        .\q_reg[51]_0 (ALU_A[4]),
        .\q_reg[51]_1 (u_EX_n_117),
        .\q_reg[51]_2 (u_EX_n_118),
        .\q_reg[51]_3 (u_EX_n_183),
        .\q_reg[51]_4 (u_EX_n_199),
        .\q_reg[51]_5 (u_reg_ID_EX_n_151),
        .\q_reg[51]_6 (u_reg_ID_EX_n_236),
        .\q_reg[51]_7 (u_reg_ID_EX_n_238),
        .\q_reg[51]_8 (u_reg_ID_EX_n_237),
        .\q_reg[51]_9 (u_reg_ID_EX_n_239),
        .\q_reg[52] (\q_reg[73] [6]),
        .\q_reg[52]_0 (\q_reg[52] ),
        .\q_reg[52]_1 (u_EX_n_227),
        .\q_reg[53] (u_EX_n_103),
        .\q_reg[53]_0 (ALU_A[5]),
        .\q_reg[53]_1 (\q_reg[73] [7]),
        .\q_reg[53]_2 (u_EX_n_204),
        .\q_reg[53]_3 (u_EX_n_205),
        .\q_reg[53]_4 (u_EX_n_206),
        .\q_reg[53]_5 (u_EX_n_208),
        .\q_reg[53]_6 (u_EX_n_209),
        .\q_reg[53]_7 (u_EX_n_210),
        .\q_reg[53]_8 (u_EX_n_212),
        .\q_reg[53]_9 (u_EX_n_216),
        .\q_reg[54] (\q_reg[73] [8]),
        .\q_reg[54]_0 (ALU_A[6]),
        .\q_reg[54]_1 (u_EX_n_202),
        .\q_reg[54]_2 (u_EX_n_203),
        .\q_reg[54]_3 (u_EX_n_207),
        .\q_reg[54]_4 (u_EX_n_228),
        .\q_reg[54]_5 ({u_reg_MEM_WB_n_83,u_reg_MEM_WB_n_115,\q_reg[51] [3],u_reg_MEM_WB_n_132,\q_reg[51] [2:0]}),
        .\q_reg[55] (u_EX_n_96),
        .\q_reg[55]_0 (u_EX_n_97),
        .\q_reg[55]_1 (u_EX_n_98),
        .\q_reg[55]_2 (\q_reg[55] ),
        .\q_reg[55]_3 (ALU_A[7]),
        .\q_reg[56] (\q_reg[73] [9]),
        .\q_reg[56]_0 (ALU_A[8]),
        .\q_reg[56]_1 (u_EX_n_211),
        .\q_reg[56]_2 (u_EX_n_229),
        .\q_reg[56]_3 (u_EX_n_230),
        .\q_reg[57] (u_EX_n_87),
        .\q_reg[57]_0 (u_EX_n_88),
        .\q_reg[57]_1 (\q_reg[57] ),
        .\q_reg[57]_2 (ALU_A[9]),
        .\q_reg[57]_3 (u_EX_n_197),
        .\q_reg[57]_4 (u_EX_n_214),
        .\q_reg[57]_5 (u_EX_n_215),
        .\q_reg[58] (u_EX_n_91),
        .\q_reg[58]_0 (ALU_A[10]),
        .\q_reg[58]_1 (\q_reg[58] ),
        .\q_reg[58]_2 (u_EX_n_220),
        .\q_reg[59] (ALU_A[11]),
        .\q_reg[59]_0 (u_EX_n_120),
        .\q_reg[59]_1 (\q_reg[73] [10]),
        .\q_reg[59]_2 (u_EX_n_159),
        .\q_reg[59]_3 (u_EX_n_160),
        .\q_reg[59]_4 (u_EX_n_161),
        .\q_reg[59]_5 (u_EX_n_213),
        .\q_reg[60] (ALU_A[12]),
        .\q_reg[60]_0 (\q_reg[60] ),
        .\q_reg[60]_1 (u_EX_n_169),
        .\q_reg[60]_2 (u_EX_n_173),
        .\q_reg[60]_3 (u_EX_n_217),
        .\q_reg[60]_4 (u_EX_n_231),
        .\q_reg[61] (u_EX_n_121),
        .\q_reg[61]_0 (ALU_A[13]),
        .\q_reg[61]_1 (\q_reg[73] [11]),
        .\q_reg[61]_2 (u_EX_n_168),
        .\q_reg[61]_3 (u_EX_n_181),
        .\q_reg[61]_4 (u_EX_n_221),
        .\q_reg[61]_5 (u_EX_n_223),
        .\q_reg[62] (ALU_A[14]),
        .\q_reg[62]_0 (\q_reg[62] ),
        .\q_reg[62]_1 (u_EX_n_172),
        .\q_reg[62]_2 (u_EX_n_222),
        .\q_reg[62]_3 (u_EX_n_232),
        .\q_reg[63] (u_EX_n_127),
        .\q_reg[63]_0 (\q_reg[63] ),
        .\q_reg[63]_1 (ALU_A[15]),
        .\q_reg[63]_2 (u_EX_n_188),
        .\q_reg[63]_3 (u_EX_n_218),
        .\q_reg[63]_4 (u_EX_n_219),
        .\q_reg[64] (ALU_A[16]),
        .\q_reg[64]_0 (\q_reg[73] [12]),
        .\q_reg[64]_1 (u_EX_n_233),
        .\q_reg[65] (u_EX_n_132),
        .\q_reg[65]_0 (\q_reg[65] ),
        .\q_reg[65]_1 (ALU_A[17]),
        .\q_reg[65]_2 (u_EX_n_189),
        .\q_reg[66] (ALU_A[18]),
        .\q_reg[66]_0 (\q_reg[66] ),
        .\q_reg[66]_1 (u_EX_n_162),
        .\q_reg[66]_2 (u_EX_n_224),
        .\q_reg[67] (ALU_A[19]),
        .\q_reg[67]_0 (u_EX_n_137),
        .\q_reg[67]_1 (\q_reg[67] ),
        .\q_reg[67]_2 (u_EX_n_156),
        .\q_reg[67]_3 (u_EX_n_157),
        .\q_reg[67]_4 (u_EX_n_158),
        .\q_reg[67]_5 (u_EX_n_185),
        .\q_reg[68] (u_EX_n_84),
        .\q_reg[68]_0 (ALU_A[20]),
        .\q_reg[68]_1 (\q_reg[73] [13]),
        .\q_reg[68]_2 (u_EX_n_234),
        .\q_reg[69] (u_EX_n_141),
        .\q_reg[69]_0 (\q_reg[69] ),
        .\q_reg[69]_1 (ALU_A[21]),
        .\q_reg[70] (ALU_A[22]),
        .\q_reg[70]_0 (\q_reg[70] ),
        .\q_reg[70]_1 (u_EX_n_196),
        .\q_reg[71] (u_EX_n_146),
        .\q_reg[71]_0 (\q_reg[71] ),
        .\q_reg[71]_1 (ALU_A[23]),
        .\q_reg[71]_2 (u_EX_n_164),
        .\q_reg[71]_3 (u_EX_n_191),
        .\q_reg[71]_4 (u_EX_n_225),
        .\q_reg[72] (u_EX_n_149),
        .\q_reg[72]_0 (ALU_A[24]),
        .\q_reg[72]_1 (\q_reg[72] ),
        .\q_reg[73] (\q_reg[73] [1]),
        .\q_reg[73]_0 (\q_reg[73] [2]),
        .\q_reg[73]_1 (ALU_A[25]),
        .\q_reg[73]_2 (\q_reg[73] [14]),
        .\q_reg[74] (ALU_A[26]),
        .\q_reg[74]_0 (u_EX_n_165),
        .\q_reg[74]_1 (u_EX_n_170),
        .\q_reg[74]_2 (u_EX_n_171),
        .\q_reg[74]_3 (u_EX_n_180),
        .\q_reg[74]_4 (u_EX_n_184),
        .\q_reg[74]_5 (u_EX_n_187),
        .\q_reg[74]_6 (u_EX_n_190),
        .\q_reg[74]_7 (u_EX_n_195),
        .\q_reg[74]_8 ({u_reg_EX_MEM_n_32,u_reg_EX_MEM_n_33,u_reg_EX_MEM_n_34,u_reg_EX_MEM_n_35,u_reg_EX_MEM_n_36,u_reg_EX_MEM_n_37,u_reg_EX_MEM_n_38,u_reg_EX_MEM_n_39,u_reg_EX_MEM_n_40,u_reg_EX_MEM_n_41,u_reg_EX_MEM_n_42,u_reg_EX_MEM_n_43,u_reg_EX_MEM_n_44,u_reg_EX_MEM_n_45,u_reg_EX_MEM_n_46,u_reg_EX_MEM_n_47,u_reg_EX_MEM_n_48,u_reg_EX_MEM_n_49,u_reg_EX_MEM_n_50,u_reg_EX_MEM_n_51,u_reg_EX_MEM_n_52,u_reg_EX_MEM_n_53,u_reg_EX_MEM_n_54,u_reg_EX_MEM_n_55,u_reg_EX_MEM_n_56,u_reg_EX_MEM_n_57,u_reg_EX_MEM_n_58,u_reg_EX_MEM_n_59,u_reg_EX_MEM_n_60,u_reg_EX_MEM_n_61,p_5_in,u_reg_EX_MEM_n_63,r_RegWrite_mem,r_rdAddr_mem}),
        .\q_reg[82] (u_reg_ID_EX_n_205),
        .\q_reg[82]_0 (u_reg_ID_EX_n_206),
        .\q_reg[82]_1 (u_reg_ID_EX_n_204),
        .w_RegWriteData_wb(w_RegWriteData_wb[31:2]));
  ID u_ID
       (.D({w_Imm_id[31:10],w_Imm_id[7],w_Imm_id[5:3]}),
        .E(u_reg_IF_ID_n_238),
        .Q({u_ID_n_1,u_ID_n_2,u_ID_n_3,u_ID_n_4,u_ID_n_5,u_ID_n_6,u_ID_n_7,u_ID_n_8,u_ID_n_9,u_ID_n_10,u_ID_n_11,u_ID_n_12,u_ID_n_13,u_ID_n_14,u_ID_n_15,u_ID_n_16,u_ID_n_17,u_ID_n_18,u_ID_n_19,u_ID_n_20,u_ID_n_21,u_ID_n_22,u_ID_n_23,u_ID_n_24,u_ID_n_25,u_ID_n_26,u_ID_n_27,u_ID_n_28,u_ID_n_29,u_ID_n_30,u_ID_n_31,u_ID_n_32}),
        .SR(SR),
        .cpu_clk_BUFG(cpu_clk_BUFG),
        .\mcause_reg[31] ({u_reg_IF_ID_n_99,u_reg_IF_ID_n_100,u_reg_IF_ID_n_101,u_reg_IF_ID_n_102,u_reg_IF_ID_n_103,u_reg_IF_ID_n_104,u_reg_IF_ID_n_105,u_reg_IF_ID_n_106,u_reg_IF_ID_n_107,u_reg_IF_ID_n_108,u_reg_IF_ID_n_109,u_reg_IF_ID_n_110,u_reg_IF_ID_n_111,u_reg_IF_ID_n_112,u_reg_IF_ID_n_113,u_reg_IF_ID_n_114,u_reg_IF_ID_n_115,u_reg_IF_ID_n_116,u_reg_IF_ID_n_117,u_reg_IF_ID_n_118,u_reg_IF_ID_n_119,u_reg_IF_ID_n_120,u_reg_IF_ID_n_121,u_reg_IF_ID_n_122,u_reg_IF_ID_n_123,u_reg_IF_ID_n_124,u_reg_IF_ID_n_125,u_reg_IF_ID_n_126,u_reg_IF_ID_n_127,u_reg_IF_ID_n_128,u_reg_IF_ID_n_129,u_reg_IF_ID_n_130}),
        .\mepc_reg[31] ({u_ID_n_65,u_ID_n_66,u_ID_n_67,u_ID_n_68,u_ID_n_69,u_ID_n_70,u_ID_n_71,u_ID_n_72,u_ID_n_73,u_ID_n_74,u_ID_n_75,u_ID_n_76,u_ID_n_77,u_ID_n_78,u_ID_n_79,u_ID_n_80,u_ID_n_81,u_ID_n_82,u_ID_n_83,u_ID_n_84,u_ID_n_85,u_ID_n_86,u_ID_n_87,u_ID_n_88,u_ID_n_89,u_ID_n_90,u_ID_n_91,u_ID_n_92,u_ID_n_93,u_ID_n_94,u_ID_n_95,u_ID_n_96}),
        .\mstatus_reg[31] (\u_CSR/get_new_val2_return ),
        .\mtvec_reg[31] ({u_ID_n_97,u_ID_n_98,u_ID_n_99,u_ID_n_100,u_ID_n_101,u_ID_n_102,u_ID_n_103,u_ID_n_104,u_ID_n_105,u_ID_n_106,u_ID_n_107,u_ID_n_108,u_ID_n_109,u_ID_n_110,u_ID_n_111,u_ID_n_112,u_ID_n_113,u_ID_n_114,u_ID_n_115,u_ID_n_116,u_ID_n_117,u_ID_n_118,u_ID_n_119,u_ID_n_120,u_ID_n_121,u_ID_n_122,u_ID_n_123,u_ID_n_124,u_ID_n_125,u_ID_n_126,u_ID_n_127,u_ID_n_128}),
        .\mtvec_reg[31]_0 (\u_CSR/get_new_val_return ),
        .\q_reg[114] (u_ID_n_0),
        .\q_reg[115] (u_ID_n_129),
        .\q_reg[116] (u_ID_n_130),
        .\q_reg[120] (u_ID_n_157),
        .\q_reg[122] (u_ID_n_158),
        .\q_reg[123] (u_ID_n_159),
        .\q_reg[145] ({u_ID_n_33,u_ID_n_34,u_ID_n_35,u_ID_n_36,u_ID_n_37,u_ID_n_38,u_ID_n_39,u_ID_n_40,u_ID_n_41,u_ID_n_42,u_ID_n_43,u_ID_n_44,u_ID_n_45,u_ID_n_46,u_ID_n_47,u_ID_n_48,u_ID_n_49,u_ID_n_50,u_ID_n_51,u_ID_n_52,u_ID_n_53,u_ID_n_54,u_ID_n_55,u_ID_n_56,u_ID_n_57,u_ID_n_58,u_ID_n_59,u_ID_n_60,u_ID_n_61,u_ID_n_62,u_ID_n_63,u_ID_n_64}),
        .\q_reg[20] (u_reg_IF_ID_n_97),
        .\q_reg[21] (u_reg_IF_ID_n_132),
        .\q_reg[21]_0 (u_reg_IF_ID_n_98),
        .\q_reg[3] (u_reg_IF_ID_n_173),
        .\q_reg[3]_0 (u_reg_IF_ID_n_133),
        .\q_reg[3]_1 (u_reg_IF_ID_n_172),
        .\q_reg[63] (\u_CSR/p_1_in ));
  IF1 u_IF1
       (.D({Next_PC[31],Next_PC[27],Next_PC[23],Next_PC[19],Next_PC[15],Next_PC[11],Next_PC[7:6],Next_PC[2:0]}),
        .E(w_IFWrite),
        .PC_plus_4({PC_plus_4[31],PC_plus_4[27],PC_plus_4[23],PC_plus_4[19],PC_plus_4[15],PC_plus_4[11],PC_plus_4[7:6]}),
        .\PosX_reg_reg[4] (\PosX_reg_reg[4]_4 ),
        .\PosX_reg_reg[5] (\PosX_reg_reg[5]_0 ),
        .SR(SR),
        .Stall(Stall),
        .\TMDSn[2] (\TMDSn[2]_1 ),
        .cpu_clk_BUFG(cpu_clk_BUFG),
        .\q_reg[63] ({u_IF1_n_0,u_IF1_n_1,u_IF1_n_2,u_IF1_n_3,u_IF1_n_4,u_IF1_n_5,u_IF1_n_6,u_IF1_n_7,u_IF1_n_8,u_IF1_n_9,u_IF1_n_10,u_IF1_n_11,u_IF1_n_12,u_IF1_n_13,u_IF1_n_14,u_IF1_n_15,u_IF1_n_16,u_IF1_n_17,u_IF1_n_18,u_IF1_n_19,u_IF1_n_20,u_IF1_n_21,u_IF1_n_22,u_IF1_n_23,Q[5:3],PC[4],Q[2:0],PC[0],u_IF1_n_32,u_IF1_n_33,u_IF1_n_34,u_IF1_n_35,u_IF1_n_36,u_IF1_n_37,u_IF1_n_38,u_IF1_n_39,u_IF1_n_40,u_IF1_n_41,u_IF1_n_42,u_IF1_n_43,u_IF1_n_44,u_IF1_n_45,u_IF1_n_46,u_IF1_n_47}),
        .w_IF_flush(w_IF_flush),
        .w_JumpAddr({w_JumpAddr[30:28],w_JumpAddr[26:24],w_JumpAddr[22:20],w_JumpAddr[18:16],w_JumpAddr[14:12],w_JumpAddr[10:8],w_JumpAddr[5:3]}));
  DFF__parameterized1 u_reg_EX_MEM
       (.D({final_mem_read_data,u_reg_EX_MEM_n_32,u_reg_EX_MEM_n_33,u_reg_EX_MEM_n_34,u_reg_EX_MEM_n_35,u_reg_EX_MEM_n_36,u_reg_EX_MEM_n_37,u_reg_EX_MEM_n_38,u_reg_EX_MEM_n_39,u_reg_EX_MEM_n_40,u_reg_EX_MEM_n_41,u_reg_EX_MEM_n_42,u_reg_EX_MEM_n_43,u_reg_EX_MEM_n_44,u_reg_EX_MEM_n_45,u_reg_EX_MEM_n_46,u_reg_EX_MEM_n_47,u_reg_EX_MEM_n_48,u_reg_EX_MEM_n_49,u_reg_EX_MEM_n_50,u_reg_EX_MEM_n_51,u_reg_EX_MEM_n_52,u_reg_EX_MEM_n_53,u_reg_EX_MEM_n_54,u_reg_EX_MEM_n_55,u_reg_EX_MEM_n_56,u_reg_EX_MEM_n_57,u_reg_EX_MEM_n_58,u_reg_EX_MEM_n_59,u_reg_EX_MEM_n_60,u_reg_EX_MEM_n_61,p_5_in,u_reg_EX_MEM_n_63,r_RegWrite_mem,u_reg_EX_MEM_n_65,r_rdAddr_mem}),
        .Q(r_MemWriteData_mem),
        .SR(SR),
        .cpu_clk_BUFG(cpu_clk_BUFG),
        .\q_reg[149] ({ALUResult[31:28],D[8],ALUResult[26:24],D[7:6],ALUResult[21:20],D[5],ALUResult[18:16],D[4],ALUResult[14:12],D[3],ALUResult[10:8],D[2],ALUResult[6:5],D[1:0],ALUResult[2:0],w_MemWriteData_ex,u_reg_ID_EX_n_3,r_MemRead_ex,r_rdAddr_ex,u_reg_ID_EX_n_147,u_reg_ID_EX_n_148,u_reg_ID_EX_n_149}),
        .spo({MemDout_mem,spo}));
  DFF__parameterized0 u_reg_ID_EX
       (.ALU_A({ALU_A[26:6],ALU_A[4:0]}),
        .D({ALUResult[31:30],ALUResult[28],ALUResult[26:24],ALUResult[21:20],ALUResult[18:16],ALUResult[14:13],ALUResult[10:8],ALUResult[5],ALUResult[2:0]}),
        .E(w_IFWrite),
        .\PosX_reg_reg[4] (\PosX_reg_reg[4]_5 ),
        .\PosX_reg_reg[4]_0 (\PosX_reg_reg[4]_6 ),
        .\PosX_reg_reg[4]_1 (\PosX_reg_reg[4]_1 ),
        .\PosX_reg_reg[4]_2 (\PosX_reg_reg[4]_7 ),
        .\PosX_reg_reg[4]_3 (\PosX_reg_reg[4]_8 ),
        .\PosX_reg_reg[4]_4 (\PosX_reg_reg[4]_3 ),
        .\PosX_reg_reg[4]_5 (\PosX_reg_reg[4]_9 ),
        .\PosX_reg_reg[4]_6 (\PosX_reg_reg[4]_4 ),
        .\PosX_reg_reg[5] (\PosX_reg_reg[5]_1 ),
        .\PosX_reg_reg[5]_0 (\PosX_reg_reg[5]_0 ),
        .PosY__0(PosY__0),
        .Q({u_reg_ID_EX_n_3,r_MemRead_ex,r_ALUCode_ex,r_ALUSrcB_ex,r_Imm_ex,r_rs1Data_ex,r_rs2Data_ex,r_rs1Addr_ex[2],r_rs1Addr_ex[0],r_rs2Addr_ex,r_rdAddr_ex,r_PC_ex,u_reg_ID_EX_n_147,u_reg_ID_EX_n_148,u_reg_ID_EX_n_149}),
        .SR(SR),
        .Stall(Stall),
        .\TMDSn[2] (\TMDSn[2]_2 ),
        .\TMDSn[2]_0 (\TMDSn[2]_3 ),
        .\TMDSn[2]_1 (\TMDSn[2]_4 ),
        .\TMDSn[2]_10 (\TMDSn[2]_13 ),
        .\TMDSn[2]_11 (\TMDSn[2]_14 ),
        .\TMDSn[2]_12 (\TMDSn[2]_15 ),
        .\TMDSn[2]_2 (\TMDSn[2]_5 ),
        .\TMDSn[2]_3 (\TMDSn[2]_6 ),
        .\TMDSn[2]_4 (\TMDSn[2]_7 ),
        .\TMDSn[2]_5 (\TMDSn[2]_8 ),
        .\TMDSn[2]_6 (\TMDSn[2]_9 ),
        .\TMDSn[2]_7 (\TMDSn[2]_10 ),
        .\TMDSn[2]_8 (\TMDSn[2]_11 ),
        .\TMDSn[2]_9 (\TMDSn[2]_12 ),
        .cpu_clk_BUFG(cpu_clk_BUFG),
        .\q_reg[10]_0 (u_EX_n_195),
        .\q_reg[10]_1 (u_EX_n_172),
        .\q_reg[116]_0 (\q_reg[73] [2]),
        .\q_reg[116]_1 (u_EX_n_170),
        .\q_reg[116]_2 (u_EX_n_163),
        .\q_reg[116]_3 (u_EX_n_79),
        .\q_reg[116]_4 (u_EX_n_209),
        .\q_reg[116]_5 (u_EX_n_212),
        .\q_reg[116]_6 (u_EX_n_215),
        .\q_reg[116]_7 (u_EX_n_220),
        .\q_reg[12]_0 ({w_RegWrite_id,w_MemRead_id,u_reg_IF_ID_n_35,w_ALUCode_id,w_ALUSrcB_id,w_Imm_id,w_rs1Data_id,w_rs2Data_id,\mstatus_reg[0] [4:3],\mstatus_reg[0] [7:5],Instruction_id[11],\mstatus_reg[0] [1],Instruction_id[7],r_PC_id,\mstatus_reg[0] [0],Instruction_id[13],\mstatus_reg[0] [2]}),
        .\q_reg[146]_0 (u_EX_n_81),
        .\q_reg[146]_1 (u_EX_n_82),
        .\q_reg[146]_2 (u_EX_n_116),
        .\q_reg[146]_3 (u_EX_n_192),
        .\q_reg[146]_4 (u_EX_n_117),
        .\q_reg[146]_5 (u_EX_n_227),
        .\q_reg[146]_6 (u_EX_n_103),
        .\q_reg[146]_7 (u_EX_n_228),
        .\q_reg[146]_8 (u_EX_n_70),
        .\q_reg[147]_0 (u_EX_n_78),
        .\q_reg[147]_1 (u_EX_n_202),
        .\q_reg[147]_10 (\q_reg[65] ),
        .\q_reg[147]_11 (\q_reg[66] ),
        .\q_reg[147]_12 (u_EX_n_84),
        .\q_reg[147]_13 (\q_reg[69] ),
        .\q_reg[147]_14 (\q_reg[70] ),
        .\q_reg[147]_15 (\q_reg[43] ),
        .\q_reg[147]_16 (\q_reg[63] ),
        .\q_reg[147]_17 (\q_reg[67] ),
        .\q_reg[147]_18 (\q_reg[71] ),
        .\q_reg[147]_19 (\q_reg[72] ),
        .\q_reg[147]_2 (u_EX_n_203),
        .\q_reg[147]_3 (u_EX_n_127),
        .\q_reg[147]_4 (\q_reg[57] ),
        .\q_reg[147]_5 (\q_reg[58] ),
        .\q_reg[147]_6 (\q_reg[62] ),
        .\q_reg[147]_7 (\q_reg[73] [11]),
        .\q_reg[147]_8 (\q_reg[60] ),
        .\q_reg[147]_9 (\q_reg[73] [4:3]),
        .\q_reg[149]_0 (u_EX_n_149),
        .\q_reg[149]_1 (u_EX_n_68),
        .\q_reg[149]_10 (u_EX_n_219),
        .\q_reg[149]_11 (u_EX_n_156),
        .\q_reg[149]_12 (u_EX_n_225),
        .\q_reg[149]_13 (u_EX_n_182),
        .\q_reg[149]_2 (u_EX_n_118),
        .\q_reg[149]_3 (u_EX_n_160),
        .\q_reg[149]_4 (u_EX_n_213),
        .\q_reg[149]_5 (u_EX_n_120),
        .\q_reg[149]_6 (u_EX_n_157),
        .\q_reg[149]_7 (u_EX_n_224),
        .\q_reg[149]_8 (u_EX_n_137),
        .\q_reg[149]_9 (u_EX_n_88),
        .\q_reg[14]_0 (u_EX_n_185),
        .\q_reg[150]_0 (u_EX_n_67),
        .\q_reg[151]_0 (u_EX_n_98),
        .\q_reg[151]_1 (u_EX_n_119),
        .\q_reg[151]_2 (u_EX_n_229),
        .\q_reg[151]_3 (u_EX_n_230),
        .\q_reg[151]_4 (u_EX_n_231),
        .\q_reg[151]_5 (u_EX_n_232),
        .\q_reg[151]_6 (u_EX_n_233),
        .\q_reg[151]_7 (u_EX_n_234),
        .\q_reg[152]_0 (\q_reg[152] ),
        .\q_reg[152]_1 (u_EX_n_193),
        .\q_reg[152]_2 (u_EX_n_96),
        .\q_reg[152]_3 (u_EX_n_226),
        .\q_reg[152]_4 (u_EX_n_66),
        .\q_reg[152]_5 (u_EX_n_69),
        .\q_reg[15]_0 (u_EX_n_87),
        .\q_reg[15]_1 (u_EX_n_161),
        .\q_reg[15]_2 (u_EX_n_159),
        .\q_reg[15]_3 (u_EX_n_188),
        .\q_reg[15]_4 (u_EX_n_186),
        .\q_reg[15]_5 (u_EX_n_208),
        .\q_reg[16]_0 (u_EX_n_189),
        .\q_reg[16]_1 (u_EX_n_177),
        .\q_reg[16]_2 (u_EX_n_210),
        .\q_reg[17]_0 (u_EX_n_194),
        .\q_reg[17]_1 (u_EX_n_191),
        .\q_reg[17]_2 (u_EX_n_216),
        .\q_reg[18]_0 (u_EX_n_196),
        .\q_reg[18]_1 (u_EX_n_175),
        .\q_reg[19]_0 (u_EX_n_121),
        .\q_reg[19]_1 (u_EX_n_218),
        .\q_reg[23]_0 (u_EX_n_132),
        .\q_reg[23]_1 (u_EX_n_158),
        .\q_reg[23]_2 (u_EX_n_187),
        .\q_reg[26]_0 (u_EX_n_205),
        .\q_reg[26]_1 (u_EX_n_222),
        .\q_reg[27]_0 (u_EX_n_141),
        .\q_reg[27]_1 (u_EX_n_72),
        .\q_reg[27]_2 (u_EX_n_200),
        .\q_reg[27]_3 (u_EX_n_207),
        .\q_reg[28]_0 (u_EX_n_201),
        .\q_reg[29]_0 (u_EX_n_146),
        .\q_reg[30]_0 (u_EX_n_176),
        .\q_reg[30]_1 (u_EX_n_206),
        .\q_reg[31]_0 (u_EX_n_214),
        .\q_reg[32]_0 (u_EX_n_217),
        .\q_reg[32]_1 (u_EX_n_164),
        .\q_reg[34]_0 (u_EX_n_197),
        .\q_reg[34]_1 (u_EX_n_223),
        .\q_reg[43] (u_reg_ID_EX_n_163),
        .\q_reg[43]_0 (u_reg_ID_EX_n_194),
        .\q_reg[43]_1 (u_reg_ID_EX_n_195),
        .\q_reg[43]_2 (u_reg_ID_EX_n_205),
        .\q_reg[43]_3 (u_reg_ID_EX_n_215),
        .\q_reg[44] (u_reg_ID_EX_n_184),
        .\q_reg[44]_0 (u_reg_ID_EX_n_211),
        .\q_reg[45]_0 (u_reg_ID_EX_n_206),
        .\q_reg[45]_1 (u_reg_ID_EX_n_214),
        .\q_reg[45]_2 (u_reg_ID_EX_n_224),
        .\q_reg[45]_3 (u_reg_ID_EX_n_225),
        .\q_reg[46] (u_reg_ID_EX_n_207),
        .\q_reg[47]_0 (u_reg_ID_EX_n_164),
        .\q_reg[47]_1 (u_reg_ID_EX_n_165),
        .\q_reg[47]_2 (u_reg_ID_EX_n_166),
        .\q_reg[47]_3 (u_reg_ID_EX_n_167),
        .\q_reg[48] (u_reg_ID_EX_n_168),
        .\q_reg[48]_0 (u_reg_ID_EX_n_169),
        .\q_reg[48]_1 (u_reg_ID_EX_n_226),
        .\q_reg[49] (u_reg_ID_EX_n_185),
        .\q_reg[49]_0 (u_reg_ID_EX_n_203),
        .\q_reg[49]_1 (u_reg_ID_EX_n_212),
        .\q_reg[49]_2 (u_reg_ID_EX_n_227),
        .\q_reg[4]_0 (u_EX_n_171),
        .\q_reg[50]_0 (u_reg_ID_EX_n_170),
        .\q_reg[50]_1 (u_reg_ID_EX_n_204),
        .\q_reg[50]_2 (u_reg_ID_EX_n_228),
        .\q_reg[50]_3 (u_reg_ID_EX_n_229),
        .\q_reg[50]_4 (u_reg_ID_EX_n_233),
        .\q_reg[50]_5 (u_EX_n_71),
        .\q_reg[51]_0 (u_reg_ID_EX_n_213),
        .\q_reg[51]_1 (\q_reg[73] [1]),
        .\q_reg[51]_2 (u_EX_n_162),
        .\q_reg[51]_3 (u_EX_n_211),
        .\q_reg[51]_4 (u_EX_n_221),
        .\q_reg[51]_5 (u_EX_n_91),
        .\q_reg[52]_0 (u_reg_ID_EX_n_172),
        .\q_reg[52]_1 (u_reg_ID_EX_n_230),
        .\q_reg[52]_2 (u_reg_ID_EX_n_231),
        .\q_reg[52]_3 (u_reg_ID_EX_n_234),
        .\q_reg[53]_0 (u_reg_ID_EX_n_232),
        .\q_reg[53]_1 (u_reg_ID_EX_n_235),
        .\q_reg[54]_0 (u_reg_ID_EX_n_173),
        .\q_reg[54]_1 (u_reg_ID_EX_n_236),
        .\q_reg[55]_0 (u_reg_ID_EX_n_151),
        .\q_reg[55]_1 (u_reg_ID_EX_n_171),
        .\q_reg[56]_0 (u_reg_ID_EX_n_174),
        .\q_reg[56]_1 (u_EX_n_80),
        .\q_reg[57]_0 (u_EX_n_198),
        .\q_reg[58]_0 (u_reg_ID_EX_n_175),
        .\q_reg[58]_1 (u_EX_n_199),
        .\q_reg[59]_0 (u_reg_ID_EX_n_238),
        .\q_reg[59]_1 (u_reg_ID_EX_n_239),
        .\q_reg[5]_0 (u_EX_n_178),
        .\q_reg[5]_1 (\q_reg[45] ),
        .\q_reg[5]_2 (u_EX_n_180),
        .\q_reg[60]_0 (u_reg_ID_EX_n_176),
        .\q_reg[60]_1 (u_reg_ID_EX_n_190),
        .\q_reg[60]_2 (u_reg_ID_EX_n_191),
        .\q_reg[60]_3 (u_reg_ID_EX_n_237),
        .\q_reg[61]_0 (u_reg_ID_EX_n_192),
        .\q_reg[61]_1 (u_reg_ID_EX_n_240),
        .\q_reg[62]_0 (u_reg_ID_EX_n_177),
        .\q_reg[62]_1 (u_reg_ID_EX_n_193),
        .\q_reg[63]_0 (u_reg_ID_EX_n_186),
        .\q_reg[63]_1 (u_reg_ID_EX_n_187),
        .\q_reg[63]_2 (u_reg_ID_EX_n_188),
        .\q_reg[63]_3 (u_reg_ID_EX_n_189),
        .\q_reg[63]_4 (u_reg_ID_EX_n_209),
        .\q_reg[64]_0 (u_reg_ID_EX_n_178),
        .\q_reg[65]_0 (u_reg_ID_EX_n_198),
        .\q_reg[65]_1 (u_reg_ID_EX_n_210),
        .\q_reg[65]_2 (u_reg_ID_EX_n_218),
        .\q_reg[66]_0 (u_reg_ID_EX_n_179),
        .\q_reg[66]_1 (u_reg_ID_EX_n_196),
        .\q_reg[66]_2 (u_reg_ID_EX_n_197),
        .\q_reg[66]_3 (u_reg_ID_EX_n_200),
        .\q_reg[67]_0 (u_reg_ID_EX_n_222),
        .\q_reg[68]_0 (u_reg_ID_EX_n_180),
        .\q_reg[68]_1 (u_reg_ID_EX_n_219),
        .\q_reg[69]_0 (u_reg_ID_EX_n_217),
        .\q_reg[69]_1 (u_reg_ID_EX_n_223),
        .\q_reg[6]_0 (u_EX_n_184),
        .\q_reg[6]_1 (\q_reg[46] ),
        .\q_reg[6]_2 (u_EX_n_183),
        .\q_reg[70]_0 (u_reg_ID_EX_n_181),
        .\q_reg[70]_1 (u_reg_ID_EX_n_220),
        .\q_reg[71]_0 (u_reg_ID_EX_n_199),
        .\q_reg[71]_1 (u_reg_ID_EX_n_216),
        .\q_reg[72]_0 (u_reg_ID_EX_n_182),
        .\q_reg[72]_1 (u_reg_ID_EX_n_221),
        .\q_reg[72]_2 (u_reg_ID_EX_n_241),
        .\q_reg[74]_0 (u_reg_ID_EX_n_183),
        .\q_reg[74]_1 (u_reg_ID_EX_n_201),
        .\q_reg[74]_2 (u_reg_ID_EX_n_202),
        .\q_reg[74]_3 (u_reg_ID_EX_n_208),
        .\q_reg[7]_0 (u_EX_n_115),
        .\q_reg[7]_1 (\q_reg[47] ),
        .\q_reg[82]_0 (\q_reg[44] ),
        .\q_reg[82]_1 (u_EX_n_111),
        .\q_reg[82]_2 (u_EX_n_165),
        .\q_reg[90]_0 (u_EX_n_169),
        .\q_reg[91]_0 (\q_reg[52] ),
        .\q_reg[91]_1 (u_EX_n_173),
        .\q_reg[92]_0 (u_EX_n_97),
        .\q_reg[92]_1 (u_EX_n_179),
        .\q_reg[92]_2 (u_EX_n_181),
        .\q_reg[92]_3 (u_EX_n_204),
        .\q_reg[9]_0 (u_EX_n_190),
        .\q_reg[9]_1 (u_EX_n_168),
        .spo(MemDout_mem));
  DFF u_reg_IF_ID
       (.D({Next_PC[31],Next_PC[27],Next_PC[23],Next_PC[19],Next_PC[15],Next_PC[11],Next_PC[7:6],Next_PC[2:0]}),
        .E(u_reg_IF_ID_n_238),
        .PC_plus_4({PC_plus_4[31],PC_plus_4[27],PC_plus_4[23],PC_plus_4[19],PC_plus_4[15],PC_plus_4[11],PC_plus_4[7:6]}),
        .\PC_reg_reg[1] (u_reg_IF_ID_n_134),
        .\PC_reg_reg[1]_0 (u_reg_IF_ID_n_135),
        .\PC_reg_reg[1]_1 (u_reg_IF_ID_n_136),
        .\PC_reg_reg[1]_2 (u_reg_IF_ID_n_137),
        .\PC_reg_reg[1]_3 (u_reg_IF_ID_n_139),
        .\PC_reg_reg[30] ({w_JumpAddr[30:28],w_JumpAddr[26:24],w_JumpAddr[22:20],w_JumpAddr[18:16],w_JumpAddr[14:12],w_JumpAddr[10:8],w_JumpAddr[5:3]}),
        .\PC_reg_reg[31] ({u_IF1_n_0,u_IF1_n_1,u_IF1_n_2,u_IF1_n_3,u_IF1_n_4,u_IF1_n_5,u_IF1_n_6,u_IF1_n_7,u_IF1_n_8,u_IF1_n_9,u_IF1_n_10,u_IF1_n_11,u_IF1_n_12,u_IF1_n_13,u_IF1_n_14,u_IF1_n_15,u_IF1_n_16,u_IF1_n_17,u_IF1_n_18,u_IF1_n_19,u_IF1_n_20,u_IF1_n_21,u_IF1_n_22,u_IF1_n_23,Q[5:3],PC[4],Q[2:0],PC[0],u_IF1_n_32,u_IF1_n_33,u_IF1_n_34,u_IF1_n_35,u_IF1_n_36,u_IF1_n_37,u_IF1_n_38,u_IF1_n_39,u_IF1_n_40,u_IF1_n_41,u_IF1_n_42,u_IF1_n_43,u_IF1_n_44,u_IF1_n_45,u_IF1_n_46,u_IF1_n_47}),
        .\PosX_reg_reg[4] (\PosX_reg_reg[4] ),
        .\PosX_reg_reg[4]_0 (\PosX_reg_reg[4]_0 ),
        .\PosX_reg_reg[4]_1 (\PosX_reg_reg[4]_1 ),
        .\PosX_reg_reg[4]_2 (\PosX_reg_reg[4]_2 ),
        .\PosX_reg_reg[4]_3 (\PosX_reg_reg[4]_3 ),
        .\PosX_reg_reg[4]_4 (\PosX_reg_reg[4]_6 ),
        .\PosX_reg_reg[4]_5 (\PosX_reg_reg[4]_5 ),
        .\PosX_reg_reg[4]_6 (\PosX_reg_reg[4]_4 ),
        .\PosX_reg_reg[4]_7 (\PosX_reg_reg[4]_8 ),
        .\PosX_reg_reg[5] (\PosX_reg_reg[5] ),
        .\PosX_reg_reg[5]_0 (\PosX_reg_reg[5]_1 ),
        .\PosX_reg_reg[5]_1 (\PosX_reg_reg[5]_0 ),
        .Q(\mstatus_reg[0] [8]),
        .ReadData20({ReadData20[9:8],ReadData20[5:4],ReadData20[1:0]}),
        .SR(SR),
        .\TMDSn[2] (\TMDSn[2] ),
        .\TMDSn[2]_0 (\TMDSn[2]_0 ),
        .\TMDSn[2]_1 (\TMDSn[2]_16 ),
        .\TMDSn[2]_2 (\TMDSn[2]_17 ),
        .\TMDSn[2]_3 (\TMDSn[2]_18 ),
        .\TMDSn[2]_4 (\TMDSn[2]_19 ),
        .cpu_clk_BUFG(cpu_clk_BUFG),
        .\mcause_reg[31] (u_reg_IF_ID_n_98),
        .\mcause_reg[31]_0 ({u_reg_IF_ID_n_99,u_reg_IF_ID_n_100,u_reg_IF_ID_n_101,u_reg_IF_ID_n_102,u_reg_IF_ID_n_103,u_reg_IF_ID_n_104,u_reg_IF_ID_n_105,u_reg_IF_ID_n_106,u_reg_IF_ID_n_107,u_reg_IF_ID_n_108,u_reg_IF_ID_n_109,u_reg_IF_ID_n_110,u_reg_IF_ID_n_111,u_reg_IF_ID_n_112,u_reg_IF_ID_n_113,u_reg_IF_ID_n_114,u_reg_IF_ID_n_115,u_reg_IF_ID_n_116,u_reg_IF_ID_n_117,u_reg_IF_ID_n_118,u_reg_IF_ID_n_119,u_reg_IF_ID_n_120,u_reg_IF_ID_n_121,u_reg_IF_ID_n_122,u_reg_IF_ID_n_123,u_reg_IF_ID_n_124,u_reg_IF_ID_n_125,u_reg_IF_ID_n_126,u_reg_IF_ID_n_127,u_reg_IF_ID_n_128,u_reg_IF_ID_n_129,u_reg_IF_ID_n_130}),
        .\mcause_reg[31]_1 ({u_ID_n_33,u_ID_n_34,u_ID_n_35,u_ID_n_36,u_ID_n_37,u_ID_n_38,u_ID_n_39,u_ID_n_40,u_ID_n_41,u_ID_n_42,u_ID_n_43,u_ID_n_44,u_ID_n_45,u_ID_n_46,u_ID_n_47,u_ID_n_48,u_ID_n_49,u_ID_n_50,u_ID_n_51,u_ID_n_52,u_ID_n_53,u_ID_n_54,u_ID_n_55,u_ID_n_56,u_ID_n_57,u_ID_n_58,u_ID_n_59,u_ID_n_60,u_ID_n_61,u_ID_n_62,u_ID_n_63,u_ID_n_64}),
        .\mepc_reg[31] (u_reg_IF_ID_n_97),
        .\mepc_reg[31]_0 (\u_CSR/p_1_in ),
        .\mepc_reg[31]_1 ({u_ID_n_65,u_ID_n_66,u_ID_n_67,u_ID_n_68,u_ID_n_69,u_ID_n_70,u_ID_n_71,u_ID_n_72,u_ID_n_73,u_ID_n_74,u_ID_n_75,u_ID_n_76,u_ID_n_77,u_ID_n_78,u_ID_n_79,u_ID_n_80,u_ID_n_81,u_ID_n_82,u_ID_n_83,u_ID_n_84,u_ID_n_85,u_ID_n_86,u_ID_n_87,u_ID_n_88,u_ID_n_89,u_ID_n_90,u_ID_n_91,u_ID_n_92,u_ID_n_93,u_ID_n_94,u_ID_n_95,u_ID_n_96}),
        .\mstatus_reg[0] (u_reg_IF_ID_n_131),
        .\mstatus_reg[0]_0 (u_reg_IF_ID_n_172),
        .\mstatus_reg[0]_1 (u_ID_n_0),
        .\mstatus_reg[1] (u_ID_n_129),
        .\mstatus_reg[2] (u_ID_n_130),
        .\mstatus_reg[31] (\u_CSR/get_new_val2_return ),
        .\mstatus_reg[31]_0 ({u_ID_n_1,u_ID_n_2,u_ID_n_3,u_ID_n_4,u_ID_n_5,u_ID_n_6,u_ID_n_7,u_ID_n_8,u_ID_n_9,u_ID_n_10,u_ID_n_11,u_ID_n_12,u_ID_n_13,u_ID_n_14,u_ID_n_15,u_ID_n_16,u_ID_n_17,u_ID_n_18,u_ID_n_19,u_ID_n_20,u_ID_n_21,u_ID_n_22,u_ID_n_23,u_ID_n_24,u_ID_n_25,u_ID_n_26,u_ID_n_27,u_ID_n_28,u_ID_n_29,u_ID_n_30,u_ID_n_31,u_ID_n_32}),
        .\mstatus_reg[6] (u_ID_n_157),
        .\mstatus_reg[8] (u_ID_n_158),
        .\mstatus_reg[9] (u_ID_n_159),
        .\mtvec_reg[31] (\u_CSR/get_new_val_return ),
        .\mtvec_reg[31]_0 ({u_ID_n_97,u_ID_n_98,u_ID_n_99,u_ID_n_100,u_ID_n_101,u_ID_n_102,u_ID_n_103,u_ID_n_104,u_ID_n_105,u_ID_n_106,u_ID_n_107,u_ID_n_108,u_ID_n_109,u_ID_n_110,u_ID_n_111,u_ID_n_112,u_ID_n_113,u_ID_n_114,u_ID_n_115,u_ID_n_116,u_ID_n_117,u_ID_n_118,u_ID_n_119,u_ID_n_120,u_ID_n_121,u_ID_n_122,u_ID_n_123,u_ID_n_124,u_ID_n_125,u_ID_n_126,u_ID_n_127,u_ID_n_128}),
        .\q_reg[112] (u_reg_IF_ID_n_239),
        .\q_reg[114] (u_reg_IF_ID_n_132),
        .\q_reg[12]_0 (u_reg_MEM_WB_n_65),
        .\q_reg[145] (u_reg_IF_ID_n_133),
        .\q_reg[145]_0 (u_reg_IF_ID_n_173),
        .\q_reg[155] ({w_RegWrite_id,w_MemRead_id,u_reg_IF_ID_n_35,w_ALUCode_id,w_ALUSrcB_id,w_Imm_id[9:8],w_Imm_id[6],w_Imm_id[2:0],\mstatus_reg[0] [4:3],\mstatus_reg[0] [7:5],Instruction_id[11],\mstatus_reg[0] [1],Instruction_id[7],r_PC_id,\mstatus_reg[0] [0],Instruction_id[13],\mstatus_reg[0] [2]}),
        .\q_reg[37]_0 (w_IFWrite),
        .\q_reg[51]_0 (u_reg_IF_ID_n_138),
        .\q_reg[53]_0 (u_reg_MEM_WB_n_66),
        .\q_reg[69] (u_reg_MEM_WB_n_0),
        .\q_reg[70] ({w_rs1Data_id,w_rs2Data_id[31]}),
        .w_IF_flush(w_IF_flush));
  DFF__parameterized2 u_reg_MEM_WB
       (.D({final_mem_read_data,u_reg_EX_MEM_n_32,u_reg_EX_MEM_n_33,u_reg_EX_MEM_n_34,u_reg_EX_MEM_n_35,u_reg_EX_MEM_n_36,u_reg_EX_MEM_n_37,u_reg_EX_MEM_n_38,u_reg_EX_MEM_n_39,u_reg_EX_MEM_n_40,u_reg_EX_MEM_n_41,u_reg_EX_MEM_n_42,u_reg_EX_MEM_n_43,u_reg_EX_MEM_n_44,u_reg_EX_MEM_n_45,u_reg_EX_MEM_n_46,u_reg_EX_MEM_n_47,u_reg_EX_MEM_n_48,u_reg_EX_MEM_n_49,u_reg_EX_MEM_n_50,u_reg_EX_MEM_n_51,u_reg_EX_MEM_n_52,u_reg_EX_MEM_n_53,u_reg_EX_MEM_n_54,u_reg_EX_MEM_n_55,u_reg_EX_MEM_n_56,u_reg_EX_MEM_n_57,u_reg_EX_MEM_n_58,u_reg_EX_MEM_n_59,u_reg_EX_MEM_n_60,u_reg_EX_MEM_n_61,p_5_in,u_reg_EX_MEM_n_63,r_RegWrite_mem,u_reg_EX_MEM_n_65,r_rdAddr_mem}),
        .\PC_reg_reg[1] (u_reg_MEM_WB_n_0),
        .\PC_reg_reg[1]_0 (u_reg_MEM_WB_n_65),
        .\PC_reg_reg[1]_1 (u_reg_MEM_WB_n_66),
        .Q({u_reg_MEM_WB_n_67,u_reg_MEM_WB_n_68,u_reg_MEM_WB_n_69,u_reg_MEM_WB_n_70,u_reg_MEM_WB_n_71,u_reg_MEM_WB_n_72,u_reg_MEM_WB_n_73,u_reg_MEM_WB_n_74,u_reg_MEM_WB_n_75,u_reg_MEM_WB_n_76,u_reg_MEM_WB_n_77,u_reg_MEM_WB_n_78,u_reg_MEM_WB_n_79,u_reg_MEM_WB_n_80,u_reg_MEM_WB_n_81,u_reg_MEM_WB_n_82,u_reg_MEM_WB_n_83,u_reg_MEM_WB_n_84,u_reg_MEM_WB_n_85,u_reg_MEM_WB_n_86,u_reg_MEM_WB_n_87,u_reg_MEM_WB_n_88,u_reg_MEM_WB_n_89,u_reg_MEM_WB_n_90,u_reg_MEM_WB_n_91,u_reg_MEM_WB_n_92,u_reg_MEM_WB_n_93,u_reg_MEM_WB_n_94,u_reg_MEM_WB_n_95,u_reg_MEM_WB_n_96,u_reg_MEM_WB_n_97,u_reg_MEM_WB_n_98,u_reg_MEM_WB_n_99,u_reg_MEM_WB_n_100,u_reg_MEM_WB_n_101,u_reg_MEM_WB_n_102,u_reg_MEM_WB_n_103,u_reg_MEM_WB_n_104,u_reg_MEM_WB_n_105,u_reg_MEM_WB_n_106,u_reg_MEM_WB_n_107,u_reg_MEM_WB_n_108,u_reg_MEM_WB_n_109,u_reg_MEM_WB_n_110,u_reg_MEM_WB_n_111,u_reg_MEM_WB_n_112,u_reg_MEM_WB_n_113,u_reg_MEM_WB_n_114,u_reg_MEM_WB_n_115,u_reg_MEM_WB_n_116,u_reg_MEM_WB_n_117,u_reg_MEM_WB_n_118,u_reg_MEM_WB_n_119,u_reg_MEM_WB_n_120,u_reg_MEM_WB_n_121,u_reg_MEM_WB_n_122,u_reg_MEM_WB_n_123,u_reg_MEM_WB_n_124,u_reg_MEM_WB_n_125,u_reg_MEM_WB_n_126,u_reg_MEM_WB_n_127,u_reg_MEM_WB_n_128,u_reg_MEM_WB_n_129,u_reg_MEM_WB_n_130,\q_reg[51] [3],u_reg_MEM_WB_n_132,\q_reg[51] [2:0]}),
        .ReadData10(ReadData10),
        .ReadData20({ReadData20[31:2],ReadData20[0]}),
        .SR(SR),
        .cpu_clk_BUFG(cpu_clk_BUFG),
        .\q_reg[113] ({w_rs1Data_id,w_rs2Data_id}),
        .\q_reg[15]_0 (u_reg_IF_ID_n_239),
        .\q_reg[19]_0 ({\mstatus_reg[0] [4:3],\mstatus_reg[0] [7:5],\mstatus_reg[0] [0],Instruction_id[13],\mstatus_reg[0] [2]}),
        .\q_reg[20]_0 (u_reg_IF_ID_n_135),
        .\q_reg[20]_1 (u_reg_IF_ID_n_134),
        .\q_reg[20]_2 (u_reg_IF_ID_n_137),
        .\q_reg[20]_3 (u_reg_IF_ID_n_136),
        .\q_reg[20]_4 (u_reg_IF_ID_n_139),
        .\q_reg[20]_5 (u_reg_IF_ID_n_138),
        .\q_reg[21]_0 (u_reg_IF_ID_n_131),
        .w_RegWriteData_wb({w_RegWriteData_wb[31],w_RegWriteData_wb[27:25],w_RegWriteData_wb[23],w_RegWriteData_wb[19],w_RegWriteData_wb[17:12],w_RegWriteData_wb[10:8],w_RegWriteData_wb[5:4],w_RegWriteData_wb[1:0]}));
endmodule

module TMDSencode
   (ActiveArea,
    TMDSch0,
    TMDSch1,
    TMDSch2,
    hSync,
    pixel_clk,
    reset,
    tmds_clk,
    vSync,
    blue,
    green,
    red,
    lopt);
  input ActiveArea;
  output TMDSch0;
  output TMDSch1;
  output TMDSch2;
  input hSync;
  input pixel_clk;
  input reset;
  input tmds_clk;
  input vSync;
  input [7:0]blue;
  input [7:0]green;
  input [7:0]red;
  input lopt;

  wire ActiveArea;
  wire TMDSch0_OBUF;
  wire TMDSch0_i_1_n_0;
  wire TMDSch0_i_2_n_0;
  wire TMDSch0_i_4_n_0;
  wire TMDSch0_i_5_n_0;
  wire TMDSch0_reg_i_3_n_0;
  wire TMDSch1_OBUF;
  wire TMDSch1_i_1_n_0;
  wire TMDSch1_i_3_n_0;
  wire TMDSch1_i_4_n_0;
  wire TMDSch1_reg_i_2_n_0;
  wire TMDSch2_OBUF;
  wire TMDSch2_i_1_n_0;
  wire TMDSch2_i_3_n_0;
  wire TMDSch2_i_4_n_0;
  wire TMDSch2_reg_i_2_n_0;
  wire [9:0]TmdsBlue;
  wire [9:0]TmdsGreen;
  wire [9:0]TmdsRed;
  wire [3:0]bit_q_reg__0;
  wire [4:4]bit_q_reg__1;
  wire clear;
  wire encode_blue_n_0;
  wire encode_blue_n_1;
  wire encode_blue_n_10;
  wire encode_blue_n_2;
  wire encode_blue_n_3;
  wire encode_blue_n_4;
  wire encode_blue_n_5;
  wire encode_blue_n_6;
  wire encode_blue_n_7;
  wire encode_blue_n_8;
  wire encode_blue_n_9;
  wire encode_green_n_0;
  wire encode_green_n_1;
  wire encode_green_n_2;
  wire encode_green_n_3;
  wire encode_green_n_4;
  wire encode_green_n_5;
  wire encode_green_n_6;
  wire encode_green_n_7;
  wire encode_green_n_8;
  wire encode_green_n_9;
  wire encode_red_n_0;
  wire encode_red_n_1;
  wire encode_red_n_2;
  wire encode_red_n_3;
  wire encode_red_n_4;
  wire encode_red_n_5;
  wire encode_red_n_6;
  wire encode_red_n_7;
  wire encode_red_n_8;
  wire encode_red_n_9;
  wire [7:0]green;
  wire hSync;
  wire lopt;
  wire [4:0]p_0_in;
  wire [7:0]red;
  wire reset;
  wire tmds_clk;
  wire tmds_clk_IBUF_BUFG;
  wire vSync;
  wire [7:0]NLW_encode_blue_blue_IBUF_UNCONNECTED;
  wire [7:5]NLW_encode_green_green_IBUF_UNCONNECTED;
  wire [7:5]NLW_encode_red_red_IBUF_UNCONNECTED;

  assign TMDSch0 = TMDSch0_OBUF;
  assign TMDSch1 = TMDSch1_OBUF;
  assign TMDSch2 = TMDSch2_OBUF;
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    TMDSch0_i_1
       (.I0(TmdsBlue[8]),
        .I1(bit_q_reg__0[0]),
        .I2(TmdsBlue[9]),
        .I3(TMDSch0_i_2_n_0),
        .I4(bit_q_reg__0[3]),
        .I5(TMDSch0_reg_i_3_n_0),
        .O(TMDSch0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    TMDSch0_i_2
       (.I0(bit_q_reg__0[2]),
        .I1(bit_q_reg__0[1]),
        .O(TMDSch0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TMDSch0_i_4
       (.I0(TmdsBlue[3]),
        .I1(TmdsBlue[2]),
        .I2(bit_q_reg__0[1]),
        .I3(TmdsBlue[1]),
        .I4(bit_q_reg__0[0]),
        .I5(TmdsBlue[0]),
        .O(TMDSch0_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TMDSch0_i_5
       (.I0(TmdsBlue[7]),
        .I1(TmdsBlue[6]),
        .I2(bit_q_reg__0[1]),
        .I3(TmdsBlue[5]),
        .I4(bit_q_reg__0[0]),
        .I5(TmdsBlue[4]),
        .O(TMDSch0_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TMDSch0_reg
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(TMDSch0_i_1_n_0),
        .Q(TMDSch0_OBUF),
        .R(1'b0));
  MUXF7 TMDSch0_reg_i_3
       (.I0(TMDSch0_i_4_n_0),
        .I1(TMDSch0_i_5_n_0),
        .O(TMDSch0_reg_i_3_n_0),
        .S(bit_q_reg__0[2]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    TMDSch1_i_1
       (.I0(TmdsGreen[8]),
        .I1(bit_q_reg__0[0]),
        .I2(TmdsGreen[9]),
        .I3(TMDSch0_i_2_n_0),
        .I4(bit_q_reg__0[3]),
        .I5(TMDSch1_reg_i_2_n_0),
        .O(TMDSch1_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TMDSch1_i_3
       (.I0(TmdsGreen[3]),
        .I1(TmdsGreen[2]),
        .I2(bit_q_reg__0[1]),
        .I3(TmdsGreen[1]),
        .I4(bit_q_reg__0[0]),
        .I5(TmdsGreen[0]),
        .O(TMDSch1_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TMDSch1_i_4
       (.I0(TmdsGreen[7]),
        .I1(TmdsGreen[6]),
        .I2(bit_q_reg__0[1]),
        .I3(TmdsGreen[5]),
        .I4(bit_q_reg__0[0]),
        .I5(TmdsGreen[4]),
        .O(TMDSch1_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TMDSch1_reg
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(TMDSch1_i_1_n_0),
        .Q(TMDSch1_OBUF),
        .R(1'b0));
  MUXF7 TMDSch1_reg_i_2
       (.I0(TMDSch1_i_3_n_0),
        .I1(TMDSch1_i_4_n_0),
        .O(TMDSch1_reg_i_2_n_0),
        .S(bit_q_reg__0[2]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    TMDSch2_i_1
       (.I0(TmdsRed[8]),
        .I1(bit_q_reg__0[0]),
        .I2(TmdsRed[9]),
        .I3(TMDSch0_i_2_n_0),
        .I4(bit_q_reg__0[3]),
        .I5(TMDSch2_reg_i_2_n_0),
        .O(TMDSch2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TMDSch2_i_3
       (.I0(TmdsRed[3]),
        .I1(TmdsRed[2]),
        .I2(bit_q_reg__0[1]),
        .I3(TmdsRed[1]),
        .I4(bit_q_reg__0[0]),
        .I5(TmdsRed[0]),
        .O(TMDSch2_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TMDSch2_i_4
       (.I0(TmdsRed[7]),
        .I1(TmdsRed[6]),
        .I2(bit_q_reg__0[1]),
        .I3(TmdsRed[5]),
        .I4(bit_q_reg__0[0]),
        .I5(TmdsRed[4]),
        .O(TMDSch2_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TMDSch2_reg
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(TMDSch2_i_1_n_0),
        .Q(TMDSch2_OBUF),
        .R(1'b0));
  MUXF7 TMDSch2_reg_i_2
       (.I0(TMDSch2_i_3_n_0),
        .I1(TMDSch2_i_4_n_0),
        .O(TMDSch2_reg_i_2_n_0),
        .S(bit_q_reg__0[2]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \TmdsBlue[9]_i_1 
       (.I0(bit_q_reg__1),
        .I1(bit_q_reg__0[2]),
        .I2(bit_q_reg__0[1]),
        .I3(bit_q_reg__0[0]),
        .I4(bit_q_reg__0[3]),
        .O(clear));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[0] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_10),
        .Q(TmdsBlue[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[1] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_9),
        .Q(TmdsBlue[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[2] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_8),
        .Q(TmdsBlue[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[3] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_7),
        .Q(TmdsBlue[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[4] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_6),
        .Q(TmdsBlue[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[5] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_5),
        .Q(TmdsBlue[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[6] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_4),
        .Q(TmdsBlue[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[7] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_3),
        .Q(TmdsBlue[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[8] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_2),
        .Q(TmdsBlue[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsBlue_reg[9] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_blue_n_1),
        .Q(TmdsBlue[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[0] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_9),
        .Q(TmdsGreen[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[1] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_8),
        .Q(TmdsGreen[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[2] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_7),
        .Q(TmdsGreen[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[3] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_6),
        .Q(TmdsGreen[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[4] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_5),
        .Q(TmdsGreen[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[5] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_4),
        .Q(TmdsGreen[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[6] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_3),
        .Q(TmdsGreen[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[7] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_2),
        .Q(TmdsGreen[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[8] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_1),
        .Q(TmdsGreen[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsGreen_reg[9] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_green_n_0),
        .Q(TmdsGreen[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[0] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_9),
        .Q(TmdsRed[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[1] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_8),
        .Q(TmdsRed[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[2] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_7),
        .Q(TmdsRed[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[3] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_6),
        .Q(TmdsRed[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[4] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_5),
        .Q(TmdsRed[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[5] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_4),
        .Q(TmdsRed[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[6] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_3),
        .Q(TmdsRed[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[7] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_2),
        .Q(TmdsRed[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[8] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_1),
        .Q(TmdsRed[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TmdsRed_reg[9] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(clear),
        .D(encode_red_n_0),
        .Q(TmdsRed[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_q[0]_i_1 
       (.I0(bit_q_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_q[1]_i_1 
       (.I0(bit_q_reg__0[0]),
        .I1(bit_q_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bit_q[2]_i_1 
       (.I0(bit_q_reg__0[0]),
        .I1(bit_q_reg__0[1]),
        .I2(bit_q_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bit_q[3]_i_1 
       (.I0(bit_q_reg__0[1]),
        .I1(bit_q_reg__0[0]),
        .I2(bit_q_reg__0[2]),
        .I3(bit_q_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bit_q[4]_i_1 
       (.I0(bit_q_reg__0[2]),
        .I1(bit_q_reg__0[0]),
        .I2(bit_q_reg__0[1]),
        .I3(bit_q_reg__0[3]),
        .I4(bit_q_reg__1),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_q_reg[0] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(bit_q_reg__0[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \bit_q_reg[1] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(bit_q_reg__0[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \bit_q_reg[2] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(bit_q_reg__0[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \bit_q_reg[3] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(bit_q_reg__0[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \bit_q_reg[4] 
       (.C(tmds_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(bit_q_reg__1),
        .R(clear));
  encode encode_blue
       (.ActiveArea_IBUF(ActiveArea),
        .D({encode_blue_n_1,encode_blue_n_2,encode_blue_n_3,encode_blue_n_4,encode_blue_n_5,encode_blue_n_6,encode_blue_n_7,encode_blue_n_8,encode_blue_n_9,encode_blue_n_10}),
        .SR(encode_blue_n_0),
        .blue_IBUF(NLW_encode_blue_blue_IBUF_UNCONNECTED[7:0]),
        .hSync_IBUF(hSync),
        .pixel_clk_IBUF_BUFG(lopt),
        .reset_IBUF(reset),
        .vSync_IBUF(vSync));
  encode_0 encode_green
       (.ActiveArea_IBUF(ActiveArea),
        .D({encode_green_n_0,encode_green_n_1,encode_green_n_2,encode_green_n_3,encode_green_n_4,encode_green_n_5,encode_green_n_6,encode_green_n_7,encode_green_n_8,encode_green_n_9}),
        .SR(encode_blue_n_0),
        .green_IBUF({NLW_encode_green_green_IBUF_UNCONNECTED[7],green[6],NLW_encode_green_green_IBUF_UNCONNECTED[5],green[4:0]}),
        .pixel_clk_IBUF_BUFG(lopt),
        .reset_IBUF(reset));
  encode_1 encode_red
       (.ActiveArea_IBUF(ActiveArea),
        .D({encode_red_n_0,encode_red_n_1,encode_red_n_2,encode_red_n_3,encode_red_n_4,encode_red_n_5,encode_red_n_6,encode_red_n_7,encode_red_n_8,encode_red_n_9}),
        .SR(encode_blue_n_0),
        .pixel_clk_IBUF_BUFG(lopt),
        .red_IBUF({NLW_encode_red_red_IBUF_UNCONNECTED[7],red[6],NLW_encode_red_red_IBUF_UNCONNECTED[5],red[4:0]}),
        .reset_IBUF(reset));
  BUFG tmds_clk_IBUF_BUFG_inst
       (.I(tmds_clk),
        .O(tmds_clk_IBUF_BUFG));
endmodule

module brute_force_synchronizer
   (ButtonIn_IBUF,
    button_sync,
    clk_IBUF_BUFG);
  input ButtonIn_IBUF;
  output button_sync;
  input clk_IBUF_BUFG;

  wire ButtonIn_IBUF;
  wire button_sync;
  wire clk_IBUF_BUFG;
  wire ff1_n_0;

  dff ff1
       (.ButtonIn_IBUF(ButtonIn_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\q_reg[0]_0 (ff1_n_0));
  dff_0 ff2
       (.button_sync(button_sync),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\q_reg[0]_0 (ff1_n_0));
endmodule

(* sim = "0" *) 
module button_process_unit
   (ButtonIn,
    ButtonOut,
    clk,
    reset,
    lopt);
  input ButtonIn;
  output ButtonOut;
  input clk;
  input reset;
  input lopt;

  wire ButtonIn;
  wire ButtonOut_OBUF;
  wire button_debounced;
  wire button_sync;
  wire last_value;
  wire lopt;
  wire NLW_debounce_reset_IBUF_UNCONNECTED;

  assign ButtonOut = ButtonOut_OBUF;
  debouncer debounce
       (.ButtonOut_OBUF(ButtonOut_OBUF),
        .button_debounced(button_debounced),
        .button_sync(button_sync),
        .clk_IBUF_BUFG(lopt),
        .last_value(last_value),
        .reset_IBUF(NLW_debounce_reset_IBUF_UNCONNECTED));
  one_pulse one_pulse_inst
       (.button_debounced(button_debounced),
        .clk_IBUF_BUFG(lopt),
        .last_value(last_value));
  brute_force_synchronizer sync
       (.ButtonIn_IBUF(ButtonIn),
        .button_sync(button_sync),
        .clk_IBUF_BUFG(lopt));
endmodule

module counter_n
   (clk_IBUF_BUFG,
    E);
  input clk_IBUF_BUFG;
  output [0:0]E;

  wire [0:0]E;
  wire clk_IBUF_BUFG;
  wire [16:1]data0;
  wire [0:0]q;
  wire q0_carry__0_n_0;
  wire q0_carry__1_n_0;
  wire q0_carry_n_0;
  wire \q[16]_i_2_n_0 ;
  wire \q[16]_i_3_n_0 ;
  wire \q[16]_i_4_n_0 ;
  wire \q[16]_i_5_n_0 ;
  wire [16:0]q_reg_n_0_;
  wire [2:0]NLW_q0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_q0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_q0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_q0_carry__2_CO_UNCONNECTED;

  CARRY4 q0_carry
       (.CI(1'b0),
        .CO({q0_carry_n_0,NLW_q0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(q_reg_n_0_[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(q_reg_n_0_[4:1]));
  CARRY4 q0_carry__0
       (.CI(q0_carry_n_0),
        .CO({q0_carry__0_n_0,NLW_q0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(q_reg_n_0_[8:5]));
  CARRY4 q0_carry__1
       (.CI(q0_carry__0_n_0),
        .CO({q0_carry__1_n_0,NLW_q0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(q_reg_n_0_[12:9]));
  CARRY4 q0_carry__2
       (.CI(q0_carry__1_n_0),
        .CO(NLW_q0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(q_reg_n_0_[16:13]));
  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_1__1 
       (.I0(q_reg_n_0_[0]),
        .O(q));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[16]_i_1 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(\q[16]_i_3_n_0 ),
        .I2(\q[16]_i_4_n_0 ),
        .I3(\q[16]_i_5_n_0 ),
        .O(E));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \q[16]_i_2 
       (.I0(q_reg_n_0_[4]),
        .I1(q_reg_n_0_[3]),
        .I2(q_reg_n_0_[6]),
        .I3(q_reg_n_0_[5]),
        .O(\q[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \q[16]_i_3 
       (.I0(q_reg_n_0_[0]),
        .I1(q_reg_n_0_[15]),
        .I2(q_reg_n_0_[16]),
        .I3(q_reg_n_0_[2]),
        .I4(q_reg_n_0_[1]),
        .O(\q[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[16]_i_4 
       (.I0(q_reg_n_0_[12]),
        .I1(q_reg_n_0_[11]),
        .I2(q_reg_n_0_[14]),
        .I3(q_reg_n_0_[13]),
        .O(\q[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \q[16]_i_5 
       (.I0(q_reg_n_0_[7]),
        .I1(q_reg_n_0_[8]),
        .I2(q_reg_n_0_[10]),
        .I3(q_reg_n_0_[9]),
        .O(\q[16]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q),
        .Q(q_reg_n_0_[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[10]),
        .Q(q_reg_n_0_[10]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[11]),
        .Q(q_reg_n_0_[11]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[12]),
        .Q(q_reg_n_0_[12]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[13]),
        .Q(q_reg_n_0_[13]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[14]),
        .Q(q_reg_n_0_[14]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[15]),
        .Q(q_reg_n_0_[15]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[16]),
        .Q(q_reg_n_0_[16]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(q_reg_n_0_[1]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(q_reg_n_0_[2]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(q_reg_n_0_[3]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(q_reg_n_0_[4]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(q_reg_n_0_[5]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(q_reg_n_0_[6]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(q_reg_n_0_[7]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(q_reg_n_0_[8]),
        .R(E));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(q_reg_n_0_[9]),
        .R(E));
endmodule

module debouncer
   (ButtonOut_OBUF,
    button_debounced,
    button_sync,
    clk_IBUF_BUFG,
    last_value,
    reset_IBUF);
  output ButtonOut_OBUF;
  output button_debounced;
  input button_sync;
  input clk_IBUF_BUFG;
  input last_value;
  input reset_IBUF;

  wire ButtonOut_OBUF;
  wire button_debounced;
  wire button_sync;
  wire clk_IBUF_BUFG;
  wire counter_n_0;
  wire div_inst_n_0;
  wire last_value;
  wire state_n_0;
  wire NLW_state_reset_IBUF_UNCONNECTED;

  dffre counter
       (.E(div_inst_n_0),
        .SR(state_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\q_reg[1]_0 (counter_n_0));
  counter_n div_inst
       (.E(div_inst_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  dffre__parameterized0 state
       (.ButtonOut_OBUF(ButtonOut_OBUF),
        .SR(state_n_0),
        .button_debounced(button_debounced),
        .button_sync(button_sync),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .last_value(last_value),
        .\q_reg[1]_0 (counter_n_0),
        .reset_IBUF(NLW_state_reset_IBUF_UNCONNECTED));
endmodule

module dff
   (ButtonIn_IBUF,
    clk_IBUF_BUFG,
    \q_reg[0]_0 );
  input ButtonIn_IBUF;
  input clk_IBUF_BUFG;
  output \q_reg[0]_0 ;

  wire ButtonIn_IBUF;
  wire clk_IBUF_BUFG;
  wire \q_reg[0]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ButtonIn_IBUF),
        .Q(\q_reg[0]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_0
   (button_sync,
    clk_IBUF_BUFG,
    \q_reg[0]_0 );
  output button_sync;
  input clk_IBUF_BUFG;
  input \q_reg[0]_0 ;

  wire button_sync;
  wire clk_IBUF_BUFG;
  wire \q_reg[0]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q_reg[0]_0 ),
        .Q(button_sync),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_1
   (button_debounced,
    clk_IBUF_BUFG,
    last_value);
  input button_debounced;
  input clk_IBUF_BUFG;
  output last_value;

  wire button_debounced;
  wire clk_IBUF_BUFG;
  wire last_value;

  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(button_debounced),
        .Q(last_value),
        .R(1'b0));
endmodule

module dffre
   (clk_IBUF_BUFG,
    \q_reg[1]_0 ,
    E,
    SR);
  input clk_IBUF_BUFG;
  output \q_reg[1]_0 ;
  input [0:0]E;
  input [0:0]SR;

  wire [0:0]E;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [3:0]d0;
  wire \q_reg[1]_0 ;
  wire [3:0]q_reg__0;

  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_1 
       (.I0(q_reg__0[0]),
        .O(d0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[1]_i_1 
       (.I0(q_reg__0[1]),
        .I1(q_reg__0[0]),
        .O(d0[1]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \q[1]_i_2 
       (.I0(q_reg__0[1]),
        .I1(q_reg__0[0]),
        .I2(q_reg__0[3]),
        .I3(q_reg__0[2]),
        .O(\q_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q[2]_i_1 
       (.I0(q_reg__0[1]),
        .I1(q_reg__0[0]),
        .I2(q_reg__0[2]),
        .O(d0[2]));
  LUT4 #(
    .INIT(16'h6CCC)) 
    \q[3]_i_2 
       (.I0(q_reg__0[2]),
        .I1(q_reg__0[3]),
        .I2(q_reg__0[0]),
        .I3(q_reg__0[1]),
        .O(d0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(d0[0]),
        .Q(q_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(d0[1]),
        .Q(q_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(d0[2]),
        .Q(q_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(d0[3]),
        .Q(q_reg__0[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "dffre" *) 
module dffre__parameterized0
   (ButtonOut_OBUF,
    button_debounced,
    button_sync,
    clk_IBUF_BUFG,
    last_value,
    \q_reg[1]_0 ,
    reset_IBUF,
    SR);
  output ButtonOut_OBUF;
  output button_debounced;
  input button_sync;
  input clk_IBUF_BUFG;
  input last_value;
  input \q_reg[1]_0 ;
  input reset_IBUF;
  output [0:0]SR;

  wire ButtonOut_OBUF;
  wire [0:0]SR;
  wire button_debounced;
  wire button_sync;
  wire clk_IBUF_BUFG;
  wire [1:0]current_state_q;
  wire last_value;
  wire \q[0]_i_1_n_0 ;
  wire \q[1]_i_1_n_0 ;
  wire \q_reg[1]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ButtonOut_OBUF_inst_i_1
       (.I0(current_state_q[0]),
        .I1(current_state_q[1]),
        .I2(last_value),
        .O(ButtonOut_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBE14)) 
    \q[0]_i_1 
       (.I0(current_state_q[0]),
        .I1(current_state_q[1]),
        .I2(button_sync),
        .I3(\q_reg[1]_0 ),
        .O(\q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[0]_i_1__0 
       (.I0(current_state_q[1]),
        .I1(current_state_q[0]),
        .O(button_debounced));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \q[1]_i_1 
       (.I0(current_state_q[1]),
        .I1(current_state_q[0]),
        .I2(\q_reg[1]_0 ),
        .O(\q[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[3]_i_1 
       (.I0(current_state_q[0]),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[0]_i_1_n_0 ),
        .Q(current_state_q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[1]_i_1_n_0 ),
        .Q(current_state_q[1]),
        .R(1'b0));
endmodule

module encode
   (ActiveArea_IBUF,
    hSync_IBUF,
    pixel_clk_IBUF_BUFG,
    reset_IBUF,
    vSync_IBUF,
    D,
    SR,
    blue_IBUF);
  input ActiveArea_IBUF;
  input hSync_IBUF;
  input pixel_clk_IBUF_BUFG;
  input reset_IBUF;
  input vSync_IBUF;
  output [9:0]D;
  output [0:0]SR;
  input [7:0]blue_IBUF;

  wire ActiveArea_IBUF;
  wire [9:0]D;
  wire [0:0]SR;
  wire [7:0]cnt0;
  wire [7:0]cnt00_in;
  wire cnt0__0_carry__0_i_1_n_0;
  wire cnt0__0_carry__0_i_3_n_0;
  wire cnt0__0_carry__0_i_4_n_0;
  wire cnt0__0_carry_n_0;
  wire cnt0__23_carry_n_0;
  wire cnt_carry__0_n_4;
  wire cnt_carry__0_n_5;
  wire cnt_carry__0_n_6;
  wire cnt_carry__0_n_7;
  wire cnt_carry_n_0;
  wire cnt_carry_n_4;
  wire cnt_carry_n_5;
  wire cnt_carry_n_6;
  wire cnt_carry_n_7;
  wire [7:0]cnt_reg__0;
  wire hSync_IBUF;
  wire lopt;
  wire numbercnt_d_inst_n_10;
  wire numbercnt_d_inst_n_11;
  wire numbercnt_d_inst_n_14;
  wire numbercnt_d_inst_n_15;
  wire numbercnt_d_inst_n_16;
  wire numbercnt_d_inst_n_17;
  wire numbercnt_d_inst_n_18;
  wire numbercnt_d_inst_n_19;
  wire numbercnt_d_inst_n_20;
  wire numbercnt_d_inst_n_21;
  wire numbercnt_d_inst_n_22;
  wire numbercnt_d_inst_n_23;
  wire numbercnt_d_inst_n_24;
  wire numbercnt_d_inst_n_25;
  wire numbercnt_d_inst_n_26;
  wire numbercnt_d_inst_n_27;
  wire numbercnt_d_inst_n_28;
  wire numbercnt_d_inst_n_29;
  wire numbercnt_d_inst_n_30;
  wire numbercnt_d_inst_n_31;
  wire numbercnt_d_inst_n_32;
  wire numbercnt_d_inst_n_33;
  wire numbercnt_d_inst_n_36;
  wire numbercnt_d_inst_n_37;
  wire numbercnt_d_inst_n_38;
  wire numbercnt_d_inst_n_39;
  wire numbercnt_d_inst_n_40;
  wire numbercnt_d_inst_n_41;
  wire numbercnt_d_inst_n_42;
  wire numbercnt_d_inst_n_43;
  wire numbercnt_d_inst_n_44;
  wire numbercnt_d_inst_n_45;
  wire numbercnt_d_inst_n_46;
  wire numbercnt_d_inst_n_48;
  wire numbercnt_d_inst_n_49;
  wire numbercnt_d_inst_n_50;
  wire numbercnt_d_inst_n_51;
  wire numbercnt_d_inst_n_52;
  wire numbercnt_d_inst_n_53;
  wire numbercnt_d_inst_n_54;
  wire pixel_clk_IBUF_BUFG;
  wire [8:0]q1_in;
  wire \q[7]_i_10_n_0 ;
  wire \q[7]_i_7__1_n_0 ;
  wire \q[9]_i_1_n_0 ;
  wire reset_IBUF;
  wire vSync_IBUF;
  wire [2:0]NLW_cnt0__0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_cnt0__0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_cnt0__23_carry_CO_UNCONNECTED;
  wire [3:0]NLW_cnt0__23_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_cnt_carry_CO_UNCONNECTED;
  wire [3:0]NLW_cnt_carry__0_CO_UNCONNECTED;
  wire \NLW_numbercnt_d_inst_blue[0]_0_UNCONNECTED ;
  wire \NLW_numbercnt_d_inst_blue[3]_0_UNCONNECTED ;
  wire \NLW_numbercnt_d_inst_blue[4]_0_UNCONNECTED ;
  wire \NLW_numbercnt_d_inst_blue[7]_0_UNCONNECTED ;
  wire \NLW_numbercnt_d_inst_blue[7]_1_UNCONNECTED ;
  wire \NLW_numbercnt_d_inst_blue[7]_2_UNCONNECTED ;
  wire \NLW_numbercnt_d_inst_blue[7]_3_UNCONNECTED ;
  wire \NLW_numbercnt_d_inst_blue[7]_4_UNCONNECTED ;
  wire \NLW_numbercnt_d_inst_q_reg[2]_2_UNCONNECTED ;
  wire \NLW_numbercnt_d_inst_q_reg[2]_3_UNCONNECTED ;
  wire \NLW_numbercnt_d_inst_q_reg[2]_4_UNCONNECTED ;
  wire [7:0]NLW_numbercnt_d_inst_blue_UNCONNECTED;
  wire [7:0]NLW_numbercnt_d_inst_blue_IBUF_UNCONNECTED;
  wire [0:0]NLW_numbercnt_d_inst_cnt2_UNCONNECTED;
  wire [1:1]\NLW_numbercnt_d_inst_cnt_reg[3]_2_UNCONNECTED ;
  wire [8:3]NLW_numbercnt_d_inst_q_reg_UNCONNECTED;

  CARRY4 cnt0__0_carry
       (.CI(1'b0),
        .CO({cnt0__0_carry_n_0,NLW_cnt0__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({lopt,numbercnt_d_inst_n_48,numbercnt_d_inst_n_33,cnt_reg__0[0]}),
        .O(cnt0[3:0]),
        .S({numbercnt_d_inst_n_43,numbercnt_d_inst_n_44,numbercnt_d_inst_n_45,numbercnt_d_inst_n_46}));
  CARRY4 cnt0__0_carry__0
       (.CI(cnt0__0_carry_n_0),
        .CO(NLW_cnt0__0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_reg__0[5],cnt0__0_carry__0_i_1_n_0,numbercnt_d_inst_n_25}),
        .O(cnt0[7:4]),
        .S({cnt0__0_carry__0_i_3_n_0,cnt0__0_carry__0_i_4_n_0,numbercnt_d_inst_n_41,numbercnt_d_inst_n_42}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0__0_carry__0_i_1
       (.I0(cnt_reg__0[5]),
        .O(cnt0__0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry__0_i_3
       (.I0(cnt_reg__0[7]),
        .I1(cnt_reg__0[6]),
        .O(cnt0__0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry__0_i_4
       (.I0(cnt_reg__0[5]),
        .I1(cnt_reg__0[6]),
        .O(cnt0__0_carry__0_i_4_n_0));
  CARRY4 cnt0__23_carry
       (.CI(1'b0),
        .CO({cnt0__23_carry_n_0,NLW_cnt0__23_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_53,numbercnt_d_inst_n_54,cnt_reg__0[1:0]}),
        .O(cnt00_in[3:0]),
        .S({numbercnt_d_inst_n_49,numbercnt_d_inst_n_50,numbercnt_d_inst_n_51,numbercnt_d_inst_n_52}));
  CARRY4 cnt0__23_carry__0
       (.CI(cnt0__23_carry_n_0),
        .CO(NLW_cnt0__23_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,numbercnt_d_inst_n_26,numbercnt_d_inst_n_27,numbercnt_d_inst_n_28}),
        .O(cnt00_in[7:4]),
        .S({numbercnt_d_inst_n_29,numbercnt_d_inst_n_30,numbercnt_d_inst_n_31,numbercnt_d_inst_n_32}));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[7]_i_1 
       (.I0(ActiveArea_IBUF),
        .O(SR));
  CARRY4 cnt_carry
       (.CI(1'b0),
        .CO({cnt_carry_n_0,NLW_cnt_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_21,numbercnt_d_inst_n_22,numbercnt_d_inst_n_23,numbercnt_d_inst_n_24}),
        .O({cnt_carry_n_4,cnt_carry_n_5,cnt_carry_n_6,cnt_carry_n_7}),
        .S({numbercnt_d_inst_n_37,numbercnt_d_inst_n_38,numbercnt_d_inst_n_39,numbercnt_d_inst_n_40}));
  CARRY4 cnt_carry__0
       (.CI(cnt_carry_n_0),
        .CO(NLW_cnt_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,numbercnt_d_inst_n_18,numbercnt_d_inst_n_19,numbercnt_d_inst_n_20}),
        .O({cnt_carry__0_n_4,cnt_carry__0_n_5,cnt_carry__0_n_6,cnt_carry__0_n_7}),
        .S({numbercnt_d_inst_n_14,numbercnt_d_inst_n_15,numbercnt_d_inst_n_16,numbercnt_d_inst_n_17}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_7),
        .Q(cnt_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_6),
        .Q(cnt_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_5),
        .Q(cnt_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_4),
        .Q(cnt_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_7),
        .Q(cnt_reg__0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_6),
        .Q(cnt_reg__0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_5),
        .Q(cnt_reg__0[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_4),
        .Q(cnt_reg__0[7]),
        .R(SR));
  NumberCnt_5 numbercnt_d_inst
       (.ActiveArea_IBUF(ActiveArea_IBUF),
        .D(q1_in),
        .DI({numbercnt_d_inst_n_18,numbercnt_d_inst_n_19,numbercnt_d_inst_n_20}),
        .Q(cnt_reg__0),
        .S({numbercnt_d_inst_n_14,numbercnt_d_inst_n_15,numbercnt_d_inst_n_16,numbercnt_d_inst_n_17}),
        .blue(NLW_numbercnt_d_inst_blue_UNCONNECTED[7:0]),
        .\blue[0]_0 (\NLW_numbercnt_d_inst_blue[0]_0_UNCONNECTED ),
        .\blue[3]_0 (\NLW_numbercnt_d_inst_blue[3]_0_UNCONNECTED ),
        .\blue[4]_0 (\NLW_numbercnt_d_inst_blue[4]_0_UNCONNECTED ),
        .\blue[7]_0 (\NLW_numbercnt_d_inst_blue[7]_0_UNCONNECTED ),
        .\blue[7]_1 (\NLW_numbercnt_d_inst_blue[7]_1_UNCONNECTED ),
        .\blue[7]_2 (\NLW_numbercnt_d_inst_blue[7]_2_UNCONNECTED ),
        .\blue[7]_3 (\NLW_numbercnt_d_inst_blue[7]_3_UNCONNECTED ),
        .\blue[7]_4 (\NLW_numbercnt_d_inst_blue[7]_4_UNCONNECTED ),
        .blue_IBUF(NLW_numbercnt_d_inst_blue_IBUF_UNCONNECTED[7:0]),
        .cnt0(cnt0),
        .cnt00_in(cnt00_in),
        .cnt2(NLW_numbercnt_d_inst_cnt2_UNCONNECTED[0]),
        .\cnt_reg[3] ({numbercnt_d_inst_n_21,numbercnt_d_inst_n_22,numbercnt_d_inst_n_23,numbercnt_d_inst_n_24}),
        .\cnt_reg[3]_0 ({numbercnt_d_inst_n_37,numbercnt_d_inst_n_38,numbercnt_d_inst_n_39,numbercnt_d_inst_n_40}),
        .\cnt_reg[3]_1 ({numbercnt_d_inst_n_43,numbercnt_d_inst_n_44,numbercnt_d_inst_n_45,numbercnt_d_inst_n_46}),
        .\cnt_reg[3]_2 ({\NLW_numbercnt_d_inst_cnt_reg[3]_2_UNCONNECTED [1],numbercnt_d_inst_n_48}),
        .\cnt_reg[3]_3 ({numbercnt_d_inst_n_49,numbercnt_d_inst_n_50,numbercnt_d_inst_n_51,numbercnt_d_inst_n_52}),
        .\cnt_reg[3]_4 ({numbercnt_d_inst_n_53,numbercnt_d_inst_n_54}),
        .\cnt_reg[3]_5 (\q[7]_i_7__1_n_0 ),
        .\cnt_reg[7] (numbercnt_d_inst_n_25),
        .\cnt_reg[7]_0 ({numbercnt_d_inst_n_26,numbercnt_d_inst_n_27,numbercnt_d_inst_n_28}),
        .\cnt_reg[7]_1 ({numbercnt_d_inst_n_29,numbercnt_d_inst_n_30,numbercnt_d_inst_n_31,numbercnt_d_inst_n_32}),
        .\cnt_reg[7]_2 ({numbercnt_d_inst_n_41,numbercnt_d_inst_n_42}),
        .hSync_IBUF(hSync_IBUF),
        .lopt(lopt),
        .q_reg({numbercnt_d_inst_n_36,NLW_numbercnt_d_inst_q_reg_UNCONNECTED[8:3],numbercnt_d_inst_n_10}),
        .\q_reg[2]_0 (numbercnt_d_inst_n_11),
        .\q_reg[2]_1 (numbercnt_d_inst_n_33),
        .\q_reg[2]_2 (\NLW_numbercnt_d_inst_q_reg[2]_2_UNCONNECTED ),
        .\q_reg[2]_3 (\NLW_numbercnt_d_inst_q_reg[2]_3_UNCONNECTED ),
        .\q_reg[2]_4 (\NLW_numbercnt_d_inst_q_reg[2]_4_UNCONNECTED ),
        .vSync_IBUF(vSync_IBUF));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[7]_i_10 
       (.I0(cnt_reg__0[6]),
        .I1(cnt_reg__0[7]),
        .I2(cnt_reg__0[5]),
        .I3(cnt_reg__0[4]),
        .O(\q[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[7]_i_7__1 
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[2]),
        .I4(\q[7]_i_10_n_0 ),
        .O(\q[7]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'h5355)) 
    \q[9]_i_1 
       (.I0(numbercnt_d_inst_n_36),
        .I1(numbercnt_d_inst_n_11),
        .I2(numbercnt_d_inst_n_10),
        .I3(ActiveArea_IBUF),
        .O(\q[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[0] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q1_in[0]),
        .Q(D[0]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[1] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q1_in[1]),
        .Q(D[1]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[2] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q1_in[2]),
        .Q(D[2]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[3] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q1_in[3]),
        .Q(D[3]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[4] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q1_in[4]),
        .Q(D[4]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[5] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q1_in[5]),
        .Q(D[5]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[6] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q1_in[6]),
        .Q(D[6]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[7] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q1_in[7]),
        .Q(D[7]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[8] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q1_in[8]),
        .Q(D[8]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "encode" *) 
module encode_0
   (ActiveArea_IBUF,
    pixel_clk_IBUF_BUFG,
    reset_IBUF,
    D,
    SR,
    green_IBUF);
  input ActiveArea_IBUF;
  input pixel_clk_IBUF_BUFG;
  input reset_IBUF;
  output [9:0]D;
  input [0:0]SR;
  input [7:0]green_IBUF;

  wire ActiveArea_IBUF;
  wire [9:0]D;
  wire [0:0]SR;
  wire cnt0__0_carry__0_i_1__0_n_0;
  wire cnt0__0_carry__0_i_3__0_n_0;
  wire cnt0__0_carry__0_i_4__0_n_0;
  wire cnt0__0_carry__0_n_4;
  wire cnt0__0_carry__0_n_5;
  wire cnt0__0_carry__0_n_6;
  wire cnt0__0_carry__0_n_7;
  wire cnt0__0_carry_n_0;
  wire cnt0__0_carry_n_4;
  wire cnt0__0_carry_n_5;
  wire cnt0__0_carry_n_6;
  wire cnt0__0_carry_n_7;
  wire cnt0__23_carry__0_n_4;
  wire cnt0__23_carry__0_n_5;
  wire cnt0__23_carry__0_n_6;
  wire cnt0__23_carry__0_n_7;
  wire cnt0__23_carry_n_0;
  wire cnt0__23_carry_n_4;
  wire cnt0__23_carry_n_5;
  wire cnt0__23_carry_n_6;
  wire cnt0__23_carry_n_7;
  wire cnt_carry__0_n_4;
  wire cnt_carry__0_n_5;
  wire cnt_carry__0_n_6;
  wire cnt_carry__0_n_7;
  wire cnt_carry_n_0;
  wire cnt_carry_n_4;
  wire cnt_carry_n_5;
  wire cnt_carry_n_6;
  wire cnt_carry_n_7;
  wire [7:0]cnt_reg__0;
  wire [7:0]green_IBUF;
  wire numbercnt_d_inst_n_0;
  wire numbercnt_d_inst_n_1;
  wire numbercnt_d_inst_n_10;
  wire numbercnt_d_inst_n_11;
  wire numbercnt_d_inst_n_12;
  wire numbercnt_d_inst_n_13;
  wire numbercnt_d_inst_n_14;
  wire numbercnt_d_inst_n_15;
  wire numbercnt_d_inst_n_16;
  wire numbercnt_d_inst_n_17;
  wire numbercnt_d_inst_n_18;
  wire numbercnt_d_inst_n_19;
  wire numbercnt_d_inst_n_2;
  wire numbercnt_d_inst_n_20;
  wire numbercnt_d_inst_n_21;
  wire numbercnt_d_inst_n_22;
  wire numbercnt_d_inst_n_23;
  wire numbercnt_d_inst_n_24;
  wire numbercnt_d_inst_n_25;
  wire numbercnt_d_inst_n_26;
  wire numbercnt_d_inst_n_27;
  wire numbercnt_d_inst_n_28;
  wire numbercnt_d_inst_n_29;
  wire numbercnt_d_inst_n_3;
  wire numbercnt_d_inst_n_30;
  wire numbercnt_d_inst_n_31;
  wire numbercnt_d_inst_n_32;
  wire numbercnt_d_inst_n_33;
  wire numbercnt_d_inst_n_34;
  wire numbercnt_d_inst_n_35;
  wire numbercnt_d_inst_n_36;
  wire numbercnt_d_inst_n_37;
  wire numbercnt_d_inst_n_38;
  wire numbercnt_d_inst_n_39;
  wire numbercnt_d_inst_n_4;
  wire numbercnt_d_inst_n_40;
  wire numbercnt_d_inst_n_41;
  wire numbercnt_d_inst_n_42;
  wire numbercnt_d_inst_n_43;
  wire numbercnt_d_inst_n_44;
  wire numbercnt_d_inst_n_45;
  wire numbercnt_d_inst_n_46;
  wire numbercnt_d_inst_n_47;
  wire numbercnt_d_inst_n_48;
  wire numbercnt_d_inst_n_49;
  wire numbercnt_d_inst_n_5;
  wire numbercnt_d_inst_n_50;
  wire numbercnt_d_inst_n_51;
  wire numbercnt_d_inst_n_52;
  wire numbercnt_d_inst_n_53;
  wire numbercnt_d_inst_n_54;
  wire numbercnt_d_inst_n_6;
  wire numbercnt_d_inst_n_7;
  wire numbercnt_d_inst_n_8;
  wire numbercnt_d_inst_n_9;
  wire numbercnt_q_inst_n_0;
  wire numbercnt_q_inst_n_1;
  wire numbercnt_q_inst_n_2;
  wire numbercnt_q_inst_n_3;
  wire numbercnt_q_inst_n_4;
  wire numbercnt_q_inst_n_5;
  wire numbercnt_q_inst_n_6;
  wire numbercnt_q_inst_n_7;
  wire numbercnt_q_inst_n_8;
  wire pixel_clk_IBUF_BUFG;
  wire \q[7]_i_5_n_0 ;
  wire \q[7]_i_8__0_n_0 ;
  wire \q[9]_i_1_n_0 ;
  wire reset_IBUF;
  wire [2:0]NLW_cnt0__0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_cnt0__0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_cnt0__23_carry_CO_UNCONNECTED;
  wire [3:0]NLW_cnt0__23_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_cnt_carry_CO_UNCONNECTED;
  wire [3:0]NLW_cnt_carry__0_CO_UNCONNECTED;
  wire \NLW_numbercnt_d_inst_green[3]_0_UNCONNECTED ;
  wire \NLW_numbercnt_d_inst_green[3]_1_UNCONNECTED ;
  wire [5:1]NLW_numbercnt_d_inst_green_UNCONNECTED;
  wire [7:1]NLW_numbercnt_d_inst_green_IBUF_UNCONNECTED;
  wire \NLW_numbercnt_q_inst_green[3]_0_UNCONNECTED ;
  wire \NLW_numbercnt_q_inst_green[4]_3_UNCONNECTED ;
  wire [6:1]NLW_numbercnt_q_inst_green_UNCONNECTED;
  wire [6:0]NLW_numbercnt_q_inst_green_IBUF_UNCONNECTED;

  CARRY4 cnt0__0_carry
       (.CI(1'b0),
        .CO({cnt0__0_carry_n_0,NLW_cnt0__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_49,numbercnt_d_inst_n_50,numbercnt_d_inst_n_17,cnt_reg__0[0]}),
        .O({cnt0__0_carry_n_4,cnt0__0_carry_n_5,cnt0__0_carry_n_6,cnt0__0_carry_n_7}),
        .S({numbercnt_d_inst_n_45,numbercnt_d_inst_n_46,numbercnt_d_inst_n_47,numbercnt_d_inst_n_48}));
  CARRY4 cnt0__0_carry__0
       (.CI(cnt0__0_carry_n_0),
        .CO(NLW_cnt0__0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_reg__0[5],cnt0__0_carry__0_i_1__0_n_0,numbercnt_d_inst_n_32}),
        .O({cnt0__0_carry__0_n_4,cnt0__0_carry__0_n_5,cnt0__0_carry__0_n_6,cnt0__0_carry__0_n_7}),
        .S({cnt0__0_carry__0_i_3__0_n_0,cnt0__0_carry__0_i_4__0_n_0,numbercnt_d_inst_n_53,numbercnt_d_inst_n_54}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0__0_carry__0_i_1__0
       (.I0(cnt_reg__0[5]),
        .O(cnt0__0_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry__0_i_3__0
       (.I0(cnt_reg__0[7]),
        .I1(cnt_reg__0[6]),
        .O(cnt0__0_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry__0_i_4__0
       (.I0(cnt_reg__0[5]),
        .I1(cnt_reg__0[6]),
        .O(cnt0__0_carry__0_i_4__0_n_0));
  CARRY4 cnt0__23_carry
       (.CI(1'b0),
        .CO({cnt0__23_carry_n_0,NLW_cnt0__23_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_43,numbercnt_d_inst_n_44,cnt_reg__0[1:0]}),
        .O({cnt0__23_carry_n_4,cnt0__23_carry_n_5,cnt0__23_carry_n_6,cnt0__23_carry_n_7}),
        .S({numbercnt_d_inst_n_39,numbercnt_d_inst_n_40,numbercnt_d_inst_n_41,numbercnt_d_inst_n_42}));
  CARRY4 cnt0__23_carry__0
       (.CI(cnt0__23_carry_n_0),
        .CO(NLW_cnt0__23_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,numbercnt_d_inst_n_18,numbercnt_d_inst_n_19,numbercnt_d_inst_n_20}),
        .O({cnt0__23_carry__0_n_4,cnt0__23_carry__0_n_5,cnt0__23_carry__0_n_6,cnt0__23_carry__0_n_7}),
        .S({numbercnt_d_inst_n_21,numbercnt_d_inst_n_22,numbercnt_d_inst_n_23,numbercnt_d_inst_n_24}));
  CARRY4 cnt_carry
       (.CI(1'b0),
        .CO({cnt_carry_n_0,NLW_cnt_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_28,numbercnt_d_inst_n_29,numbercnt_d_inst_n_30,numbercnt_d_inst_n_31}),
        .O({cnt_carry_n_4,cnt_carry_n_5,cnt_carry_n_6,cnt_carry_n_7}),
        .S({numbercnt_d_inst_n_35,numbercnt_d_inst_n_36,numbercnt_d_inst_n_37,numbercnt_d_inst_n_38}));
  CARRY4 cnt_carry__0
       (.CI(cnt_carry_n_0),
        .CO(NLW_cnt_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,numbercnt_d_inst_n_25,numbercnt_d_inst_n_26,numbercnt_d_inst_n_27}),
        .O({cnt_carry__0_n_4,cnt_carry__0_n_5,cnt_carry__0_n_6,cnt_carry__0_n_7}),
        .S({numbercnt_d_inst_n_12,numbercnt_d_inst_n_13,numbercnt_d_inst_n_14,numbercnt_d_inst_n_15}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_7),
        .Q(cnt_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_6),
        .Q(cnt_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_5),
        .Q(cnt_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_4),
        .Q(cnt_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_7),
        .Q(cnt_reg__0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_6),
        .Q(cnt_reg__0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_5),
        .Q(cnt_reg__0[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_4),
        .Q(cnt_reg__0[7]),
        .R(SR));
  NumberCnt_3 numbercnt_d_inst
       (.ActiveArea_IBUF(ActiveArea_IBUF),
        .D({numbercnt_d_inst_n_1,numbercnt_d_inst_n_2,numbercnt_d_inst_n_3,numbercnt_d_inst_n_4,numbercnt_d_inst_n_5,numbercnt_d_inst_n_6,numbercnt_d_inst_n_7,numbercnt_d_inst_n_8,numbercnt_d_inst_n_9}),
        .DI({numbercnt_d_inst_n_18,numbercnt_d_inst_n_19,numbercnt_d_inst_n_20}),
        .O({cnt0__23_carry__0_n_4,cnt0__23_carry__0_n_5,cnt0__23_carry__0_n_6,cnt0__23_carry__0_n_7}),
        .Q(cnt_reg__0),
        .S({numbercnt_d_inst_n_12,numbercnt_d_inst_n_13,numbercnt_d_inst_n_14,numbercnt_d_inst_n_15}),
        .\cnt_reg[0] ({cnt0__0_carry_n_4,cnt0__0_carry_n_5,cnt0__0_carry_n_6,cnt0__0_carry_n_7}),
        .\cnt_reg[1] ({cnt0__23_carry_n_4,cnt0__23_carry_n_5,cnt0__23_carry_n_6,cnt0__23_carry_n_7}),
        .\cnt_reg[3] ({numbercnt_d_inst_n_28,numbercnt_d_inst_n_29,numbercnt_d_inst_n_30,numbercnt_d_inst_n_31}),
        .\cnt_reg[3]_0 ({numbercnt_d_inst_n_35,numbercnt_d_inst_n_36,numbercnt_d_inst_n_37,numbercnt_d_inst_n_38}),
        .\cnt_reg[3]_1 ({numbercnt_d_inst_n_39,numbercnt_d_inst_n_40,numbercnt_d_inst_n_41,numbercnt_d_inst_n_42}),
        .\cnt_reg[3]_2 ({numbercnt_d_inst_n_43,numbercnt_d_inst_n_44}),
        .\cnt_reg[3]_3 ({numbercnt_d_inst_n_45,numbercnt_d_inst_n_46,numbercnt_d_inst_n_47,numbercnt_d_inst_n_48}),
        .\cnt_reg[3]_4 ({numbercnt_d_inst_n_49,numbercnt_d_inst_n_50}),
        .\cnt_reg[3]_5 (\q[7]_i_5_n_0 ),
        .\cnt_reg[5] ({cnt0__0_carry__0_n_4,cnt0__0_carry__0_n_5,cnt0__0_carry__0_n_6,cnt0__0_carry__0_n_7}),
        .\cnt_reg[7] ({numbercnt_d_inst_n_21,numbercnt_d_inst_n_22,numbercnt_d_inst_n_23,numbercnt_d_inst_n_24}),
        .\cnt_reg[7]_0 ({numbercnt_d_inst_n_25,numbercnt_d_inst_n_26,numbercnt_d_inst_n_27}),
        .\cnt_reg[7]_1 (numbercnt_d_inst_n_32),
        .\cnt_reg[7]_2 ({numbercnt_d_inst_n_53,numbercnt_d_inst_n_54}),
        .green({numbercnt_q_inst_n_6,numbercnt_q_inst_n_0,NLW_numbercnt_d_inst_green_UNCONNECTED[5:4],numbercnt_q_inst_n_7,NLW_numbercnt_d_inst_green_UNCONNECTED[2:1],green_IBUF[2]}),
        .\green[0]_0 (green_IBUF[2]),
        .\green[3]_0 (\NLW_numbercnt_d_inst_green[3]_0_UNCONNECTED ),
        .\green[3]_1 (\NLW_numbercnt_d_inst_green[3]_1_UNCONNECTED ),
        .\green[4]_0 (green_IBUF[0]),
        .\green[7]_0 (numbercnt_q_inst_n_2),
        .\green[7]_1 (numbercnt_q_inst_n_4),
        .\green[7]_2 (numbercnt_q_inst_n_1),
        .\green[7]_3 (numbercnt_q_inst_n_5),
        .\green[7]_4 (numbercnt_q_inst_n_8),
        .\green[7]_5 (numbercnt_q_inst_n_3),
        .green_IBUF({NLW_numbercnt_d_inst_green_IBUF_UNCONNECTED[7],green_IBUF[6],NLW_numbercnt_d_inst_green_IBUF_UNCONNECTED[5],green_IBUF[4:3],NLW_numbercnt_d_inst_green_IBUF_UNCONNECTED[2:1],green_IBUF[0]}),
        .q_reg({numbercnt_d_inst_n_16,numbercnt_d_inst_n_0}),
        .\q_reg[4]_0 (numbercnt_d_inst_n_10),
        .\q_reg[4]_1 (numbercnt_d_inst_n_11),
        .\q_reg[4]_2 (numbercnt_d_inst_n_34),
        .\q_reg[4]_3 (numbercnt_d_inst_n_51),
        .\q_reg[5]_0 (numbercnt_d_inst_n_17),
        .\q_reg[5]_1 (numbercnt_d_inst_n_33),
        .\q_reg[5]_2 (numbercnt_d_inst_n_52));
  NumberCnt_4 numbercnt_q_inst
       (.cnt_reg(numbercnt_q_inst_n_7),
        .\cnt_reg[3]_0 (numbercnt_q_inst_n_8),
        .green({numbercnt_d_inst_n_51,NLW_numbercnt_q_inst_green_UNCONNECTED[6],numbercnt_d_inst_n_33,green_IBUF[0],NLW_numbercnt_q_inst_green_UNCONNECTED[3:1],green_IBUF[2]}),
        .\green[0]_0 (green_IBUF[2]),
        .\green[3]_0 (\NLW_numbercnt_q_inst_green[3]_0_UNCONNECTED ),
        .\green[3]_1 (numbercnt_d_inst_n_0),
        .\green[4]_0 (numbercnt_d_inst_n_52),
        .\green[4]_1 (numbercnt_d_inst_n_34),
        .\green[4]_2 (numbercnt_d_inst_n_16),
        .\green[4]_3 (\NLW_numbercnt_q_inst_green[4]_3_UNCONNECTED ),
        .green_IBUF({NLW_numbercnt_q_inst_green_IBUF_UNCONNECTED[6:5],green_IBUF[4],NLW_numbercnt_q_inst_green_IBUF_UNCONNECTED[3:2],green_IBUF[1],NLW_numbercnt_q_inst_green_IBUF_UNCONNECTED[0]}),
        .q_reg({numbercnt_q_inst_n_2,numbercnt_q_inst_n_0}),
        .\q_reg[4]_0 (numbercnt_q_inst_n_1),
        .\q_reg[4]_1 (numbercnt_q_inst_n_6),
        .\q_reg[5]_0 (numbercnt_q_inst_n_3),
        .\q_reg[5]_1 (numbercnt_q_inst_n_4),
        .\q_reg[5]_2 (numbercnt_q_inst_n_5));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[7]_i_5 
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[2]),
        .I4(\q[7]_i_8__0_n_0 ),
        .O(\q[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[7]_i_8__0 
       (.I0(cnt_reg__0[6]),
        .I1(cnt_reg__0[7]),
        .I2(cnt_reg__0[5]),
        .I3(cnt_reg__0[4]),
        .O(\q[7]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hC5FF)) 
    \q[9]_i_1 
       (.I0(numbercnt_d_inst_n_0),
        .I1(numbercnt_d_inst_n_11),
        .I2(numbercnt_d_inst_n_10),
        .I3(ActiveArea_IBUF),
        .O(\q[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[0] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_9),
        .Q(D[0]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[1] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_8),
        .Q(D[1]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[2] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_7),
        .Q(D[2]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[3] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_6),
        .Q(D[3]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[4] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_5),
        .Q(D[4]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[5] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_4),
        .Q(D[5]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[6] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_3),
        .Q(D[6]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[7] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_2),
        .Q(D[7]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[8] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_1),
        .Q(D[8]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "encode" *) 
module encode_1
   (ActiveArea_IBUF,
    pixel_clk_IBUF_BUFG,
    reset_IBUF,
    D,
    SR,
    red_IBUF);
  input ActiveArea_IBUF;
  input pixel_clk_IBUF_BUFG;
  input reset_IBUF;
  output [9:0]D;
  input [0:0]SR;
  input [7:0]red_IBUF;

  wire ActiveArea_IBUF;
  wire [9:0]D;
  wire [0:0]SR;
  wire cnt0__0_carry__0_i_1__1_n_0;
  wire cnt0__0_carry__0_i_3__1_n_0;
  wire cnt0__0_carry__0_i_4__1_n_0;
  wire cnt0__0_carry__0_n_4;
  wire cnt0__0_carry__0_n_5;
  wire cnt0__0_carry__0_n_6;
  wire cnt0__0_carry__0_n_7;
  wire cnt0__0_carry_n_0;
  wire cnt0__0_carry_n_4;
  wire cnt0__0_carry_n_5;
  wire cnt0__0_carry_n_6;
  wire cnt0__0_carry_n_7;
  wire cnt0__23_carry__0_n_4;
  wire cnt0__23_carry__0_n_5;
  wire cnt0__23_carry__0_n_6;
  wire cnt0__23_carry__0_n_7;
  wire cnt0__23_carry_n_0;
  wire cnt0__23_carry_n_4;
  wire cnt0__23_carry_n_5;
  wire cnt0__23_carry_n_6;
  wire cnt0__23_carry_n_7;
  wire cnt_carry__0_n_4;
  wire cnt_carry__0_n_5;
  wire cnt_carry__0_n_6;
  wire cnt_carry__0_n_7;
  wire cnt_carry_n_0;
  wire cnt_carry_n_4;
  wire cnt_carry_n_5;
  wire cnt_carry_n_6;
  wire cnt_carry_n_7;
  wire [7:0]cnt_reg__0;
  wire numbercnt_d_inst_n_0;
  wire numbercnt_d_inst_n_1;
  wire numbercnt_d_inst_n_10;
  wire numbercnt_d_inst_n_11;
  wire numbercnt_d_inst_n_12;
  wire numbercnt_d_inst_n_13;
  wire numbercnt_d_inst_n_14;
  wire numbercnt_d_inst_n_15;
  wire numbercnt_d_inst_n_16;
  wire numbercnt_d_inst_n_17;
  wire numbercnt_d_inst_n_18;
  wire numbercnt_d_inst_n_19;
  wire numbercnt_d_inst_n_2;
  wire numbercnt_d_inst_n_20;
  wire numbercnt_d_inst_n_21;
  wire numbercnt_d_inst_n_22;
  wire numbercnt_d_inst_n_23;
  wire numbercnt_d_inst_n_24;
  wire numbercnt_d_inst_n_25;
  wire numbercnt_d_inst_n_26;
  wire numbercnt_d_inst_n_27;
  wire numbercnt_d_inst_n_28;
  wire numbercnt_d_inst_n_29;
  wire numbercnt_d_inst_n_3;
  wire numbercnt_d_inst_n_30;
  wire numbercnt_d_inst_n_31;
  wire numbercnt_d_inst_n_32;
  wire numbercnt_d_inst_n_33;
  wire numbercnt_d_inst_n_34;
  wire numbercnt_d_inst_n_35;
  wire numbercnt_d_inst_n_36;
  wire numbercnt_d_inst_n_37;
  wire numbercnt_d_inst_n_38;
  wire numbercnt_d_inst_n_39;
  wire numbercnt_d_inst_n_4;
  wire numbercnt_d_inst_n_40;
  wire numbercnt_d_inst_n_41;
  wire numbercnt_d_inst_n_42;
  wire numbercnt_d_inst_n_43;
  wire numbercnt_d_inst_n_44;
  wire numbercnt_d_inst_n_45;
  wire numbercnt_d_inst_n_46;
  wire numbercnt_d_inst_n_47;
  wire numbercnt_d_inst_n_48;
  wire numbercnt_d_inst_n_49;
  wire numbercnt_d_inst_n_5;
  wire numbercnt_d_inst_n_50;
  wire numbercnt_d_inst_n_51;
  wire numbercnt_d_inst_n_52;
  wire numbercnt_d_inst_n_53;
  wire numbercnt_d_inst_n_54;
  wire numbercnt_d_inst_n_6;
  wire numbercnt_d_inst_n_7;
  wire numbercnt_d_inst_n_8;
  wire numbercnt_d_inst_n_9;
  wire numbercnt_q_inst_n_0;
  wire numbercnt_q_inst_n_1;
  wire numbercnt_q_inst_n_2;
  wire numbercnt_q_inst_n_3;
  wire numbercnt_q_inst_n_4;
  wire numbercnt_q_inst_n_5;
  wire numbercnt_q_inst_n_6;
  wire numbercnt_q_inst_n_7;
  wire numbercnt_q_inst_n_8;
  wire pixel_clk_IBUF_BUFG;
  wire \q[7]_i_5__0_n_0 ;
  wire \q[7]_i_8__1_n_0 ;
  wire \q[9]_i_1_n_0 ;
  wire [7:0]red_IBUF;
  wire reset_IBUF;
  wire [2:0]NLW_cnt0__0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_cnt0__0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_cnt0__23_carry_CO_UNCONNECTED;
  wire [3:0]NLW_cnt0__23_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_cnt_carry_CO_UNCONNECTED;
  wire [3:0]NLW_cnt_carry__0_CO_UNCONNECTED;
  wire \NLW_numbercnt_d_inst_red[3]_0_UNCONNECTED ;
  wire \NLW_numbercnt_d_inst_red[3]_1_UNCONNECTED ;
  wire [3:3]NLW_numbercnt_d_inst_q_reg_UNCONNECTED;
  wire [5:1]NLW_numbercnt_d_inst_red_UNCONNECTED;
  wire [7:1]NLW_numbercnt_d_inst_red_IBUF_UNCONNECTED;
  wire \NLW_numbercnt_q_inst_red[3]_0_UNCONNECTED ;
  wire \NLW_numbercnt_q_inst_red[4]_3_UNCONNECTED ;
  wire [3:3]NLW_numbercnt_q_inst_q_reg_UNCONNECTED;
  wire [6:1]NLW_numbercnt_q_inst_red_UNCONNECTED;
  wire [6:0]NLW_numbercnt_q_inst_red_IBUF_UNCONNECTED;

  CARRY4 cnt0__0_carry
       (.CI(1'b0),
        .CO({cnt0__0_carry_n_0,NLW_cnt0__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_49,numbercnt_d_inst_n_50,numbercnt_d_inst_n_17,cnt_reg__0[0]}),
        .O({cnt0__0_carry_n_4,cnt0__0_carry_n_5,cnt0__0_carry_n_6,cnt0__0_carry_n_7}),
        .S({numbercnt_d_inst_n_45,numbercnt_d_inst_n_46,numbercnt_d_inst_n_47,numbercnt_d_inst_n_48}));
  CARRY4 cnt0__0_carry__0
       (.CI(cnt0__0_carry_n_0),
        .CO(NLW_cnt0__0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_reg__0[5],cnt0__0_carry__0_i_1__1_n_0,numbercnt_d_inst_n_32}),
        .O({cnt0__0_carry__0_n_4,cnt0__0_carry__0_n_5,cnt0__0_carry__0_n_6,cnt0__0_carry__0_n_7}),
        .S({cnt0__0_carry__0_i_3__1_n_0,cnt0__0_carry__0_i_4__1_n_0,numbercnt_d_inst_n_53,numbercnt_d_inst_n_54}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0__0_carry__0_i_1__1
       (.I0(cnt_reg__0[5]),
        .O(cnt0__0_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry__0_i_3__1
       (.I0(cnt_reg__0[7]),
        .I1(cnt_reg__0[6]),
        .O(cnt0__0_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__0_carry__0_i_4__1
       (.I0(cnt_reg__0[5]),
        .I1(cnt_reg__0[6]),
        .O(cnt0__0_carry__0_i_4__1_n_0));
  CARRY4 cnt0__23_carry
       (.CI(1'b0),
        .CO({cnt0__23_carry_n_0,NLW_cnt0__23_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_43,numbercnt_d_inst_n_44,cnt_reg__0[1:0]}),
        .O({cnt0__23_carry_n_4,cnt0__23_carry_n_5,cnt0__23_carry_n_6,cnt0__23_carry_n_7}),
        .S({numbercnt_d_inst_n_39,numbercnt_d_inst_n_40,numbercnt_d_inst_n_41,numbercnt_d_inst_n_42}));
  CARRY4 cnt0__23_carry__0
       (.CI(cnt0__23_carry_n_0),
        .CO(NLW_cnt0__23_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,numbercnt_d_inst_n_18,numbercnt_d_inst_n_19,numbercnt_d_inst_n_20}),
        .O({cnt0__23_carry__0_n_4,cnt0__23_carry__0_n_5,cnt0__23_carry__0_n_6,cnt0__23_carry__0_n_7}),
        .S({numbercnt_d_inst_n_21,numbercnt_d_inst_n_22,numbercnt_d_inst_n_23,numbercnt_d_inst_n_24}));
  CARRY4 cnt_carry
       (.CI(1'b0),
        .CO({cnt_carry_n_0,NLW_cnt_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({numbercnt_d_inst_n_28,numbercnt_d_inst_n_29,numbercnt_d_inst_n_30,numbercnt_d_inst_n_31}),
        .O({cnt_carry_n_4,cnt_carry_n_5,cnt_carry_n_6,cnt_carry_n_7}),
        .S({numbercnt_d_inst_n_35,numbercnt_d_inst_n_36,numbercnt_d_inst_n_37,numbercnt_d_inst_n_38}));
  CARRY4 cnt_carry__0
       (.CI(cnt_carry_n_0),
        .CO(NLW_cnt_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,numbercnt_d_inst_n_25,numbercnt_d_inst_n_26,numbercnt_d_inst_n_27}),
        .O({cnt_carry__0_n_4,cnt_carry__0_n_5,cnt_carry__0_n_6,cnt_carry__0_n_7}),
        .S({numbercnt_d_inst_n_12,numbercnt_d_inst_n_13,numbercnt_d_inst_n_14,numbercnt_d_inst_n_15}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_7),
        .Q(cnt_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_6),
        .Q(cnt_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_5),
        .Q(cnt_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry_n_4),
        .Q(cnt_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_7),
        .Q(cnt_reg__0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_6),
        .Q(cnt_reg__0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_5),
        .Q(cnt_reg__0[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(ActiveArea_IBUF),
        .D(cnt_carry__0_n_4),
        .Q(cnt_reg__0[7]),
        .R(SR));
  NumberCnt numbercnt_d_inst
       (.ActiveArea_IBUF(ActiveArea_IBUF),
        .D({numbercnt_d_inst_n_1,numbercnt_d_inst_n_2,numbercnt_d_inst_n_3,numbercnt_d_inst_n_4,numbercnt_d_inst_n_5,numbercnt_d_inst_n_6,numbercnt_d_inst_n_7,numbercnt_d_inst_n_8,numbercnt_d_inst_n_9}),
        .DI({numbercnt_d_inst_n_18,numbercnt_d_inst_n_19,numbercnt_d_inst_n_20}),
        .O({cnt0__23_carry__0_n_4,cnt0__23_carry__0_n_5,cnt0__23_carry__0_n_6,cnt0__23_carry__0_n_7}),
        .Q(cnt_reg__0),
        .S({numbercnt_d_inst_n_12,numbercnt_d_inst_n_13,numbercnt_d_inst_n_14,numbercnt_d_inst_n_15}),
        .\cnt_reg[0] ({cnt0__0_carry_n_4,cnt0__0_carry_n_5,cnt0__0_carry_n_6,cnt0__0_carry_n_7}),
        .\cnt_reg[1] ({cnt0__23_carry_n_4,cnt0__23_carry_n_5,cnt0__23_carry_n_6,cnt0__23_carry_n_7}),
        .\cnt_reg[3] ({numbercnt_d_inst_n_28,numbercnt_d_inst_n_29,numbercnt_d_inst_n_30,numbercnt_d_inst_n_31}),
        .\cnt_reg[3]_0 ({numbercnt_d_inst_n_35,numbercnt_d_inst_n_36,numbercnt_d_inst_n_37,numbercnt_d_inst_n_38}),
        .\cnt_reg[3]_1 ({numbercnt_d_inst_n_39,numbercnt_d_inst_n_40,numbercnt_d_inst_n_41,numbercnt_d_inst_n_42}),
        .\cnt_reg[3]_2 ({numbercnt_d_inst_n_43,numbercnt_d_inst_n_44}),
        .\cnt_reg[3]_3 ({numbercnt_d_inst_n_45,numbercnt_d_inst_n_46,numbercnt_d_inst_n_47,numbercnt_d_inst_n_48}),
        .\cnt_reg[3]_4 ({numbercnt_d_inst_n_49,numbercnt_d_inst_n_50}),
        .\cnt_reg[3]_5 (\q[7]_i_5__0_n_0 ),
        .\cnt_reg[5] ({cnt0__0_carry__0_n_4,cnt0__0_carry__0_n_5,cnt0__0_carry__0_n_6,cnt0__0_carry__0_n_7}),
        .\cnt_reg[7] ({numbercnt_d_inst_n_21,numbercnt_d_inst_n_22,numbercnt_d_inst_n_23,numbercnt_d_inst_n_24}),
        .\cnt_reg[7]_0 ({numbercnt_d_inst_n_25,numbercnt_d_inst_n_26,numbercnt_d_inst_n_27}),
        .\cnt_reg[7]_1 (numbercnt_d_inst_n_32),
        .\cnt_reg[7]_2 ({numbercnt_d_inst_n_53,numbercnt_d_inst_n_54}),
        .q_reg({numbercnt_d_inst_n_11,numbercnt_d_inst_n_16,NLW_numbercnt_d_inst_q_reg_UNCONNECTED[3],numbercnt_d_inst_n_0}),
        .\q_reg[2]_0 (numbercnt_d_inst_n_10),
        .\q_reg[2]_1 (numbercnt_d_inst_n_34),
        .\q_reg[4]_0 (numbercnt_d_inst_n_17),
        .\q_reg[4]_1 (numbercnt_d_inst_n_33),
        .\q_reg[4]_2 (numbercnt_d_inst_n_52),
        .\q_reg[5]_0 (numbercnt_d_inst_n_51),
        .red({numbercnt_q_inst_n_6,numbercnt_q_inst_n_0,NLW_numbercnt_d_inst_red_UNCONNECTED[5:4],numbercnt_q_inst_n_7,NLW_numbercnt_d_inst_red_UNCONNECTED[2:1],red_IBUF[2]}),
        .\red[0]_0 (red_IBUF[2]),
        .\red[3]_0 (\NLW_numbercnt_d_inst_red[3]_0_UNCONNECTED ),
        .\red[3]_1 (\NLW_numbercnt_d_inst_red[3]_1_UNCONNECTED ),
        .\red[4]_0 (red_IBUF[0]),
        .\red[7]_0 (numbercnt_q_inst_n_2),
        .\red[7]_1 (numbercnt_q_inst_n_4),
        .\red[7]_2 (numbercnt_q_inst_n_1),
        .\red[7]_3 (numbercnt_q_inst_n_5),
        .\red[7]_4 (numbercnt_q_inst_n_8),
        .\red[7]_5 (numbercnt_q_inst_n_3),
        .red_IBUF({NLW_numbercnt_d_inst_red_IBUF_UNCONNECTED[7],red_IBUF[6],NLW_numbercnt_d_inst_red_IBUF_UNCONNECTED[5],red_IBUF[4:3],NLW_numbercnt_d_inst_red_IBUF_UNCONNECTED[2:1],red_IBUF[0]}));
  NumberCnt_2 numbercnt_q_inst
       (.cnt_reg(numbercnt_q_inst_n_7),
        .\cnt_reg[3]_0 (numbercnt_q_inst_n_8),
        .q_reg({numbercnt_q_inst_n_1,numbercnt_q_inst_n_2,NLW_numbercnt_q_inst_q_reg_UNCONNECTED[3],numbercnt_q_inst_n_0}),
        .\q_reg[2]_0 (numbercnt_q_inst_n_6),
        .\q_reg[4]_0 (numbercnt_q_inst_n_3),
        .\q_reg[4]_1 (numbercnt_q_inst_n_4),
        .\q_reg[4]_2 (numbercnt_q_inst_n_5),
        .red({numbercnt_d_inst_n_51,NLW_numbercnt_q_inst_red_UNCONNECTED[6],numbercnt_d_inst_n_33,red_IBUF[0],NLW_numbercnt_q_inst_red_UNCONNECTED[3:1],red_IBUF[2]}),
        .\red[0]_0 (red_IBUF[2]),
        .\red[3]_0 (\NLW_numbercnt_q_inst_red[3]_0_UNCONNECTED ),
        .\red[3]_1 (numbercnt_d_inst_n_0),
        .\red[4]_0 (numbercnt_d_inst_n_52),
        .\red[4]_1 (numbercnt_d_inst_n_34),
        .\red[4]_2 (numbercnt_d_inst_n_11),
        .\red[4]_3 (\NLW_numbercnt_q_inst_red[4]_3_UNCONNECTED ),
        .red_IBUF({NLW_numbercnt_q_inst_red_IBUF_UNCONNECTED[6:5],red_IBUF[4],NLW_numbercnt_q_inst_red_IBUF_UNCONNECTED[3:2],red_IBUF[1],NLW_numbercnt_q_inst_red_IBUF_UNCONNECTED[0]}));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[7]_i_5__0 
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[0]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[2]),
        .I4(\q[7]_i_8__1_n_0 ),
        .O(\q[7]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[7]_i_8__1 
       (.I0(cnt_reg__0[6]),
        .I1(cnt_reg__0[7]),
        .I2(cnt_reg__0[5]),
        .I3(cnt_reg__0[4]),
        .O(\q[7]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hC5FF)) 
    \q[9]_i_1 
       (.I0(numbercnt_d_inst_n_0),
        .I1(numbercnt_d_inst_n_16),
        .I2(numbercnt_d_inst_n_10),
        .I3(ActiveArea_IBUF),
        .O(\q[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[0] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_9),
        .Q(D[0]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[1] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_8),
        .Q(D[1]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[2] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_7),
        .Q(D[2]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[3] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_6),
        .Q(D[3]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[4] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_5),
        .Q(D[4]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[5] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_4),
        .Q(D[5]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[6] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_3),
        .Q(D[6]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[7] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_2),
        .Q(D[7]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[8] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(numbercnt_d_inst_n_1),
        .Q(D[8]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(pixel_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
endmodule

module one_pulse
   (button_debounced,
    clk_IBUF_BUFG,
    last_value);
  input button_debounced;
  input clk_IBUF_BUFG;
  output last_value;

  wire button_debounced;
  wire clk_IBUF_BUFG;
  wire last_value;

  dff_1 last_value_storage
       (.button_debounced(button_debounced),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .last_value(last_value));
endmodule

module syncGenarator
   (a,
    \TMDSn[2] ,
    \TMDSn[2]_0 ,
    \TMDSn[2]_1 ,
    \TMDSn[2]_2 ,
    \TMDSn[2]_3 ,
    \TMDSn[2]_4 ,
    \TMDSn[2]_5 ,
    \TMDSn[2]_6 ,
    \TMDSn[2]_7 ,
    \TMDSn[2]_8 ,
    \TMDSn[2]_9 ,
    \TMDSn[2]_10 ,
    \TMDSn[2]_11 ,
    \TMDSn[2]_12 ,
    Q,
    \TMDSn[2]_13 ,
    \TMDSn[2]_14 ,
    vSync,
    ActiveArea,
    green,
    hSync,
    \q_reg[28] ,
    \q_reg[20] ,
    \q_reg[28]_0 ,
    \q_reg[0] ,
    \q_reg[19] ,
    ALU_A,
    \PC_reg_reg[0] ,
    \q_reg[82] ,
    \q_reg[7] ,
    \PosX_reg_reg[4]_0 ,
    \PosX_reg_reg[4]_1 ,
    \PosX_reg_reg[5]_0 ,
    \q_reg[152] ,
    \PosX_reg_reg[4]_2 ,
    \q_reg[152]_0 ,
    \PosX_reg_reg[4]_3 ,
    \q_reg[149] ,
    D,
    \q_reg[152]_1 ,
    \q_reg[152]_2 ,
    \q_reg[152]_3 ,
    \q_reg[91] ,
    \q_reg[147] ,
    \q_reg[22] ,
    \q_reg[5] ,
    \q_reg[147]_0 ,
    \q_reg[19]_0 ,
    \q_reg[6] ,
    \q_reg[147]_1 ,
    \q_reg[147]_2 ,
    \q_reg[147]_3 ,
    \q_reg[146] ,
    \q_reg[147]_4 ,
    \q_reg[147]_5 ,
    \q_reg[147]_6 ,
    \q_reg[147]_7 ,
    \q_reg[146]_0 ,
    \q_reg[147]_8 ,
    \q_reg[147]_9 ,
    \q_reg[147]_10 ,
    \q_reg[147]_11 ,
    \q_reg[146]_1 ,
    spo,
    \PC_reg_reg[7] ,
    char_pixel__6,
    \q_reg[147]_12 ,
    \q_reg[147]_13 ,
    CLK);
  output [7:0]a;
  output [0:0]\TMDSn[2] ;
  output \TMDSn[2]_0 ;
  output \TMDSn[2]_1 ;
  output \TMDSn[2]_2 ;
  output \TMDSn[2]_3 ;
  output \TMDSn[2]_4 ;
  output \TMDSn[2]_5 ;
  output \TMDSn[2]_6 ;
  output \TMDSn[2]_7 ;
  output \TMDSn[2]_8 ;
  output \TMDSn[2]_9 ;
  output \TMDSn[2]_10 ;
  output \TMDSn[2]_11 ;
  output \TMDSn[2]_12 ;
  output [2:0]Q;
  output \TMDSn[2]_13 ;
  output \TMDSn[2]_14 ;
  output vSync;
  output ActiveArea;
  output [0:0]green;
  output hSync;
  input \q_reg[28] ;
  input \q_reg[20] ;
  input [4:0]\q_reg[28]_0 ;
  input \q_reg[0] ;
  input \q_reg[19] ;
  input [26:0]ALU_A;
  input \PC_reg_reg[0] ;
  input \q_reg[82] ;
  input \q_reg[7] ;
  input \PosX_reg_reg[4]_0 ;
  input \PosX_reg_reg[4]_1 ;
  input \PosX_reg_reg[5]_0 ;
  input \q_reg[152] ;
  input \PosX_reg_reg[4]_2 ;
  input \q_reg[152]_0 ;
  input \PosX_reg_reg[4]_3 ;
  input \q_reg[149] ;
  input [8:0]D;
  input \q_reg[152]_1 ;
  input \q_reg[152]_2 ;
  input \q_reg[152]_3 ;
  input \q_reg[91] ;
  input [14:0]\q_reg[147] ;
  input \q_reg[22] ;
  input \q_reg[5] ;
  input \q_reg[147]_0 ;
  input \q_reg[19]_0 ;
  input \q_reg[6] ;
  input \q_reg[147]_1 ;
  input \q_reg[147]_2 ;
  input \q_reg[147]_3 ;
  input \q_reg[146] ;
  input \q_reg[147]_4 ;
  input \q_reg[147]_5 ;
  input \q_reg[147]_6 ;
  input \q_reg[147]_7 ;
  input \q_reg[146]_0 ;
  input \q_reg[147]_8 ;
  input \q_reg[147]_9 ;
  input \q_reg[147]_10 ;
  input \q_reg[147]_11 ;
  input \q_reg[146]_1 ;
  input [27:0]spo;
  input [5:0]\PC_reg_reg[7] ;
  input char_pixel__6;
  input \q_reg[147]_12 ;
  input \q_reg[147]_13 ;
  input CLK;

  wire [26:0]ALU_A;
  wire ActiveArea;
  wire CLK;
  wire [8:0]D;
  wire EndLine;
  wire \PC_reg_reg[0] ;
  wire [5:0]\PC_reg_reg[7] ;
  wire [7:7]PosX;
  wire \PosX_reg[8]_i_2_n_0 ;
  wire \PosX_reg[9]_i_3_n_0 ;
  wire \PosX_reg[9]_i_4_n_0 ;
  wire \PosX_reg_reg[4]_0 ;
  wire \PosX_reg_reg[4]_1 ;
  wire \PosX_reg_reg[4]_2 ;
  wire \PosX_reg_reg[4]_3 ;
  wire \PosX_reg_reg[5]_0 ;
  wire [9:0]PosX_reg_reg__0;
  wire [7:5]PosY__0;
  wire PosY_reg;
  wire \PosY_reg[0]_i_1_n_0 ;
  wire \PosY_reg[9]_i_3_n_0 ;
  wire \PosY_reg[9]_i_4_n_0 ;
  wire [9:0]PosY_reg_reg__0;
  wire [2:0]Q;
  wire TMDS_inst_i_10_n_0;
  wire TMDS_inst_i_11_n_0;
  wire TMDS_inst_i_12_n_0;
  wire TMDS_inst_i_13_n_0;
  wire TMDS_inst_i_14_n_0;
  wire TMDS_inst_i_15_n_0;
  wire TMDS_inst_i_17_n_0;
  wire TMDS_inst_i_5_n_0;
  wire TMDS_inst_i_6_n_0;
  wire TMDS_inst_i_7_n_0;
  wire TMDS_inst_i_8_n_0;
  wire [0:0]\TMDSn[2] ;
  wire \TMDSn[2]_0 ;
  wire \TMDSn[2]_1 ;
  wire \TMDSn[2]_10 ;
  wire \TMDSn[2]_11 ;
  wire \TMDSn[2]_12 ;
  wire \TMDSn[2]_13 ;
  wire \TMDSn[2]_14 ;
  wire \TMDSn[2]_2 ;
  wire \TMDSn[2]_3 ;
  wire \TMDSn[2]_4 ;
  wire \TMDSn[2]_5 ;
  wire \TMDSn[2]_6 ;
  wire \TMDSn[2]_7 ;
  wire \TMDSn[2]_8 ;
  wire \TMDSn[2]_9 ;
  wire [7:0]a;
  wire char_pixel__6;
  wire char_tab_i_102_n_0;
  wire char_tab_i_103_n_0;
  wire char_tab_i_109_n_0;
  wire char_tab_i_10_n_0;
  wire char_tab_i_111_n_0;
  wire char_tab_i_113_n_0;
  wire char_tab_i_118_n_0;
  wire char_tab_i_11_n_0;
  wire char_tab_i_120_n_0;
  wire char_tab_i_122_n_0;
  wire char_tab_i_125_n_0;
  wire char_tab_i_129_n_0;
  wire char_tab_i_12_n_0;
  wire char_tab_i_131_n_0;
  wire char_tab_i_132_n_0;
  wire char_tab_i_134_n_0;
  wire char_tab_i_135_n_0;
  wire char_tab_i_140_n_0;
  wire char_tab_i_141_n_0;
  wire char_tab_i_144_n_0;
  wire char_tab_i_146_n_0;
  wire char_tab_i_148_n_0;
  wire char_tab_i_14_n_0;
  wire char_tab_i_150_n_0;
  wire char_tab_i_152_n_0;
  wire char_tab_i_157_n_0;
  wire char_tab_i_159_n_0;
  wire char_tab_i_15_n_0;
  wire char_tab_i_162_n_0;
  wire char_tab_i_163_n_0;
  wire char_tab_i_16_n_0;
  wire char_tab_i_17_n_0;
  wire char_tab_i_19_n_0;
  wire char_tab_i_20_n_0;
  wire char_tab_i_21_n_0;
  wire char_tab_i_22_n_0;
  wire char_tab_i_24_n_0;
  wire char_tab_i_25_n_0;
  wire char_tab_i_26_n_0;
  wire char_tab_i_27_n_0;
  wire char_tab_i_28_n_0;
  wire char_tab_i_29_n_0;
  wire char_tab_i_30_n_0;
  wire char_tab_i_33_n_0;
  wire char_tab_i_34_n_0;
  wire char_tab_i_35_n_0;
  wire char_tab_i_38_n_0;
  wire char_tab_i_39_n_0;
  wire char_tab_i_40_n_0;
  wire char_tab_i_42_n_0;
  wire char_tab_i_45_n_0;
  wire char_tab_i_47_n_0;
  wire char_tab_i_48_n_0;
  wire char_tab_i_50_n_0;
  wire char_tab_i_56_n_0;
  wire char_tab_i_57_n_0;
  wire char_tab_i_58_n_0;
  wire char_tab_i_60_n_0;
  wire char_tab_i_62_n_0;
  wire char_tab_i_64_n_0;
  wire char_tab_i_70_n_0;
  wire char_tab_i_72_n_0;
  wire char_tab_i_76_n_0;
  wire char_tab_i_78_n_0;
  wire char_tab_i_79_n_0;
  wire char_tab_i_80_n_0;
  wire char_tab_i_86_n_0;
  wire char_tab_i_88_n_0;
  wire char_tab_i_90_n_0;
  wire char_tab_i_91_n_0;
  wire char_tab_i_95_n_0;
  wire char_tab_i_96_n_0;
  wire char_tab_i_99_n_0;
  wire char_tab_i_9_n_0;
  wire [0:0]green;
  wire hSync;
  wire [9:0]p_0_in;
  wire [9:1]p_0_in__0;
  wire \q_reg[0] ;
  wire \q_reg[146] ;
  wire \q_reg[146]_0 ;
  wire \q_reg[146]_1 ;
  wire [14:0]\q_reg[147] ;
  wire \q_reg[147]_0 ;
  wire \q_reg[147]_1 ;
  wire \q_reg[147]_10 ;
  wire \q_reg[147]_11 ;
  wire \q_reg[147]_12 ;
  wire \q_reg[147]_13 ;
  wire \q_reg[147]_2 ;
  wire \q_reg[147]_3 ;
  wire \q_reg[147]_4 ;
  wire \q_reg[147]_5 ;
  wire \q_reg[147]_6 ;
  wire \q_reg[147]_7 ;
  wire \q_reg[147]_8 ;
  wire \q_reg[147]_9 ;
  wire \q_reg[149] ;
  wire \q_reg[152] ;
  wire \q_reg[152]_0 ;
  wire \q_reg[152]_1 ;
  wire \q_reg[152]_2 ;
  wire \q_reg[152]_3 ;
  wire \q_reg[19] ;
  wire \q_reg[19]_0 ;
  wire \q_reg[20] ;
  wire \q_reg[22] ;
  wire \q_reg[28] ;
  wire [4:0]\q_reg[28]_0 ;
  wire \q_reg[5] ;
  wire \q_reg[6] ;
  wire \q_reg[7] ;
  wire \q_reg[82] ;
  wire \q_reg[91] ;
  wire [27:0]spo;
  wire vSync;

  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \PosX_reg[0]_i_1 
       (.I0(PosX_reg_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PosX_reg[1]_i_1 
       (.I0(PosX_reg_reg__0[0]),
        .I1(Q[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PosX_reg[2]_i_1 
       (.I0(Q[0]),
        .I1(PosX_reg_reg__0[0]),
        .I2(Q[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PosX_reg[3]_i_1 
       (.I0(PosX_reg_reg__0[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PosX_reg[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(PosX_reg_reg__0[0]),
        .I3(Q[2]),
        .I4(PosX_reg_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \PosX_reg[5]_i_1 
       (.I0(Q[2]),
        .I1(PosX_reg_reg__0[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(PosX_reg_reg__0[4]),
        .I5(PosX_reg_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PosX_reg[6]_i_1 
       (.I0(PosX_reg_reg__0[4]),
        .I1(\PosX_reg[8]_i_2_n_0 ),
        .I2(PosX_reg_reg__0[5]),
        .I3(PosX_reg_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PosX_reg[7]_i_1 
       (.I0(PosX_reg_reg__0[5]),
        .I1(\PosX_reg[8]_i_2_n_0 ),
        .I2(PosX_reg_reg__0[4]),
        .I3(PosX_reg_reg__0[6]),
        .I4(PosX_reg_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \PosX_reg[8]_i_1 
       (.I0(PosX_reg_reg__0[6]),
        .I1(PosX_reg_reg__0[4]),
        .I2(\PosX_reg[8]_i_2_n_0 ),
        .I3(PosX_reg_reg__0[5]),
        .I4(PosX_reg_reg__0[7]),
        .I5(PosX_reg_reg__0[8]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'h8000)) 
    \PosX_reg[8]_i_2 
       (.I0(Q[2]),
        .I1(PosX_reg_reg__0[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\PosX_reg[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \PosX_reg[9]_i_1 
       (.I0(\PosX_reg[9]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(PosX_reg_reg__0[0]),
        .I4(Q[0]),
        .O(EndLine));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PosX_reg[9]_i_2 
       (.I0(PosX_reg_reg__0[7]),
        .I1(\PosX_reg[9]_i_4_n_0 ),
        .I2(PosX_reg_reg__0[6]),
        .I3(PosX_reg_reg__0[8]),
        .I4(PosX_reg_reg__0[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \PosX_reg[9]_i_3 
       (.I0(PosX_reg_reg__0[4]),
        .I1(PosX_reg_reg__0[5]),
        .I2(PosX_reg_reg__0[6]),
        .I3(PosX_reg_reg__0[7]),
        .I4(PosX_reg_reg__0[9]),
        .I5(PosX_reg_reg__0[8]),
        .O(\PosX_reg[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \PosX_reg[9]_i_4 
       (.I0(PosX_reg_reg__0[5]),
        .I1(Q[2]),
        .I2(PosX_reg_reg__0[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(PosX_reg_reg__0[4]),
        .O(\PosX_reg[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PosX_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(PosX_reg_reg__0[0]),
        .R(EndLine));
  FDRE #(
    .INIT(1'b0)) 
    \PosX_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(Q[0]),
        .R(EndLine));
  FDRE #(
    .INIT(1'b0)) 
    \PosX_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(Q[1]),
        .R(EndLine));
  FDRE #(
    .INIT(1'b0)) 
    \PosX_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(Q[2]),
        .R(EndLine));
  FDRE #(
    .INIT(1'b0)) 
    \PosX_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(PosX_reg_reg__0[4]),
        .R(EndLine));
  FDRE #(
    .INIT(1'b0)) 
    \PosX_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(PosX_reg_reg__0[5]),
        .R(EndLine));
  FDRE #(
    .INIT(1'b0)) 
    \PosX_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(PosX_reg_reg__0[6]),
        .R(EndLine));
  FDRE #(
    .INIT(1'b0)) 
    \PosX_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(PosX_reg_reg__0[7]),
        .R(EndLine));
  FDRE #(
    .INIT(1'b0)) 
    \PosX_reg_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(PosX_reg_reg__0[8]),
        .R(EndLine));
  FDRE #(
    .INIT(1'b0)) 
    \PosX_reg_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(PosX_reg_reg__0[9]),
        .R(EndLine));
  LUT1 #(
    .INIT(2'h1)) 
    \PosY_reg[0]_i_1 
       (.I0(PosY_reg_reg__0[0]),
        .O(\PosY_reg[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PosY_reg[1]_i_1 
       (.I0(PosY_reg_reg__0[0]),
        .I1(PosY_reg_reg__0[1]),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \PosY_reg[2]_i_1 
       (.I0(PosY_reg_reg__0[0]),
        .I1(PosY_reg_reg__0[1]),
        .I2(PosY_reg_reg__0[2]),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \PosY_reg[3]_i_1 
       (.I0(PosY_reg_reg__0[1]),
        .I1(PosY_reg_reg__0[0]),
        .I2(PosY_reg_reg__0[2]),
        .I3(PosY_reg_reg__0[3]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PosY_reg[4]_i_1 
       (.I0(PosY_reg_reg__0[2]),
        .I1(PosY_reg_reg__0[0]),
        .I2(PosY_reg_reg__0[1]),
        .I3(PosY_reg_reg__0[3]),
        .I4(PosY_reg_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \PosY_reg[5]_i_1 
       (.I0(PosY_reg_reg__0[3]),
        .I1(PosY_reg_reg__0[1]),
        .I2(PosY_reg_reg__0[0]),
        .I3(PosY_reg_reg__0[2]),
        .I4(PosY_reg_reg__0[4]),
        .I5(PosY_reg_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PosY_reg[6]_i_1 
       (.I0(\PosY_reg[9]_i_4_n_0 ),
        .I1(PosY_reg_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PosY_reg[7]_i_1 
       (.I0(\PosY_reg[9]_i_4_n_0 ),
        .I1(PosY_reg_reg__0[6]),
        .I2(PosY_reg_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PosY_reg[8]_i_1 
       (.I0(PosY_reg_reg__0[6]),
        .I1(\PosY_reg[9]_i_4_n_0 ),
        .I2(PosY_reg_reg__0[7]),
        .I3(PosY_reg_reg__0[8]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \PosY_reg[9]_i_1 
       (.I0(TMDS_inst_i_12_n_0),
        .I1(\PosY_reg[9]_i_3_n_0 ),
        .I2(PosY_reg_reg__0[0]),
        .I3(PosY_reg_reg__0[1]),
        .I4(PosY_reg_reg__0[3]),
        .I5(EndLine),
        .O(PosY_reg));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PosY_reg[9]_i_2 
       (.I0(PosY_reg_reg__0[7]),
        .I1(\PosY_reg[9]_i_4_n_0 ),
        .I2(PosY_reg_reg__0[6]),
        .I3(PosY_reg_reg__0[8]),
        .I4(PosY_reg_reg__0[9]),
        .O(p_0_in__0[9]));
  LUT4 #(
    .INIT(16'h0004)) 
    \PosY_reg[9]_i_3 
       (.I0(PosY_reg_reg__0[5]),
        .I1(PosY_reg_reg__0[9]),
        .I2(PosY_reg_reg__0[2]),
        .I3(PosY_reg_reg__0[4]),
        .O(\PosY_reg[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \PosY_reg[9]_i_4 
       (.I0(PosY_reg_reg__0[5]),
        .I1(PosY_reg_reg__0[3]),
        .I2(PosY_reg_reg__0[1]),
        .I3(PosY_reg_reg__0[0]),
        .I4(PosY_reg_reg__0[2]),
        .I5(PosY_reg_reg__0[4]),
        .O(\PosY_reg[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PosY_reg_reg[0] 
       (.C(CLK),
        .CE(EndLine),
        .D(\PosY_reg[0]_i_1_n_0 ),
        .Q(PosY_reg_reg__0[0]),
        .R(PosY_reg));
  FDRE #(
    .INIT(1'b0)) 
    \PosY_reg_reg[1] 
       (.C(CLK),
        .CE(EndLine),
        .D(p_0_in__0[1]),
        .Q(PosY_reg_reg__0[1]),
        .R(PosY_reg));
  FDRE #(
    .INIT(1'b0)) 
    \PosY_reg_reg[2] 
       (.C(CLK),
        .CE(EndLine),
        .D(p_0_in__0[2]),
        .Q(PosY_reg_reg__0[2]),
        .R(PosY_reg));
  FDRE #(
    .INIT(1'b0)) 
    \PosY_reg_reg[3] 
       (.C(CLK),
        .CE(EndLine),
        .D(p_0_in__0[3]),
        .Q(PosY_reg_reg__0[3]),
        .R(PosY_reg));
  FDRE #(
    .INIT(1'b0)) 
    \PosY_reg_reg[4] 
       (.C(CLK),
        .CE(EndLine),
        .D(p_0_in__0[4]),
        .Q(PosY_reg_reg__0[4]),
        .R(PosY_reg));
  FDRE #(
    .INIT(1'b0)) 
    \PosY_reg_reg[5] 
       (.C(CLK),
        .CE(EndLine),
        .D(p_0_in__0[5]),
        .Q(PosY_reg_reg__0[5]),
        .R(PosY_reg));
  FDRE #(
    .INIT(1'b0)) 
    \PosY_reg_reg[6] 
       (.C(CLK),
        .CE(EndLine),
        .D(p_0_in__0[6]),
        .Q(PosY_reg_reg__0[6]),
        .R(PosY_reg));
  FDRE #(
    .INIT(1'b0)) 
    \PosY_reg_reg[7] 
       (.C(CLK),
        .CE(EndLine),
        .D(p_0_in__0[7]),
        .Q(PosY_reg_reg__0[7]),
        .R(PosY_reg));
  FDRE #(
    .INIT(1'b0)) 
    \PosY_reg_reg[8] 
       (.C(CLK),
        .CE(EndLine),
        .D(p_0_in__0[8]),
        .Q(PosY_reg_reg__0[8]),
        .R(PosY_reg));
  FDRE #(
    .INIT(1'b0)) 
    \PosY_reg_reg[9] 
       (.C(CLK),
        .CE(EndLine),
        .D(p_0_in__0[9]),
        .Q(PosY_reg_reg__0[9]),
        .R(PosY_reg));
  LUT6 #(
    .INIT(64'h0555FF03FFFFFFFF)) 
    TMDS_inst_i_1
       (.I0(TMDS_inst_i_5_n_0),
        .I1(TMDS_inst_i_6_n_0),
        .I2(TMDS_inst_i_7_n_0),
        .I3(TMDS_inst_i_8_n_0),
        .I4(PosX),
        .I5(TMDS_inst_i_10_n_0),
        .O(green));
  LUT5 #(
    .INIT(32'h02222000)) 
    TMDS_inst_i_10
       (.I0(char_pixel__6),
        .I1(PosX_reg_reg__0[9]),
        .I2(TMDS_inst_i_17_n_0),
        .I3(PosX_reg_reg__0[7]),
        .I4(PosX_reg_reg__0[8]),
        .O(TMDS_inst_i_10_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    TMDS_inst_i_11
       (.I0(PosY_reg_reg__0[2]),
        .I1(PosY_reg_reg__0[4]),
        .I2(PosY_reg_reg__0[3]),
        .O(TMDS_inst_i_11_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    TMDS_inst_i_12
       (.I0(PosY_reg_reg__0[6]),
        .I1(PosY_reg_reg__0[7]),
        .I2(PosY_reg_reg__0[8]),
        .O(TMDS_inst_i_12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    TMDS_inst_i_13
       (.I0(PosY_reg_reg__0[1]),
        .I1(PosY_reg_reg__0[0]),
        .O(TMDS_inst_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFE000000000F1F)) 
    TMDS_inst_i_14
       (.I0(PosX_reg_reg__0[5]),
        .I1(PosX_reg_reg__0[4]),
        .I2(PosX_reg_reg__0[7]),
        .I3(PosX_reg_reg__0[6]),
        .I4(PosX_reg_reg__0[8]),
        .I5(PosX_reg_reg__0[9]),
        .O(TMDS_inst_i_14_n_0));
  LUT5 #(
    .INIT(32'h00C20000)) 
    TMDS_inst_i_15
       (.I0(PosX_reg_reg__0[6]),
        .I1(PosX_reg_reg__0[5]),
        .I2(PosX_reg_reg__0[4]),
        .I3(PosY__0[5]),
        .I4(char_tab_i_34_n_0),
        .O(TMDS_inst_i_15_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    TMDS_inst_i_17
       (.I0(PosX_reg_reg__0[4]),
        .I1(PosX_reg_reg__0[5]),
        .I2(PosX_reg_reg__0[6]),
        .O(TMDS_inst_i_17_n_0));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    TMDS_inst_i_2
       (.I0(PosX_reg_reg__0[7]),
        .I1(PosX_reg_reg__0[9]),
        .I2(PosX_reg_reg__0[8]),
        .I3(PosX_reg_reg__0[5]),
        .I4(PosX_reg_reg__0[6]),
        .O(hSync));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    TMDS_inst_i_3
       (.I0(PosY_reg_reg__0[9]),
        .I1(PosY_reg_reg__0[1]),
        .I2(PosY_reg_reg__0[5]),
        .I3(TMDS_inst_i_11_n_0),
        .I4(TMDS_inst_i_12_n_0),
        .O(vSync));
  LUT6 #(
    .INIT(64'h000000010000EEEC)) 
    TMDS_inst_i_4
       (.I0(PosY_reg_reg__0[5]),
        .I1(TMDS_inst_i_12_n_0),
        .I2(TMDS_inst_i_13_n_0),
        .I3(TMDS_inst_i_11_n_0),
        .I4(TMDS_inst_i_14_n_0),
        .I5(PosY_reg_reg__0[9]),
        .O(ActiveArea));
  LUT4 #(
    .INIT(16'h44C0)) 
    TMDS_inst_i_5
       (.I0(PosX_reg_reg__0[4]),
        .I1(TMDS_inst_i_15_n_0),
        .I2(PosY__0[7]),
        .I3(\TMDSn[2] ),
        .O(TMDS_inst_i_5_n_0));
  LUT5 #(
    .INIT(32'h00000028)) 
    TMDS_inst_i_6
       (.I0(\TMDSn[2] ),
        .I1(PosX_reg_reg__0[5]),
        .I2(PosX_reg_reg__0[4]),
        .I3(PosY__0[5]),
        .I4(PosY__0[7]),
        .O(TMDS_inst_i_6_n_0));
  LUT4 #(
    .INIT(16'hB003)) 
    TMDS_inst_i_7
       (.I0(\TMDSn[2] ),
        .I1(PosY__0[5]),
        .I2(PosY__0[7]),
        .I3(char_tab_i_34_n_0),
        .O(TMDS_inst_i_7_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    TMDS_inst_i_8
       (.I0(PosX_reg_reg__0[4]),
        .I1(PosX_reg_reg__0[5]),
        .I2(PosX_reg_reg__0[6]),
        .O(TMDS_inst_i_8_n_0));
  LUT4 #(
    .INIT(16'h01FE)) 
    TMDS_inst_i_9
       (.I0(PosX_reg_reg__0[6]),
        .I1(PosX_reg_reg__0[5]),
        .I2(PosX_reg_reg__0[4]),
        .I3(PosX_reg_reg__0[7]),
        .O(PosX));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEEA)) 
    char_tab_i_1
       (.I0(char_tab_i_9_n_0),
        .I1(char_tab_i_10_n_0),
        .I2(char_tab_i_11_n_0),
        .I3(char_tab_i_12_n_0),
        .I4(\q_reg[149] ),
        .I5(char_tab_i_14_n_0),
        .O(a[7]));
  LUT2 #(
    .INIT(4'h1)) 
    char_tab_i_10
       (.I0(char_tab_i_34_n_0),
        .I1(PosY__0[5]),
        .O(char_tab_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFFC840)) 
    char_tab_i_102
       (.I0(\TMDSn[2]_3 ),
        .I1(PosY__0[7]),
        .I2(char_tab_i_140_n_0),
        .I3(ALU_A[25]),
        .I4(char_tab_i_141_n_0),
        .O(char_tab_i_102_n_0));
  LUT6 #(
    .INIT(64'hA280A280A2A28080)) 
    char_tab_i_103
       (.I0(\TMDSn[2]_6 ),
        .I1(\TMDSn[2]_1 ),
        .I2(spo[10]),
        .I3(spo[6]),
        .I4(spo[2]),
        .I5(\TMDSn[2]_11 ),
        .O(char_tab_i_103_n_0));
  LUT4 #(
    .INIT(16'h1800)) 
    char_tab_i_105
       (.I0(\PosX_reg[8]_i_2_n_0 ),
        .I1(PosX_reg_reg__0[4]),
        .I2(PosX_reg_reg__0[5]),
        .I3(char_tab_i_144_n_0),
        .O(\TMDSn[2]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    char_tab_i_106
       (.I0(\TMDSn[2]_8 ),
        .I1(\TMDSn[2]_0 ),
        .O(\TMDSn[2]_6 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    char_tab_i_109
       (.I0(\TMDSn[2]_6 ),
        .I1(\q_reg[147] [7]),
        .I2(\TMDSn[2]_1 ),
        .I3(\q_reg[146]_0 ),
        .I4(\q_reg[147] [2]),
        .I5(\TMDSn[2]_9 ),
        .O(char_tab_i_109_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    char_tab_i_11
       (.I0(char_tab_i_35_n_0),
        .I1(\TMDSn[2]_2 ),
        .I2(spo[27]),
        .I3(spo[23]),
        .I4(\TMDSn[2]_5 ),
        .I5(char_tab_i_38_n_0),
        .O(char_tab_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    char_tab_i_111
       (.I0(\TMDSn[2]_6 ),
        .I1(char_tab_i_146_n_0),
        .I2(\TMDSn[2]_7 ),
        .I3(ALU_A[8]),
        .I4(\TMDSn[2]_8 ),
        .I5(ALU_A[12]),
        .O(char_tab_i_111_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFF888)) 
    char_tab_i_113
       (.I0(\TMDSn[2]_8 ),
        .I1(spo[17]),
        .I2(spo[13]),
        .I3(\TMDSn[2]_7 ),
        .I4(char_tab_i_148_n_0),
        .I5(\TMDSn[2]_4 ),
        .O(char_tab_i_113_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    char_tab_i_118
       (.I0(\TMDSn[2]_6 ),
        .I1(\q_reg[147] [6]),
        .I2(\TMDSn[2]_1 ),
        .I3(\q_reg[147] [5]),
        .I4(\q_reg[147] [1]),
        .I5(\TMDSn[2]_11 ),
        .O(char_tab_i_118_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    char_tab_i_12
       (.I0(char_tab_i_39_n_0),
        .I1(D[8]),
        .I2(\TMDSn[2]_2 ),
        .I3(D[7]),
        .I4(\TMDSn[2]_5 ),
        .I5(char_tab_i_40_n_0),
        .O(char_tab_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    char_tab_i_120
       (.I0(\TMDSn[2]_6 ),
        .I1(char_tab_i_150_n_0),
        .I2(\TMDSn[2]_7 ),
        .I3(ALU_A[7]),
        .I4(\TMDSn[2]_8 ),
        .I5(ALU_A[11]),
        .O(char_tab_i_120_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    char_tab_i_122
       (.I0(\TMDSn[2]_13 ),
        .I1(\TMDSn[2]_8 ),
        .O(char_tab_i_122_n_0));
  LUT4 #(
    .INIT(16'h1200)) 
    char_tab_i_123
       (.I0(\PosX_reg[8]_i_2_n_0 ),
        .I1(PosX_reg_reg__0[5]),
        .I2(PosX_reg_reg__0[4]),
        .I3(char_tab_i_144_n_0),
        .O(\TMDSn[2]_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFF888)) 
    char_tab_i_125
       (.I0(\TMDSn[2]_8 ),
        .I1(spo[16]),
        .I2(spo[12]),
        .I3(\TMDSn[2]_7 ),
        .I4(char_tab_i_152_n_0),
        .I5(\TMDSn[2]_4 ),
        .O(char_tab_i_125_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    char_tab_i_129
       (.I0(\TMDSn[2]_6 ),
        .I1(\q_reg[146] ),
        .I2(\q_reg[147] [4]),
        .I3(\TMDSn[2]_10 ),
        .I4(\q_reg[147] [0]),
        .I5(\TMDSn[2]_9 ),
        .O(char_tab_i_129_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    char_tab_i_131
       (.I0(PosX_reg_reg__0[5]),
        .I1(PosX_reg_reg__0[4]),
        .O(char_tab_i_131_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    char_tab_i_132
       (.I0(Q[2]),
        .I1(PosX_reg_reg__0[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(PosX_reg_reg__0[5]),
        .I5(PosX_reg_reg__0[4]),
        .O(char_tab_i_132_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    char_tab_i_134
       (.I0(char_tab_i_157_n_0),
        .I1(\TMDSn[2]_4 ),
        .I2(\TMDSn[2]_5 ),
        .I3(ALU_A[18]),
        .I4(\TMDSn[2]_2 ),
        .I5(ALU_A[22]),
        .O(char_tab_i_134_n_0));
  LUT5 #(
    .INIT(32'h0000ACA0)) 
    char_tab_i_135
       (.I0(\PC_reg_reg[7] [5]),
        .I1(\TMDSn[2]_2 ),
        .I2(\TMDSn[2]_3 ),
        .I3(\PC_reg_reg[7] [2]),
        .I4(PosY__0[7]),
        .O(char_tab_i_135_n_0));
  LUT4 #(
    .INIT(16'h6000)) 
    char_tab_i_136
       (.I0(\PosX_reg[8]_i_2_n_0 ),
        .I1(PosX_reg_reg__0[4]),
        .I2(PosX_reg_reg__0[5]),
        .I3(char_tab_i_144_n_0),
        .O(\TMDSn[2]_11 ));
  LUT2 #(
    .INIT(4'h1)) 
    char_tab_i_138
       (.I0(\TMDSn[2]_1 ),
        .I1(\TMDSn[2]_11 ),
        .O(\TMDSn[2]_9 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA08AA0808)) 
    char_tab_i_14
       (.I0(char_tab_i_42_n_0),
        .I1(\TMDSn[2]_2 ),
        .I2(\q_reg[147]_8 ),
        .I3(\q_reg[147]_9 ),
        .I4(\TMDSn[2]_5 ),
        .I5(char_tab_i_45_n_0),
        .O(char_tab_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    char_tab_i_140
       (.I0(char_tab_i_159_n_0),
        .I1(\TMDSn[2]_4 ),
        .I2(\TMDSn[2]_5 ),
        .I3(ALU_A[17]),
        .I4(\TMDSn[2]_2 ),
        .I5(ALU_A[21]),
        .O(char_tab_i_140_n_0));
  LUT5 #(
    .INIT(32'h0000ACA0)) 
    char_tab_i_141
       (.I0(\PC_reg_reg[7] [4]),
        .I1(\TMDSn[2]_2 ),
        .I2(\TMDSn[2]_3 ),
        .I3(\PC_reg_reg[7] [1]),
        .I4(PosY__0[7]),
        .O(char_tab_i_141_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    char_tab_i_143
       (.I0(\TMDSn[2]_11 ),
        .I1(\TMDSn[2]_1 ),
        .O(\TMDSn[2]_10 ));
  LUT6 #(
    .INIT(64'h1000000400000440)) 
    char_tab_i_144
       (.I0(PosX_reg_reg__0[9]),
        .I1(PosX_reg_reg__0[8]),
        .I2(PosX_reg_reg__0[6]),
        .I3(char_tab_i_131_n_0),
        .I4(PosX_reg_reg__0[7]),
        .I5(char_tab_i_132_n_0),
        .O(char_tab_i_144_n_0));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    char_tab_i_146
       (.I0(\TMDSn[2]_9 ),
        .I1(ALU_A[0]),
        .I2(\TMDSn[2]_10 ),
        .I3(ALU_A[1]),
        .I4(\q_reg[91] ),
        .I5(\TMDSn[2]_1 ),
        .O(char_tab_i_146_n_0));
  LUT6 #(
    .INIT(64'hA280A280A2A28080)) 
    char_tab_i_148
       (.I0(\TMDSn[2]_6 ),
        .I1(\TMDSn[2]_1 ),
        .I2(spo[9]),
        .I3(spo[5]),
        .I4(spo[1]),
        .I5(\TMDSn[2]_11 ),
        .O(char_tab_i_148_n_0));
  LUT5 #(
    .INIT(32'h8888F000)) 
    char_tab_i_15
       (.I0(\q_reg[147] [14]),
        .I1(\TMDSn[2]_3 ),
        .I2(char_tab_i_47_n_0),
        .I3(char_tab_i_34_n_0),
        .I4(PosY__0[5]),
        .O(char_tab_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFF22F222F222F2)) 
    char_tab_i_150
       (.I0(\TMDSn[2]_9 ),
        .I1(\q_reg[82] ),
        .I2(\TMDSn[2]_10 ),
        .I3(\q_reg[7] ),
        .I4(\TMDSn[2]_1 ),
        .I5(ALU_A[4]),
        .O(char_tab_i_150_n_0));
  LUT4 #(
    .INIT(16'h8100)) 
    char_tab_i_151
       (.I0(\PosX_reg[8]_i_2_n_0 ),
        .I1(PosX_reg_reg__0[4]),
        .I2(PosX_reg_reg__0[5]),
        .I3(char_tab_i_144_n_0),
        .O(\TMDSn[2]_14 ));
  LUT6 #(
    .INIT(64'hA280A280A2A28080)) 
    char_tab_i_152
       (.I0(\TMDSn[2]_6 ),
        .I1(\TMDSn[2]_1 ),
        .I2(spo[8]),
        .I3(spo[4]),
        .I4(spo[0]),
        .I5(\TMDSn[2]_11 ),
        .O(char_tab_i_152_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    char_tab_i_154
       (.I0(\TMDSn[2]_10 ),
        .I1(D[1]),
        .O(\TMDSn[2]_12 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    char_tab_i_157
       (.I0(\TMDSn[2]_6 ),
        .I1(char_tab_i_162_n_0),
        .I2(\TMDSn[2]_7 ),
        .I3(ALU_A[10]),
        .I4(\TMDSn[2]_8 ),
        .I5(ALU_A[14]),
        .O(char_tab_i_157_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    char_tab_i_159
       (.I0(\TMDSn[2]_6 ),
        .I1(char_tab_i_163_n_0),
        .I2(\TMDSn[2]_7 ),
        .I3(ALU_A[9]),
        .I4(\TMDSn[2]_8 ),
        .I5(ALU_A[13]),
        .O(char_tab_i_159_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    char_tab_i_16
       (.I0(char_tab_i_35_n_0),
        .I1(\TMDSn[2]_2 ),
        .I2(spo[26]),
        .I3(spo[22]),
        .I4(\TMDSn[2]_5 ),
        .I5(char_tab_i_48_n_0),
        .O(char_tab_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    char_tab_i_162
       (.I0(\TMDSn[2]_9 ),
        .I1(\q_reg[6] ),
        .I2(\TMDSn[2]_10 ),
        .I3(ALU_A[3]),
        .I4(\TMDSn[2]_1 ),
        .I5(ALU_A[6]),
        .O(char_tab_i_162_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    char_tab_i_163
       (.I0(\TMDSn[2]_9 ),
        .I1(\q_reg[5] ),
        .I2(\TMDSn[2]_10 ),
        .I3(ALU_A[2]),
        .I4(\TMDSn[2]_1 ),
        .I5(ALU_A[5]),
        .O(char_tab_i_163_n_0));
  LUT6 #(
    .INIT(64'hA8AAA8AAA8AAA8A8)) 
    char_tab_i_17
       (.I0(char_tab_i_39_n_0),
        .I1(\PosX_reg_reg[4]_2 ),
        .I2(char_tab_i_50_n_0),
        .I3(\TMDSn[2]_4 ),
        .I4(\q_reg[152]_0 ),
        .I5(\PosX_reg_reg[4]_3 ),
        .O(char_tab_i_17_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA08AA0808)) 
    char_tab_i_19
       (.I0(char_tab_i_42_n_0),
        .I1(\TMDSn[2]_2 ),
        .I2(\q_reg[147]_5 ),
        .I3(\q_reg[147]_6 ),
        .I4(\TMDSn[2]_5 ),
        .I5(char_tab_i_56_n_0),
        .O(char_tab_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEEA)) 
    char_tab_i_2
       (.I0(char_tab_i_15_n_0),
        .I1(char_tab_i_10_n_0),
        .I2(char_tab_i_16_n_0),
        .I3(char_tab_i_17_n_0),
        .I4(\q_reg[152] ),
        .I5(char_tab_i_19_n_0),
        .O(a[6]));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    char_tab_i_20
       (.I0(char_tab_i_57_n_0),
        .I1(char_tab_i_58_n_0),
        .I2(ALU_A[24]),
        .I3(char_tab_i_60_n_0),
        .I4(PosY__0[7]),
        .I5(\TMDSn[2]_3 ),
        .O(char_tab_i_20_n_0));
  LUT6 #(
    .INIT(64'h8888A0AA8888A000)) 
    char_tab_i_21
       (.I0(char_tab_i_62_n_0),
        .I1(\q_reg[28]_0 [4]),
        .I2(\q_reg[28]_0 [0]),
        .I3(\TMDSn[2]_2 ),
        .I4(\TMDSn[2]_3 ),
        .I5(\q_reg[19] ),
        .O(char_tab_i_21_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFEAA)) 
    char_tab_i_22
       (.I0(char_tab_i_64_n_0),
        .I1(\q_reg[152]_1 ),
        .I2(\q_reg[152]_2 ),
        .I3(char_tab_i_39_n_0),
        .I4(\q_reg[152]_3 ),
        .I5(char_tab_i_34_n_0),
        .O(char_tab_i_22_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    char_tab_i_23
       (.I0(PosY_reg_reg__0[4]),
        .I1(PosY_reg_reg__0[2]),
        .I2(PosY_reg_reg__0[1]),
        .I3(PosY_reg_reg__0[0]),
        .I4(PosY_reg_reg__0[3]),
        .I5(PosY_reg_reg__0[5]),
        .O(PosY__0[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    char_tab_i_24
       (.I0(char_tab_i_42_n_0),
        .I1(\q_reg[147] [13]),
        .I2(\TMDSn[2]_2 ),
        .I3(\q_reg[147] [12]),
        .I4(\TMDSn[2]_5 ),
        .I5(char_tab_i_70_n_0),
        .O(char_tab_i_24_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    char_tab_i_25
       (.I0(PosY__0[5]),
        .I1(\TMDSn[2]_3 ),
        .I2(\q_reg[147]_13 ),
        .O(char_tab_i_25_n_0));
  LUT6 #(
    .INIT(64'hAA8A2A0AA0802000)) 
    char_tab_i_26
       (.I0(char_tab_i_57_n_0),
        .I1(\TMDSn[2]_3 ),
        .I2(PosY__0[7]),
        .I3(char_tab_i_72_n_0),
        .I4(ALU_A[23]),
        .I5(\PC_reg_reg[0] ),
        .O(char_tab_i_26_n_0));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A888)) 
    char_tab_i_27
       (.I0(char_tab_i_62_n_0),
        .I1(\q_reg[28] ),
        .I2(char_tab_i_76_n_0),
        .I3(\q_reg[20] ),
        .I4(char_tab_i_78_n_0),
        .I5(char_tab_i_79_n_0),
        .O(char_tab_i_27_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFEAA)) 
    char_tab_i_28
       (.I0(char_tab_i_80_n_0),
        .I1(\PosX_reg_reg[4]_0 ),
        .I2(\PosX_reg_reg[4]_1 ),
        .I3(char_tab_i_39_n_0),
        .I4(\PosX_reg_reg[5]_0 ),
        .I5(char_tab_i_34_n_0),
        .O(char_tab_i_28_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA08AA0808)) 
    char_tab_i_29
       (.I0(char_tab_i_42_n_0),
        .I1(\TMDSn[2]_2 ),
        .I2(\q_reg[147]_1 ),
        .I3(\q_reg[147]_2 ),
        .I4(\TMDSn[2]_5 ),
        .I5(char_tab_i_86_n_0),
        .O(char_tab_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00FE)) 
    char_tab_i_3
       (.I0(char_tab_i_20_n_0),
        .I1(char_tab_i_21_n_0),
        .I2(char_tab_i_22_n_0),
        .I3(PosY__0[5]),
        .I4(char_tab_i_24_n_0),
        .I5(char_tab_i_25_n_0),
        .O(a[5]));
  LUT3 #(
    .INIT(8'h08)) 
    char_tab_i_30
       (.I0(PosY__0[5]),
        .I1(\TMDSn[2]_3 ),
        .I2(\q_reg[147]_12 ),
        .O(char_tab_i_30_n_0));
  LUT4 #(
    .INIT(16'h1200)) 
    char_tab_i_32
       (.I0(\PosX_reg[8]_i_2_n_0 ),
        .I1(PosX_reg_reg__0[5]),
        .I2(PosX_reg_reg__0[4]),
        .I3(char_tab_i_88_n_0),
        .O(\TMDSn[2]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFE040000FE04)) 
    char_tab_i_33
       (.I0(\TMDSn[2]_3 ),
        .I1(\q_reg[19]_0 ),
        .I2(\TMDSn[2]_4 ),
        .I3(\q_reg[28]_0 [0]),
        .I4(\TMDSn[2] ),
        .I5(char_tab_i_90_n_0),
        .O(char_tab_i_33_n_0));
  LUT4 #(
    .INIT(16'h01FE)) 
    char_tab_i_34
       (.I0(PosY_reg_reg__0[7]),
        .I1(char_tab_i_91_n_0),
        .I2(PosY_reg_reg__0[6]),
        .I3(PosY_reg_reg__0[8]),
        .O(char_tab_i_34_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    char_tab_i_35
       (.I0(\TMDSn[2] ),
        .I1(\TMDSn[2]_3 ),
        .O(char_tab_i_35_n_0));
  LUT4 #(
    .INIT(16'h1800)) 
    char_tab_i_36
       (.I0(\PosX_reg[8]_i_2_n_0 ),
        .I1(PosX_reg_reg__0[4]),
        .I2(PosX_reg_reg__0[5]),
        .I3(char_tab_i_88_n_0),
        .O(\TMDSn[2]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    char_tab_i_37
       (.I0(\TMDSn[2]_13 ),
        .I1(\TMDSn[2]_2 ),
        .O(\TMDSn[2]_5 ));
  LUT6 #(
    .INIT(64'h00000000FFFFF888)) 
    char_tab_i_38
       (.I0(\TMDSn[2]_8 ),
        .I1(spo[19]),
        .I2(spo[15]),
        .I3(\TMDSn[2]_7 ),
        .I4(char_tab_i_95_n_0),
        .I5(\TMDSn[2]_4 ),
        .O(char_tab_i_38_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    char_tab_i_39
       (.I0(\TMDSn[2]_3 ),
        .I1(\TMDSn[2] ),
        .O(char_tab_i_39_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00FE)) 
    char_tab_i_4
       (.I0(char_tab_i_26_n_0),
        .I1(char_tab_i_27_n_0),
        .I2(char_tab_i_28_n_0),
        .I3(PosY__0[5]),
        .I4(char_tab_i_29_n_0),
        .I5(char_tab_i_30_n_0),
        .O(a[4]));
  LUT6 #(
    .INIT(64'h00000000FFFFF888)) 
    char_tab_i_40
       (.I0(D[5]),
        .I1(\TMDSn[2]_8 ),
        .I2(D[4]),
        .I3(\TMDSn[2]_7 ),
        .I4(char_tab_i_96_n_0),
        .I5(\TMDSn[2]_4 ),
        .O(char_tab_i_40_n_0));
  LUT6 #(
    .INIT(64'hFFFE00000001FFFF)) 
    char_tab_i_41
       (.I0(PosY_reg_reg__0[3]),
        .I1(TMDS_inst_i_13_n_0),
        .I2(PosY_reg_reg__0[2]),
        .I3(PosY_reg_reg__0[4]),
        .I4(PosY_reg_reg__0[5]),
        .I5(PosY_reg_reg__0[6]),
        .O(\TMDSn[2] ));
  LUT2 #(
    .INIT(4'h2)) 
    char_tab_i_42
       (.I0(PosY__0[5]),
        .I1(\TMDSn[2]_3 ),
        .O(char_tab_i_42_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF2F22)) 
    char_tab_i_45
       (.I0(\TMDSn[2]_8 ),
        .I1(\q_reg[147]_10 ),
        .I2(\q_reg[147]_11 ),
        .I3(\TMDSn[2]_7 ),
        .I4(char_tab_i_99_n_0),
        .I5(\TMDSn[2]_4 ),
        .O(char_tab_i_45_n_0));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    char_tab_i_47
       (.I0(\TMDSn[2]_3 ),
        .I1(\q_reg[22] ),
        .I2(\q_reg[28]_0 [0]),
        .I3(\TMDSn[2] ),
        .I4(char_tab_i_102_n_0),
        .O(char_tab_i_47_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFF888)) 
    char_tab_i_48
       (.I0(\TMDSn[2]_8 ),
        .I1(spo[18]),
        .I2(spo[14]),
        .I3(\TMDSn[2]_7 ),
        .I4(char_tab_i_103_n_0),
        .I5(\TMDSn[2]_4 ),
        .O(char_tab_i_48_n_0));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    char_tab_i_5
       (.I0(PosY_reg_reg__0[3]),
        .I1(PosY_reg_reg__0[0]),
        .I2(PosY_reg_reg__0[1]),
        .I3(PosY_reg_reg__0[2]),
        .I4(PosY_reg_reg__0[4]),
        .O(a[3]));
  LUT2 #(
    .INIT(4'h8)) 
    char_tab_i_50
       (.I0(\TMDSn[2]_5 ),
        .I1(D[6]),
        .O(char_tab_i_50_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    char_tab_i_51
       (.I0(\TMDSn[2]_2 ),
        .I1(\TMDSn[2]_13 ),
        .O(\TMDSn[2]_4 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8F88)) 
    char_tab_i_56
       (.I0(\q_reg[147] [11]),
        .I1(\TMDSn[2]_8 ),
        .I2(\q_reg[147]_7 ),
        .I3(\TMDSn[2]_7 ),
        .I4(char_tab_i_109_n_0),
        .I5(\TMDSn[2]_4 ),
        .O(char_tab_i_56_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    char_tab_i_57
       (.I0(char_tab_i_34_n_0),
        .I1(\TMDSn[2] ),
        .O(char_tab_i_57_n_0));
  LUT5 #(
    .INIT(32'h0000ACA0)) 
    char_tab_i_58
       (.I0(\PC_reg_reg[7] [3]),
        .I1(\TMDSn[2]_2 ),
        .I2(\TMDSn[2]_3 ),
        .I3(\PC_reg_reg[7] [0]),
        .I4(PosY__0[7]),
        .O(char_tab_i_58_n_0));
  LUT4 #(
    .INIT(16'hFE01)) 
    char_tab_i_6
       (.I0(PosY_reg_reg__0[2]),
        .I1(PosY_reg_reg__0[1]),
        .I2(PosY_reg_reg__0[0]),
        .I3(PosY_reg_reg__0[3]),
        .O(a[2]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    char_tab_i_60
       (.I0(char_tab_i_111_n_0),
        .I1(\TMDSn[2]_4 ),
        .I2(\TMDSn[2]_5 ),
        .I3(ALU_A[16]),
        .I4(\TMDSn[2]_2 ),
        .I5(ALU_A[20]),
        .O(char_tab_i_60_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    char_tab_i_61
       (.I0(PosY_reg_reg__0[6]),
        .I1(char_tab_i_91_n_0),
        .I2(PosY_reg_reg__0[7]),
        .O(PosY__0[7]));
  LUT2 #(
    .INIT(4'h2)) 
    char_tab_i_62
       (.I0(char_tab_i_34_n_0),
        .I1(\TMDSn[2] ),
        .O(char_tab_i_62_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    char_tab_i_64
       (.I0(char_tab_i_35_n_0),
        .I1(\TMDSn[2]_2 ),
        .I2(spo[25]),
        .I3(spo[21]),
        .I4(\TMDSn[2]_5 ),
        .I5(char_tab_i_113_n_0),
        .O(char_tab_i_64_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    char_tab_i_7
       (.I0(PosY_reg_reg__0[0]),
        .I1(PosY_reg_reg__0[1]),
        .I2(PosY_reg_reg__0[2]),
        .O(a[1]));
  LUT6 #(
    .INIT(64'h00000000FFFFF222)) 
    char_tab_i_70
       (.I0(\TMDSn[2]_8 ),
        .I1(\q_reg[147]_4 ),
        .I2(\q_reg[147] [9]),
        .I3(\TMDSn[2]_7 ),
        .I4(char_tab_i_118_n_0),
        .I5(\TMDSn[2]_4 ),
        .O(char_tab_i_70_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    char_tab_i_72
       (.I0(char_tab_i_120_n_0),
        .I1(\TMDSn[2]_4 ),
        .I2(\TMDSn[2]_5 ),
        .I3(ALU_A[15]),
        .I4(\TMDSn[2]_2 ),
        .I5(ALU_A[19]),
        .O(char_tab_i_72_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    char_tab_i_76
       (.I0(\TMDSn[2]_3 ),
        .I1(\TMDSn[2]_2 ),
        .O(char_tab_i_76_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    char_tab_i_78
       (.I0(\TMDSn[2]_8 ),
        .I1(\q_reg[28]_0 [3]),
        .I2(\TMDSn[2]_13 ),
        .O(char_tab_i_78_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    char_tab_i_79
       (.I0(char_tab_i_122_n_0),
        .I1(\q_reg[28]_0 [2]),
        .I2(\TMDSn[2]_0 ),
        .I3(\q_reg[28]_0 [1]),
        .I4(\q_reg[0] ),
        .I5(\TMDSn[2]_1 ),
        .O(char_tab_i_79_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    char_tab_i_8
       (.I0(PosY_reg_reg__0[1]),
        .I1(PosY_reg_reg__0[0]),
        .O(a[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    char_tab_i_80
       (.I0(char_tab_i_35_n_0),
        .I1(\TMDSn[2]_2 ),
        .I2(spo[24]),
        .I3(spo[20]),
        .I4(\TMDSn[2]_5 ),
        .I5(char_tab_i_125_n_0),
        .O(char_tab_i_80_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF8F88)) 
    char_tab_i_86
       (.I0(\q_reg[147] [10]),
        .I1(\TMDSn[2]_8 ),
        .I2(\q_reg[147]_3 ),
        .I3(\TMDSn[2]_7 ),
        .I4(char_tab_i_129_n_0),
        .I5(\TMDSn[2]_4 ),
        .O(char_tab_i_86_n_0));
  LUT6 #(
    .INIT(64'h0004040004000010)) 
    char_tab_i_88
       (.I0(PosX_reg_reg__0[9]),
        .I1(PosX_reg_reg__0[7]),
        .I2(PosX_reg_reg__0[8]),
        .I3(char_tab_i_131_n_0),
        .I4(PosX_reg_reg__0[6]),
        .I5(char_tab_i_132_n_0),
        .O(char_tab_i_88_n_0));
  LUT5 #(
    .INIT(32'h4444F000)) 
    char_tab_i_9
       (.I0(\q_reg[147]_0 ),
        .I1(\TMDSn[2]_3 ),
        .I2(char_tab_i_33_n_0),
        .I3(char_tab_i_34_n_0),
        .I4(PosY__0[5]),
        .O(char_tab_i_9_n_0));
  LUT5 #(
    .INIT(32'hFFFFC840)) 
    char_tab_i_90
       (.I0(\TMDSn[2]_3 ),
        .I1(PosY__0[7]),
        .I2(char_tab_i_134_n_0),
        .I3(ALU_A[26]),
        .I4(char_tab_i_135_n_0),
        .O(char_tab_i_90_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    char_tab_i_91
       (.I0(PosY_reg_reg__0[5]),
        .I1(PosY_reg_reg__0[4]),
        .I2(PosY_reg_reg__0[2]),
        .I3(PosY_reg_reg__0[1]),
        .I4(PosY_reg_reg__0[0]),
        .I5(PosY_reg_reg__0[3]),
        .O(char_tab_i_91_n_0));
  LUT4 #(
    .INIT(16'h6000)) 
    char_tab_i_92
       (.I0(\PosX_reg[8]_i_2_n_0 ),
        .I1(PosX_reg_reg__0[4]),
        .I2(PosX_reg_reg__0[5]),
        .I3(char_tab_i_88_n_0),
        .O(\TMDSn[2]_13 ));
  LUT4 #(
    .INIT(16'h8100)) 
    char_tab_i_93
       (.I0(\PosX_reg[8]_i_2_n_0 ),
        .I1(PosX_reg_reg__0[4]),
        .I2(PosX_reg_reg__0[5]),
        .I3(char_tab_i_88_n_0),
        .O(\TMDSn[2]_8 ));
  LUT2 #(
    .INIT(4'h2)) 
    char_tab_i_94
       (.I0(\TMDSn[2]_0 ),
        .I1(\TMDSn[2]_8 ),
        .O(\TMDSn[2]_7 ));
  LUT6 #(
    .INIT(64'hA280A280A2A28080)) 
    char_tab_i_95
       (.I0(\TMDSn[2]_6 ),
        .I1(\TMDSn[2]_1 ),
        .I2(spo[11]),
        .I3(spo[7]),
        .I4(spo[3]),
        .I5(\TMDSn[2]_11 ),
        .O(char_tab_i_95_n_0));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    char_tab_i_96
       (.I0(\TMDSn[2]_6 ),
        .I1(D[3]),
        .I2(\TMDSn[2]_1 ),
        .I3(D[2]),
        .I4(D[0]),
        .I5(\TMDSn[2]_11 ),
        .O(char_tab_i_96_n_0));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    char_tab_i_99
       (.I0(\TMDSn[2]_6 ),
        .I1(\q_reg[147] [8]),
        .I2(\TMDSn[2]_1 ),
        .I3(\q_reg[146]_1 ),
        .I4(\q_reg[147] [3]),
        .I5(\TMDSn[2]_9 ),
        .O(char_tab_i_99_n_0));
endmodule

module vga_data
   (char_pixel__6,
    a,
    CLK,
    Q);
  output char_pixel__6;
  input [7:0]a;
  input CLK;
  input [2:0]Q;

  wire CLK;
  wire [2:0]Q;
  wire TMDS_inst_i_18_n_0;
  wire TMDS_inst_i_19_n_0;
  wire [7:0]a;
  wire char_pixel__6;
  wire [7:0]rom_dout;

  MUXF7 TMDS_inst_i_16
       (.I0(TMDS_inst_i_18_n_0),
        .I1(TMDS_inst_i_19_n_0),
        .O(char_pixel__6),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    TMDS_inst_i_18
       (.I0(rom_dout[6]),
        .I1(rom_dout[4]),
        .I2(Q[1]),
        .I3(rom_dout[7]),
        .I4(Q[0]),
        .I5(rom_dout[5]),
        .O(TMDS_inst_i_18_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    TMDS_inst_i_19
       (.I0(rom_dout[2]),
        .I1(rom_dout[0]),
        .I2(Q[1]),
        .I3(rom_dout[3]),
        .I4(Q[0]),
        .I5(rom_dout[1]),
        .O(TMDS_inst_i_19_n_0));
  (* x_core_info = "dist_mem_gen_v8_0_11,Vivado 2017.1" *) 
  DisplayROM char_tab
       (.a(a),
        .clk(CLK),
        .qspo(rom_dout));
endmodule

(* C_ADDR_WIDTH = "6" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "64" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "1" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "1" *) 
(* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_MEM_TYPE = "1" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "0" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_12" *) 
module DataRAM_dist_mem_gen_v8_0_12
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [5:0]a;
  input [31:0]d;
  input [5:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire [5:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]spo;
  wire we;

  DataRAM_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .spo(spo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_12_synth" *) 
module DataRAM_dist_mem_gen_v8_0_12_synth
   (spo,
    clk,
    d,
    we,
    a);
  output [31:0]spo;
  input clk;
  input [31:0]d;
  input we;
  input [5:0]a;

  wire [5:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]spo;
  wire we;

  DataRAM_spram \gen_sp_ram.spram_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .spo(spo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "spram" *) 
module DataRAM_spram
   (spo,
    clk,
    d,
    we,
    a);
  output [31:0]spo;
  input clk;
  input [31:0]d;
  input we;
  input [5:0]a;

  wire [5:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]spo;
  wire we;

  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_UNIQ_BASE_ ram_reg_0_63_0_0
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[0]),
        .O(spo[0]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD32 ram_reg_0_63_10_10
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[10]),
        .O(spo[10]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD33 ram_reg_0_63_11_11
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[11]),
        .O(spo[11]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD34 ram_reg_0_63_12_12
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[12]),
        .O(spo[12]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD35 ram_reg_0_63_13_13
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[13]),
        .O(spo[13]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD36 ram_reg_0_63_14_14
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[14]),
        .O(spo[14]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD37 ram_reg_0_63_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .O(spo[15]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD38 ram_reg_0_63_16_16
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[16]),
        .O(spo[16]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD39 ram_reg_0_63_17_17
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[17]),
        .O(spo[17]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD40 ram_reg_0_63_18_18
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[18]),
        .O(spo[18]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD41 ram_reg_0_63_19_19
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[19]),
        .O(spo[19]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD42 ram_reg_0_63_1_1
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[1]),
        .O(spo[1]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD43 ram_reg_0_63_20_20
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[20]),
        .O(spo[20]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD44 ram_reg_0_63_21_21
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[21]),
        .O(spo[21]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD45 ram_reg_0_63_22_22
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[22]),
        .O(spo[22]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD46 ram_reg_0_63_23_23
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[23]),
        .O(spo[23]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD47 ram_reg_0_63_24_24
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[24]),
        .O(spo[24]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD48 ram_reg_0_63_25_25
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[25]),
        .O(spo[25]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD49 ram_reg_0_63_26_26
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[26]),
        .O(spo[26]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD50 ram_reg_0_63_27_27
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[27]),
        .O(spo[27]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD51 ram_reg_0_63_28_28
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[28]),
        .O(spo[28]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD52 ram_reg_0_63_29_29
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[29]),
        .O(spo[29]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD53 ram_reg_0_63_2_2
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[2]),
        .O(spo[2]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD54 ram_reg_0_63_30_30
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[30]),
        .O(spo[30]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD55 ram_reg_0_63_31_31
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[31]),
        .O(spo[31]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD56 ram_reg_0_63_3_3
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[3]),
        .O(spo[3]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD57 ram_reg_0_63_4_4
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[4]),
        .O(spo[4]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD58 ram_reg_0_63_5_5
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[5]),
        .O(spo[5]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD59 ram_reg_0_63_6_6
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[6]),
        .O(spo[6]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD60 ram_reg_0_63_7_7
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[7]),
        .O(spo[7]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD61 ram_reg_0_63_8_8
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[8]),
        .O(spo[8]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD62 ram_reg_0_63_9_9
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[9]),
        .O(spo[9]),
        .WCLK(clk),
        .WE(we));
endmodule

(* C_ADDR_WIDTH = "8" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "256" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "1" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "0" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "DisplayROM.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "8" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_11" *) 
module DisplayROM__dist_mem_gen_v8_0_11
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [7:0]a;
  input [7:0]d;
  input [7:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [7:0]spo;
  output [7:0]dpo;
  output [7:0]qspo;
  output [7:0]qdpo;

  wire [7:0]a;
  wire clk;
  wire [7:0]qspo;

  DisplayROM__dist_mem_gen_v8_0_11_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_11_synth" *) 
module DisplayROM__dist_mem_gen_v8_0_11_synth
   (qspo,
    a,
    clk);
  output [7:0]qspo;
  input [7:0]a;
  input clk;

  wire [7:0]a;
  wire clk;
  wire [7:0]qspo;

  DisplayROM__rom \gen_rom.rom_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module DisplayROM__rom
   (qspo,
    a,
    clk);
  output [7:0]qspo;
  input [7:0]a;
  input clk;

  wire [7:0]a;
  wire clk;
  wire [7:0]qspo;
  wire \qspo_int[0]_i_1_n_0 ;
  wire \qspo_int[0]_i_2_n_0 ;
  wire \qspo_int[1]_i_4_n_0 ;
  wire \qspo_int[1]_i_5_n_0 ;
  wire \qspo_int[1]_i_6_n_0 ;
  wire \qspo_int[1]_i_7_n_0 ;
  wire \qspo_int[2]_i_4_n_0 ;
  wire \qspo_int[2]_i_5_n_0 ;
  wire \qspo_int[2]_i_6_n_0 ;
  wire \qspo_int[2]_i_7_n_0 ;
  wire \qspo_int[3]_i_1_n_0 ;
  wire \qspo_int[3]_i_2_n_0 ;
  wire \qspo_int[3]_i_3_n_0 ;
  wire \qspo_int[3]_i_4_n_0 ;
  wire \qspo_int[4]_i_1_n_0 ;
  wire \qspo_int[4]_i_2_n_0 ;
  wire \qspo_int[4]_i_3_n_0 ;
  wire \qspo_int[4]_i_4_n_0 ;
  wire \qspo_int[4]_i_5_n_0 ;
  wire \qspo_int[5]_i_4_n_0 ;
  wire \qspo_int[5]_i_5_n_0 ;
  wire \qspo_int[5]_i_6_n_0 ;
  wire \qspo_int[5]_i_7_n_0 ;
  wire \qspo_int[6]_i_4_n_0 ;
  wire \qspo_int[6]_i_5_n_0 ;
  wire \qspo_int[6]_i_6_n_0 ;
  wire \qspo_int[6]_i_7_n_0 ;
  wire \qspo_int[7]_i_1_n_0 ;
  wire \qspo_int[7]_i_2_n_0 ;
  wire \qspo_int[7]_i_3_n_0 ;
  wire \qspo_int_reg[1]_i_1_n_0 ;
  wire \qspo_int_reg[1]_i_2_n_0 ;
  wire \qspo_int_reg[1]_i_3_n_0 ;
  wire \qspo_int_reg[2]_i_1_n_0 ;
  wire \qspo_int_reg[2]_i_2_n_0 ;
  wire \qspo_int_reg[2]_i_3_n_0 ;
  wire \qspo_int_reg[5]_i_1_n_0 ;
  wire \qspo_int_reg[5]_i_2_n_0 ;
  wire \qspo_int_reg[5]_i_3_n_0 ;
  wire \qspo_int_reg[6]_i_1_n_0 ;
  wire \qspo_int_reg[6]_i_2_n_0 ;
  wire \qspo_int_reg[6]_i_3_n_0 ;

  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \qspo_int[0]_i_1 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(\qspo_int[0]_i_2_n_0 ),
        .I3(a[2]),
        .I4(a[6]),
        .I5(a[7]),
        .O(\qspo_int[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \qspo_int[0]_i_2 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .O(\qspo_int[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A08080014941C04)) 
    \qspo_int[1]_i_4 
       (.I0(a[6]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\qspo_int[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0105011566806000)) 
    \qspo_int[1]_i_5 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\qspo_int[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FD01CCCD20F300)) 
    \qspo_int[1]_i_6 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\qspo_int[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h07001400040030A0)) 
    \qspo_int[1]_i_7 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\qspo_int[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h02024A8F2A080888)) 
    \qspo_int[2]_i_4 
       (.I0(a[6]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\qspo_int[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00001F40106780A0)) 
    \qspo_int[2]_i_5 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\qspo_int[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000705000000D8C0)) 
    \qspo_int[2]_i_6 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\qspo_int[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h003101450A404040)) 
    \qspo_int[2]_i_7 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\qspo_int[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[3]_i_1 
       (.I0(\qspo_int[3]_i_2_n_0 ),
        .I1(\qspo_int[4]_i_3_n_0 ),
        .I2(a[7]),
        .I3(\qspo_int[3]_i_3_n_0 ),
        .I4(a[5]),
        .I5(\qspo_int[3]_i_4_n_0 ),
        .O(\qspo_int[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h006BFEB0000AB000)) 
    \qspo_int[3]_i_2 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\qspo_int[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00EF710000800000)) 
    \qspo_int[3]_i_3 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\qspo_int[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0089F00002000020)) 
    \qspo_int[3]_i_4 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\qspo_int[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[4]_i_1 
       (.I0(\qspo_int[4]_i_2_n_0 ),
        .I1(\qspo_int[4]_i_3_n_0 ),
        .I2(a[7]),
        .I3(\qspo_int[4]_i_4_n_0 ),
        .I4(a[5]),
        .I5(\qspo_int[4]_i_5_n_0 ),
        .O(\qspo_int[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00EF611000000010)) 
    \qspo_int[4]_i_2 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\qspo_int[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000F00F4010000)) 
    \qspo_int[4]_i_3 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\qspo_int[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0809F8886F000000)) 
    \qspo_int[4]_i_4 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\qspo_int[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h04CDF46006404440)) 
    \qspo_int[4]_i_5 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\qspo_int[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0202C01520080080)) 
    \qspo_int[5]_i_4 
       (.I0(a[6]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\qspo_int[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h001D500000002220)) 
    \qspo_int[5]_i_5 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\qspo_int[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0027CD0000005040)) 
    \qspo_int[5]_i_6 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\qspo_int[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000F1E0F0110000)) 
    \qspo_int[5]_i_7 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\qspo_int[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0048933B999C8000)) 
    \qspo_int[6]_i_4 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\qspo_int[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h012F053D62802200)) 
    \qspo_int[6]_i_5 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\qspo_int[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00B98B88CD80FB00)) 
    \qspo_int[6]_i_6 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\qspo_int[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFAFAC8FA00)) 
    \qspo_int[6]_i_7 
       (.I0(a[6]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\qspo_int[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \qspo_int[7]_i_1 
       (.I0(\qspo_int[7]_i_2_n_0 ),
        .I1(a[5]),
        .I2(\qspo_int[7]_i_3_n_0 ),
        .I3(a[7]),
        .O(\qspo_int[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0840502A00000000)) 
    \qspo_int[7]_i_2 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[6]),
        .O(\qspo_int[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000F00000E00000)) 
    \qspo_int[7]_i_3 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\qspo_int[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[0]_i_1_n_0 ),
        .Q(qspo[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[1]_i_1_n_0 ),
        .Q(qspo[1]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[1]_i_1 
       (.I0(\qspo_int_reg[1]_i_2_n_0 ),
        .I1(\qspo_int_reg[1]_i_3_n_0 ),
        .O(\qspo_int_reg[1]_i_1_n_0 ),
        .S(a[7]));
  MUXF7 \qspo_int_reg[1]_i_2 
       (.I0(\qspo_int[1]_i_4_n_0 ),
        .I1(\qspo_int[1]_i_5_n_0 ),
        .O(\qspo_int_reg[1]_i_2_n_0 ),
        .S(a[5]));
  MUXF7 \qspo_int_reg[1]_i_3 
       (.I0(\qspo_int[1]_i_6_n_0 ),
        .I1(\qspo_int[1]_i_7_n_0 ),
        .O(\qspo_int_reg[1]_i_3_n_0 ),
        .S(a[5]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[2]_i_1_n_0 ),
        .Q(qspo[2]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[2]_i_1 
       (.I0(\qspo_int_reg[2]_i_2_n_0 ),
        .I1(\qspo_int_reg[2]_i_3_n_0 ),
        .O(\qspo_int_reg[2]_i_1_n_0 ),
        .S(a[7]));
  MUXF7 \qspo_int_reg[2]_i_2 
       (.I0(\qspo_int[2]_i_4_n_0 ),
        .I1(\qspo_int[2]_i_5_n_0 ),
        .O(\qspo_int_reg[2]_i_2_n_0 ),
        .S(a[5]));
  MUXF7 \qspo_int_reg[2]_i_3 
       (.I0(\qspo_int[2]_i_6_n_0 ),
        .I1(\qspo_int[2]_i_7_n_0 ),
        .O(\qspo_int_reg[2]_i_3_n_0 ),
        .S(a[5]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[3]_i_1_n_0 ),
        .Q(qspo[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[4]_i_1_n_0 ),
        .Q(qspo[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[5]_i_1_n_0 ),
        .Q(qspo[5]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[5]_i_1 
       (.I0(\qspo_int_reg[5]_i_2_n_0 ),
        .I1(\qspo_int_reg[5]_i_3_n_0 ),
        .O(\qspo_int_reg[5]_i_1_n_0 ),
        .S(a[7]));
  MUXF7 \qspo_int_reg[5]_i_2 
       (.I0(\qspo_int[5]_i_4_n_0 ),
        .I1(\qspo_int[5]_i_5_n_0 ),
        .O(\qspo_int_reg[5]_i_2_n_0 ),
        .S(a[5]));
  MUXF7 \qspo_int_reg[5]_i_3 
       (.I0(\qspo_int[5]_i_6_n_0 ),
        .I1(\qspo_int[5]_i_7_n_0 ),
        .O(\qspo_int_reg[5]_i_3_n_0 ),
        .S(a[5]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[6]_i_1_n_0 ),
        .Q(qspo[6]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[6]_i_1 
       (.I0(\qspo_int_reg[6]_i_2_n_0 ),
        .I1(\qspo_int_reg[6]_i_3_n_0 ),
        .O(\qspo_int_reg[6]_i_1_n_0 ),
        .S(a[7]));
  MUXF7 \qspo_int_reg[6]_i_2 
       (.I0(\qspo_int[6]_i_4_n_0 ),
        .I1(\qspo_int[6]_i_5_n_0 ),
        .O(\qspo_int_reg[6]_i_2_n_0 ),
        .S(a[5]));
  MUXF7 \qspo_int_reg[6]_i_3 
       (.I0(\qspo_int[6]_i_6_n_0 ),
        .I1(\qspo_int[6]_i_7_n_0 ),
        .O(\qspo_int_reg[6]_i_3_n_0 ),
        .S(a[5]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[7]_i_1_n_0 ),
        .Q(qspo[7]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
