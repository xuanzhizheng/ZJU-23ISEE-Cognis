`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: EX_tb
// Function: Testbench for EX module
//////////////////////////////////////////////////////////////////////////////////
module EX_tb;

    // Inputs
    reg [3:0] ALUCode_ex;
    reg ALUSrcA_ex;
    reg [1:0] ALUSrcB_ex;
    reg [31:0] Imm_ex;
    reg [4:0] rs1Addr_ex;
    reg [4:0] rs2Addr_ex;
    reg [31:0] rs1Data_ex;
    reg [31:0] rs2Data_ex;
    reg [31:0] PC_ex;
    reg [31:0] RegWriteData_wb;
    reg [4:0] rdAddr_wb;
    reg RegWrite_wb;
    reg [31:0] ALUResult_mem;
    reg [4:0] rdAddr_mem;
    reg RegWrite_mem;

    // Outputs
    wire [31:0] ALUResult_ex;
    wire [31:0] MemWriteData_ex;
    wire [31:0] ALU_A;
    wire [31:0] ALU_B;

    // Instantiate the Unit Under Test (UUT)
    EX uut (
        .ALUCode_ex(ALUCode_ex),
        .ALUSrcA_ex(ALUSrcA_ex),
        .ALUSrcB_ex(ALUSrcB_ex),
        .Imm_ex(Imm_ex),
        .rs1Addr_ex(rs1Addr_ex),
        .rs2Addr_ex(rs2Addr_ex),
        .rs1Data_ex(rs1Data_ex),
        .rs2Data_ex(rs2Data_ex),
        .PC_ex(PC_ex),
        .RegWriteData_wb(RegWriteData_wb),
        .rdAddr_wb(rdAddr_wb),
        .RegWrite_wb(RegWrite_wb),
        .ALUResult_mem(ALUResult_mem),
        .rdAddr_mem(rdAddr_mem),
        .RegWrite_mem(RegWrite_mem),
        .ALUResult_ex(ALUResult_ex),
        .MemWriteData_ex(MemWriteData_ex),
        .ALU_A(ALU_A),
        .ALU_B(ALU_B)
    );

    // ALU operation codes
    parameter alu_add  = 4'b0000;
    parameter alu_sub  = 4'b0001;
    parameter alu_and  = 4'b0011;
    parameter alu_or   = 4'b0101;
    parameter alu_xor  = 4'b0100;
    parameter alu_sll  = 4'b0110;
    parameter alu_srl  = 4'b0111;

    initial begin
        // Initialize inputs
        ALUCode_ex = 0;
        ALUSrcA_ex = 0;
        ALUSrcB_ex = 0;
        Imm_ex = 0;
        rs1Addr_ex = 0;
        rs2Addr_ex = 0;
        rs1Data_ex = 0;
        rs2Data_ex = 0;
        PC_ex = 0;
        RegWriteData_wb = 0;
        rdAddr_wb = 0;
        RegWrite_wb = 0;
        ALUResult_mem = 0;
        rdAddr_mem = 0;
        RegWrite_mem = 0;

        // Test 1: Simple ADD without forwarding (10 + 20)
        // Expected: ALU_A = 10, ALU_B = 20, ALUResult = 30
        #20 ALUCode_ex = alu_add; ALUSrcA_ex = 0; ALUSrcB_ex = 2'b00; 
            rs1Data_ex = 32'd10; rs2Data_ex = 32'd20; rs1Addr_ex = 5; rs2Addr_ex = 6;

        // Test 2: ADD with immediate (10 + 15)
        // Expected: ALU_A = 10, ALU_B = 15, ALUResult = 25
        #20 ALUCode_ex = alu_add; ALUSrcA_ex = 0; ALUSrcB_ex = 2'b01; 
            rs1Data_ex = 32'd10; Imm_ex = 32'd15;

        // Test 3: PC + 4 (100 + 4)
        // Expected: ALU_A = 100, ALU_B = 4, ALUResult = 104
        #20 ALUCode_ex = alu_add; ALUSrcA_ex = 1; ALUSrcB_ex = 2'b10; PC_ex = 32'd100;

        // Test 4: Forward from MEM to rs1
        // MEM stage writes 100 to x5, EX reads x5
        // Expected: ALU_A = 100 (forwarded from MEM), ALU_B = 20, ALUResult = 120
        #20 ALUCode_ex = alu_add; ALUSrcA_ex = 0; ALUSrcB_ex = 2'b00;
            rs1Addr_ex = 5; rs2Addr_ex = 6; rs1Data_ex = 32'd10; rs2Data_ex = 32'd20;
            RegWrite_mem = 1; rdAddr_mem = 5; ALUResult_mem = 32'd100;

        // Test 5: Forward from WB to rs2
        // WB stage writes 200 to x6, EX reads x6
        // Expected: ALU_A = 10, ALU_B = 200 (forwarded from WB), ALUResult = 210
        #20 RegWrite_mem = 0; RegWrite_wb = 1; rdAddr_wb = 6; RegWriteData_wb = 32'd200;
            rs1Data_ex = 32'd10; rs2Data_ex = 32'd20;

        // Test 6: MEM forward has priority over WB
        // Both MEM and WB write to x5, MEM should have priority
        // Expected: ALU_A = 300 (from MEM, not WB's 400), ALU_B = 20, ALUResult = 320
        #20 RegWrite_mem = 1; rdAddr_mem = 5; ALUResult_mem = 32'd300;
            RegWrite_wb = 1; rdAddr_wb = 5; RegWriteData_wb = 32'd400;
            rs1Addr_ex = 5; rs1Data_ex = 32'd10; rs2Data_ex = 32'd20;

        // Test 7: MemWriteData forwarding (for SW instruction)
        // MEM writes 500 to x6, which should be forwarded to MemWriteData
        // Expected: MemWriteData = 500 (forwarded from MEM)
        #20 RegWrite_mem = 1; rdAddr_mem = 6; ALUResult_mem = 32'd500;
            rs2Addr_ex = 6; rs2Data_ex = 32'd999;

        // Test 8: SUB operation (50 - 20)
        // Expected: ALU_A = 50, ALU_B = 20, ALUResult = 30
        #20 ALUCode_ex = alu_sub; ALUSrcA_ex = 0; ALUSrcB_ex = 2'b00;
            RegWrite_mem = 0; RegWrite_wb = 0; rs1Data_ex = 32'd50; rs2Data_ex = 32'd20;

        // Test 9: AND operation (0xFF & 0x0F)
        // Expected: ALUResult = 0x0000000f
        #20 ALUCode_ex = alu_and; rs1Data_ex = 32'h000000FF; rs2Data_ex = 32'h0000000F;

        // Test 10: OR operation (0xF0 | 0x0F)
        // Expected: ALUResult = 0x000000ff
        #20 ALUCode_ex = alu_or; rs1Data_ex = 32'h000000F0; rs2Data_ex = 32'h0000000F;

        // Test 11: XOR operation (0xFF ^ 0x0F)
        // Expected: ALUResult = 0x000000f0
        #20 ALUCode_ex = alu_xor; rs1Data_ex = 32'h000000FF; rs2Data_ex = 32'h0000000F;

        #20 $stop;
    end

endmodule
