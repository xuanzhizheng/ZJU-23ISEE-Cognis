`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: ALU
// Function: Arithmetic Logic Unit for RISC-V CPU
//////////////////////////////////////////////////////////////////////////////////
module ALU (
	// Outputs
	   ALUResult,
	// Inputs
	   ALUCode, A, B
);
	input [3:0]	ALUCode;
	input [31:0]	A, B;
	output reg [31:0] ALUResult;
	
//******************************************************************************
//  Parameters for ALU operations
//******************************************************************************
    parameter alu_add  = 4'b0000;
    parameter alu_sub  = 4'b0001;
    parameter alu_lui  = 4'b0010;
    parameter alu_and  = 4'b0011;
    parameter alu_xor  = 4'b0100;
    parameter alu_or   = 4'b0101;
    parameter alu_sll  = 4'b0110;
    parameter alu_srl  = 4'b0111;
    parameter alu_sra  = 4'b1000;
    parameter alu_slt  = 4'b1001;
    parameter alu_sltu = 4'b1010;

//******************************************************************************
//  Internal Wires for MUX Inputs (d0-d10)
//******************************************************************************
    wire [31:0] d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10;
    
//******************************************************************************
//  Core Adder and Input Logic
//******************************************************************************
    wire Binvert;
    wire [31:0] B_inv;
    wire [31:0] sum;
    wire co_unused;

    // Add/Sub control: Binvert=1 for sub, slt, sltu
    assign Binvert = (ALUCode == alu_sub) || (ALUCode == alu_slt) || (ALUCode == alu_sltu);
    
    // B input XOR gate
    assign B_inv = B ^ {32{Binvert}}; 

    // 32-bit Adder instantiation
    adder_32bits u_adder (
        .a(A),
        .b(B_inv),
        .ci(Binvert),
        .s(sum),
        .co(co_unused)
    );

//******************************************************************************
//  Generating MUX Inputs (d0-d10)
//******************************************************************************

    // d0/d1: from adder output
    assign d0 = sum;
    assign d1 = sum;

    // d2: from B (for LUI)
    assign d2 = B;

    // d3-d5: Logic operations
    assign d3 = A & B;
    assign d4 = A ^ B;
    assign d5 = A | B;

    // d6-d8: Shift operations
    assign d6 = A << B[4:0];
    assign d7 = A >> B[4:0];

    reg signed [31:0] A_signed;
    always @(*) A_signed = A;
    assign d8 = A_signed >>> B[4:0];

    // d9-d10: Comparators
    wire slt_bit  = (A[31] & ~B[31]) | ((A[31] ~^ B[31]) & sum[31]);
    wire sltu_bit = (~A[31] & B[31]) | ((A[31] ~^ B[31]) & sum[31]);
    
    assign d9  = {31'd0, slt_bit};
    assign d10 = {31'd0, sltu_bit};

//******************************************************************************
//  Final MUX
//******************************************************************************
    always @(*) case (ALUCode)
        alu_add:  ALUResult = d0;
        alu_sub:  ALUResult = d1;
        alu_lui:  ALUResult = d2;
        alu_and:  ALUResult = d3;
        alu_xor:  ALUResult = d4;
        alu_or:   ALUResult = d5;
        alu_sll:  ALUResult = d6;
        alu_srl:  ALUResult = d7;
        alu_sra:  ALUResult = d8;
        alu_slt:  ALUResult = d9;
        alu_sltu: ALUResult = d10;
        default:  ALUResult = 32'hxxxxxxxx;
    endcase

endmodule