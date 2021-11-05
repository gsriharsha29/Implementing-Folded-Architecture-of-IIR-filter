
module twmux(i0,i1,out,s);

parameter n=16;
input [n-1:0]i0,i1;
input s;
output reg [n-1:0]out;

always@(s)
begin
	
	out=s?i1:i0;
end

endmodule
