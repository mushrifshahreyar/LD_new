module decoder(i7,i6,i5,i4,i3,i2,i1,i0,a2,a1,a0);
input a2,a1,a0;
output i7,i6,i5,i4,i3,i2,i1,i0;
wire r0,r1,r2,r3,r4,r5,r6,r7;
wire a0_bar,a1_bar,a2_bar;

nand_not n1(a0_bar,a0);
nand_not n2(a1_bar,a1);
nand_not n3(a2_bar,a2);

nand_and n4(r0,a2_bar,a1_bar);
nand_and n5(i0,r0,a0_bar);

nand_and n6(r1,a2_bar,a1_bar);
nand_and n7(i1,r1,a0);

nand_and n8(r2,a2_bar,a1);
nand_and n9(i2,r2,a0_bar);

nand_and n10(r3,a2_bar,a1);
nand_and n11(i3,r3,a0);

nand_and n12(r4,a2,a1_bar);
nand_and n13(i4,r4,a0_bar);

nand_and n15(r5,a2,a1_bar);
nand_and n20(i5,r5,a0);

nand_and n16(r6,a2,a1);
nand_and n17(i6,r6,a0_bar);

nand_and n18(r7,a2,a1);
nand_and n19(i7,r7,a0);

endmodule
//test
module decoder_tb;
reg a2,a1,a0;
wire i7,i6,i5,i4,i3,i2,i1,i0;
decoder n1(i7,i6,i5,i4,i3,i2,i1,i0,a2,a1,a0);
initial
begin
	a2=0; a1=0; a0=0; #10;
	a2=0; a1=0; a0=1; #10;
	a2=0; a1=1; a0=0; #10;
	a2=0; a1=1; a0=1; #10;
	a2=1; a1=0; a0=0; #10;
	a2=1; a1=0; a0=1; #10;
	a2=1; a1=1; a0=0; #10;
	a2=1; a1=1; a0=1; #10;
end
endmodule
