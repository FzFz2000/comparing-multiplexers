`timescale 1ns/1ns
module TestBench_mux_nand();
logic a,b,c,d,select0,select1;
wire out;
mux_nand the_mux1 (a,b,c,d,select0,select1,out);
initial begin
#10 a=0;
#1 b=0;
#1 c=0;
#1 d=0;
#20 select0=0;
#1  select1=0;
#100 a=1;
#100 a=0;
#100 select0=1;
#100 b=1;
#100 select1=1;
#100 d=1;
#100 d=0;
#100 select0=0;
#100 a=1;
#100 a=0;
#110 $stop;
end
endmodule

