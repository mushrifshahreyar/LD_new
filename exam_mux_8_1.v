module mux_8_1(out,s2,s1,s0,i0,i1,i2,i3,i4,i5,i6,i7);
input i0,i1,i2,i3,i4,i5,i6,i7;
input s2,s1,s0;
output out;

mux_4_1 n1(p1,s1,s0,i0,i1,i2,i3);
mux_4_1 n2(p2,s1,s0,i4,i5,i6,i7);

mux_2_1 n3(out,s2,p1,p2);

endmodule
