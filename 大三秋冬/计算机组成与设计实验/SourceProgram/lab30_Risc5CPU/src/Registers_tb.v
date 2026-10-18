`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: Registers_tb
// Function: Testbench for Registers module
//////////////////////////////////////////////////////////////////////////////////
module Registers_tb;

    // Inputs
    reg clk;
    reg RegWrite_wb;
    reg [4:0] rdAddr_wb;
    reg [31:0] RegWriteData_wb;
    reg [4:0] rs1Addr_id;
    reg [4:0] rs2Addr_id;

    // Outputs
    wire [31:0] rs1Data_id;
    wire [31:0] rs2Data_id;

    // Instantiate the Unit Under Test (UUT)
    Registers uut (
        .clk(clk),
        .RegWrite_wb(RegWrite_wb),
        .rdAddr_wb(rdAddr_wb),
        .RegWriteData_wb(RegWriteData_wb),
        .rs1Addr_id(rs1Addr_id),
        .rs2Addr_id(rs2Addr_id),
        .rs1Data_id(rs1Data_id),
        .rs2Data_id(rs2Data_id)
    );

    // Clock generation: 10ns period
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test stimulus
    initial begin
        // Initialize all inputs
        RegWrite_wb = 0;
        rdAddr_wb = 0;
        RegWriteData_wb = 0;
        rs1Addr_id = 0;
        rs2Addr_id = 0;

        // Test 1: Write to x6
        // Expected: x6 = 32'hbbbbbbbb
        #20 RegWrite_wb = 1; rdAddr_wb = 6; RegWriteData_wb = 32'hBBBBBBBB;
        
        // Test 2: Read from x6
        // Expected: rs1Data_id = 32'hbbbbbbbb
        #20 RegWrite_wb = 0; rs1Addr_id = 6;
        
        // Test 3: RAW forwarding on rs1 (write and read x5 simultaneously)
        // Expected: rs1Data_id = 32'haaaaaaaa (forwarded immediately)
        #20 RegWrite_wb = 1; rdAddr_wb = 5; RegWriteData_wb = 32'hAAAAAAAA; rs1Addr_id = 5;
        
        // Test 4: RAW forwarding on rs2 (write and read x7 simultaneously)
        // Expected: rs2Data_id = 32'hcccccccc (forwarded immediately)
        #20 RegWrite_wb = 1; rdAddr_wb = 7; RegWriteData_wb = 32'hCCCCCCCC; rs1Addr_id = 0; rs2Addr_id = 7;
        
        // Test 5: Write to x0 (should be ignored)
        // Expected: x0 remains 0 (write ignored)
        #20 RegWrite_wb = 1; rdAddr_wb = 0; RegWriteData_wb = 32'hFFFFFFFF;
        
        // Test 6: Read from x0 (should always be 0)
        // Expected: rs1Data_id = 0, rs2Data_id = 0
        #20 RegWrite_wb = 0; rs1Addr_id = 0; rs2Addr_id = 0;
        
        // Test 7: RAW on x0 (forwarding should be blocked)
        // Expected: rs1Data_id = 0 (no forwarding for x0)
        #20 RegWrite_wb = 1; rdAddr_wb = 0; RegWriteData_wb = 32'hFFFFFFFF; rs1Addr_id = 0;
        
        #20 $stop;
    end

endmodule
