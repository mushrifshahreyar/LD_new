module division(quotient,remainder,A,B);
input[3:0] A,B;
output reg[3:0] remainder,quotient;
reg [3:0] m,q,temp;
integer i;
always @(*)
begin
	temp=4'b0;
	#1;
	q=A;
	m=B;
	for(i=0;i<4;i=i+1)
	begin
		{temp,q}={temp,q} << 1;
		/*temp=temp-m;
		if(temp < 0)
		begin
			q[0]=0;
			temp=temp+m;
		end
		else
		begin
			q[0]=1;
		end*/
		if(temp>=m)
		begin	
			q[0]=1;
			temp=temp-m;
			$display("%d %d",temp,q);
		end
		else
		begin
			q[0]=0;
		end
	end
	quotient=q;
	remainder=temp;
end
endmodule
//test
module division_s;
reg[3:0] a,b;
wire[3:0] remainder,quotient;
division n1(quotient,remainder,a,b);
initial
begin
	a=6;
	b=1;
	#10;
end
endmodule
