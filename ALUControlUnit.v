module ALUControlUnit(ALUControl, ALUOp, Funct);
  output reg [3:0] ALUControl;
  input [1:0] ALUOp;
  input [5:0] Funct;
  
  wire [7:0] ALUControlIn;
  assign ALUControlIn = {ALUOp, Funct};
  
  always @(ALUControlIn)
  begin
    casex (ALUControlIn)
     8'b00xxxxxx: ALUControl = 4'b0010;
     8'b01xxxxxx: ALUControl = 4'b0110;
     8'b10xx0000: ALUControl = 4'b0010;
     8'b1xxx0010: ALUControl = 4'b0110;
     8'b10xx0100: ALUControl = 4'b0000;
     8'b10xx0101: ALUControl = 4'b0001;
     8'b1xxx1010: ALUControl = 4'b0111;
     default: ALUControl = 4'b0010;
    endcase
  end
endmodule