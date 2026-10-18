`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: CSR
// Function: Control and Status Registers for Exception Handling
//////////////////////////////////////////////////////////////////////////////////
module CSR(
    input clk,
    input reset,
    
    // CSR Access Interface
    input [11:0] csr_addr,
    input [31:0] csr_wdata,
    input [1:0]  csr_op,      // 00: Read only, 01: Write (CSRRW), 10: Set (CSRRS), 11: Clear (CSRRC)
    output reg [31:0] csr_rdata,
    
    // Exception/Trap Interface
    input trap_en,            // Trigger trap
    input mret_en,            // Return from trap
    input [31:0] pc_in,       // Current PC (for mepc)
    input [31:0] cause_in,    // Exception cause (for mcause)
    
    output [31:0] trap_pc_out,// Trap handler address (mtvec)
    output [31:0] epc_out,    // Return address (mepc)
    output [31:0] mcause_out  // Exception cause (mcause)
);

    // CSR Addresses
    localparam MTVEC   = 12'h305;
    localparam MEPC    = 12'h341;
    localparam MCAUSE  = 12'h342;
    localparam MSTATUS = 12'h300;

    // Registers
    reg [31:0] mtvec;
    reg [31:0] mepc;
    reg [31:0] mcause;
    reg [31:0] mstatus;

    // Read Logic
    always @(*) begin
        case (csr_addr)
            MTVEC:   csr_rdata = mtvec;
            MEPC:    csr_rdata = mepc;
            MCAUSE:  csr_rdata = mcause;
            MSTATUS: csr_rdata = mstatus;
            default: csr_rdata = 32'd0;
        endcase
    end

    // Write Logic & Trap Handling
    always @(posedge clk) begin
        if (reset) begin
            mtvec   <= 32'd0;
            mepc    <= 32'd0;
            mcause  <= 32'd0;
            mstatus <= 32'd0;
        end else if (trap_en) begin
            mepc   <= pc_in;
            mcause <= cause_in;
            // mstatus logic can be added here (MIE/MPIE)
        end else if (csr_op != 2'b00) begin
            case (csr_addr)
                MTVEC:   mtvec   <= get_new_val(mtvec, csr_wdata, csr_op);
                MEPC:    mepc    <= get_new_val(mepc, csr_wdata, csr_op);
                MCAUSE:  mcause  <= get_new_val(mcause, csr_wdata, csr_op);
                MSTATUS: mstatus <= get_new_val(mstatus, csr_wdata, csr_op);
            endcase
        end
    end

    // Helper function for CSR operations
    function [31:0] get_new_val;
        input [31:0] old_val;
        input [31:0] write_val;
        input [1:0]  op;
        begin
            case (op)
                2'b01: get_new_val = write_val;           // CSRRW
                2'b10: get_new_val = old_val | write_val; // CSRRS
                2'b11: get_new_val = old_val & ~write_val;// CSRRC
                default: get_new_val = old_val;
            endcase
        end
    endfunction

    assign trap_pc_out = mtvec;
    assign epc_out     = mepc;
    assign mcause_out  = mcause;

endmodule
