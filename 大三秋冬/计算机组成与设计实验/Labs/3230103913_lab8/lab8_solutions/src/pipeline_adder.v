`timescale 1ns/10ps
module pipeline_adder (
    input clk,
    input [31:0] a,
    input [31:0] b,
    input ci,
    output reg [31:0] s,
    output reg co
);

    // 第1级流水线寄存器
    reg [31:0] a_reg1, b_reg1;
    reg        ci_reg1;

    // 第2级流水线寄存器
    reg [23:0] a_reg2, b_reg2;  // 剩余高24位数据
    reg [7:0]  s0_reg2;          // 第0段(bit[7:0])的和
    reg        c1_reg2;          // 第0段产生的进位

    // 第3级流水线寄存器
    reg [15:0] a_reg3, b_reg3;  // 剩余高16位数据
    reg [7:0]  s0_reg3, s1_reg3; // 第0、1段的和
    reg        c2_reg3;          // 第1段产生的进位

    // 第4级流水线寄存器
    reg [7:0]  a_reg4, b_reg4;   // 剩余高8位数据
    reg [7:0]  s0_reg4, s1_reg4, s2_reg4;  // 第0、1、2段的和
    reg        c3_reg4;          // 第2段产生的进位

    always @(posedge clk) begin
        // --- 第1级流水线: 输入数据寄存 ---
        a_reg1  <= a;
        b_reg1  <= b;
        ci_reg1 <= ci;

        // --- 第2级流水线: 计算bit[7:0]，传递高24位 ---
        {c1_reg2, s0_reg2} <= a_reg1[7:0] + b_reg1[7:0] + ci_reg1;
        a_reg2 <= a_reg1[31:8];
        b_reg2 <= b_reg1[31:8];

        // --- 第3级流水线: 计算bit[15:8]，传递高16位和bit[7:0]结果 ---
        {c2_reg3, s1_reg3} <= a_reg2[7:0] + b_reg2[7:0] + c1_reg2;
        a_reg3 <= a_reg2[23:8];
        b_reg3 <= b_reg2[23:8];
        s0_reg3 <= s0_reg2;

        // --- 第4级流水线: 计算bit[23:16]，传递高8位和bit[15:0]结果 ---
        {c3_reg4, s2_reg4} <= a_reg3[7:0] + b_reg3[7:0] + c2_reg3;
        a_reg4 <= a_reg3[15:8];
        b_reg4 <= b_reg3[15:8];
        s1_reg4 <= s1_reg3;
        s0_reg4 <= s0_reg3;

        // --- 第5级流水线: 计算bit[31:24]，组装最终结果 ---
        {co, s[31:24]} <= a_reg4 + b_reg4 + c3_reg4;
        s[23:16] <= s2_reg4;
        s[15:8]  <= s1_reg4;
        s[7:0]   <= s0_reg4;
    end

endmodule