`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: DFF
// Function: D-Flip-Flop with sync reset, clear, and enable
//////////////////////////////////////////////////////////////////////////////////
module DFF #(
    parameter WIDTH = 32,
    parameter [WIDTH-1:0] RESET_VALUE = {WIDTH{1'b0}}
) (
    input clk,
    input reset,
    input clear,  // Sync clear (Stall/Flush)
    input en,     // Enable
    input [WIDTH-1:0] d,
    output reg [WIDTH-1:0] q
);
    always @(posedge clk)
        if (reset)
            q <= RESET_VALUE;
        else if (clear)
            q <= RESET_VALUE;
        else if (en)
            q <= d;
endmodule