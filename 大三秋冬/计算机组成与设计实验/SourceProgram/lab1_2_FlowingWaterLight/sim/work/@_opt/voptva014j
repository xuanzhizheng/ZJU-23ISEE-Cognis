library verilog;
use verilog.vl_types.all;
entity counter_n is
    generic(
        n               : integer := 2;
        counter_bits    : integer := 1
    );
    port(
        clk             : in     vl_logic;
        en              : in     vl_logic;
        r               : in     vl_logic;
        q               : out    vl_logic_vector;
        co              : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
    attribute mti_svvh_generic_type of counter_bits : constant is 1;
end counter_n;
