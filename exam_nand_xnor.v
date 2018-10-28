module nand_xnor(c,a,b);
input a,b;
output c;
wire r;
nand_xor n1(r,a,b);
nand_not n2(c,r);
endmodule
//test
module nand_xnor_tb;
reg a,b;
wire c;
nand_xnor n1(c,a,b);
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
