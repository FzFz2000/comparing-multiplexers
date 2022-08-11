`timescale 1ns/1ns
module mux_nand(input a,b,c,d,s0,s1,output yy);
wire o1,o2,o3,o4,o5,o6,o7,o8,o9,o10;
nand_2 g0(s0,d,o1);
nand_2 g1(s0,s0,o2);
nand_2 g2(o2,c,o10);
nand_2 g3(o1,o10,o3);
nand_2 g4(s0,b,o4);
nand_2 g5(o2,a,o5);
nand_2 g6(o4,o5,o6);
nand_2 g7(s1,s1,o7);
nand_2 g8(o6,o7,o8);
nand_2 g9(s1,o3,o9);
nand_2 g10(o8,o9,yy);
endmodule
