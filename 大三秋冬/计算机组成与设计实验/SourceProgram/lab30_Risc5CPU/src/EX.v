`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: EX (Execute Stage)
// Function: Integrates ALU and Forwarding units, performs operations
//////////////////////////////////////////////////////////////////////////////////
module EX(
    // Inputs from ID/EX Register
    input [3:0] ALUCode_ex,
    input ALUSrcA_ex,
    input [1:0] ALUSrcB_ex,
    input [31:0] Imm_ex,
    input [4:0]  rs1Addr_ex,
    input [4:0]  rs2Addr_ex,
    input [31:0] rs1Data_ex,
    input [31:0] rs2Data_ex,
	input [31:0] PC_ex,
    // Inputs from WB Stage (Forwarding)
    input [31:0] RegWriteData_wb,
    input [4:0] rdAddr_wb,
    input RegWrite_wb,
    // Inputs from MEM Stage (Forwarding)
    input [31:0] ALUResult_mem,
	input [4:0] rdAddr_mem,
    input RegWrite_mem,
    // Outputs to EX/MEM Register
    output [31:0] ALUResult_ex,
    output [31:0] MemWriteData_ex,
    // Outputs for Debugging
    output [31:0] ALU_A,
    output [31:0] ALU_B
);

//******************************************************************************
//  Internal Wires
//******************************************************************************
	wire [1:0] ForwardA_w;
	wire [1:0] ForwardB_w;
	wire [31:0] ForwardA_mux_out;
	wire [31:0] ForwardB_mux_out;
	
//******************************************************************************
//  Module Instantiation
//******************************************************************************

// Forwarding module: Detects EX and MEM hazards
	Forwarding u_Forwarding (
		.RegWrite_mem(RegWrite_mem),
		.rdAddr_mem(rdAddr_mem),
		.RegWrite_wb(RegWrite_wb),
		.rdAddr_wb(rdAddr_wb),
		.rs1Addr_ex(rs1Addr_ex),
		.rs2Addr_ex(rs2Addr_ex),
		.ForwardA(ForwardA_w),
		.ForwardB(ForwardB_w)
	);

// ALU module: Performs the calculation
	ALU u_ALU (
		.ALUResult(ALUResult_ex),
		.ALUCode(ALUCode_ex),
		.A(ALU_A),
		.B(ALU_B)
	);

//******************************************************************************
//  Operand Selection Logic
//******************************************************************************

// ALU Operand A MUX
// Selects between rs1Data, forwarded WB data, or forwarded MEM data
	assign ForwardA_mux_out = (ForwardA_w == 2'b00) ? rs1Data_ex :
	                          (ForwardA_w == 2'b01) ? RegWriteData_wb :
	                          (ForwardA_w == 2'b10) ? ALUResult_mem :
	                          rs1Data_ex;

// Selects final ALU_A input between PC or forwarded rs1Data
	assign ALU_A = ALUSrcA_ex ? PC_ex : ForwardA_mux_out;

// ALU Operand B MUX
// Selects between rs2Data, forwarded WB data, or forwarded MEM data
	assign ForwardB_mux_out = (ForwardB_w == 2'b00) ? rs2Data_ex :
	                          (ForwardB_w == 2'b01) ? RegWriteData_wb :
	                          (ForwardB_w == 2'b10) ? ALUResult_mem :
	                          rs2Data_ex;

// Selects final ALU_B input between forwarded rs2Data, immediate, or constant 4
	assign ALU_B = (ALUSrcB_ex == 2'b00) ? ForwardB_mux_out :
	               (ALUSrcB_ex == 2'b01) ? Imm_ex :
	               (ALUSrcB_ex == 2'b10) ? 32'd4 :
	               Imm_ex;

// Data to be written to memory (for SW instruction)
// This is the forwarded rs2 data
	assign MemWriteData_ex = ForwardB_mux_out;

endmodule
