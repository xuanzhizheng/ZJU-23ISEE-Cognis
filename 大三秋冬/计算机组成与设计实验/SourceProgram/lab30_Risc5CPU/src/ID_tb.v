`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: ID_tb
// Function: Integrated testbench for the ID module
//////////////////////////////////////////////////////////////////////////////////
module ID_tb;

    // Inputs
    reg clk;
    reg [31:0] Instruction_id;
    reg [31:0] PC_id;
    reg RegWrite_wb;
    reg [4:0] rdAddr_wb;
    reg [31:0] RegWriteData_wb;
    reg MemRead_ex;
    reg [4:0] rdAddr_ex;

    // Outputs
    wire MemtoReg_id;
    wire RegWrite_id;
    wire MemWrite_id;
    wire MemRead_id;
    wire [3:0] ALUCode_id;
    wire ALUSrcA_id;
    wire [1:0] ALUSrcB_id;
    wire Stall;
    wire Branch;
    wire Jump;
    wire IFWrite;
    wire [31:0] JumpAddr;
    wire [31:0] Imm_id;
    wire [31:0] rs1Data_id;
    wire [31:0] rs2Data_id;
    wire [4:0] rs1Addr_id;
    wire [4:0] rs2Addr_id;
    wire [4:0] rdAddr_id;

    // Instantiate the Unit Under Test (UUT)
    ID uut (
        .clk(clk),
        .Instruction_id(Instruction_id),
        .PC_id(PC_id),
        .RegWrite_wb(RegWrite_wb),
        .rdAddr_wb(rdAddr_wb),
        .RegWriteData_wb(RegWriteData_wb),
        .MemRead_ex(MemRead_ex),
        .rdAddr_ex(rdAddr_ex),
        .MemtoReg_id(MemtoReg_id),
        .RegWrite_id(RegWrite_id),
        .MemWrite_id(MemWrite_id),
        .MemRead_id(MemRead_id),
        .ALUCode_id(ALUCode_id),
        .ALUSrcA_id(ALUSrcA_id),
        .ALUSrcB_id(ALUSrcB_id),
        .Stall(Stall),
        .Branch(Branch),
        .Jump(Jump),
        .IFWrite(IFWrite),
        .JumpAddr(JumpAddr),
        .Imm_id(Imm_id),
        .rs1Data_id(rs1Data_id),
        .rs2Data_id(rs2Data_id),
        .rs1Addr_id(rs1Addr_id),
        .rs2Addr_id(rs2Addr_id),
        .rdAddr_id(rdAddr_id)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Instruction Opcodes
    parameter ADDI = 32'h00A50293; // addi x5, x10, 10
    parameter LW   = 32'h0042A303; // lw   x6, 4(x5)
    parameter ADD  = 32'h00728333; // add  x6, x5, x7
    parameter BEQ  = 32'h00728263; // beq  x5, x7, 4 (PC+4)
    
    initial begin
        // Initialize all inputs
        Instruction_id = 0;
        PC_id = 0;
        RegWrite_wb = 0;
        rdAddr_wb = 0;
        RegWriteData_wb = 0;
        MemRead_ex = 0;
        rdAddr_ex = 0;
        
        // Test 1: Decode ADDI instruction (addi x5, x10, 10)
        // Expected: rs1Addr = 10 (x10), rdAddr = 5 (x5), Imm = 0x0000000a
        //           RegWrite = 1, MemRead = 0, MemWrite = 0, Stall = 0
        #20 Instruction_id = ADDI; PC_id = 4;

        // Test 2: WB->ID RAW forwarding on rs1 (add x6, x5, x7)
        // WB stage writes 0xaaaaaaaa to x5, ID reads x5
        // Expected: rs1Addr = 5, rs1Data = 0xaaaaaaaa (forwarded from WB)
        //           rs2Addr = 7, rdAddr = 6, RegWrite = 1, Stall = 0
        #20 Instruction_id = ADD; PC_id = 8; RegWrite_wb = 1; rdAddr_wb = 5; RegWriteData_wb = 32'hAAAAAAAA; MemRead_ex = 0;
        
        // Test 3: WB->ID RAW forwarding on rs2
        // WB stage writes 0xbbbbbbbb to x7, ID reads x7
        // Expected: rs1Addr = 5, rs2Addr = 7, rs2Data = 0xbbbbbbbb (forwarded from WB)
        #20 Instruction_id = ADD; PC_id = 12; RegWrite_wb = 1; rdAddr_wb = 7; RegWriteData_wb = 32'hBBBBBBBB;

        // Test 4: Load-use hazard detection
        // EX stage: LW x5 (MemRead=1, rdAddr=5), ID stage: ADD x6,x5,x7 (rs1=5)
        // Expected: Stall = 1, IFWrite = 0 (pipeline stall)
        #20 Instruction_id = ADD; PC_id = 16; MemRead_ex = 1; rdAddr_ex = 5; RegWrite_wb = 0;

        // Test 5: No hazard after clearing EX load
        // Expected: Stall = 0, IFWrite = 1
        #20 Instruction_id = ADD; PC_id = 20; MemRead_ex = 0;

        // Test 6: Prepare for branch test - write 123 to x5
        // Expected: x5 will be written with 0x0000007b
        #20 RegWrite_wb = 1; rdAddr_wb = 5; RegWriteData_wb = 32'd123; Instruction_id = 0; PC_id = 24;
        
        // Test 7: Prepare for branch test - write 123 to x7
        // Expected: x7 will be written with 0x0000007b
        #20 RegWrite_wb = 1; rdAddr_wb = 7; RegWriteData_wb = 32'd123; PC_id = 28;
        
        // Test 8: Branch taken (BEQ x5, x7, offset) - equal values
        // rs1Data = 0x7b (123), rs2Data = 0x7b (123)
        // Expected: Branch = 1 (branch taken), JumpAddr = PC + offset
        #20 Instruction_id = BEQ; PC_id = 100; RegWrite_wb = 0; MemRead_ex = 0;

        // Test 9: Prepare different value - write 456 to x7
        // Expected: x7 will be written with 0x000001c8
        #20 RegWrite_wb = 1; rdAddr_wb = 7; RegWriteData_wb = 32'd456; Instruction_id = 0; PC_id = 104;
        
        // Test 10: Branch not taken (BEQ x5, x7, offset) - different values
        // rs1Data = 0x7b (123), rs2Data = 0x1c8 (456)
        // Expected: Branch = 0 (branch not taken)
        #20 Instruction_id = BEQ; PC_id = 108; RegWrite_wb = 0;

        #20 $stop;
    end

endmodule
