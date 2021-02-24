library verilog;
use verilog.vl_types.all;
entity DataMem32 is
    port(
        Adr             : in     vl_logic_vector(31 downto 0);
        Wrd             : in     vl_logic_vector(31 downto 0);
        Rd              : out    vl_logic_vector(31 downto 0);
        MemWr           : in     vl_logic;
        MemR            : in     vl_logic;
        Clk             : in     vl_logic
    );
end DataMem32;
