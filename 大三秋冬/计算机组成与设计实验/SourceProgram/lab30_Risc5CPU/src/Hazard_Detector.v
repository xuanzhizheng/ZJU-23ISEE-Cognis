`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: Hazard_Detector
// Function: Load-use hazard detection (ID/EX hazard)
//////////////////////////////////////////////////////////////////////////////////

module Hazard_Detector(
    input MemRead_ex,
    input [4:0] rdAddr_ex,
    input MemRead_mem,      // 新增：MEM阶段的读使能
    input [4:0] rdAddr_mem, // 新增：MEM阶段的目标寄存器
    input [31:0] Instruction_id, // 新增：用于判断是否为分支指令
    input [4:0] rs1Addr_id,
    input [4:0] rs2Addr_id,
    output Stall,
    output IFWrite
);

    // 1. 判断当前 ID 阶段是否为分支指令 (SB-type opcode: 1100011)
    wire IsBranch = (Instruction_id[6:0] == 7'b1100011);

    // 2. 原有的检测：Load 在 EX 阶段 (需要 1 个 Stall)
    wire Hazard_EX = MemRead_ex && ((rdAddr_ex == rs1Addr_id) || (rdAddr_ex == rs2Addr_id)) && (rdAddr_ex != 0);

    // 3. 新增检测：Load 在 MEM 阶段 (需要第 2 个 Stall)
    wire Hazard_MEM = MemRead_mem && ((rdAddr_mem == rs1Addr_id) || (rdAddr_mem == rs2Addr_id)) && (rdAddr_mem != 0) && IsBranch;

    // 4. 只要满足任一条件，就阻塞
    assign Stall = Hazard_EX | Hazard_MEM;
    assign IFWrite = ~Stall;

endmodule

