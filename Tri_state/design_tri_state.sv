`timescale 1ns/1ns
module tri_state (input a,enable,output y);
supply1 vdd;
supply0 gnd;
wire b,c,d;
pmos #(5,6,7)p0(b,vdd,enable);
nmos #(3,4,5)n0(b,gnd,enable);
pmos #(5,6,7)p1(c,vdd,b);
pmos #(5,6,7)p2(y,c,a);
nmos #(3,4,5)n1(y,d,a);
nmos #(3,4,5)n2(d,gnd,enable);
endmodule

