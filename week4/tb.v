module tb
(
);
reg[31:0] instruction;
wire [6:0] opcode;
wire [4:0] rd;
wire [2:0] funct3;
wire [4:0] rs1;
wire [4:0] rs2;
wire [6:0] funct7;
	

instruction_parser i
(
.instruction(instruction),
.opcode(opcode),
.rd(rd),
.funct3(funct3),
.rs1(rs1),
.rs2(rs2),
.funct7(funct7)
);

initial
begin
    instruction = 32'b11010001100110000101010110001111;
    #50 instruction = 32'b00110001111110000101000111101010;
end


endmodule