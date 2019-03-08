module tb2
(
);
  reg [63:0]Inst_Address;
  wire [31:0]Instruction;
  
  instruction_memory m
  (
    .Inst_Address(Inst_Address),
    .Instruction(Instruction)
  );
  
  initial
    begin
      Inst_Address = 64'b0;
      #50 Inst_Address = 64'b100;
    end
endmodule