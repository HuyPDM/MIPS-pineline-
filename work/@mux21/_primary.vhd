library verilog;
use verilog.vl_types.all;
entity Mux21 is
    port(
        O               : out    vl_logic;
        Se              : in     vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic
    );
end Mux21;
