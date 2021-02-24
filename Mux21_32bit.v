module Mux21_32bit(O, Se, I0, I1);
  input [31:0] I0, I1;
  input Se;
  output [31:0] O;
  
  Mux21 InstMux00(O[0], Se, I0[0], I1[0]);
  Mux21 InstMux01(O[1], Se, I0[1], I1[1]);
  Mux21 InstMux02(O[2], Se, I0[2], I1[2]);
  Mux21 InstMux03(O[3], Se, I0[3], I1[3]);
  Mux21 InstMux04(O[4], Se, I0[4], I1[4]);
  Mux21 InstMux05(O[5], Se, I0[5], I1[5]);
  Mux21 InstMux06(O[6], Se, I0[6], I1[6]);
  Mux21 InstMux07(O[7], Se, I0[7], I1[7]);
  Mux21 InstMux08(O[8], Se, I0[8], I1[8]);
  Mux21 InstMux09(O[9], Se, I0[9], I1[9]);
  Mux21 InstMux10(O[10], Se, I0[10], I1[10]);
  Mux21 InstMux11(O[11], Se, I0[11], I1[11]);
  Mux21 InstMux12(O[12], Se, I0[12], I1[12]);
  Mux21 InstMux13(O[13], Se, I0[13], I1[13]);
  Mux21 InstMux14(O[14], Se, I0[14], I1[14]);
  Mux21 InstMux15(O[15], Se, I0[15], I1[15]);
  Mux21 InstMux16(O[16], Se, I0[16], I1[16]);
  Mux21 InstMux17(O[17], Se, I0[17], I1[17]);
  Mux21 InstMux18(O[18], Se, I0[18], I1[18]);
  Mux21 InstMux19(O[19], Se, I0[19], I1[19]);
  Mux21 InstMux20(O[20], Se, I0[20], I1[20]);
  Mux21 InstMux21(O[21], Se, I0[21], I1[21]);
  Mux21 InstMux22(O[22], Se, I0[22], I1[22]);
  Mux21 InstMux23(O[23], Se, I0[23], I1[23]);
  Mux21 InstMux24(O[24], Se, I0[24], I1[24]);
  Mux21 InstMux25(O[25], Se, I0[25], I1[25]);
  Mux21 InstMux26(O[26], Se, I0[26], I1[26]);
  Mux21 InstMux27(O[27], Se, I0[27], I1[27]);
  Mux21 InstMux28(O[28], Se, I0[28], I1[28]);
  Mux21 InstMux29(O[29], Se, I0[29], I1[29]);
  Mux21 InstMux30(O[30], Se, I0[30], I1[30]);
  Mux21 InstMux31(O[31], Se, I0[31], I1[31]);
  
endmodule
