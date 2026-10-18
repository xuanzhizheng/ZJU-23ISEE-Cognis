`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: Forwarding
// Function: Data forwarding logic for EX/MEM hazards
//////////////////////////////////////////////////////////////////////////////////
module Forwarding(
    // Inputs from MEM stage
    input RegWrite_mem,
    input [4:0] rdAddr_mem,
    // Inputs from WB stage
    input RegWrite_wb,
    input [4:0] rdAddr_wb,
    // Inputs from EX stage
    input [4:0] rs1Addr_ex,
    input [4:0] rs2Addr_ex,
    // Outputs to control MUXes
    output [1:0] ForwardA,
    output [1:0] ForwardB
);

//******************************************************************************
//  Forwarding Logic
//******************************************************************************

// Forwarding logic for operand A (rs1)
// 2'b10: Forward from MEM stage (1-stage hazard)
assign ForwardA[1] = RegWrite_mem && (rdAddr_mem != 5'b0) && 
                     (rdAddr_mem == rs1Addr_ex);

// 2'b01: Forward from WB stage (2-stage hazard)
assign ForwardA[0] = RegWrite_wb && (rdAddr_wb != 5'b0) && 
                     (rdAddr_mem != rs1Addr_ex) && 
                     (rdAddr_wb == rs1Addr_ex);

// Forwarding logic for operand B (rs2)
// 2'b10: Forward from MEM stage (1-stage hazard)
assign ForwardB[1] = RegWrite_mem && (rdAddr_mem != 5'b0) && 
                     (rdAddr_mem == rs2Addr_ex);

// 2'b01: Forward from WB stage (2-stage hazard)
assign ForwardB[0] = RegWrite_wb && (rdAddr_wb != 5'b0) && 
                     (rdAddr_mem != rs2Addr_ex) && 
                     (rdAddr_wb == rs2Addr_ex);

endmodule
