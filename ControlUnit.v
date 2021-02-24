module ControlUnit(ALUOp ,RegDst, MemRead, MemWrite, MemToReg, AluSrc, RegWrite, Opcode, Re);
  input Re;
  input [5:0] Opcode;
  output reg [1:0] ALUOp;
  output reg RegDst, MemRead, MemWrite, MemToReg, AluSrc, RegWrite;
  
  always @(*)
  begin
    if(Re == 1)
      begin
        RegDst = 0;
        MemRead = 0;
        MemWrite = 0;
        MemToReg = 0;
        AluSrc = 0;
        RegWrite = 0;
        ALUOp = 0;
      end
    else
      begin
        case(Opcode)
          6'b000000: 
          begin
            RegDst = 1;
            MemRead = 0;
            MemWrite = 0;
            MemToReg = 0;
            AluSrc = 0;
            RegWrite = 1;
            ALUOp = 2'b10;
          end
          6'b100011:
          begin
            RegDst = 0;
            MemRead = 1;
            MemWrite = 0;
            MemToReg = 1;
            AluSrc = 1;
            RegWrite = 1;
            ALUOp = 2'b00;
          end
          6'b101011:
          begin
            RegDst = 1'bx;
            MemRead = 0;
            MemWrite = 1;
            MemToReg = 1'bx;
            AluSrc = 1;
            RegWrite = 0;
            ALUOp = 2'b00;
          end
          default
          begin
            RegDst = 0;
            MemRead = 0;
            MemWrite = 0;
            MemToReg = 0;
            AluSrc = 0;
            RegWrite = 0;
            ALUOp = 0; 
          end
        endcase
      end
    end
  endmodule
          
          