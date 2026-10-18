library verilog;
use verilog.vl_types.all;
entity Branch_test_tb is
    generic(
        SB_type_op      : vl_logic_vector(0 to 6) := (Hi1, Hi1, Hi0, Hi0, Hi0, Hi1, Hi1);
        beq_funct3      : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        bne_funct3      : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        blt_funct3      : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        bge_funct3      : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        bltu_funct3     : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0);
        bgeu_funct3     : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi1);
        dummy_imm       : vl_logic_vector(0 to 12) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        dummy_rs        : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SB_type_op : constant is 1;
    attribute mti_svvh_generic_type of beq_funct3 : constant is 1;
    attribute mti_svvh_generic_type of bne_funct3 : constant is 1;
    attribute mti_svvh_generic_type of blt_funct3 : constant is 1;
    attribute mti_svvh_generic_type of bge_funct3 : constant is 1;
    attribute mti_svvh_generic_type of bltu_funct3 : constant is 1;
    attribute mti_svvh_generic_type of bgeu_funct3 : constant is 1;
    attribute mti_svvh_generic_type of dummy_imm : constant is 1;
    attribute mti_svvh_generic_type of dummy_rs : constant is 1;
end Branch_test_tb;
