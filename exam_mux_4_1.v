module mux_4_1(out,s1,s0,a,b,c,d);
input a,b,c,d,s1,s0;
output out;
wire p1,p2;

mux_2_1 n1(p1,s0,a,b);
mux_2_1 n2(p2,s0,c,d);

mux_2_1 n3(out,s1,p1,p2);

endmodule
//test

module mux_4_1_tb;
reg s1,s0,a,b,c,d;
wire out;
mux_4_1 n1(out,s1,s0,a,b,c,d);
initial
begin
	s1=0; s0=0; a=1; b=0; c=0; d=0; #10;
	s1=0; s0=1; a=0; b=1; c=0; d=0; #10;
	s1=1; s0=0; a=0; b=0; c=1; d=0; #10;
	s1=1; s0=1; a=0; b=0; c=0; d=1; #10;
end
endmodule
