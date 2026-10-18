library verilog;
use verilog.vl_types.all;
entity Forwarding is
    port(
        RegWrite_mem    : in     vl_logic;
        rdAddr_mem      : in     vl_logic_vector(4 downto 0);
        RegWrite_wb     : in     vl_logic;
        rdAddr_wb       : in     vl_logic_vector(4 downto 0);
        rs1Addr_ex      : in     vl_logic_vector(4 downto 0);
        rs2Addr_ex      : in     vl_logic_vector(4 downto 0);
        ForwardA        : out    vl_logic_vector(1 downto 0);
        ForwardB        : out    vl_logic_vector(1 downto 0)
    );
end Forwarding;
