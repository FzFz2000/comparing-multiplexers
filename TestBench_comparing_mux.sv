`timescale 1ns/1ns
module TestBench_comparing();
wire out_nand;
wire out_tri_state;
logic a,b,c,d,select0,select1;
mux_nand mux1(a,b,c,d,select0,select1,out_nand);
mux_tri_state mux2(a,b,c,d,select0,select1,out_tri_state);
initial begin
#10 select0=0;
#1 select1=0;
#10 a=0;
#10 b=0;
#10 c=1;
#10 d=0;
#70 a=1;
#70 a=0;
#70 select1=1;
#70 c=0;
#70 c=1;
#70 select0=1;
#70 select0=0;
#100 $stop;
end
endmodule
