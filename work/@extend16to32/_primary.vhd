library verilog;
use verilog.vl_types.all;
entity Extend16to32 is
    port(
        O               : out    vl_logic_vector(31 downto 0);
        I               : in     vl_logic_vector(15 downto 0)
    );
end Extend16to32;
