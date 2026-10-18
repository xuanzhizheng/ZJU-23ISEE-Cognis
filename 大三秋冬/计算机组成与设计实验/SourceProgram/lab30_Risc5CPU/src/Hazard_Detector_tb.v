`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: Hazard_Detector_tb
// Function: Testbench for Hazard_Detector module
//////////////////////////////////////////////////////////////////////////////////
module Hazard_Detector_tb;

    // Inputs
    reg MemRead_ex;
    reg [4:0] rdAddr_ex;
    reg [4:0] rs1Addr_id;
    reg [4:0] rs2Addr_id;

    // Outputs
    wire Stall;
    wire IFWrite;

    // Instantiate the Unit Under Test (UUT)
    Hazard_Detector uut (
        .MemRead_ex(MemRead_ex),
        .rdAddr_ex(rdAddr_ex),
        .rs1Addr_id(rs1Addr_id),
        .rs2Addr_id(rs2Addr_id),
        .Stall(Stall),
        .IFWrite(IFWrite)
    );

    initial begin
        // Initialize Inputs
        MemRead_ex = 0;
        rdAddr_ex = 0;
        rs1Addr_id = 0;
        rs2Addr_id = 0;

        // Test 1: No hazard (not a load instruction)
        // Expected: Stall = 0, IFWrite = 1
        #50 MemRead_ex = 0; rdAddr_ex = 5; rs1Addr_id = 5; rs2Addr_id = 6;

        // Test 2: No hazard (load, but no register match)
        // Expected: Stall = 0, IFWrite = 1
        #50 MemRead_ex = 1; rdAddr_ex = 5; rs1Addr_id = 6; rs2Addr_id = 7;

        // Test 3: Hazard detected (load matches rs1)
        // Expected: Stall = 1, IFWrite = 0
        #50 MemRead_ex = 1; rdAddr_ex = 5; rs1Addr_id = 5; rs2Addr_id = 7;

        // Test 4: Hazard detected (load matches rs2)
        // Expected: Stall = 1, IFWrite = 0
        #50 MemRead_ex = 1; rdAddr_ex = 5; rs1Addr_id = 6; rs2Addr_id = 5;

        // Test 5: Hazard detected (load matches both rs1 and rs2)
        // Expected: Stall = 1, IFWrite = 0
        #50 MemRead_ex = 1; rdAddr_ex = 5; rs1Addr_id = 5; rs2Addr_id = 5;

        // Test 6: No hazard (load writing to x0, hardwired to zero)
        // Expected: Stall = 0, IFWrite = 1
        #50 MemRead_ex = 1; rdAddr_ex = 0; rs1Addr_id = 0; rs2Addr_id = 0;

        // Test 7: No hazard (reading from x0)
        // Expected: Stall = 0, IFWrite = 1
        #50 MemRead_ex = 1; rdAddr_ex = 5; rs1Addr_id = 0; rs2Addr_id = 0;

        #50 $stop;
    end

endmodule
