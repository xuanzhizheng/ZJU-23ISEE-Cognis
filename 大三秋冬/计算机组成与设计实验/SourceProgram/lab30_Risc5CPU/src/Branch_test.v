`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: Branch_test
// Function: Branch condition detection in ID stage
//           (beq, bne, blt, bge, bltu, bgeu)
//////////////////////////////////////////////////////////////////////////////////
module Branch_test(
    input [31:0] rs1Data_id,
    input [31:0] rs2Data_id,
    input [31:0] Instruction_id,
    output Branch
);

    // Extract opcode and funct3 from instruction
    wire [6:0] opcode = Instruction_id[6:0];
    wire [2:0] funct3 = Instruction_id[14:12];
    
    // Branch instruction opcodes and function codes
    parameter SB_type_op = 7'b1100011;
    parameter beq_funct3 = 3'b000;
    parameter bne_funct3 = 3'b001;
    parameter blt_funct3 = 3'b100;
    parameter bge_funct3 = 3'b101;
    parameter bltu_funct3 = 3'b110;
    parameter bgeu_funct3 = 3'b111;
    
    // Check if instruction is SB_type
    wire SB_type = (opcode == SB_type_op);
    
    // Subtractor using 32-bit adder (A - B = A + ~B + 1)
    wire [31:0] sum;
    wire [31:0] b_inv = ~rs2Data_id;
    wire co;
    
    adder_32bits u_adder_branch (
        .a(rs1Data_id),
        .b(b_inv),
        .ci(1'b1),
        .s(sum),
        .co(co)
    );
    
    wire isZero = (sum == 32'd0);
    
    // Signed comparison (rs1 < rs2)
    wire isLT = (rs1Data_id[31] & ~rs2Data_id[31]) | 
                (~(rs1Data_id[31] ^ rs2Data_id[31]) & sum[31]);
                
    // Unsigned comparison (rs1 < rs2)
    wire isLTU = (~rs1Data_id[31] & rs2Data_id[31]) | 
                 (~(rs1Data_id[31] ^ rs2Data_id[31]) & sum[31]);
                 
    // Branch decision based on funct3 and comparison results
    assign Branch = SB_type & (
                        (funct3 == beq_funct3  &&  isZero) |
                        (funct3 == bne_funct3  && ~isZero) |
                        (funct3 == blt_funct3  &&  isLT)   |
                        (funct3 == bge_funct3  && ~isLT)   |
                        (funct3 == bltu_funct3 &&  isLTU)  |
                        (funct3 == bgeu_funct3 && ~isLTU)
                      );
                      
endmodule
