module Lab6(Zero, WD, Data1, Data2, ALUResult, Opcode, Clk, Re, RD);
  output wire [31:0] WD, Data1, Data2, ALUResult, RD;
  output wire Zero;
  input [31:0] Opcode;
  input Clk, Re;
  
  wire RegDst, RegWrite, ALUSrc, MemWrite, MemRead, MemToReg;
  wire [4:0] O_Mux21_5bit0;
  wire [31:0] O_Mux21_32bit1, O_Extend;
  wire [3:0] ALUControl;
  wire [1:0] ALUOp;
  
  Mux21_5bit Inst0(O_Mux21_5bit0, RegDst, Opcode[20:16], Opcode[15:11]);
  Register Inst1(Opcode[25:21], Opcode[20:16], O_Mux21_5bit0, WD, RegWrite, Data1, Data2, Clk);
  Extend16to32 Inst2(O_Extend, Opcode[15:0]);
  Mux21_32bit Inst3(O_Mux21_32bit1, ALUSrc, Data2, O_Extend);
  ALU Inst4(Zero, ALUResult, Data1, O_Mux21_32bit1, ALUControl);
  DataMem32 Inst5(ALUResult, Data2, RD, MemWrite, MemRead, Clk);
  Mux21_32bit Inst6(WD, MemToReg, ALUResult, RD);
  ALUControlUnit Inst7(ALUControl, ALUOp, Opcode[5:0]);
  ControlUnit Inst8(ALUOp ,RegDst, MemRead, MemWrite, MemToReg, ALUSrc, RegWrite, Opcode[31:26], Re);
  
  
endmodule