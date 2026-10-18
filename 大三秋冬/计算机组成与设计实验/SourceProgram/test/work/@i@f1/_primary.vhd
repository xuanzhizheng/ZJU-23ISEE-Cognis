library verilog;
use verilog.vl_types.all;
entity IF1 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        Branch          : in     vl_logic;
        Jump            : in     vl_logic;
        IFWrite         : in     vl_logic;
        JumpAddr        : in     vl_logic_vector(31 downto 0);
        Instruction_if  : out    vl_logic_vector(31 downto 0);
        PC              : out    vl_logic_vector(31 downto 0);
        IF_flush        : out    vl_logic
    );
end IF1;
