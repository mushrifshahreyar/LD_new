module mux_8_1_16(out,s2,s1,s0,i0,i1,i2,i3,i4,i5,i6,i7);
input[15:0] i0,i1,i2,i3,i4,i5,i6,i7;
input s2,s1,s0;

output[15:0] out;

mux_8_1 n1[15:0](out,s2,s1,s0,i0,i1,i2,i3,i4,i5,i6,i7);

endmodule
//test
module mux_8_1_16_tb;
reg[15:0] i0,i1,i2,i3,i4,i5,i6,i7;
reg s2,s1,s0;
wire[15:0] out;

mux_8_1_16 n1(out,s2,s1,s0,i0,i1,i2,i3,i4,i5,i6,i7);
initial
begin
	s2=0; s1=0; s0=0; i0=10; i1=22; i2=2; i3=12; i4=233; i5=32; i6=23; i7=231; #10;
end
endmodule

