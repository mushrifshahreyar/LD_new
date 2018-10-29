module binary_16(s,c_out,a,b,c_in);
input[15:0] a,b;
input c_in;
output[15:0] s;
output c_out;
wire p,q,r;

b_a_4 n1(s[3:0],p,a[3:0],b[3:0],c_in);
b_a_4 n2(s[7:4],q,a[7:4],b[7:4],p);
b_a_4 n3(s[11:8],r,a[11:8],b[11:8],q);
b_a_4 n4(s[15:12],c_out,a[15:12],b[15:12],r);

endmodule
//test
module binary_16_tb;
reg[15:0] a,b;
wire[15:0] s;
binary_16 n1(s, ,a,b,0);
initial
begin
	a=31;
	b=11121; #10;
end
endmodule

