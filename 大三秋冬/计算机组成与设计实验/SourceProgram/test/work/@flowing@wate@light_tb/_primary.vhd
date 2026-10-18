library verilog;
use verilog.vl_types.all;
entity FlowingWateLight_tb is
    generic(
        DELY            : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DELY : constant is 1;
end FlowingWateLight_tb;
