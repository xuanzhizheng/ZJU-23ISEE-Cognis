`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: zju
// Engineer: qmj
// Module: Risc5CPU (Top Level)
// Function: 5-stage pipeline RISC-V CPU with modular DFF pipeline registers
//////////////////////////////////////////////////////////////////////////////////
module Risc5CPU(
    input clk,
    input reset,
    output [1:0]  JumpFlag,
    output [31:0] Instruction_id,
    output [31:0] ALU_A,
    output [31:0] ALU_B,
    output [31:0] ALUResult_ex,
    output [31:0] PC,
    output [31:0] MemDout_mem,
    output        Stall,
    output [31:0] Debug_mepc,
    output [31:0] Debug_mcause,
    output [31:0] Debug_mtvec
);

//******************************************************************************
//  Internal Wires and Registers
//******************************************************************************

    // IF Stage
    wire [31:0] w_Instruction_if;
    wire        w_IF_flush;

    // ID Stage Control
    wire        w_IFWrite;
    wire [31:0] w_JumpAddr;
    wire        w_Branch;
    wire        w_Jump;

    // ID Stage Outputs
    wire        w_MemtoReg_id;
    wire        w_RegWrite_id;
    wire        w_MemWrite_id;
    wire        w_MemRead_id;
    wire [3:0]  w_ALUCode_id;
    wire        w_ALUSrcA_id;
    wire [1:0]  w_ALUSrcB_id;
    wire [31:0] w_Imm_id;
    wire [31:0] w_rs1Data_id;
    wire [31:0] w_rs2Data_id;
    wire [4:0]  w_rs1Addr_id;
    wire [4:0]  w_rs2Addr_id;
    wire [4:0]  w_rdAddr_id;
    wire [2:0]  w_funct3_id;
    
    // EX Stage
    wire [31:0] w_MemWriteData_ex;
    wire [31:0] w_ALUResult_ex_internal;

    // MEM Stage
    wire [31:0] w_MemDout_mem_internal;
    
    // WB Stage
    wire [31:0] w_RegWriteData_wb;

    // Pipeline Registers: IF/ID
    wire [31:0] r_PC_id;
    wire [31:0] r_Instruction_id;

    // Pipeline Registers: ID/EX
    wire        r_MemtoReg_ex;
    wire        r_RegWrite_ex;
    wire        r_MemWrite_ex;
    wire        r_MemRead_ex;
    wire [3:0]  r_ALUCode_ex;
    wire        r_ALUSrcA_ex;
    wire [1:0]  r_ALUSrcB_ex;
    wire [31:0] r_Imm_ex;
    wire [31:0] r_rs1Data_ex;
    wire [31:0] r_rs2Data_ex;
    wire [4:0]  r_rs1Addr_ex;
    wire [4:0]  r_rs2Addr_ex;
    wire [4:0]  r_rdAddr_ex;
    wire [31:0] r_PC_ex;
    wire [2:0]  r_funct3_ex;

    // Pipeline Registers: EX/MEM
    wire [31:0] r_ALUResult_mem;
    wire [31:0] r_MemWriteData_mem;
    wire        r_MemWrite_mem;
    wire        r_RegWrite_mem;
    wire        r_MemtoReg_mem;
    wire        r_MemRead_mem; // <--- 【新增】定义 MEM 阶段的 MemRead 信号
    wire [4:0]  r_rdAddr_mem;
    wire [2:0]  r_funct3_mem;

    // Pipeline Registers: MEM/WB
    wire [31:0] r_MemDout_wb;
    wire [31:0] r_ALUResult_wb;
    wire        r_RegWrite_wb;
    wire        r_MemtoReg_wb;
    wire [4:0]  r_rdAddr_wb;

    // MEM Stage processing signals for byte/half-word operations
    reg [31:0]  final_ram_write_data;
    reg [31:0]  final_mem_read_data;

//******************************************************************************
//  Top-Level Output Assignments
//******************************************************************************
    
    assign JumpFlag       = {w_Jump, w_Branch};
    assign Instruction_id = r_Instruction_id;
    assign ALUResult_ex   = w_ALUResult_ex_internal;
    assign MemDout_mem    = w_MemDout_mem_internal;

//******************************************************************************
//  Stage 1: IF (Instruction Fetch)
//******************************************************************************

    IF1 u_IF1 (
        .clk(clk),
        .reset(reset),
        .Branch(w_Branch),
        .Jump(w_Jump),
        .IFWrite(w_IFWrite),
        .JumpAddr(w_JumpAddr),
        .Instruction_if(w_Instruction_if),
        .PC(PC),
        .IF_flush(w_IF_flush)
    );

//******************************************************************************
//  Pipeline Register: IF/ID
//******************************************************************************

    DFF #(
        .WIDTH(64),
        .RESET_VALUE({32'd0, 32'h00000013}) // PC=0, Instruction=NOP (addi x0,x0,0)
    ) u_reg_IF_ID (
        .clk(clk),
        .reset(reset),
        .clear(w_IF_flush),
        .en(w_IFWrite),
        .d({PC, w_Instruction_if}),
        .q({r_PC_id, r_Instruction_id})
    );

//******************************************************************************
//  Stage 2: ID (Instruction Decode)
//******************************************************************************

    ID u_ID (
        .clk(clk),
        .reset(reset),
        .Instruction_id(r_Instruction_id),
        .PC_id(r_PC_id),
        .RegWrite_wb(r_RegWrite_wb),
        .rdAddr_wb(r_rdAddr_wb),
        .RegWriteData_wb(w_RegWriteData_wb),
        .MemRead_ex(r_MemRead_ex),
        .rdAddr_ex(r_rdAddr_ex),
        // --- 新增连接 ---
        .MemRead_mem(r_MemRead_mem),
        .rdAddr_mem(r_rdAddr_mem),
        // ----------------
        .MemtoReg_id(w_MemtoReg_id),
        .RegWrite_id(w_RegWrite_id),
        .MemWrite_id(w_MemWrite_id),
        .MemRead_id(w_MemRead_id),
        .ALUCode_id(w_ALUCode_id),
        .ALUSrcA_id(w_ALUSrcA_id),
        .ALUSrcB_id(w_ALUSrcB_id),
        .Stall(Stall),
        .Branch(w_Branch),
        .Jump(w_Jump),
        .IFWrite(w_IFWrite),
        .JumpAddr(w_JumpAddr),
        .Imm_id(w_Imm_id),
        .rs1Data_id(w_rs1Data_id),
        .rs2Data_id(w_rs2Data_id),
        .rs1Addr_id(w_rs1Addr_id),
        .rs2Addr_id(w_rs2Addr_id),
        .rdAddr_id(w_rdAddr_id),
        .funct3_id(w_funct3_id),
        .Debug_mepc(Debug_mepc),
        .Debug_mcause(Debug_mcause),
        .Debug_mtvec(Debug_mtvec)
    );

//******************************************************************************
//  Pipeline Register: ID/EX
//******************************************************************************

    DFF #(.WIDTH(157)) u_reg_ID_EX (
        .clk(clk),
        .reset(reset),
        .clear(Stall),
        .en(1'b1),
        .d({w_MemtoReg_id, w_RegWrite_id, w_MemWrite_id, w_MemRead_id,
            w_ALUCode_id, w_ALUSrcA_id, w_ALUSrcB_id,
            w_Imm_id, w_rs1Data_id, w_rs2Data_id,
            w_rs1Addr_id, w_rs2Addr_id, w_rdAddr_id, r_PC_id, w_funct3_id}),
        .q({r_MemtoReg_ex, r_RegWrite_ex, r_MemWrite_ex, r_MemRead_ex,
            r_ALUCode_ex, r_ALUSrcA_ex, r_ALUSrcB_ex,
            r_Imm_ex, r_rs1Data_ex, r_rs2Data_ex,
            r_rs1Addr_ex, r_rs2Addr_ex, r_rdAddr_ex, r_PC_ex, r_funct3_ex})
    );

//******************************************************************************
//  Stage 3: EX (Execute)
//******************************************************************************

    EX u_EX (
        .ALUCode_ex(r_ALUCode_ex),
        .ALUSrcA_ex(r_ALUSrcA_ex),
        .ALUSrcB_ex(r_ALUSrcB_ex),
        .Imm_ex(r_Imm_ex),
        .rs1Addr_ex(r_rs1Addr_ex),
        .rs2Addr_ex(r_rs2Addr_ex),
        .rs1Data_ex(r_rs1Data_ex),
        .rs2Data_ex(r_rs2Data_ex),
        .PC_ex(r_PC_ex),
        .RegWriteData_wb(w_RegWriteData_wb),
        .rdAddr_wb(r_rdAddr_wb),
        .RegWrite_wb(r_RegWrite_wb),
        .ALUResult_mem(r_ALUResult_mem),
        .rdAddr_mem(r_rdAddr_mem),
        .RegWrite_mem(r_RegWrite_mem),
        .ALUResult_ex(w_ALUResult_ex_internal),
        .MemWriteData_ex(w_MemWriteData_ex),
        .ALU_A(ALU_A),
        .ALU_B(ALU_B)
    );

//******************************************************************************
//  Pipeline Register: EX/MEM
//******************************************************************************

    DFF #(.WIDTH(76)) u_reg_EX_MEM (
        .clk(clk),
        .reset(reset),
        .clear(1'b0),
        .en(1'b1),
        // 在输入 .d 中加入 r_MemRead_ex
        .d({w_ALUResult_ex_internal, w_MemWriteData_ex,
            r_MemWrite_ex, r_RegWrite_ex, r_MemtoReg_ex, r_MemRead_ex, r_rdAddr_ex, r_funct3_ex}),
        // 在输出 .q 中加入 r_MemRead_mem
        .q({r_ALUResult_mem, r_MemWriteData_mem,
            r_MemWrite_mem, r_RegWrite_mem, r_MemtoReg_mem, r_MemRead_mem, r_rdAddr_mem, r_funct3_mem})
    );

//******************************************************************************
//  Stage 4: MEM (Memory Access)
//******************************************************************************

    // Store Logic: Process sb/sh operations (Read-Modify-Write)
    always @(*) begin
        // Default: sw (Store Word) - write full 32-bit data
        final_ram_write_data = r_MemWriteData_mem;
        
        // sb (Store Byte) - funct3 = 000
        if (r_MemWrite_mem && r_funct3_mem == 3'b000) begin
            case (r_ALUResult_mem[1:0])
                2'b00: final_ram_write_data = {w_MemDout_mem_internal[31:8],  r_MemWriteData_mem[7:0]};
                2'b01: final_ram_write_data = {w_MemDout_mem_internal[31:16], r_MemWriteData_mem[7:0], w_MemDout_mem_internal[7:0]};
                2'b10: final_ram_write_data = {w_MemDout_mem_internal[31:24], r_MemWriteData_mem[7:0], w_MemDout_mem_internal[15:0]};
                2'b11: final_ram_write_data = {r_MemWriteData_mem[7:0],       w_MemDout_mem_internal[23:0]};
            endcase
        end
        // sh (Store Half) - funct3 = 001
        else if (r_MemWrite_mem && r_funct3_mem == 3'b001) begin
            case (r_ALUResult_mem[1])
                1'b0: final_ram_write_data = {w_MemDout_mem_internal[31:16], r_MemWriteData_mem[15:0]};
                1'b1: final_ram_write_data = {r_MemWriteData_mem[15:0],       w_MemDout_mem_internal[15:0]};
            endcase
        end
    end

    DataRAM u_DataRAM (
        .clk(clk),
        .we(r_MemWrite_mem),
        .a(r_ALUResult_mem[7:2]),
        .d(final_ram_write_data),
        .spo(w_MemDout_mem_internal)
    );

    // Load Logic: Process lb/lh/lbu/lhu operations (Sign/Zero Extension)
    always @(*) begin
        // Default: lw (Load Word) - output full RAM data
        final_mem_read_data = w_MemDout_mem_internal;
        
        case (r_funct3_mem)
            3'b000: // lb (Sign Extended Byte)
                case (r_ALUResult_mem[1:0])
                    2'b00: final_mem_read_data = {{24{w_MemDout_mem_internal[7]}},  w_MemDout_mem_internal[7:0]};
                    2'b01: final_mem_read_data = {{24{w_MemDout_mem_internal[15]}}, w_MemDout_mem_internal[15:8]};
                    2'b10: final_mem_read_data = {{24{w_MemDout_mem_internal[23]}}, w_MemDout_mem_internal[23:16]};
                    2'b11: final_mem_read_data = {{24{w_MemDout_mem_internal[31]}}, w_MemDout_mem_internal[31:24]};
                endcase
            3'b001: // lh (Sign Extended Half)
                case (r_ALUResult_mem[1])
                    1'b0: final_mem_read_data = {{16{w_MemDout_mem_internal[15]}}, w_MemDout_mem_internal[15:0]};
                    1'b1: final_mem_read_data = {{16{w_MemDout_mem_internal[31]}}, w_MemDout_mem_internal[31:16]};
                endcase
            3'b100: // lbu (Zero Extended Byte)
                case (r_ALUResult_mem[1:0])
                    2'b00: final_mem_read_data = {24'b0, w_MemDout_mem_internal[7:0]};
                    2'b01: final_mem_read_data = {24'b0, w_MemDout_mem_internal[15:8]};
                    2'b10: final_mem_read_data = {24'b0, w_MemDout_mem_internal[23:16]};
                    2'b11: final_mem_read_data = {24'b0, w_MemDout_mem_internal[31:24]};
                endcase
            3'b101: // lhu (Zero Extended Half)
                case (r_ALUResult_mem[1])
                    1'b0: final_mem_read_data = {16'b0, w_MemDout_mem_internal[15:0]};
                    1'b1: final_mem_read_data = {16'b0, w_MemDout_mem_internal[31:16]};
                endcase
        endcase
    end

//******************************************************************************
//  Pipeline Register: MEM/WB
//******************************************************************************

    DFF #(.WIDTH(71)) u_reg_MEM_WB (
        .clk(clk),
        .reset(reset),
        .clear(1'b0),
        .en(1'b1),
        .d({final_mem_read_data, r_ALUResult_mem,
            r_RegWrite_mem, r_MemtoReg_mem, r_rdAddr_mem}),
        .q({r_MemDout_wb, r_ALUResult_wb,
            r_RegWrite_wb, r_MemtoReg_wb, r_rdAddr_wb})
    );

//******************************************************************************
//  Stage 5: WB (Write Back)
//******************************************************************************

    assign w_RegWriteData_wb = r_MemtoReg_wb ? r_MemDout_wb : r_ALUResult_wb;

endmodule
