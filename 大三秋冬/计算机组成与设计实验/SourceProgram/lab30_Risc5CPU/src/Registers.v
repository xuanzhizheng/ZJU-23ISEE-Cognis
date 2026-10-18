`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: Registers
// Function: 32x32-bit register file with Read After Write forwarding
//////////////////////////////////////////////////////////////////////////////////
module Registers(
    input clk,
    input RegWrite_wb,
    input [4:0] rdAddr_wb,
    input [31:0] RegWriteData_wb,
    input [4:0] rs1Addr_id,
    input [4:0] rs2Addr_id,
    output [31:0] rs1Data_id,
    output [31:0] rs2Data_id
);

//Register array definition
	reg [31:0] regs [31:0];
    
    integer i;
    initial begin
        for (i = 0; i < 32; i = i + 1)
            regs[i] = 32'd0;
    end
	
//Read port logic with register 0 hardwired to zero
	wire [31:0] ReadData1 = (rs1Addr_id == 5'b0) ? 32'b0 : regs[rs1Addr_id];
	wire [31:0] ReadData2 = (rs2Addr_id == 5'b0) ? 32'b0 : regs[rs2Addr_id];

//Write port logic on clock rising edge
	always @(posedge clk) begin
		if (RegWrite_wb) begin
			regs[rdAddr_wb] <= RegWriteData_wb;
		end
	end

//RAW hazard forwarding detection
	wire rs1Sel = RegWrite_wb && (rdAddr_wb != 0) && (rdAddr_wb == rs1Addr_id);
	wire rs2Sel = RegWrite_wb && (rdAddr_wb != 0) && (rdAddr_wb == rs2Addr_id);
	
//Output MUX for Read After Write forwarding
	assign rs1Data_id = rs1Sel ? RegWriteData_wb : ReadData1;
	assign rs2Data_id = rs2Sel ? RegWriteData_wb : ReadData2;
 
endmodule
