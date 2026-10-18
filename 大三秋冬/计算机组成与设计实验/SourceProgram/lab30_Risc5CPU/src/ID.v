`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: ID (Instruction Decode Stage)
// Function: Integrates Registers, Decode, Branch_test, Hazard_Detector modules
//////////////////////////////////////////////////////////////////////////////////

module ID(
    input clk,
    input reset,
    input [31:0] Instruction_id,
    input [31:0] PC_id,
    input RegWrite_wb,
    input [4:0] rdAddr_wb,
    input [31:0] RegWriteData_wb,
    input MemRead_ex,
    input [4:0] rdAddr_ex,
    input MemRead_mem,      // 新增
    input [4:0] rdAddr_mem, // 新增
    output MemtoReg_id,
    output RegWrite_id,
    output MemWrite_id,
    output MemRead_id,
    output [3:0] ALUCode_id,
    output ALUSrcA_id,
    output [1:0] ALUSrcB_id,
    output Stall,
    output Branch,
    output Jump,
    output IFWrite,
    output [31:0] JumpAddr,
    output [31:0] Imm_id,
    output [31:0] rs1Data_id,
    output [31:0] rs2Data_id,
    output [4:0] rs1Addr_id, rs2Addr_id, rdAddr_id,
    output [2:0] funct3_id,
    output [31:0] Debug_mepc,
    output [31:0] Debug_mcause,
    output [31:0] Debug_mtvec
);

//Internal wires
	wire JALR_w;
	wire [31:0] offset_w;
    wire [1:0] CSR_op;
    wire ECALL, MRET, Illegal;
    wire [31:0] csr_rdata;
    wire [31:0] trap_pc, epc;
    wire Trap = Illegal | ECALL;
    
    wire Jump_decode;
    wire [31:0] Imm_decode;
    wire [3:0] ALUCode_decode;
    wire [1:0] ALUSrcB_decode;
    wire [31:0] JumpAddr_decode;

//Extract register addresses from instruction
	assign rs1Addr_id = Instruction_id[19:15];
	assign rs2Addr_id = Instruction_id[24:20];
	assign rdAddr_id  = Instruction_id[11:7];
	
//******************************************************************************
//  Module Instantiation
//******************************************************************************

//Registers module: Register file with RAW hazard forwarding
	Registers u_Registers (
		.clk(clk),
		.RegWrite_wb(RegWrite_wb),
		.rdAddr_wb(rdAddr_wb),
		.RegWriteData_wb(RegWriteData_wb),
		.rs1Addr_id(rs1Addr_id),
		.rs2Addr_id(rs2Addr_id),
		.rs1Data_id(rs1Data_id),
		.rs2Data_id(rs2Data_id)
	);

//Decode module: Instruction decode and control signal generation
	Decode u_Decode (
		.Instruction(Instruction_id),
		.MemtoReg(MemtoReg_id),
		.RegWrite(RegWrite_id),
		.MemWrite(MemWrite_id),
		.MemRead(MemRead_id),
		.ALUCode(ALUCode_decode),
		.ALUSrcA(ALUSrcA_id),
		.ALUSrcB(ALUSrcB_decode),
		.Jump(Jump_decode),
		.JALR(JALR_w),
		.Imm(Imm_decode),
		.offset(offset_w),
        .CSR_op(CSR_op),
        .ECALL(ECALL),
        .MRET(MRET),
        .Illegal(Illegal)
	);

    // Extract funct3 directly from instruction for load/store width handling
    assign funct3_id = Instruction_id[14:12];

//Branch_test module: Branch condition evaluation
	Branch_test u_Branch_test (
		.rs1Data_id(rs1Data_id),
		.rs2Data_id(rs2Data_id),
		.Instruction_id(Instruction_id),
		.Branch(Branch)
	);


//Hazard_Detector module: Load-use hazard detection and stall generation
    Hazard_Detector u_Hazard_Detector (
        .MemRead_ex(MemRead_ex),
        .rdAddr_ex(rdAddr_ex),
        .MemRead_mem(MemRead_mem),
        .rdAddr_mem(rdAddr_mem),
        .Instruction_id(Instruction_id),
        .rs1Addr_id(rs1Addr_id),
        .rs2Addr_id(rs2Addr_id),
        .Stall(Stall),
        .IFWrite(IFWrite)
    );
	
//CSR Module
    CSR u_CSR (
        .clk(clk),
        .reset(reset),
        .csr_addr(Instruction_id[31:20]),
        .csr_wdata(rs1Data_id),
        .csr_op(CSR_op),
        .csr_rdata(csr_rdata),
        .trap_en(Trap),
        .mret_en(MRET),
        .pc_in(PC_id),
        .cause_in(Illegal ? 32'd2 : 32'd11),
        .trap_pc_out(trap_pc),
        .epc_out(epc),
        .mcause_out(Debug_mcause)
    );

//******************************************************************************
//  Jump address calculation
//******************************************************************************
	assign JumpAddr_decode = (JALR_w==1) ? (rs1Data_id + offset_w) : (PC_id + offset_w);
    assign JumpAddr = Trap ? trap_pc : (MRET ? epc : JumpAddr_decode);
    assign Jump = Jump_decode | Trap | MRET;
    
    assign Imm_id = (CSR_op != 0) ? csr_rdata : Imm_decode;
    assign ALUCode_id = (CSR_op != 0) ? 4'b0010 : ALUCode_decode;
    assign ALUSrcB_id = (CSR_op != 0) ? 2'b01 : ALUSrcB_decode;

    assign Debug_mepc = epc;
    assign Debug_mtvec = trap_pc;

endmodule
