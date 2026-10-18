library verilog;
use verilog.vl_types.all;
entity FlowingWaterLight is
    generic(
        sim             : integer := 0
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        direction       : in     vl_logic;
        led             : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of sim : constant is 1;
end FlowingWaterLight;
