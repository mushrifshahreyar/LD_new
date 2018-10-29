module division(quotient,remainder,x,y);
input[15:0] x,y;
output reg[15:0] quotient,remainder;
reg[15:0] q,m,temp;
integer i;
always@(*)
begin
	temp=0;
	#1;
	q=x;
	m=y;
	for(i=0;i<16;i=i+1)
	begin
	{temp,q}={temp,q} << 1;
		if(temp>=m)
		begin
			q[0]=1;
			temp=temp-m;
		end
	//{temp,q}={temp,q} << 1;
	end	
	quotient = q;
	remainder=temp;
end
endmodule
//test
module division_tb;
reg[15:0] x,y;
wire[15:0] remainder,quotient;
division n1(quotient,remainder,x,y);
initial
begin
	x=10;	y=2; #10;
	
	x=10;	y=11;#10;
end
endmodule
