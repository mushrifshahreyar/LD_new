module ram(out,d,clk,a2,a1,a0);
input a2,a1,a0,clk;
input[15:0] d;
output[15:0] out;
wire i0,i1,i2,i3,i4,i5,i6,i7;

decoder n0(i7,i6,i5,i4,i3,i2,i1,i0,a2,a1,a0);

register n1(out,i0,d,clk);
register n2(out,i1,d,clk);
register n3(out,i2,d,clk);
register n4(out,i3,d,clk);
register n5(out,i4,d,clk);
register n6(out,i5,d,clk);
register n7(out,i6,d,clk);
register n8(out,i7,d,clk);

endmodule
//test

module ram_tb;
reg a2,a1,a0,clk;
reg[15:0] d;
wire[15:0] out;
ram n1(out,d,clk,a2,a1,a0);
integer i;
initial
begin
	d=100; a2=0; a1=0; a0=1;
	clk=1;#2;clk=0;#2;clk=1;#2;
	clk=1;#2;clk=0;#2;clk=1;#2;
	d=1;a2=1;a1=1;a0=1;
	clk=1;#2;clk=0;#2;clk=1;#2;
	for(i=0;i<10;i=i+1)
	begin
	clk=0;#2;clk=1;#2;clk=0;#2;
	end
end
endmodule
