library verilog;
use verilog.vl_types.all;
entity decode is
    port(
        din             : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end decode;
