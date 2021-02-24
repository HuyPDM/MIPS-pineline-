module Mux21_5bit(O, Se, I0, I1);
  input [4:0] I0, I1;
  input Se;
  output [4:0] O;
  
  Mux21 InstMux00(O[0], Se, I0[0], I1[0]);
  Mux21 InstMux01(O[1], Se, I0[1], I1[1]);
  Mux21 InstMux02(O[2], Se, I0[2], I1[2]);
  Mux21 InstMux03(O[3], Se, I0[3], I1[3]);
  Mux21 InstMux04(O[4], Se, I0[4], I1[4]);
endmodule
