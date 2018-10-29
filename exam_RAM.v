module ram(out,d,clk,a2,a1,a0,en);
input a2,a1,a0,clk,en;
input[15:0] d;
output[15:0] out;
wire i0,i1,i2,i3,i4,i5,i6,i7;
wire[15:0] p1,p2,p3,p4,p5,p6,p7,p8;

decoder n10(i7,i6,i5,i4,i3,i2,i1,i0,a2,a1,a0,en);

register n1(p1,i0,d,clk);
register n2(p2,i1,d,clk);
register n3(p3,i2,d,clk);
register n4(p4,i3,d,clk);
register n5(p5,i4,d,clk);
register n6(p6,i5,d,clk);
register n7(p7,i6,d,clk);
register n8(p8,i7,d,clk);

mux_8_1_16 n9(out,a2,a1,a0,p1,p2,p3,p4,p5,p6,p7,p8);


endmodule
//test

module ram_tb;
reg a2,a1,a0,clk,en;
reg[15:0] d;
wire[15:0] out;
ram n1(out,d,clk,a2,a1,a0,en);
integer i;
initial
begin
	clk=0;#2;clk=1;#2;clk=0;#2;
	d=100; a2=0; a1=0; a0=1; en=1;
	clk=0; #2; clk=1; #2; clk=1;#2;
	d=222; a2=0; a1=0; a0=1; en=0;
	clk=0;#2;clk=1;#2;clk=0;#2;
	clk=1;#2;clk=0;#2;clk=1;#2;
	d=1;a2=1;a1=1;a0=1;en=1;
	 #2 ;clk=0;#2;clk=1;#2;clk=0;#2;
	d=111; a2=0; a1=0; a0=0; en=1; 
	#2; clk=0;#2;clk=1;#2;clk=0;#2;
	#100;

end
endmodule
