module binary_cell(out,load,d,clk);
input d,load,clk;
output out;
wire p,out_bar;

mux_2_1 n6(p,load,out,d);
dff n2(out, ,p,clk);

endmodule
//test

module binary_cell_tb;
reg d,clk,load;
wire out;
binary_cell n1(out,load,d,clk);
initial
begin
	d=1;
	clk=0; #2; clk=1;#2;clk=0;#2;
	load=1;
	clk=0;#2;clk=1;#2;clk=0;#2;
	d=0; load=0;
	clk=0;#2;clk=1;#2;clk=0;#2;
	d=1; load=0;
	clk=1;#2;clk=0;#2;clk=1;#2;
end
endmodule
	