library verilog;
use verilog.vl_types.all;
entity EX is
    port(
        ALUCode_ex      : in     vl_logic_vector(3 downto 0);
        ALUSrcA_ex      : in     vl_logic;
        ALUSrcB_ex      : in     vl_logic_vector(1 downto 0);
        Imm_ex          : in     vl_logic_vector(31 downto 0);
        rs1Addr_ex      : in     vl_logic_vector(4 downto 0);
        rs2Addr_ex      : in     vl_logic_vector(4 downto 0);
        rs1Data_ex      : in     vl_logic_vector(31 downto 0);
        rs2Data_ex      : in     vl_logic_vector(31 downto 0);
        PC_ex           : in     vl_logic_vector(31 downto 0);
        RegWriteData_wb : in     vl_logic_vector(31 downto 0);
        rdAddr_wb       : in     vl_logic_vector(4 downto 0);
        RegWrite_wb     : in     vl_logic;
        ALUResult_mem   : in     vl_logic_vector(31 downto 0);
        rdAddr_mem      : in     vl_logic_vector(4 downto 0);
        RegWrite_mem    : in     vl_logic;
        ALUResult_ex    : out    vl_logic_vector(31 downto 0);
        MemWriteData_ex : out    vl_logic_vector(31 downto 0);
        ALU_A           : out    vl_logic_vector(31 downto 0);
        ALU_B           : out    vl_logic_vector(31 downto 0)
    );
end EX;
