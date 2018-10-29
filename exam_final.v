module final_design(product,x,y);
input[15:0] x,y;
output reg[15:0] product;
reg clk;

reg [2:0] addr;
reg load;
wire [15:0] ram_out;
reg[15:0] ram_in;
reg[15:0] rX,rY;
reg[15:0] x1,y1;
wire[31:0] r_product;
ram n1(ram_out,ram_in,clk,addr[2],addr[1], addr[0],load);
multiplication n3(r_product,rX,rY);

initial
begin
	#1;
	x1=x+y;
	y1=y-x;
	ram_in = x1;
	load = 1;
	addr = 0;
	clk = 0; #1; clk = 1; #1; clk = 0; #1;
	
	ram_in = y1;
	load=1;
	addr=1;
	clk=0; #1; clk=1; #1; clk=0; #1;
	
	load=0;
	addr=0;
	rX=ram_out;
	clk=0;#1; clk=1;#1; clk=0;#1;
	
	load=0;
	addr=1;
	rY=ram_out;
	clk=0;#1; clk=1;#1; clk=0;#1;
	
	load=1;
	addr=2;
	ram_in=r_product;
	clk=0; #1; clk=1; #1; clk=0; #1;

	load=0;
	addr=2;
	product=ram_out;
	clk=0;#1;clk=1;#1;clk=0;#1;

end

endmodule

//test
module final_design_tb;
reg[15:0] x,y;

wire[15:0] out;
final_design n1(out,x,y);


initial
begin
	x=10;
	y=20;
	#10;
	x=0;y=0;
	

end
endmodule
