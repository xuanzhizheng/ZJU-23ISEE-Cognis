library verilog;
use verilog.vl_types.all;
entity InstructionROM is
    port(
        addr            : in     vl_logic_vector(5 downto 0);
        dout            : out    vl_logic_vector(31 downto 0)
    );
end InstructionROM;
