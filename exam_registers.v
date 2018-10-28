module register(out,load,d,clk);
input clk,load;
input[15:0] d;
output[15:0] out;

binary_cell n1[15:0](out,load,d,clk);

endmodule
//test

module register_tb;
reg load,clk;
reg[15:0] d;
wire[15:0] out;

register n1(out,load,d,clk);
initial
begin
	d=20; load=1;
	clk=1;#2;clk=0;#2;clk=1;#2;
	d=111; load=0;
	clk=1;#2; clk=0;#2; clk=1;#2;
	d=1133; load=1;
	clk=1;#2; clk=0;#2; clk=1;#2;
end
endmodule
