//******************************************************************************
// //
// Decode.v
//******************************************************************************

module Decode(   
	// Outputs
	MemtoReg, RegWrite, MemWrite, MemRead,ALUCode,ALUSrcA,ALUSrcB,Jump,JALR,Imm,offset,
    CSR_op, ECALL, MRET, Illegal,
	// Inputs
    Instruction);
	input [31:0]	Instruction;	// current instruction
	output		   MemtoReg;		// use memory output as data to write into register
	output		   RegWrite;		// enable writing back to the register
	output		   MemWrite;		// write to memory
	output         MemRead;
	output [3:0]   ALUCode;         // ALU operation select
	output      	ALUSrcA;
	output [1:0]   ALUSrcB;
	output         Jump;
	output         JALR;
	output[31:0]   Imm,offset;
    output [1:0]   CSR_op;
    output         ECALL;
    output         MRET;
    output         Illegal;
	
//******************************************************************************
//  instruction type decode
//******************************************************************************
	parameter  R_type_op=   7'b0110011;
	parameter  I_type_op=   7'b0010011;
	parameter  SB_type_op=  7'b1100011;
	parameter  LW_op=       7'b0000011;
	parameter  JALR_op=     7'b1100111;
	parameter  SW_op=       7'b0100011;
	parameter  LUI_op=      7'b0110111;
	parameter  AUIPC_op=    7'b0010111;	
	parameter  JAL_op=      7'b1101111;
    parameter  SYSTEM_op=   7'b1110011; // System instructions (CSR, ECALL, etc.)
//
  //
   parameter  ADD_funct3 =     3'b000 ;
   parameter  SUB_funct3 =     3'b000 ;
   parameter  SLL_funct3 =     3'b001 ;
   parameter  SLT_funct3 =     3'b010 ;
   parameter  SLTU_funct3 =    3'b011 ;
   parameter  XOR_funct3 =     3'b100 ;
   parameter  SRL_funct3 =     3'b101 ;
   parameter  SRA_funct3 =     3'b101 ;
   parameter  OR_funct3 =      3'b110 ;
   parameter  AND_funct3 =     3'b111;
   //
   parameter  ADDI_funct3 =     3'b000 ;
   parameter  SLLI_funct3 =     3'b001 ;
   parameter  SLTI_funct3 =     3'b010 ;
   parameter  SLTIU_funct3 =    3'b011 ;
   parameter  XORI_funct3 =     3'b100 ;
   parameter  SRLI_funct3 =     3'b101 ;
   parameter  SRAI_funct3 =     3'b101 ;
   parameter  ORI_funct3 =      3'b101 ;
   parameter  ANDI_funct3 =     3'b111;
   //
   parameter	 alu_add=  4'b0000;
   parameter	 alu_sub=  4'b0001;
   parameter	 alu_lui=  4'b0010;
   parameter	 alu_and=  4'b0011;
   parameter	 alu_xor=  4'b0100;
   parameter	 alu_or =  4'b0101;
   parameter 	 alu_sll=  4'b0110;
   parameter	 alu_srl=  4'b0111;
   parameter	 alu_sra=  4'b1000;
   parameter	 alu_slt=  4'b1001;
   parameter	 alu_sltu= 4'b1010; 

//******************************************************************************
// instruction field
//******************************************************************************
	wire [6:0]		op;
	wire  	 	    funct6_7;
	wire [2:0]		funct3;
	assign op			= Instruction[6:0];
	assign funct6_7		= Instruction[30];
 	assign funct3		= Instruction[14:12];

//Define instruction types	
	wire R_type = (op == R_type_op);
	wire I_type = (op == I_type_op);
	wire SB_type = (op == SB_type_op);
	wire LW = (op == LW_op);
	wire JALR_w = (op == JALR_op);
	wire SW = (op == SW_op);
	wire LUI = (op == LUI_op);
	wire AUIPC = (op == AUIPC_op);
	wire JAL_w = (op == JAL_op);

//Control signals for memory operations
	assign MemtoReg = LW;
	assign MemRead = LW;
	assign MemWrite = SW;

//Control signal for register write
	assign RegWrite = R_type | I_type | LW | JALR_w | LUI | AUIPC | JAL_w | (SYSTEM & (CSR_op != 0));

//Jump and JALR control signals
	assign JALR = JALR_w;
	assign Jump = JAL_w | JALR_w;

//ALU source A selection
	assign ALUSrcA = JALR_w | JAL_w | AUIPC;

//ALU source B selection
	assign ALUSrcB[1] = JALR_w | JAL_w;
	assign ALUSrcB[0] = ~(R_type | JALR_w | JAL_w);

//ALU operation code
	assign ALUCode = LUI ? alu_lui :
	                 (R_type | I_type) ?
	                   ( (funct3 == 3'b000) ? (R_type & funct6_7 ? alu_sub : alu_add) :
	                     (funct3 == 3'b001) ? alu_sll :
	                     (funct3 == 3'b010) ? alu_slt :
	                     (funct3 == 3'b011) ? alu_sltu :
	                     (funct3 == 3'b100) ? alu_xor :
	                     (funct3 == 3'b101) ? (funct6_7 ? alu_sra : alu_srl) :
	                     (funct3 == 3'b110) ? alu_or :
	                     (funct3 == 3'b111) ? alu_and :
	                     alu_add
	                   ) :
	                 alu_add;

//Generate immediate and offset values
	wire Shift = I_type & ((funct3 == 3'b001) | (funct3 == 3'b101));
    wire SYSTEM = (op == SYSTEM_op);

	assign Imm = Shift ? {27'd0, Instruction[24:20]} :
	             (I_type | LW) ? {{20{Instruction[31]}}, Instruction[31:20]} :
	             SW ? {{20{Instruction[31]}}, Instruction[31:25], Instruction[11:7]} :
	             (LUI | AUIPC) ? {Instruction[31:12], 12'b0} :
                 SYSTEM ? {20'd0, Instruction[31:20]} : // Pass CSR addr as Imm? No, handle separately.
	             32'd0;

	assign offset = JALR_w ? {{20{Instruction[31]}}, Instruction[31:20]} :
	                JAL_w ? {{11{Instruction[31]}}, Instruction[31], Instruction[19:12], Instruction[20], Instruction[30:21], 1'b0} :
	                SB_type ? {{19{Instruction[31]}}, Instruction[31], Instruction[7], Instruction[30:25], Instruction[11:8], 1'b0} :
	                32'd0;
    
    // CSR Logic
    assign CSR_op = SYSTEM ? (
                    (funct3 == 3'b001) ? 2'b01 : // CSRRW
                    (funct3 == 3'b010) ? 2'b10 : // CSRRS
                    (funct3 == 3'b011) ? 2'b11 : // CSRRC
                    2'b00 ) : 2'b00;
    
    assign ECALL = SYSTEM & (funct3 == 3'b000) & (Instruction[31:20] == 12'd0);
    assign MRET  = SYSTEM & (funct3 == 3'b000) & (Instruction[31:20] == 12'h302);
    
    assign Illegal = ~(R_type | I_type | SB_type | LW | JALR_w | SW | LUI | AUIPC | JAL_w | SYSTEM);
	 
endmodule