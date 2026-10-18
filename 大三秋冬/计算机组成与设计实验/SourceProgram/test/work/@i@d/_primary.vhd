library verilog;
use verilog.vl_types.all;
entity ID is
    port(
        clk             : in     vl_logic;
        Instruction_id  : in     vl_logic_vector(31 downto 0);
        PC_id           : in     vl_logic_vector(31 downto 0);
        RegWrite_wb     : in     vl_logic;
        rdAddr_wb       : in     vl_logic_vector(4 downto 0);
        RegWriteData_wb : in     vl_logic_vector(31 downto 0);
        MemRead_ex      : in     vl_logic;
        rdAddr_ex       : in     vl_logic_vector(4 downto 0);
        MemtoReg_id     : out    vl_logic;
        RegWrite_id     : out    vl_logic;
        MemWrite_id     : out    vl_logic;
        MemRead_id      : out    vl_logic;
        ALUCode_id      : out    vl_logic_vector(3 downto 0);
        ALUSrcA_id      : out    vl_logic;
        ALUSrcB_id      : out    vl_logic_vector(1 downto 0);
        Stall           : out    vl_logic;
        Branch          : out    vl_logic;
        Jump            : out    vl_logic;
        IFWrite         : out    vl_logic;
        JumpAddr        : out    vl_logic_vector(31 downto 0);
        Imm_id          : out    vl_logic_vector(31 downto 0);
        rs1Data_id      : out    vl_logic_vector(31 downto 0);
        rs2Data_id      : out    vl_logic_vector(31 downto 0);
        rs1Addr_id      : out    vl_logic_vector(4 downto 0);
        rs2Addr_id      : out    vl_logic_vector(4 downto 0);
        rdAddr_id       : out    vl_logic_vector(4 downto 0)
    );
end ID;
