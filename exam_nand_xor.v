module nand_xor(c,a,b);
input a,b;
output c;
wire p,q,r;
nand n1(p,a,b);
nand n2(q,p,a);
nand n3(r,p,b);
nand n4(c,q,r);
endmodule
//test

module nand_xor_tb;
wire c;
reg a,b;
nand_xor n1(c,a,b);
initial
begin
	a=1; b=0;
	#10;
	a=1;b=1;
	#10;
	a=0;b=0;
	#10;
	a=0; b=1;
	$display("%d",c);
	#10;
	
end
endmodule
