// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Thu Nov 13 18:50:25 2025
// Host        : LAPTOP-V15JOVGD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/zzx/Desktop/SourceProgram/lab8/vivado/Lab08.sim/sim_1/impl/timing/modelsim/pipeline_adder_tb_time_impl.v
// Design      : pipeline_adder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "adcc6933" *) 
(* NotValidForBitStream *)
module pipeline_adder
   (clk,
    a,
    b,
    ci,
    s,
    co);
  input clk;
  input [31:0]a;
  input [31:0]b;
  input ci;
  output [31:0]s;
  output co;

  wire [31:0]a;
  wire [31:0]a_IBUF;
  wire \a_reg1_reg_n_0_[0] ;
  wire \a_reg1_reg_n_0_[10] ;
  wire \a_reg1_reg_n_0_[11] ;
  wire \a_reg1_reg_n_0_[12] ;
  wire \a_reg1_reg_n_0_[13] ;
  wire \a_reg1_reg_n_0_[14] ;
  wire \a_reg1_reg_n_0_[15] ;
  wire \a_reg1_reg_n_0_[16] ;
  wire \a_reg1_reg_n_0_[17] ;
  wire \a_reg1_reg_n_0_[18] ;
  wire \a_reg1_reg_n_0_[19] ;
  wire \a_reg1_reg_n_0_[1] ;
  wire \a_reg1_reg_n_0_[20] ;
  wire \a_reg1_reg_n_0_[21] ;
  wire \a_reg1_reg_n_0_[22] ;
  wire \a_reg1_reg_n_0_[23] ;
  wire \a_reg1_reg_n_0_[24] ;
  wire \a_reg1_reg_n_0_[25] ;
  wire \a_reg1_reg_n_0_[26] ;
  wire \a_reg1_reg_n_0_[27] ;
  wire \a_reg1_reg_n_0_[28] ;
  wire \a_reg1_reg_n_0_[29] ;
  wire \a_reg1_reg_n_0_[2] ;
  wire \a_reg1_reg_n_0_[30] ;
  wire \a_reg1_reg_n_0_[31] ;
  wire \a_reg1_reg_n_0_[3] ;
  wire \a_reg1_reg_n_0_[4] ;
  wire \a_reg1_reg_n_0_[5] ;
  wire \a_reg1_reg_n_0_[6] ;
  wire \a_reg1_reg_n_0_[7] ;
  wire \a_reg1_reg_n_0_[8] ;
  wire \a_reg1_reg_n_0_[9] ;
  wire \a_reg2_reg_n_0_[0] ;
  wire \a_reg2_reg_n_0_[10] ;
  wire \a_reg2_reg_n_0_[11] ;
  wire \a_reg2_reg_n_0_[12] ;
  wire \a_reg2_reg_n_0_[13] ;
  wire \a_reg2_reg_n_0_[14] ;
  wire \a_reg2_reg_n_0_[15] ;
  wire \a_reg2_reg_n_0_[1] ;
  wire \a_reg2_reg_n_0_[2] ;
  wire \a_reg2_reg_n_0_[3] ;
  wire \a_reg2_reg_n_0_[4] ;
  wire \a_reg2_reg_n_0_[5] ;
  wire \a_reg2_reg_n_0_[6] ;
  wire \a_reg2_reg_n_0_[7] ;
  wire \a_reg2_reg_n_0_[8] ;
  wire \a_reg2_reg_n_0_[9] ;
  wire \a_reg3_reg[10]_srl2_n_0 ;
  wire \a_reg3_reg[11]_srl2_n_0 ;
  wire \a_reg3_reg[12]_srl2_n_0 ;
  wire \a_reg3_reg[13]_srl2_n_0 ;
  wire \a_reg3_reg[14]_srl2_n_0 ;
  wire \a_reg3_reg[15]_srl2_n_0 ;
  wire \a_reg3_reg[8]_srl2_n_0 ;
  wire \a_reg3_reg[9]_srl2_n_0 ;
  wire \a_reg3_reg_n_0_[0] ;
  wire \a_reg3_reg_n_0_[1] ;
  wire \a_reg3_reg_n_0_[2] ;
  wire \a_reg3_reg_n_0_[3] ;
  wire \a_reg3_reg_n_0_[4] ;
  wire \a_reg3_reg_n_0_[5] ;
  wire \a_reg3_reg_n_0_[6] ;
  wire \a_reg3_reg_n_0_[7] ;
  wire [7:0]a_reg4;
  wire [31:0]b;
  wire [31:0]b_IBUF;
  wire \b_reg1_reg_n_0_[0] ;
  wire \b_reg1_reg_n_0_[1] ;
  wire \b_reg1_reg_n_0_[24] ;
  wire \b_reg1_reg_n_0_[25] ;
  wire \b_reg1_reg_n_0_[26] ;
  wire \b_reg1_reg_n_0_[27] ;
  wire \b_reg1_reg_n_0_[28] ;
  wire \b_reg1_reg_n_0_[29] ;
  wire \b_reg1_reg_n_0_[2] ;
  wire \b_reg1_reg_n_0_[30] ;
  wire \b_reg1_reg_n_0_[31] ;
  wire \b_reg1_reg_n_0_[3] ;
  wire \b_reg1_reg_n_0_[4] ;
  wire \b_reg1_reg_n_0_[5] ;
  wire \b_reg1_reg_n_0_[6] ;
  wire \b_reg1_reg_n_0_[7] ;
  wire \b_reg2_reg_n_0_[0] ;
  wire \b_reg2_reg_n_0_[10] ;
  wire \b_reg2_reg_n_0_[11] ;
  wire \b_reg2_reg_n_0_[12] ;
  wire \b_reg2_reg_n_0_[13] ;
  wire \b_reg2_reg_n_0_[14] ;
  wire \b_reg2_reg_n_0_[15] ;
  wire \b_reg2_reg_n_0_[1] ;
  wire \b_reg2_reg_n_0_[2] ;
  wire \b_reg2_reg_n_0_[3] ;
  wire \b_reg2_reg_n_0_[4] ;
  wire \b_reg2_reg_n_0_[5] ;
  wire \b_reg2_reg_n_0_[6] ;
  wire \b_reg2_reg_n_0_[7] ;
  wire \b_reg2_reg_n_0_[8] ;
  wire \b_reg2_reg_n_0_[9] ;
  wire \b_reg3_reg[10]_srl2_n_0 ;
  wire \b_reg3_reg[11]_srl2_n_0 ;
  wire \b_reg3_reg[12]_srl2_n_0 ;
  wire \b_reg3_reg[13]_srl2_n_0 ;
  wire \b_reg3_reg[14]_srl2_n_0 ;
  wire \b_reg3_reg[15]_srl2_n_0 ;
  wire \b_reg3_reg[8]_srl2_n_0 ;
  wire \b_reg3_reg[9]_srl2_n_0 ;
  wire \b_reg3_reg_n_0_[0] ;
  wire \b_reg3_reg_n_0_[1] ;
  wire \b_reg3_reg_n_0_[2] ;
  wire \b_reg3_reg_n_0_[3] ;
  wire \b_reg3_reg_n_0_[4] ;
  wire \b_reg3_reg_n_0_[5] ;
  wire \b_reg3_reg_n_0_[6] ;
  wire \b_reg3_reg_n_0_[7] ;
  wire [7:0]b_reg4;
  wire c1_reg2;
  wire c1_reg2_reg_i_1_n_3;
  wire c2_reg3;
  wire c2_reg3_reg_i_1_n_3;
  wire c3_reg4;
  wire c3_reg4_reg_i_1_n_3;
  wire ci;
  wire ci_IBUF;
  wire ci_reg1;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire co;
  wire co_OBUF;
  wire [15:0]p_0_in;
  wire [31:0]s;
  wire [8:0]s0;
  wire \s0_reg2[3]_i_2_n_0 ;
  wire \s0_reg2[3]_i_3_n_0 ;
  wire \s0_reg2[3]_i_4_n_0 ;
  wire \s0_reg2[3]_i_5_n_0 ;
  wire \s0_reg2[7]_i_2_n_0 ;
  wire \s0_reg2[7]_i_3_n_0 ;
  wire \s0_reg2[7]_i_4_n_0 ;
  wire \s0_reg2[7]_i_5_n_0 ;
  wire \s0_reg2_reg[3]_i_1_n_0 ;
  wire \s0_reg2_reg[3]_i_1_n_4 ;
  wire \s0_reg2_reg[3]_i_1_n_5 ;
  wire \s0_reg2_reg[3]_i_1_n_6 ;
  wire \s0_reg2_reg[3]_i_1_n_7 ;
  wire \s0_reg2_reg[7]_i_1_n_0 ;
  wire \s0_reg2_reg[7]_i_1_n_4 ;
  wire \s0_reg2_reg[7]_i_1_n_5 ;
  wire \s0_reg2_reg[7]_i_1_n_6 ;
  wire \s0_reg2_reg[7]_i_1_n_7 ;
  wire \s0_reg2_reg_n_0_[0] ;
  wire \s0_reg2_reg_n_0_[1] ;
  wire \s0_reg2_reg_n_0_[2] ;
  wire \s0_reg2_reg_n_0_[3] ;
  wire \s0_reg2_reg_n_0_[4] ;
  wire \s0_reg2_reg_n_0_[5] ;
  wire \s0_reg2_reg_n_0_[6] ;
  wire \s0_reg2_reg_n_0_[7] ;
  wire \s0_reg4_reg[0]_srl2_n_0 ;
  wire \s0_reg4_reg[1]_srl2_n_0 ;
  wire \s0_reg4_reg[2]_srl2_n_0 ;
  wire \s0_reg4_reg[3]_srl2_n_0 ;
  wire \s0_reg4_reg[4]_srl2_n_0 ;
  wire \s0_reg4_reg[5]_srl2_n_0 ;
  wire \s0_reg4_reg[6]_srl2_n_0 ;
  wire \s0_reg4_reg[7]_srl2_n_0 ;
  wire [7:0]s1_reg3;
  wire \s1_reg3[3]_i_2_n_0 ;
  wire \s1_reg3[3]_i_3_n_0 ;
  wire \s1_reg3[3]_i_4_n_0 ;
  wire \s1_reg3[3]_i_5_n_0 ;
  wire \s1_reg3[7]_i_2_n_0 ;
  wire \s1_reg3[7]_i_3_n_0 ;
  wire \s1_reg3[7]_i_4_n_0 ;
  wire \s1_reg3[7]_i_5_n_0 ;
  wire \s1_reg3_reg[3]_i_1_n_0 ;
  wire \s1_reg3_reg[3]_i_1_n_4 ;
  wire \s1_reg3_reg[3]_i_1_n_5 ;
  wire \s1_reg3_reg[3]_i_1_n_6 ;
  wire \s1_reg3_reg[3]_i_1_n_7 ;
  wire \s1_reg3_reg[7]_i_1_n_0 ;
  wire \s1_reg3_reg[7]_i_1_n_4 ;
  wire \s1_reg3_reg[7]_i_1_n_5 ;
  wire \s1_reg3_reg[7]_i_1_n_6 ;
  wire \s1_reg3_reg[7]_i_1_n_7 ;
  wire [7:0]s1_reg4;
  wire [7:0]s2_reg4;
  wire \s2_reg4[3]_i_2_n_0 ;
  wire \s2_reg4[3]_i_3_n_0 ;
  wire \s2_reg4[3]_i_4_n_0 ;
  wire \s2_reg4[3]_i_5_n_0 ;
  wire \s2_reg4[7]_i_2_n_0 ;
  wire \s2_reg4[7]_i_3_n_0 ;
  wire \s2_reg4[7]_i_4_n_0 ;
  wire \s2_reg4[7]_i_5_n_0 ;
  wire \s2_reg4_reg[3]_i_1_n_0 ;
  wire \s2_reg4_reg[3]_i_1_n_4 ;
  wire \s2_reg4_reg[3]_i_1_n_5 ;
  wire \s2_reg4_reg[3]_i_1_n_6 ;
  wire \s2_reg4_reg[3]_i_1_n_7 ;
  wire \s2_reg4_reg[7]_i_1_n_0 ;
  wire \s2_reg4_reg[7]_i_1_n_4 ;
  wire \s2_reg4_reg[7]_i_1_n_5 ;
  wire \s2_reg4_reg[7]_i_1_n_6 ;
  wire \s2_reg4_reg[7]_i_1_n_7 ;
  wire \s[27]_i_2_n_0 ;
  wire \s[27]_i_3_n_0 ;
  wire \s[27]_i_4_n_0 ;
  wire \s[27]_i_5_n_0 ;
  wire \s[31]_i_2_n_0 ;
  wire \s[31]_i_3_n_0 ;
  wire \s[31]_i_4_n_0 ;
  wire \s[31]_i_5_n_0 ;
  wire [31:0]s_OBUF;
  wire \s_reg[27]_i_1_n_0 ;
  wire \s_reg[31]_i_1_n_0 ;
  wire [3:1]NLW_c1_reg2_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_c1_reg2_reg_i_1_O_UNCONNECTED;
  wire [3:1]NLW_c2_reg3_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_c2_reg3_reg_i_1_O_UNCONNECTED;
  wire [3:1]NLW_c3_reg4_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_c3_reg4_reg_i_1_O_UNCONNECTED;
  wire [3:1]NLW_co_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_co_reg_i_1_O_UNCONNECTED;
  wire [2:0]\NLW_s0_reg2_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s0_reg2_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg3_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg3_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s2_reg4_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s2_reg4_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s_reg[27]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s_reg[31]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("pipeline_adder_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[10]_inst 
       (.I(a[10]),
        .O(a_IBUF[10]));
  IBUF \a_IBUF[11]_inst 
       (.I(a[11]),
        .O(a_IBUF[11]));
  IBUF \a_IBUF[12]_inst 
       (.I(a[12]),
        .O(a_IBUF[12]));
  IBUF \a_IBUF[13]_inst 
       (.I(a[13]),
        .O(a_IBUF[13]));
  IBUF \a_IBUF[14]_inst 
       (.I(a[14]),
        .O(a_IBUF[14]));
  IBUF \a_IBUF[15]_inst 
       (.I(a[15]),
        .O(a_IBUF[15]));
  IBUF \a_IBUF[16]_inst 
       (.I(a[16]),
        .O(a_IBUF[16]));
  IBUF \a_IBUF[17]_inst 
       (.I(a[17]),
        .O(a_IBUF[17]));
  IBUF \a_IBUF[18]_inst 
       (.I(a[18]),
        .O(a_IBUF[18]));
  IBUF \a_IBUF[19]_inst 
       (.I(a[19]),
        .O(a_IBUF[19]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[20]_inst 
       (.I(a[20]),
        .O(a_IBUF[20]));
  IBUF \a_IBUF[21]_inst 
       (.I(a[21]),
        .O(a_IBUF[21]));
  IBUF \a_IBUF[22]_inst 
       (.I(a[22]),
        .O(a_IBUF[22]));
  IBUF \a_IBUF[23]_inst 
       (.I(a[23]),
        .O(a_IBUF[23]));
  IBUF \a_IBUF[24]_inst 
       (.I(a[24]),
        .O(a_IBUF[24]));
  IBUF \a_IBUF[25]_inst 
       (.I(a[25]),
        .O(a_IBUF[25]));
  IBUF \a_IBUF[26]_inst 
       (.I(a[26]),
        .O(a_IBUF[26]));
  IBUF \a_IBUF[27]_inst 
       (.I(a[27]),
        .O(a_IBUF[27]));
  IBUF \a_IBUF[28]_inst 
       (.I(a[28]),
        .O(a_IBUF[28]));
  IBUF \a_IBUF[29]_inst 
       (.I(a[29]),
        .O(a_IBUF[29]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[30]_inst 
       (.I(a[30]),
        .O(a_IBUF[30]));
  IBUF \a_IBUF[31]_inst 
       (.I(a[31]),
        .O(a_IBUF[31]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \a_IBUF[8]_inst 
       (.I(a[8]),
        .O(a_IBUF[8]));
  IBUF \a_IBUF[9]_inst 
       (.I(a[9]),
        .O(a_IBUF[9]));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[0]),
        .Q(\a_reg1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[10]),
        .Q(\a_reg1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[11]),
        .Q(\a_reg1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[12]),
        .Q(\a_reg1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[13]),
        .Q(\a_reg1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[14]),
        .Q(\a_reg1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[15]),
        .Q(\a_reg1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[16]),
        .Q(\a_reg1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[17]),
        .Q(\a_reg1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[18]),
        .Q(\a_reg1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[19]),
        .Q(\a_reg1_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[1]),
        .Q(\a_reg1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[20]),
        .Q(\a_reg1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[21]),
        .Q(\a_reg1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[22]),
        .Q(\a_reg1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[23]),
        .Q(\a_reg1_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[24]),
        .Q(\a_reg1_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[25]),
        .Q(\a_reg1_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[26]),
        .Q(\a_reg1_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[27]),
        .Q(\a_reg1_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[28]),
        .Q(\a_reg1_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[29]),
        .Q(\a_reg1_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[2]),
        .Q(\a_reg1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[30]),
        .Q(\a_reg1_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[31]),
        .Q(\a_reg1_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[3]),
        .Q(\a_reg1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[4]),
        .Q(\a_reg1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[5]),
        .Q(\a_reg1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[6]),
        .Q(\a_reg1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[7]),
        .Q(\a_reg1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[8]),
        .Q(\a_reg1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(a_IBUF[9]),
        .Q(\a_reg1_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[8] ),
        .Q(\a_reg2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[18] ),
        .Q(\a_reg2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[19] ),
        .Q(\a_reg2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[20] ),
        .Q(\a_reg2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[21] ),
        .Q(\a_reg2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[22] ),
        .Q(\a_reg2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[23] ),
        .Q(\a_reg2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[9] ),
        .Q(\a_reg2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[10] ),
        .Q(\a_reg2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[11] ),
        .Q(\a_reg2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[12] ),
        .Q(\a_reg2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[13] ),
        .Q(\a_reg2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[14] ),
        .Q(\a_reg2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[15] ),
        .Q(\a_reg2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[16] ),
        .Q(\a_reg2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg1_reg_n_0_[17] ),
        .Q(\a_reg2_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg3_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg2_reg_n_0_[8] ),
        .Q(\a_reg3_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "\a_reg3_reg " *) 
  (* srl_name = "\a_reg3_reg[10]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \a_reg3_reg[10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\a_reg1_reg_n_0_[26] ),
        .Q(\a_reg3_reg[10]_srl2_n_0 ));
  (* srl_bus_name = "\a_reg3_reg " *) 
  (* srl_name = "\a_reg3_reg[11]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \a_reg3_reg[11]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\a_reg1_reg_n_0_[27] ),
        .Q(\a_reg3_reg[11]_srl2_n_0 ));
  (* srl_bus_name = "\a_reg3_reg " *) 
  (* srl_name = "\a_reg3_reg[12]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \a_reg3_reg[12]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\a_reg1_reg_n_0_[28] ),
        .Q(\a_reg3_reg[12]_srl2_n_0 ));
  (* srl_bus_name = "\a_reg3_reg " *) 
  (* srl_name = "\a_reg3_reg[13]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \a_reg3_reg[13]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\a_reg1_reg_n_0_[29] ),
        .Q(\a_reg3_reg[13]_srl2_n_0 ));
  (* srl_bus_name = "\a_reg3_reg " *) 
  (* srl_name = "\a_reg3_reg[14]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \a_reg3_reg[14]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\a_reg1_reg_n_0_[30] ),
        .Q(\a_reg3_reg[14]_srl2_n_0 ));
  (* srl_bus_name = "\a_reg3_reg " *) 
  (* srl_name = "\a_reg3_reg[15]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \a_reg3_reg[15]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\a_reg1_reg_n_0_[31] ),
        .Q(\a_reg3_reg[15]_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg3_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg2_reg_n_0_[9] ),
        .Q(\a_reg3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg3_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg2_reg_n_0_[10] ),
        .Q(\a_reg3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg3_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg2_reg_n_0_[11] ),
        .Q(\a_reg3_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg3_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg2_reg_n_0_[12] ),
        .Q(\a_reg3_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg3_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg2_reg_n_0_[13] ),
        .Q(\a_reg3_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg3_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg2_reg_n_0_[14] ),
        .Q(\a_reg3_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg3_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg2_reg_n_0_[15] ),
        .Q(\a_reg3_reg_n_0_[7] ),
        .R(1'b0));
  (* srl_bus_name = "\a_reg3_reg " *) 
  (* srl_name = "\a_reg3_reg[8]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \a_reg3_reg[8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\a_reg1_reg_n_0_[24] ),
        .Q(\a_reg3_reg[8]_srl2_n_0 ));
  (* srl_bus_name = "\a_reg3_reg " *) 
  (* srl_name = "\a_reg3_reg[9]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \a_reg3_reg[9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\a_reg1_reg_n_0_[25] ),
        .Q(\a_reg3_reg[9]_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg4_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg3_reg[8]_srl2_n_0 ),
        .Q(a_reg4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg4_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg3_reg[9]_srl2_n_0 ),
        .Q(a_reg4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg4_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg3_reg[10]_srl2_n_0 ),
        .Q(a_reg4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg4_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg3_reg[11]_srl2_n_0 ),
        .Q(a_reg4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg4_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg3_reg[12]_srl2_n_0 ),
        .Q(a_reg4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg4_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg3_reg[13]_srl2_n_0 ),
        .Q(a_reg4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg4_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg3_reg[14]_srl2_n_0 ),
        .Q(a_reg4[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg4_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a_reg3_reg[15]_srl2_n_0 ),
        .Q(a_reg4[7]),
        .R(1'b0));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[10]_inst 
       (.I(b[10]),
        .O(b_IBUF[10]));
  IBUF \b_IBUF[11]_inst 
       (.I(b[11]),
        .O(b_IBUF[11]));
  IBUF \b_IBUF[12]_inst 
       (.I(b[12]),
        .O(b_IBUF[12]));
  IBUF \b_IBUF[13]_inst 
       (.I(b[13]),
        .O(b_IBUF[13]));
  IBUF \b_IBUF[14]_inst 
       (.I(b[14]),
        .O(b_IBUF[14]));
  IBUF \b_IBUF[15]_inst 
       (.I(b[15]),
        .O(b_IBUF[15]));
  IBUF \b_IBUF[16]_inst 
       (.I(b[16]),
        .O(b_IBUF[16]));
  IBUF \b_IBUF[17]_inst 
       (.I(b[17]),
        .O(b_IBUF[17]));
  IBUF \b_IBUF[18]_inst 
       (.I(b[18]),
        .O(b_IBUF[18]));
  IBUF \b_IBUF[19]_inst 
       (.I(b[19]),
        .O(b_IBUF[19]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[20]_inst 
       (.I(b[20]),
        .O(b_IBUF[20]));
  IBUF \b_IBUF[21]_inst 
       (.I(b[21]),
        .O(b_IBUF[21]));
  IBUF \b_IBUF[22]_inst 
       (.I(b[22]),
        .O(b_IBUF[22]));
  IBUF \b_IBUF[23]_inst 
       (.I(b[23]),
        .O(b_IBUF[23]));
  IBUF \b_IBUF[24]_inst 
       (.I(b[24]),
        .O(b_IBUF[24]));
  IBUF \b_IBUF[25]_inst 
       (.I(b[25]),
        .O(b_IBUF[25]));
  IBUF \b_IBUF[26]_inst 
       (.I(b[26]),
        .O(b_IBUF[26]));
  IBUF \b_IBUF[27]_inst 
       (.I(b[27]),
        .O(b_IBUF[27]));
  IBUF \b_IBUF[28]_inst 
       (.I(b[28]),
        .O(b_IBUF[28]));
  IBUF \b_IBUF[29]_inst 
       (.I(b[29]),
        .O(b_IBUF[29]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[30]_inst 
       (.I(b[30]),
        .O(b_IBUF[30]));
  IBUF \b_IBUF[31]_inst 
       (.I(b[31]),
        .O(b_IBUF[31]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  IBUF \b_IBUF[8]_inst 
       (.I(b[8]),
        .O(b_IBUF[8]));
  IBUF \b_IBUF[9]_inst 
       (.I(b[9]),
        .O(b_IBUF[9]));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[0]),
        .Q(\b_reg1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[10]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[11]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[12]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[13]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[14]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[15]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[16]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[17]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[18]),
        .Q(p_0_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[19]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[1]),
        .Q(\b_reg1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[20]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[21]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[22]),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[23]),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[24]),
        .Q(\b_reg1_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[25]),
        .Q(\b_reg1_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[26]),
        .Q(\b_reg1_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[27]),
        .Q(\b_reg1_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[28]),
        .Q(\b_reg1_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[29]),
        .Q(\b_reg1_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[2]),
        .Q(\b_reg1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[30]),
        .Q(\b_reg1_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[31]),
        .Q(\b_reg1_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[3]),
        .Q(\b_reg1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[4]),
        .Q(\b_reg1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[5]),
        .Q(\b_reg1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[6]),
        .Q(\b_reg1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[7]),
        .Q(\b_reg1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[8]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(b_IBUF[9]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\b_reg2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(\b_reg2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(\b_reg2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(\b_reg2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(\b_reg2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(\b_reg2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(\b_reg2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\b_reg2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\b_reg2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\b_reg2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\b_reg2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\b_reg2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\b_reg2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\b_reg2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(\b_reg2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(\b_reg2_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg3_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg2_reg_n_0_[8] ),
        .Q(\b_reg3_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "\b_reg3_reg " *) 
  (* srl_name = "\b_reg3_reg[10]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \b_reg3_reg[10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\b_reg1_reg_n_0_[26] ),
        .Q(\b_reg3_reg[10]_srl2_n_0 ));
  (* srl_bus_name = "\b_reg3_reg " *) 
  (* srl_name = "\b_reg3_reg[11]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \b_reg3_reg[11]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\b_reg1_reg_n_0_[27] ),
        .Q(\b_reg3_reg[11]_srl2_n_0 ));
  (* srl_bus_name = "\b_reg3_reg " *) 
  (* srl_name = "\b_reg3_reg[12]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \b_reg3_reg[12]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\b_reg1_reg_n_0_[28] ),
        .Q(\b_reg3_reg[12]_srl2_n_0 ));
  (* srl_bus_name = "\b_reg3_reg " *) 
  (* srl_name = "\b_reg3_reg[13]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \b_reg3_reg[13]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\b_reg1_reg_n_0_[29] ),
        .Q(\b_reg3_reg[13]_srl2_n_0 ));
  (* srl_bus_name = "\b_reg3_reg " *) 
  (* srl_name = "\b_reg3_reg[14]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \b_reg3_reg[14]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\b_reg1_reg_n_0_[30] ),
        .Q(\b_reg3_reg[14]_srl2_n_0 ));
  (* srl_bus_name = "\b_reg3_reg " *) 
  (* srl_name = "\b_reg3_reg[15]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \b_reg3_reg[15]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\b_reg1_reg_n_0_[31] ),
        .Q(\b_reg3_reg[15]_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg3_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg2_reg_n_0_[9] ),
        .Q(\b_reg3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg3_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg2_reg_n_0_[10] ),
        .Q(\b_reg3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg3_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg2_reg_n_0_[11] ),
        .Q(\b_reg3_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg3_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg2_reg_n_0_[12] ),
        .Q(\b_reg3_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg3_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg2_reg_n_0_[13] ),
        .Q(\b_reg3_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg3_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg2_reg_n_0_[14] ),
        .Q(\b_reg3_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg3_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg2_reg_n_0_[15] ),
        .Q(\b_reg3_reg_n_0_[7] ),
        .R(1'b0));
  (* srl_bus_name = "\b_reg3_reg " *) 
  (* srl_name = "\b_reg3_reg[8]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \b_reg3_reg[8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\b_reg1_reg_n_0_[24] ),
        .Q(\b_reg3_reg[8]_srl2_n_0 ));
  (* srl_bus_name = "\b_reg3_reg " *) 
  (* srl_name = "\b_reg3_reg[9]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \b_reg3_reg[9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\b_reg1_reg_n_0_[25] ),
        .Q(\b_reg3_reg[9]_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg4_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg3_reg[8]_srl2_n_0 ),
        .Q(b_reg4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg4_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg3_reg[9]_srl2_n_0 ),
        .Q(b_reg4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg4_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg3_reg[10]_srl2_n_0 ),
        .Q(b_reg4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg4_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg3_reg[11]_srl2_n_0 ),
        .Q(b_reg4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg4_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg3_reg[12]_srl2_n_0 ),
        .Q(b_reg4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg4_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg3_reg[13]_srl2_n_0 ),
        .Q(b_reg4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg4_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg3_reg[14]_srl2_n_0 ),
        .Q(b_reg4[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg4_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg3_reg[15]_srl2_n_0 ),
        .Q(b_reg4[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    c1_reg2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(c1_reg2_reg_i_1_n_3),
        .Q(c1_reg2),
        .R(1'b0));
  CARRY4 c1_reg2_reg_i_1
       (.CI(\s0_reg2_reg[7]_i_1_n_0 ),
        .CO({NLW_c1_reg2_reg_i_1_CO_UNCONNECTED[3:1],c1_reg2_reg_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_c1_reg2_reg_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    c2_reg3_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(c2_reg3_reg_i_1_n_3),
        .Q(c2_reg3),
        .R(1'b0));
  CARRY4 c2_reg3_reg_i_1
       (.CI(\s1_reg3_reg[7]_i_1_n_0 ),
        .CO({NLW_c2_reg3_reg_i_1_CO_UNCONNECTED[3:1],c2_reg3_reg_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_c2_reg3_reg_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    c3_reg4_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(c3_reg4_reg_i_1_n_3),
        .Q(c3_reg4),
        .R(1'b0));
  CARRY4 c3_reg4_reg_i_1
       (.CI(\s2_reg4_reg[7]_i_1_n_0 ),
        .CO({NLW_c3_reg4_reg_i_1_CO_UNCONNECTED[3:1],c3_reg4_reg_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_c3_reg4_reg_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  IBUF ci_IBUF_inst
       (.I(ci),
        .O(ci_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    ci_reg1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ci_IBUF),
        .Q(ci_reg1),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF co_OBUF_inst
       (.I(co_OBUF),
        .O(co));
  FDRE #(
    .INIT(1'b0)) 
    co_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s0[8]),
        .Q(co_OBUF),
        .R(1'b0));
  CARRY4 co_reg_i_1
       (.CI(\s_reg[31]_i_1_n_0 ),
        .CO({NLW_co_reg_i_1_CO_UNCONNECTED[3:1],s0[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_co_reg_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h6)) 
    \s0_reg2[3]_i_2 
       (.I0(\a_reg1_reg_n_0_[3] ),
        .I1(\b_reg1_reg_n_0_[3] ),
        .O(\s0_reg2[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s0_reg2[3]_i_3 
       (.I0(\a_reg1_reg_n_0_[2] ),
        .I1(\b_reg1_reg_n_0_[2] ),
        .O(\s0_reg2[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s0_reg2[3]_i_4 
       (.I0(\a_reg1_reg_n_0_[1] ),
        .I1(\b_reg1_reg_n_0_[1] ),
        .O(\s0_reg2[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s0_reg2[3]_i_5 
       (.I0(\a_reg1_reg_n_0_[0] ),
        .I1(ci_reg1),
        .O(\s0_reg2[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s0_reg2[7]_i_2 
       (.I0(\a_reg1_reg_n_0_[7] ),
        .I1(\b_reg1_reg_n_0_[7] ),
        .O(\s0_reg2[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s0_reg2[7]_i_3 
       (.I0(\a_reg1_reg_n_0_[6] ),
        .I1(\b_reg1_reg_n_0_[6] ),
        .O(\s0_reg2[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s0_reg2[7]_i_4 
       (.I0(\a_reg1_reg_n_0_[5] ),
        .I1(\b_reg1_reg_n_0_[5] ),
        .O(\s0_reg2[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s0_reg2[7]_i_5 
       (.I0(\a_reg1_reg_n_0_[4] ),
        .I1(\b_reg1_reg_n_0_[4] ),
        .O(\s0_reg2[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s0_reg2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg2_reg[3]_i_1_n_7 ),
        .Q(\s0_reg2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s0_reg2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg2_reg[3]_i_1_n_6 ),
        .Q(\s0_reg2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s0_reg2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg2_reg[3]_i_1_n_5 ),
        .Q(\s0_reg2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s0_reg2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg2_reg[3]_i_1_n_4 ),
        .Q(\s0_reg2_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 \s0_reg2_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\s0_reg2_reg[3]_i_1_n_0 ,\NLW_s0_reg2_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\b_reg1_reg_n_0_[0] ),
        .DI({\a_reg1_reg_n_0_[3] ,\a_reg1_reg_n_0_[2] ,\a_reg1_reg_n_0_[1] ,\a_reg1_reg_n_0_[0] }),
        .O({\s0_reg2_reg[3]_i_1_n_4 ,\s0_reg2_reg[3]_i_1_n_5 ,\s0_reg2_reg[3]_i_1_n_6 ,\s0_reg2_reg[3]_i_1_n_7 }),
        .S({\s0_reg2[3]_i_2_n_0 ,\s0_reg2[3]_i_3_n_0 ,\s0_reg2[3]_i_4_n_0 ,\s0_reg2[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s0_reg2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg2_reg[7]_i_1_n_7 ),
        .Q(\s0_reg2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s0_reg2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg2_reg[7]_i_1_n_6 ),
        .Q(\s0_reg2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s0_reg2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg2_reg[7]_i_1_n_5 ),
        .Q(\s0_reg2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s0_reg2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg2_reg[7]_i_1_n_4 ),
        .Q(\s0_reg2_reg_n_0_[7] ),
        .R(1'b0));
  CARRY4 \s0_reg2_reg[7]_i_1 
       (.CI(\s0_reg2_reg[3]_i_1_n_0 ),
        .CO({\s0_reg2_reg[7]_i_1_n_0 ,\NLW_s0_reg2_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg1_reg_n_0_[7] ,\a_reg1_reg_n_0_[6] ,\a_reg1_reg_n_0_[5] ,\a_reg1_reg_n_0_[4] }),
        .O({\s0_reg2_reg[7]_i_1_n_4 ,\s0_reg2_reg[7]_i_1_n_5 ,\s0_reg2_reg[7]_i_1_n_6 ,\s0_reg2_reg[7]_i_1_n_7 }),
        .S({\s0_reg2[7]_i_2_n_0 ,\s0_reg2[7]_i_3_n_0 ,\s0_reg2[7]_i_4_n_0 ,\s0_reg2[7]_i_5_n_0 }));
  (* srl_bus_name = "\s0_reg4_reg " *) 
  (* srl_name = "\s0_reg4_reg[0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s0_reg4_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\s0_reg2_reg_n_0_[0] ),
        .Q(\s0_reg4_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "\s0_reg4_reg " *) 
  (* srl_name = "\s0_reg4_reg[1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s0_reg4_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\s0_reg2_reg_n_0_[1] ),
        .Q(\s0_reg4_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "\s0_reg4_reg " *) 
  (* srl_name = "\s0_reg4_reg[2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s0_reg4_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\s0_reg2_reg_n_0_[2] ),
        .Q(\s0_reg4_reg[2]_srl2_n_0 ));
  (* srl_bus_name = "\s0_reg4_reg " *) 
  (* srl_name = "\s0_reg4_reg[3]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s0_reg4_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\s0_reg2_reg_n_0_[3] ),
        .Q(\s0_reg4_reg[3]_srl2_n_0 ));
  (* srl_bus_name = "\s0_reg4_reg " *) 
  (* srl_name = "\s0_reg4_reg[4]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s0_reg4_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\s0_reg2_reg_n_0_[4] ),
        .Q(\s0_reg4_reg[4]_srl2_n_0 ));
  (* srl_bus_name = "\s0_reg4_reg " *) 
  (* srl_name = "\s0_reg4_reg[5]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s0_reg4_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\s0_reg2_reg_n_0_[5] ),
        .Q(\s0_reg4_reg[5]_srl2_n_0 ));
  (* srl_bus_name = "\s0_reg4_reg " *) 
  (* srl_name = "\s0_reg4_reg[6]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s0_reg4_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\s0_reg2_reg_n_0_[6] ),
        .Q(\s0_reg4_reg[6]_srl2_n_0 ));
  (* srl_bus_name = "\s0_reg4_reg " *) 
  (* srl_name = "\s0_reg4_reg[7]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s0_reg4_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\s0_reg2_reg_n_0_[7] ),
        .Q(\s0_reg4_reg[7]_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1_reg3[3]_i_2 
       (.I0(\a_reg2_reg_n_0_[3] ),
        .I1(\b_reg2_reg_n_0_[3] ),
        .O(\s1_reg3[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1_reg3[3]_i_3 
       (.I0(\a_reg2_reg_n_0_[2] ),
        .I1(\b_reg2_reg_n_0_[2] ),
        .O(\s1_reg3[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1_reg3[3]_i_4 
       (.I0(\a_reg2_reg_n_0_[1] ),
        .I1(\b_reg2_reg_n_0_[1] ),
        .O(\s1_reg3[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1_reg3[3]_i_5 
       (.I0(\a_reg2_reg_n_0_[0] ),
        .I1(c1_reg2),
        .O(\s1_reg3[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1_reg3[7]_i_2 
       (.I0(\a_reg2_reg_n_0_[7] ),
        .I1(\b_reg2_reg_n_0_[7] ),
        .O(\s1_reg3[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1_reg3[7]_i_3 
       (.I0(\a_reg2_reg_n_0_[6] ),
        .I1(\b_reg2_reg_n_0_[6] ),
        .O(\s1_reg3[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1_reg3[7]_i_4 
       (.I0(\a_reg2_reg_n_0_[5] ),
        .I1(\b_reg2_reg_n_0_[5] ),
        .O(\s1_reg3[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1_reg3[7]_i_5 
       (.I0(\a_reg2_reg_n_0_[4] ),
        .I1(\b_reg2_reg_n_0_[4] ),
        .O(\s1_reg3[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg3_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s1_reg3_reg[3]_i_1_n_7 ),
        .Q(s1_reg3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg3_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s1_reg3_reg[3]_i_1_n_6 ),
        .Q(s1_reg3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg3_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s1_reg3_reg[3]_i_1_n_5 ),
        .Q(s1_reg3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg3_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s1_reg3_reg[3]_i_1_n_4 ),
        .Q(s1_reg3[3]),
        .R(1'b0));
  CARRY4 \s1_reg3_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\s1_reg3_reg[3]_i_1_n_0 ,\NLW_s1_reg3_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\b_reg2_reg_n_0_[0] ),
        .DI({\a_reg2_reg_n_0_[3] ,\a_reg2_reg_n_0_[2] ,\a_reg2_reg_n_0_[1] ,\a_reg2_reg_n_0_[0] }),
        .O({\s1_reg3_reg[3]_i_1_n_4 ,\s1_reg3_reg[3]_i_1_n_5 ,\s1_reg3_reg[3]_i_1_n_6 ,\s1_reg3_reg[3]_i_1_n_7 }),
        .S({\s1_reg3[3]_i_2_n_0 ,\s1_reg3[3]_i_3_n_0 ,\s1_reg3[3]_i_4_n_0 ,\s1_reg3[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg3_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s1_reg3_reg[7]_i_1_n_7 ),
        .Q(s1_reg3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg3_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s1_reg3_reg[7]_i_1_n_6 ),
        .Q(s1_reg3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg3_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s1_reg3_reg[7]_i_1_n_5 ),
        .Q(s1_reg3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg3_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s1_reg3_reg[7]_i_1_n_4 ),
        .Q(s1_reg3[7]),
        .R(1'b0));
  CARRY4 \s1_reg3_reg[7]_i_1 
       (.CI(\s1_reg3_reg[3]_i_1_n_0 ),
        .CO({\s1_reg3_reg[7]_i_1_n_0 ,\NLW_s1_reg3_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg2_reg_n_0_[7] ,\a_reg2_reg_n_0_[6] ,\a_reg2_reg_n_0_[5] ,\a_reg2_reg_n_0_[4] }),
        .O({\s1_reg3_reg[7]_i_1_n_4 ,\s1_reg3_reg[7]_i_1_n_5 ,\s1_reg3_reg[7]_i_1_n_6 ,\s1_reg3_reg[7]_i_1_n_7 }),
        .S({\s1_reg3[7]_i_2_n_0 ,\s1_reg3[7]_i_3_n_0 ,\s1_reg3[7]_i_4_n_0 ,\s1_reg3[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg4_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg3[0]),
        .Q(s1_reg4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg4_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg3[1]),
        .Q(s1_reg4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg4_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg3[2]),
        .Q(s1_reg4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg4_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg3[3]),
        .Q(s1_reg4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg4_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg3[4]),
        .Q(s1_reg4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg4_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg3[5]),
        .Q(s1_reg4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg4_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg3[6]),
        .Q(s1_reg4[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s1_reg4_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg3[7]),
        .Q(s1_reg4[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \s2_reg4[3]_i_2 
       (.I0(\a_reg3_reg_n_0_[3] ),
        .I1(\b_reg3_reg_n_0_[3] ),
        .O(\s2_reg4[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2_reg4[3]_i_3 
       (.I0(\a_reg3_reg_n_0_[2] ),
        .I1(\b_reg3_reg_n_0_[2] ),
        .O(\s2_reg4[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2_reg4[3]_i_4 
       (.I0(\a_reg3_reg_n_0_[1] ),
        .I1(\b_reg3_reg_n_0_[1] ),
        .O(\s2_reg4[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2_reg4[3]_i_5 
       (.I0(\a_reg3_reg_n_0_[0] ),
        .I1(c2_reg3),
        .O(\s2_reg4[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2_reg4[7]_i_2 
       (.I0(\a_reg3_reg_n_0_[7] ),
        .I1(\b_reg3_reg_n_0_[7] ),
        .O(\s2_reg4[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2_reg4[7]_i_3 
       (.I0(\a_reg3_reg_n_0_[6] ),
        .I1(\b_reg3_reg_n_0_[6] ),
        .O(\s2_reg4[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2_reg4[7]_i_4 
       (.I0(\a_reg3_reg_n_0_[5] ),
        .I1(\b_reg3_reg_n_0_[5] ),
        .O(\s2_reg4[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2_reg4[7]_i_5 
       (.I0(\a_reg3_reg_n_0_[4] ),
        .I1(\b_reg3_reg_n_0_[4] ),
        .O(\s2_reg4[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s2_reg4_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s2_reg4_reg[3]_i_1_n_7 ),
        .Q(s2_reg4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s2_reg4_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s2_reg4_reg[3]_i_1_n_6 ),
        .Q(s2_reg4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s2_reg4_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s2_reg4_reg[3]_i_1_n_5 ),
        .Q(s2_reg4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s2_reg4_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s2_reg4_reg[3]_i_1_n_4 ),
        .Q(s2_reg4[3]),
        .R(1'b0));
  CARRY4 \s2_reg4_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\s2_reg4_reg[3]_i_1_n_0 ,\NLW_s2_reg4_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\b_reg3_reg_n_0_[0] ),
        .DI({\a_reg3_reg_n_0_[3] ,\a_reg3_reg_n_0_[2] ,\a_reg3_reg_n_0_[1] ,\a_reg3_reg_n_0_[0] }),
        .O({\s2_reg4_reg[3]_i_1_n_4 ,\s2_reg4_reg[3]_i_1_n_5 ,\s2_reg4_reg[3]_i_1_n_6 ,\s2_reg4_reg[3]_i_1_n_7 }),
        .S({\s2_reg4[3]_i_2_n_0 ,\s2_reg4[3]_i_3_n_0 ,\s2_reg4[3]_i_4_n_0 ,\s2_reg4[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s2_reg4_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s2_reg4_reg[7]_i_1_n_7 ),
        .Q(s2_reg4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s2_reg4_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s2_reg4_reg[7]_i_1_n_6 ),
        .Q(s2_reg4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s2_reg4_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s2_reg4_reg[7]_i_1_n_5 ),
        .Q(s2_reg4[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s2_reg4_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s2_reg4_reg[7]_i_1_n_4 ),
        .Q(s2_reg4[7]),
        .R(1'b0));
  CARRY4 \s2_reg4_reg[7]_i_1 
       (.CI(\s2_reg4_reg[3]_i_1_n_0 ),
        .CO({\s2_reg4_reg[7]_i_1_n_0 ,\NLW_s2_reg4_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\a_reg3_reg_n_0_[7] ,\a_reg3_reg_n_0_[6] ,\a_reg3_reg_n_0_[5] ,\a_reg3_reg_n_0_[4] }),
        .O({\s2_reg4_reg[7]_i_1_n_4 ,\s2_reg4_reg[7]_i_1_n_5 ,\s2_reg4_reg[7]_i_1_n_6 ,\s2_reg4_reg[7]_i_1_n_7 }),
        .S({\s2_reg4[7]_i_2_n_0 ,\s2_reg4[7]_i_3_n_0 ,\s2_reg4[7]_i_4_n_0 ,\s2_reg4[7]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \s[27]_i_2 
       (.I0(a_reg4[3]),
        .I1(b_reg4[3]),
        .O(\s[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s[27]_i_3 
       (.I0(a_reg4[2]),
        .I1(b_reg4[2]),
        .O(\s[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s[27]_i_4 
       (.I0(a_reg4[1]),
        .I1(b_reg4[1]),
        .O(\s[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s[27]_i_5 
       (.I0(a_reg4[0]),
        .I1(c3_reg4),
        .O(\s[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s[31]_i_2 
       (.I0(a_reg4[7]),
        .I1(b_reg4[7]),
        .O(\s[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s[31]_i_3 
       (.I0(a_reg4[6]),
        .I1(b_reg4[6]),
        .O(\s[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s[31]_i_4 
       (.I0(a_reg4[5]),
        .I1(b_reg4[5]),
        .O(\s[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s[31]_i_5 
       (.I0(a_reg4[4]),
        .I1(b_reg4[4]),
        .O(\s[31]_i_5_n_0 ));
  OBUF \s_OBUF[0]_inst 
       (.I(s_OBUF[0]),
        .O(s[0]));
  OBUF \s_OBUF[10]_inst 
       (.I(s_OBUF[10]),
        .O(s[10]));
  OBUF \s_OBUF[11]_inst 
       (.I(s_OBUF[11]),
        .O(s[11]));
  OBUF \s_OBUF[12]_inst 
       (.I(s_OBUF[12]),
        .O(s[12]));
  OBUF \s_OBUF[13]_inst 
       (.I(s_OBUF[13]),
        .O(s[13]));
  OBUF \s_OBUF[14]_inst 
       (.I(s_OBUF[14]),
        .O(s[14]));
  OBUF \s_OBUF[15]_inst 
       (.I(s_OBUF[15]),
        .O(s[15]));
  OBUF \s_OBUF[16]_inst 
       (.I(s_OBUF[16]),
        .O(s[16]));
  OBUF \s_OBUF[17]_inst 
       (.I(s_OBUF[17]),
        .O(s[17]));
  OBUF \s_OBUF[18]_inst 
       (.I(s_OBUF[18]),
        .O(s[18]));
  OBUF \s_OBUF[19]_inst 
       (.I(s_OBUF[19]),
        .O(s[19]));
  OBUF \s_OBUF[1]_inst 
       (.I(s_OBUF[1]),
        .O(s[1]));
  OBUF \s_OBUF[20]_inst 
       (.I(s_OBUF[20]),
        .O(s[20]));
  OBUF \s_OBUF[21]_inst 
       (.I(s_OBUF[21]),
        .O(s[21]));
  OBUF \s_OBUF[22]_inst 
       (.I(s_OBUF[22]),
        .O(s[22]));
  OBUF \s_OBUF[23]_inst 
       (.I(s_OBUF[23]),
        .O(s[23]));
  OBUF \s_OBUF[24]_inst 
       (.I(s_OBUF[24]),
        .O(s[24]));
  OBUF \s_OBUF[25]_inst 
       (.I(s_OBUF[25]),
        .O(s[25]));
  OBUF \s_OBUF[26]_inst 
       (.I(s_OBUF[26]),
        .O(s[26]));
  OBUF \s_OBUF[27]_inst 
       (.I(s_OBUF[27]),
        .O(s[27]));
  OBUF \s_OBUF[28]_inst 
       (.I(s_OBUF[28]),
        .O(s[28]));
  OBUF \s_OBUF[29]_inst 
       (.I(s_OBUF[29]),
        .O(s[29]));
  OBUF \s_OBUF[2]_inst 
       (.I(s_OBUF[2]),
        .O(s[2]));
  OBUF \s_OBUF[30]_inst 
       (.I(s_OBUF[30]),
        .O(s[30]));
  OBUF \s_OBUF[31]_inst 
       (.I(s_OBUF[31]),
        .O(s[31]));
  OBUF \s_OBUF[3]_inst 
       (.I(s_OBUF[3]),
        .O(s[3]));
  OBUF \s_OBUF[4]_inst 
       (.I(s_OBUF[4]),
        .O(s[4]));
  OBUF \s_OBUF[5]_inst 
       (.I(s_OBUF[5]),
        .O(s[5]));
  OBUF \s_OBUF[6]_inst 
       (.I(s_OBUF[6]),
        .O(s[6]));
  OBUF \s_OBUF[7]_inst 
       (.I(s_OBUF[7]),
        .O(s[7]));
  OBUF \s_OBUF[8]_inst 
       (.I(s_OBUF[8]),
        .O(s[8]));
  OBUF \s_OBUF[9]_inst 
       (.I(s_OBUF[9]),
        .O(s[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg4_reg[0]_srl2_n_0 ),
        .Q(s_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg4[2]),
        .Q(s_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg4[3]),
        .Q(s_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg4[4]),
        .Q(s_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg4[5]),
        .Q(s_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg4[6]),
        .Q(s_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg4[7]),
        .Q(s_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s2_reg4[0]),
        .Q(s_OBUF[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s2_reg4[1]),
        .Q(s_OBUF[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s2_reg4[2]),
        .Q(s_OBUF[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s2_reg4[3]),
        .Q(s_OBUF[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg4_reg[1]_srl2_n_0 ),
        .Q(s_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s2_reg4[4]),
        .Q(s_OBUF[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s2_reg4[5]),
        .Q(s_OBUF[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s2_reg4[6]),
        .Q(s_OBUF[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s2_reg4[7]),
        .Q(s_OBUF[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s0[0]),
        .Q(s_OBUF[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s0[1]),
        .Q(s_OBUF[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s0[2]),
        .Q(s_OBUF[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s0[3]),
        .Q(s_OBUF[27]),
        .R(1'b0));
  CARRY4 \s_reg[27]_i_1 
       (.CI(1'b0),
        .CO({\s_reg[27]_i_1_n_0 ,\NLW_s_reg[27]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(b_reg4[0]),
        .DI(a_reg4[3:0]),
        .O(s0[3:0]),
        .S({\s[27]_i_2_n_0 ,\s[27]_i_3_n_0 ,\s[27]_i_4_n_0 ,\s[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s0[4]),
        .Q(s_OBUF[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s0[5]),
        .Q(s_OBUF[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg4_reg[2]_srl2_n_0 ),
        .Q(s_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s0[6]),
        .Q(s_OBUF[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s0[7]),
        .Q(s_OBUF[31]),
        .R(1'b0));
  CARRY4 \s_reg[31]_i_1 
       (.CI(\s_reg[27]_i_1_n_0 ),
        .CO({\s_reg[31]_i_1_n_0 ,\NLW_s_reg[31]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(a_reg4[7:4]),
        .O(s0[7:4]),
        .S({\s[31]_i_2_n_0 ,\s[31]_i_3_n_0 ,\s[31]_i_4_n_0 ,\s[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg4_reg[3]_srl2_n_0 ),
        .Q(s_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg4_reg[4]_srl2_n_0 ),
        .Q(s_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg4_reg[5]_srl2_n_0 ),
        .Q(s_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg4_reg[6]_srl2_n_0 ),
        .Q(s_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s0_reg4_reg[7]_srl2_n_0 ),
        .Q(s_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg4[0]),
        .Q(s_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s1_reg4[1]),
        .Q(s_OBUF[9]),
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
