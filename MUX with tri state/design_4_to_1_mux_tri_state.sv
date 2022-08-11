`timescale 1ns/1ns
module mux_tri_state(input a,b,c,d,s0,s1,output y);
supply1 vdd;
wire o1,o2,o3,o4;
tri_state g0(s0,vdd,o1);
tri_state g1(a,o1,o2);
tri_state g2(b,s0,o2);
tri_state g3(c,o1,o3);
tri_state g4(d,s0,o3);
tri_state g5(s1,vdd,o4);
tri_state g6(o2,o4,y);
tri_state g7(o3,s1,y);
endmodule