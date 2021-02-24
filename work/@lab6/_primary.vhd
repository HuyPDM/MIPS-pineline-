library verilog;
use verilog.vl_types.all;
entity Lab6 is
    port(
        Zero            : out    vl_logic;
        WD              : out    vl_logic_vector(31 downto 0);
        Data1           : out    vl_logic_vector(31 downto 0);
        Data2           : out    vl_logic_vector(31 downto 0);
        ALUResult       : out    vl_logic_vector(31 downto 0);
        Opcode          : in     vl_logic_vector(31 downto 0);
        Clk             : in     vl_logic;
        Re              : in     vl_logic;
        RD              : out    vl_logic_vector(31 downto 0)
    );
end Lab6;
