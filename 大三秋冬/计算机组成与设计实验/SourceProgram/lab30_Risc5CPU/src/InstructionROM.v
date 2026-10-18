module InstructionROM(addr, dout);
    input [5 : 0] addr;
    output [31 : 0] dout;
    reg [31 : 0] dout;

    always @(*)
        case (addr)
            6'd0:  dout = 32'h00000093; // addi x1, x0, 0      (基址 = 0)
            6'd1:  dout = 32'h00500113; // addi x2, x0, 5      (预期值 = 5)
            6'd2:  dout = 32'h06300293; // addi x5, x0, 99     (x5置脏 = 99)
            6'd3:  dout = 32'h0020a223; // sw x2, 4(x1)        (Mem[4] = 5)
            
            // --- 冒险测试区 ---
            6'd4:  dout = 32'h0040a283; // lw x5, 4(x1)        (加载 Mem[4] 到 x5)
            6'd5:  dout = 32'h00228663; // beq x5, x2, PASS    (若 x5==5 跳转至 addr 8)
            
            // --- 失败分支 ---
            6'd6:  dout = 32'hbad00513; // addi x10, x0, 0xBAD (失败标记: x10=0xBAD)
            6'd7:  dout = 32'h00000463; // beq x0, x0, DONE    (跳转至结束)

            // --- 成功分支 ---
            6'd8:  dout = 32'h00100513; // addi x10, x0, 1     (成功标记: x10=1)

            // --- 结束停机 ---
            6'd9:  dout = 32'h00000063; // beq x0, x0, 0       (死循环)

            default: dout = 32'h00000013; // nop
        endcase
endmodule