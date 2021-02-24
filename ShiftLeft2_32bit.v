module ShiftLeft2_32bit(O, I);
  input [31:0] I;
  output [31:0] O;
  
  buf InstBuf30(O[0], 0);
  buf InstBuf31(O[1], 0);
  buf InstBuf00(O[2], I[0]);
  buf InstBuf01(O[3], I[1]);
  buf InstBuf02(O[4], I[2]);
  buf InstBuf03(O[5], I[3]);
  buf InstBuf04(O[6], I[4]);
  buf InstBuf05(O[7], I[5]);
  buf InstBuf06(O[8], I[6]);
  buf InstBuf07(O[9], I[7]);
  buf InstBuf08(O[10], I[8]);
  buf InstBuf09(O[11], I[9]);
  buf InstBuf10(O[12], I[10]);
  buf InstBuf11(O[13], I[11]);
  buf InstBuf12(O[14], I[12]);
  buf InstBuf13(O[15], I[13]);
  buf InstBuf14(O[16], I[14]);
  buf InstBuf15(O[17], I[15]);
  buf InstBuf16(O[18], I[16]);
  buf InstBuf17(O[19], I[17]);
  buf InstBuf18(O[20], I[18]);
  buf InstBuf19(O[21], I[19]);
  buf InstBuf20(O[22], I[20]);
  buf InstBuf21(O[23], I[21]);
  buf InstBuf22(O[24], I[22]);
  buf InstBuf23(O[25], I[23]);
  buf InstBuf24(O[26], I[24]);
  buf InstBuf25(O[27], I[25]);
  buf InstBuf26(O[28], I[26]);
  buf InstBuf27(O[29], I[27]);
  buf InstBuf28(O[30], I[28]);
  buf InstBuf29(O[31], I[29]);
  
endmodule