module multiplier(product,A,B);
input[3:0] A,B;
output reg[7:0] product;

reg[3:0] M,Q,temp;
reg c;
integer i;
initial
begin
	product=0;
	temp=4'b0;
	#1;
	M=A;
	Q=B;
	c=0;
	
	for(i=0;i<4;i=i+1)
	begin
		if(Q[0])
		begin
		{c,temp}=temp+M;
		end
		{c,temp,Q}={c,temp,Q} >> 1;
	end
	product={temp,Q};
end
endmodule
//test
module multiplier_s;
reg[3:0] A,B;
wire[7:0] product;
multiplier n1(product,A,B);
initial
begin
	A=4; B=2;
	#10;
end
endmodule
