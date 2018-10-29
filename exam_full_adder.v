module full_adder(sum,c_out,a,b,c_in);
input c_in,a,b;
output sum,c_out;
wire p,q,r;

half_adder n1(p,q,a,b);
half_adder n2(sum,r,p,c_in);
nand_or n3(c_out,q,r);
endmodule
//test
module full_adder_tb;
wire s,c_out;
reg a,b,c_in;
full_adder n1(s,c_out,a,b,c_in);
initial
begin
	a=1; b=1; c_in=1; #10;
	a=0; b=0; c_in=1; #10;
	a=1; b=1; c_in=0;#10;
	a=0; b=1; c_in=1; #10;
	a=0; b=0; c_in=0; #10;
end
endmodule
			
