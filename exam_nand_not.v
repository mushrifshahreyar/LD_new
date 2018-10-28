module nand_not(c,a);
input a;
output c;
nand n1(c,a,a);
endmodule
//test
module nand_not_tb;
wire c;
reg a;
nand_not n1(c,a);
initial
begin
	a=1;
	a=0;
end
endmodule
