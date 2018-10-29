module dff(q,q_bar,d,clk);
input d,clk;
output q,q_bar;
wire clk_bar,r;

nand_not n2(clk_bar,clk);
d_latch n1(r, ,d,clk_bar);
d_latch n3(q,q_bar,r,clk);
endmodule
//test

module dff_tb;
reg d,clk;
wire q,q_bar;

dff n1(q,q_bar,d,clk);
initial
begin
	d=1;
	clk=0; #2; clk=1; #2; clk=0; #2;
	d=0;#1;
	clk=1; #2; clk=0; #2; clk=1; #2;
end
endmodule
