
`timescale 1ns/1ps
module iir_t;

parameter n=16;
reg [n-1:0]x,h1,h2;
reg clk,clkm,rst;
wire [n-1:0]out;


iir v1(x,out,h1,h2,clk,clkm,rst);

initial clk=0;
always #5 clk=!clk;

initial clkm=1;
always #10 clkm=!clkm;


initial
begin
	rst=1;h1=2;h2=4;
	#31 x=-2;rst=0;
	#20 x=14;
	#20 x=7;
	#20 x=2;
	#20 x=21;
	#20 x=2;
	//#20 x=0;
	#200 $stop;$finish;
end
endmodule
