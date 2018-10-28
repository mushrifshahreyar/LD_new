module mux_2_1(y,s,a,b);
input a,b,s;
output y;
wire s_bar,p,q;
nand_not n1(s_bar,s);
nand_and n2(p,s_bar,a);
nand_and n3(q,s,b);

nand_or n4(y,p,q);
endmodule

//test

module mux_2_1_tb;
reg s,a,b;
wire y;
mux_2_1 n1(y,s,a,b);
initial
begin
	s=1;
	a=0; b=1; #10;
	s=0;
	a=0; b=1; #10;
end
endmodule
