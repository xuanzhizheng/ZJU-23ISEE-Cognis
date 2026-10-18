library verilog;
use verilog.vl_types.all;
entity Hazard_Detector is
    port(
        MemRead_ex      : in     vl_logic;
        rdAddr_ex       : in     vl_logic_vector(4 downto 0);
        rs1Addr_id      : in     vl_logic_vector(4 downto 0);
        rs2Addr_id      : in     vl_logic_vector(4 downto 0);
        Stall           : out    vl_logic;
        IFWrite         : out    vl_logic
    );
end Hazard_Detector;
