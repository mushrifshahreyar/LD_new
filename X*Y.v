module multiplier(P,A,B);
output[8:0] P;
input[3:0] A,B;
reg[8:0] P;
reg carry;
reg[3:0] M,Q;
reg[3:0] A_i;
integer count;
initial
begin
	A_i=0;
	carry=0;
	count=4;
	M=A;
	Q=B;
	#1;
	while(count != 0)
	begin
		if(Q[0] == 1)
		begin
			{carry,A_i}=A_i+M;
		end
		{carry,A_i,Q}={carry,A_i,Q}>>1;
		count=count-1;
	end
	P={carry,A_i,Q};
end

endmodule
//test
module a_m_b;
reg[3:0] a,b;
wire[3:0] p;
multiplier n1(p,a,b);
initial
begin
	a=8;
	b=4;
	#10;
end
endmodule
