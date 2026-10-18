module adder_32bits(
    input  [31:0] a,
    input  [31:0] b,
    input  ci,
    output [31:0] s,
    output co
);
    wire c1, c2, c3, c4, c5, c6, c7;  // Intermediate carry between 4-bit segments

    // Two possible results for each 4-bit segment (carry-in = 0 and 1)
    wire [3:0] s1_0, s1_1, s2_0, s2_1, s3_0, s3_1, s4_0, s4_1;
    wire [3:0] s5_0, s5_1, s6_0, s6_1, s7_0, s7_1;
    wire       co1_0, co1_1, co2_0, co2_1, co3_0, co3_1, co4_0, co4_1;
    wire       co5_0, co5_1, co6_0, co6_1, co7_0, co7_1;

    // Segment 0 (bit[3:0]): use actual carry-in
    adder_4bits u0 (.a(a[3:0]), .b(b[3:0]), .ci(ci), .s(s[3:0]), .co(c1));

    // Segment 1 (bit[7:4]): precompute for ci=0 and ci=1, select by c1
    adder_4bits u1_0 (.a(a[7:4]),   .b(b[7:4]),   .ci(1'b0), .s(s1_0), .co(co1_0));
    adder_4bits u1_1 (.a(a[7:4]),   .b(b[7:4]),   .ci(1'b1), .s(s1_1), .co(co1_1));
    assign s[7:4] = c1 ? s1_1 : s1_0;
    assign c2     = c1 ? co1_1 : co1_0;

    // Segment 2 (bit[11:8])
    adder_4bits u2_0 (.a(a[11:8]),  .b(b[11:8]),  .ci(1'b0), .s(s2_0), .co(co2_0));
    adder_4bits u2_1 (.a(a[11:8]),  .b(b[11:8]),  .ci(1'b1), .s(s2_1), .co(co2_1));
    assign s[11:8] = c2 ? s2_1 : s2_0;
    assign c3      = c2 ? co2_1 : co2_0;

    // Segment 3 (bit[15:12])
    adder_4bits u3_0 (.a(a[15:12]), .b(b[15:12]), .ci(1'b0), .s(s3_0), .co(co3_0));
    adder_4bits u3_1 (.a(a[15:12]), .b(b[15:12]), .ci(1'b1), .s(s3_1), .co(co3_1));
    assign s[15:12] = c3 ? s3_1 : s3_0;
    assign c4       = c3 ? co3_1 : co3_0;

    // Segment 4 (bit[19:16])
    adder_4bits u4_0 (.a(a[19:16]), .b(b[19:16]), .ci(1'b0), .s(s4_0), .co(co4_0));
    adder_4bits u4_1 (.a(a[19:16]), .b(b[19:16]), .ci(1'b1), .s(s4_1), .co(co4_1));
    assign s[19:16] = c4 ? s4_1 : s4_0;
    assign c5       = c4 ? co4_1 : co4_0;

    // Segment 5 (bit[23:20])
    adder_4bits u5_0 (.a(a[23:20]), .b(b[23:20]), .ci(1'b0), .s(s5_0), .co(co5_0));
    adder_4bits u5_1 (.a(a[23:20]), .b(b[23:20]), .ci(1'b1), .s(s5_1), .co(co5_1));
    assign s[23:20] = c5 ? s5_1 : s5_0;
    assign c6       = c5 ? co5_1 : co5_0;

    // Segment 6 (bit[27:24])
    adder_4bits u6_0 (.a(a[27:24]), .b(b[27:24]), .ci(1'b0), .s(s6_0), .co(co6_0));
    adder_4bits u6_1 (.a(a[27:24]), .b(b[27:24]), .ci(1'b1), .s(s6_1), .co(co6_1));
    assign s[27:24] = c6 ? s6_1 : s6_0;
    assign c7       = c6 ? co6_1 : co6_0;

    // Segment 7 (bit[31:28]): select result and output final carry
    adder_4bits u7_0 (.a(a[31:28]), .b(b[31:28]), .ci(1'b0), .s(s7_0), .co(co7_0));
    adder_4bits u7_1 (.a(a[31:28]), .b(b[31:28]), .ci(1'b1), .s(s7_1), .co(co7_1));
    assign s[31:28] = c7 ? s7_1 : s7_0;
    assign co       = c7 ? co7_1 : co7_0;

endmodule