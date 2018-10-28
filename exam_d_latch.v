module d_latch(q,q_bar,d,en);
input d,en;
output q,q_bar;
wire d_bar,r0,r1;

nand_not n1(d_bar,d);

nand n2(r0,d,en);
nand n3(r1,d_bar,en);

nand n4(q,r0,q_bar);
nand n5(q_bar,r1,q);

endmodule
//test

module d_latch_tb;
wire q,q_bar;
reg d,en;
d_latch n1(q,q_bar,d,en);
initial
begin
	#10;d=0;
	en=0; #5; en=1; #5;
	d=1;#10;
	en=0; #5; en=1; #5;
end
endmodule
