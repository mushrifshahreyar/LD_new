module multiplication(product,x,y);
input[15:0] x,y;
output reg[31:0] product;
reg carry;
reg[15:0] m,q,temp;

integer i;
always @(*)
begin
	product=0;
	temp=0;
	#1;
	m=x;
	q=y;
	for(i=0;i<16;i=i+1)
	begin
		carry=0;
		if(q[0])
		begin
			{carry,temp}=temp+m;
		end
		{temp,q}={carry,temp,q} >> 1;
		
	end
	product={temp,q};
end
endmodule
//test
module muliply_tb;
reg[15:0] x,y;
wire[31:0] product;
multiplication n1(product,x,y);
initial
begin
	x=10;
	y=2; #10;
end
endmodule
