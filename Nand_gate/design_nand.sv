`timescale 1ns/1ns
module nand_2(input a,b,output w);
wire y;
supply1 Vdd;
supply0 Gnd;
pmos #(5,6,7)transistor1(w,Vdd,a);
pmos #(5,6,7)transistor2(w,Vdd,b);
nmos #(3,4,5)transistor3(y,Gnd,b);
nmos #(3,4,5)transistor4(w,y,a);
endmodule

