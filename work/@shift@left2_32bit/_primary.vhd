library verilog;
use verilog.vl_types.all;
entity ShiftLeft2_32bit is
    port(
        O               : out    vl_logic_vector(31 downto 0);
        I               : in     vl_logic_vector(31 downto 0)
    );
end ShiftLeft2_32bit;
