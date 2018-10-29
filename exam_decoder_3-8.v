module decoder(i7,i6,i5,i4,i3,i2,i1,i0,a2,a1,a0,en);
input a2,a1,a0,en;
output i7,i6,i5,i4,i3,i2,i1,i0;
wire r0,r1,r2,r3,r4,r5,r6,r7,p0,p1,p2,p3,p4,p5,p6,p7;
wire a0_bar,a1_bar,a2_bar;

nand_not n1(a0_bar,a0);
nand_not n2(a1_bar,a1);
nand_not n3(a2_bar,a2);

nand_and n4(r0,a2_bar,a1_bar);
nand_and n5(p0,r0,a0_bar);
nand_and n21(i0,p0,en);

nand_and n6(r1,a2_bar,a1_bar);
nand_and n7(p1,r1,a0);
nand_and n22(i1,p1,en);

nand_and n8(r2,a2_bar,a1);
nand_and n9(p2,r2,a0_bar);
nand_and n23(i2,p2,en);

nand_and n10(r3,a2_bar,a1);
nand_and n11(p3,r3,a0);
nand_and n24(i3,p3,en);

nand_and n12(r4,a2,a1_bar);
nand_and n13(p4,r4,a0_bar);
nand_and n25(i4,p4,en);

nand_and n15(r5,a2,a1_bar);
nand_and n20(p5,r5,a0);
nand_and n26(i5,p5,en);

nand_and n16(r6,a2,a1);
nand_and n17(p6,r6,a0_bar);
nand_and n27(i6,p6,en);

nand_and n18(r7,a2,a1);
nand_and n19(p7,r7,a0);
nand_and n28(i7,p7,en);

endmodule
//test
module decoder_tb;
reg a2,a1,a0,en;
wire i7,i6,i5,i4,i3,i2,i1,i0;
decoder n1(i7,i6,i5,i4,i3,i2,i1,i0,a2,a1,a0,en);
initial
begin
	a2=0; a1=0; a0=0; en=0; #10;
	a2=0; a1=0; a0=1; en=1; #10;
	a2=0; a1=1; a0=0; en=1; #10;
	a2=0; a1=1; a0=1; en=0; #10;
	a2=1; a1=0; a0=0; en=1; #10;
	a2=1; a1=0; a0=1; en=0; #10;
	a2=1; a1=1; a0=0; en=1; #10;
	a2=1; a1=1; a0=1; en=1; #10;
end
endmodule
