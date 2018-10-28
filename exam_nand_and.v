module nand_and(c,a,b);
input a,b;
output c;
wire r;
nand n1(r,a,b);
nand n2(c,r,r);
endmodule
//test
module nand_and_tb;
wire c;
reg a,b;
nand_and n1(c,a,b);
initial
begin
	a=1; b=0;
	#10;
	a=1;b=1;
	#10;
	a=0;b=0;
	#10;
	a=0; b=1;
	#10;
end
endmodule
