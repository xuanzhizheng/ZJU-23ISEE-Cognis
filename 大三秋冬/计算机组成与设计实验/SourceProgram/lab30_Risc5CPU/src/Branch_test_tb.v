`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: Branch_test_tb
// Function: Testbench for Branch_test module
//////////////////////////////////////////////////////////////////////////////////
module Branch_test_tb;

    // Inputs
    reg [31:0] rs1Data_id;
    reg [31:0] rs2Data_id;
    reg [31:0] Instruction_id;

    // Outputs
    wire Branch;

    // Instantiate the Unit Under Test (UUT)
    Branch_test uut (
        .rs1Data_id(rs1Data_id),
        .rs2Data_id(rs2Data_id),
        .Instruction_id(Instruction_id),
        .Branch(Branch)
    );

    // Instruction encoding parameters
    parameter SB_type_op = 7'b1100011;
    parameter beq_funct3  = 3'b000;
    parameter bne_funct3  = 3'b001;
    parameter blt_funct3  = 3'b100;
    parameter bge_funct3  = 3'b101;
    parameter bltu_funct3 = 3'b110;
    parameter bgeu_funct3 = 3'b111;
    parameter dummy_imm = 13'h0;
    parameter dummy_rs  = 10'h0;

    // Build branch instruction from funct3
    function [31:0] build_branch;
        input [2:0] funct3;
        build_branch = {dummy_imm[12], dummy_imm[10:5], dummy_rs, funct3, dummy_imm[4:1], dummy_imm[11], SB_type_op};
    endfunction

    initial begin
        // Initialize Inputs
        rs1Data_id = 0;
        rs2Data_id = 0;
        Instruction_id = 0;

        // Test 1: BEQ with rs1 == rs2
        // Expected: Branch = 1
        #50 Instruction_id = build_branch(beq_funct3); rs1Data_id = 10; rs2Data_id = 10;
        
        // Test 2: BEQ with rs1 != rs2
        // Expected: Branch = 0
        #50 rs1Data_id = 10; rs2Data_id = 11;

        // Test 3: BNE with rs1 == rs2
        // Expected: Branch = 0
        #50 Instruction_id = build_branch(bne_funct3); rs1Data_id = 10; rs2Data_id = 10;
        
        // Test 4: BNE with rs1 != rs2
        // Expected: Branch = 1
        #50 rs1Data_id = 10; rs2Data_id = 11;

        // Test 5: BLT with rs1 < rs2 (10 < 11)
        // Expected: Branch = 1
        #50 Instruction_id = build_branch(blt_funct3); rs1Data_id = 10; rs2Data_id = 11;
        
        // Test 6: BLT with rs1 > rs2 (11 > 10)
        // Expected: Branch = 0
        #50 rs1Data_id = 11; rs2Data_id = 10;
        
        // Test 7: BLT with rs1 < rs2 (-1 < 1, signed)
        // Expected: Branch = 1
        #50 rs1Data_id = -1; rs2Data_id = 1;
        
        // Test 8: BLT with rs1 > rs2 (1 > -1, signed)
        // Expected: Branch = 0
        #50 rs1Data_id = 1; rs2Data_id = -1;
        
        // Test 9: BLT with rs1 < rs2 (-5 < -1, signed)
        // Expected: Branch = 1
        #50 rs1Data_id = -5; rs2Data_id = -1;
        
        // Test 10: BLT with rs1 == rs2
        // Expected: Branch = 0
        #50 rs1Data_id = 10; rs2Data_id = 10;

        // Test 11: BGE with rs1 < rs2 (10 < 11)
        // Expected: Branch = 0
        #50 Instruction_id = build_branch(bge_funct3); rs1Data_id = 10; rs2Data_id = 11;
        
        // Test 12: BGE with rs1 > rs2 (11 > 10)
        // Expected: Branch = 1
        #50 rs1Data_id = 11; rs2Data_id = 10;
        
        // Test 13: BGE with rs1 < rs2 (-1 < 1, signed)
        // Expected: Branch = 0
        #50 rs1Data_id = -1; rs2Data_id = 1;
        
        // Test 14: BGE with rs1 > rs2 (1 > -1, signed)
        // Expected: Branch = 1
        #50 rs1Data_id = 1; rs2Data_id = -1;
        
        // Test 15: BGE with rs1 == rs2
        // Expected: Branch = 1
        #50 rs1Data_id = 10; rs2Data_id = 10;

        // Test 16: BLTU with rs1 < rs2 (10 < 11, unsigned)
        // Expected: Branch = 1
        #50 Instruction_id = build_branch(bltu_funct3); rs1Data_id = 10; rs2Data_id = 11;
        
        // Test 17: BLTU with rs1 > rs2 (11 > 10, unsigned)
        // Expected: Branch = 0
        #50 rs1Data_id = 11; rs2Data_id = 10;
        
        // Test 18: BLTU with rs1 > rs2 (0xFFFFFFFF > 1, unsigned)
        // Expected: Branch = 0
        #50 rs1Data_id = 32'hFFFFFFFF; rs2Data_id = 1;
        
        // Test 19: BLTU with rs1 < rs2 (1 < 0xFFFFFFFF, unsigned)
        // Expected: Branch = 1
        #50 rs1Data_id = 1; rs2Data_id = 32'hFFFFFFFF;
        
        // Test 20: BLTU with rs1 == rs2
        // Expected: Branch = 0
        #50 rs1Data_id = 10; rs2Data_id = 10;

        // Test 21: BGEU with rs1 < rs2 (10 < 11, unsigned)
        // Expected: Branch = 0
        #50 Instruction_id = build_branch(bgeu_funct3); rs1Data_id = 10; rs2Data_id = 11;
        
        // Test 22: BGEU with rs1 > rs2 (11 > 10, unsigned)
        // Expected: Branch = 1
        #50 rs1Data_id = 11; rs2Data_id = 10;
        
        // Test 23: BGEU with rs1 > rs2 (0xFFFFFFFF > 1, unsigned)
        // Expected: Branch = 1
        #50 rs1Data_id = 32'hFFFFFFFF; rs2Data_id = 1;
        
        // Test 24: BGEU with rs1 < rs2 (1 < 0xFFFFFFFF, unsigned)
        // Expected: Branch = 0
        #50 rs1Data_id = 1; rs2Data_id = 32'hFFFFFFFF;
        
        // Test 25: BGEU with rs1 == rs2
        // Expected: Branch = 1
        #50 rs1Data_id = 10; rs2Data_id = 10;

        // Test 26: Non-branch instruction
        // Expected: Branch = 0
        #50 Instruction_id = 32'h00A00293; rs1Data_id = 10; rs2Data_id = 10;

        #50 $stop;
    end

endmodule
