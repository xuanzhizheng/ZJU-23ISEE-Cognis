library verilog;
use verilog.vl_types.all;
entity Risc5CPU is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        JumpFlag        : out    vl_logic_vector(1 downto 0);
        Instruction_id  : out    vl_logic_vector(31 downto 0);
        ALU_A           : out    vl_logic_vector(31 downto 0);
        ALU_B           : out    vl_logic_vector(31 downto 0);
        ALUResult_ex    : out    vl_logic_vector(31 downto 0);
        PC              : out    vl_logic_vector(31 downto 0);
        MemDout_mem     : out    vl_logic_vector(31 downto 0);
        Stall           : out    vl_logic
    );
end Risc5CPU;
