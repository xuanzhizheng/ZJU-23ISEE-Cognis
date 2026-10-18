`timescale 1ns / 1ps
module Risc5CPU_tb_v;
	// Inputs
	reg clk;
	reg reset;
	// Outputs
	wire [1:0]  JumpFlag;
	wire [31:0] Instruction_id;
	wire [31:0] ALU_A;
	wire [31:0] ALU_B;
	wire [31:0] ALUResult_ex;
	wire [31:0] PC;
	wire [31:0] MemDout_mem;
	wire Stall;
    wire [31:0] Debug_mepc;
    wire [31:0] Debug_mcause;
    wire [31:0] Debug_mtvec;
	

	// Instantiate the Unit Under Test (UUT)
	Risc5CPU uut (
		.clk(clk), 
		.reset(reset), 
		.JumpFlag(JumpFlag), 
		.Instruction_id(Instruction_id), 
		.ALU_A(ALU_A), 
		.ALU_B(ALU_B), 
		.ALUResult_ex(ALUResult_ex), 
		.PC(PC), 
		.MemDout_mem(MemDout_mem), 
		.Stall(Stall),
        .Debug_mepc(Debug_mepc),
        .Debug_mcause(Debug_mcause),
        .Debug_mtvec(Debug_mtvec)
    );
		
        glbl glbl();

	initial 
	   begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
         // Wait 100 ns for global reset to finish
	    #51 reset=0;
     	#8800 $stop;
	   end
	
	always #50 clk=~clk;
	
endmodule
