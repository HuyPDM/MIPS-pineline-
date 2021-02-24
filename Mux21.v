module Mux21(O, Se, I0, I1);
  input Se, I1, I0;
  output O;
  wire nSe, a1, a2;
  
  not notSe(nSe, Se);
  and and1(a1, nSe, I0);
  and and2(a2, Se, I1);
  or orO(O, a1, a2);
endmodule