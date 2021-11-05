
module delay(in,out,clk,rst);

parameter n=16;
input [n-1:0]in;
output reg [n-1:0]out;
input clk,rst;

always@(posedge clk)
begin
	out=rst?0:in;
end
endmodule
