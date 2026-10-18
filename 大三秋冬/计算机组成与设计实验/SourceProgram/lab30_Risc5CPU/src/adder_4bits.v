module adder_4bits(
    input  [3:0] a,
    input  [3:0] b,
    input  ci,
    output [3:0] s,
    output co
);

    wire [3:0] g;  // Generate
    wire [3:0] p;  // Propagate
    wire [2:0] c;  // Intermediate carry

    // Generate and propagate signals
    assign g = a & b;
    assign p = a | b;

    // Carry lookahead logic
    assign c[0] = g[0] | (p[0] & ci);
    assign c[1] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & ci);
    assign c[2] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & ci);
    assign co = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & ci);

    // Sum calculation
    assign s[0] = (p[0] & ~g[0]) ^ ci;
    assign s[1] = (p[1] & ~g[1]) ^ c[0];
    assign s[2] = (p[2] & ~g[2]) ^ c[1];
    assign s[3] = (p[3] & ~g[3]) ^ c[2];

endmodule