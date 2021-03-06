module ALU(Zero, Result, A, B, ALUControl);
  output Zero;
  output reg [31:0] Result;
  input [31:0] A, B;
  input [3:0] ALUControl;
  
  always @(*)
  begin
    case(ALUControl)
      4'b0000: Result = A & B;
      4'b0001: Result = A | B;
      4'b0010: Result = A + B;
      4'b0110: Result = A - B;
      4'b0111: Result = (A<B) ? 32'd1 :  32'd0;
      4'b1100: Result = (A |~ B);
      default Result = A + B;
    endcase
  end
  assign Zero = (Result == 32'd0) ? 1'b1 : 1'b0;
endmodule
  
  