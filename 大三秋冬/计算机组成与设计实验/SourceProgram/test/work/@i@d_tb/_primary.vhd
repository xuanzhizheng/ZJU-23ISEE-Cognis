library verilog;
use verilog.vl_types.all;
entity ID_tb is
    generic(
        ADDI            : integer := 10814099;
        LW              : integer := 4367107;
        ADD             : integer := 7504691;
        BEQ             : integer := 7504483
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDI : constant is 1;
    attribute mti_svvh_generic_type of LW : constant is 1;
    attribute mti_svvh_generic_type of ADD : constant is 1;
    attribute mti_svvh_generic_type of BEQ : constant is 1;
end ID_tb;
