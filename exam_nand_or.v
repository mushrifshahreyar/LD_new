module nand_or(c,a,b);
input a,b;
output c;
wire p,q;
nand n1(p,a,a);
nand n2(q,b,b);
nand n3(c,p,q);
endmodule

//test

module nand_or_tb;
wire c;
reg a,b;
nand_or n1(c,a,b);
initial
begin
	a=0; #20;
	b=0; #10;
	b=1; #10;
	a=1; #20;
	b=0; #10;
	b=1; #10;
	end
endmodule
