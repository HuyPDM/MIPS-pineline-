library verilog;
use verilog.vl_types.all;
entity ControlUnit is
    port(
        ALUOp           : out    vl_logic_vector(1 downto 0);
        RegDst          : out    vl_logic;
        MemRead         : out    vl_logic;
        MemWrite        : out    vl_logic;
        MemToReg        : out    vl_logic;
        AluSrc          : out    vl_logic;
        RegWrite        : out    vl_logic;
        Opcode          : in     vl_logic_vector(5 downto 0);
        Re              : in     vl_logic
    );
end ControlUnit;
