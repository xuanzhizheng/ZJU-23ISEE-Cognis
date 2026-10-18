`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  zju
// Engineer: qmj
// Module: IF1 (Instruction Fetch Stage)
//////////////////////////////////////////////////////////////////////////////////
module IF1(clk, reset, Branch,Jump, IFWrite, JumpAddr,Instruction_if,PC,IF_flush);
    input clk;
    input reset;
    input Branch;
    input Jump;
    input IFWrite;
    input [31:0] JumpAddr;
    output [31:0] Instruction_if;
    output [31:0] PC;
    output IF_flush;

    // Internal signals
    reg [31:0] PC_reg;
    wire [31:0] PC_plus_4;
    wire co_unused;
    wire PCSource;
    wire [31:0] Next_PC;

    assign PC = PC_reg;

    // 32-bit adder: calculate PC + 4
    adder_32bits u_adder_pc (
        .a(PC_reg),
        .b(32'd4),
        .ci(1'b0),
        .s(PC_plus_4),
        .co(co_unused)
    );

    // PCSource MUX: select next PC (Branch or Jump)
    assign PCSource = Branch | Jump;
    assign Next_PC = PCSource ? JumpAddr : PC_plus_4;

    // PC register with enable (IFWrite) for pipeline stall
    always @(posedge clk)
        if (reset)
            PC_reg <= 32'd0;
        else if (IFWrite)
            PC_reg <= Next_PC;

    // Instruction ROM (64x32bit, address is PC[7:2])
    InstructionROM u_InstructionROM (
        .addr(PC_reg[7:2]), 
        .dout(Instruction_if)
    );
    
    // IF_flush signal to clear IF/ID register
    assign IF_flush = PCSource;

endmodule
