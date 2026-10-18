library verilog;
use verilog.vl_types.all;
entity Registers is
    port(
        clk             : in     vl_logic;
        RegWrite_wb     : in     vl_logic;
        rdAddr_wb       : in     vl_logic_vector(4 downto 0);
        RegWriteData_wb : in     vl_logic_vector(31 downto 0);
        rs1Addr_id      : in     vl_logic_vector(4 downto 0);
        rs2Addr_id      : in     vl_logic_vector(4 downto 0);
        rs1Data_id      : out    vl_logic_vector(31 downto 0);
        rs2Data_id      : out    vl_logic_vector(31 downto 0)
    );
end Registers;
