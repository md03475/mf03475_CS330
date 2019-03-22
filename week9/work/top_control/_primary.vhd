library verilog;
use verilog.vl_types.all;
entity top_control is
    port(
        Opcode          : in     vl_logic_vector(6 downto 0);
        Funct           : in     vl_logic_vector(3 downto 0);
        Operation       : out    vl_logic_vector(3 downto 0)
    );
end top_control;
