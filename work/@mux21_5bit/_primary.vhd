library verilog;
use verilog.vl_types.all;
entity Mux21_5bit is
    port(
        O               : out    vl_logic_vector(4 downto 0);
        Se              : in     vl_logic;
        I0              : in     vl_logic_vector(4 downto 0);
        I1              : in     vl_logic_vector(4 downto 0)
    );
end Mux21_5bit;
