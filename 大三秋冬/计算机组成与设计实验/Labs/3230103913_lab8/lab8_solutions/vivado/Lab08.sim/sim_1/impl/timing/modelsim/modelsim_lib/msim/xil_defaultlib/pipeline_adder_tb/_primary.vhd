library verilog;
use verilog.vl_types.all;
entity pipeline_adder_tb is
    generic(
        DELY            : integer := 100
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DELY : constant is 1;
end pipeline_adder_tb;
