`timescale 1ns/1ns
module tri_state_TestBench();
logic a;
logic enable;
wire y;
tri_state the_tri_state(a,en,y);
initial begin
#10  en=0;
#1   a=0;
#100 a=1;
#170 en=1;
#170 a=0;
#170 a=1;
#170 a=0;
#170 en=0;
#170 en=1;
#10 $stop;
end
endmodule

