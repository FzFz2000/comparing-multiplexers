`timescale 1ns/1ns
module TestBench();
logic a;
logic b;
wire out;
nand_2 gate1(a,b,out);
initial begin
#10 a=0;
#15 b=0;
#30 a=1;
#30 b=1;
#30 a=0;
#30 b=0;
#50 $stop;
end
endmodule
