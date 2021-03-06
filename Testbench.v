`timescale 1ns/100ps
`define NOCHANGE 3'b00x
`define COUNTUP  3'b010
`define COUNTDW  3'b011
`define LOAD     3'b1xx

module Lab6_testbench();
  reg Clk, Re;
  reg [31:0] Opcode;
  wire Zero;
  wire [31:0] WD, Data1, Data2, ALUResult, RD;
    
  initial
  begin
    #640 $stop;
  end
  
  initial
  begin
    Re = 0;
    Clk = 0;
    Opcode = 0;
    Gen();
  end
  
  always begin
    #10 Clk = ~Clk;
  end
  
  Lab6 Inst0(Zero, WD, Data1, Data2, ALUResult, Opcode, Clk, Re, RD);
  
  task Gen;
    begin
      @(posedge Clk) Re = 1;
      @(posedge Clk) Re = 0;
      // lw S10, 8(S0)
      Opcode = 32'b10001100000010100000000000001000;
      @(posedge Clk);
      @(posedge Clk);
      // lw S12, 16(S0)
      Opcode = 32'b10001100000011000000000000010000;
      @(posedge Clk);
      @(posedge Clk);
      // add S14, S10, S12
      Opcode = 32'b00000001010011000111000000100000;
      //@(posedge Clk);
      @(posedge Clk);
      // sw S14, 14(S0)
      Opcode = 32'b10101100000011100000000000001110;
      //@(posedge Clk);
      @(posedge Clk);
      // lw S16, 14(S0)
      Opcode = 32'b10001100000100000000000000001110;
      
    end
  endtask
endmodule
