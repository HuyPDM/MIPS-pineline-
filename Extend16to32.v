module Extend16to32(O, I);
  input [15:0] I;
  output [31:0] O;
  
  buf InstBuf00(O[0], I[0]);
  buf InstBuf01(O[1], I[1]);
  buf InstBuf02(O[2], I[2]);
  buf InstBuf03(O[3], I[3]);
  buf InstBuf04(O[4], I[4]);
  buf InstBuf05(O[5], I[5]);
  buf InstBuf06(O[6], I[6]);
  buf InstBuf07(O[7], I[7]);
  buf InstBuf08(O[8], I[8]);
  buf InstBuf09(O[9], I[9]);
  buf InstBuf10(O[10], I[10]);
  buf InstBuf11(O[11], I[11]);
  buf InstBuf12(O[12], I[12]);
  buf InstBuf13(O[13], I[13]);
  buf InstBuf14(O[14], I[14]);
  buf InstBuf15(O[15], I[15]);
  buf InstBuf16(O[16], 0);
  buf InstBuf17(O[17], 0);
  buf InstBuf18(O[18], 0);
  buf InstBuf19(O[19], 0);
  buf InstBuf20(O[20], 0);
  buf InstBuf21(O[21], 0);
  buf InstBuf22(O[22], 0);
  buf InstBuf23(O[23], 0);
  buf InstBuf24(O[24], 0);
  buf InstBuf25(O[25], 0);
  buf InstBuf26(O[26], 0);
  buf InstBuf27(O[27], 0);
  buf InstBuf28(O[28], 0);
  buf InstBuf29(O[29], 0);
  buf InstBuf30(O[30], 0);
  buf InstBuf31(O[31], 0);
  
endmodule

