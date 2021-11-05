

module iir(x,out,h1,h2,clk,clkm,rst);

parameter n=16;
input [n-1:0]x,h1,h2;
input clk,clkm,rst;
output reg [n-1:0]out;





wire signed [n-1:0]a[1:17];


//filter coefficients
//wire [n-1:0]h1,h2;
//assign h1=2; 
//assign h2=4;

//adder and multiplier
assign a[2]=a[1]+a[3];
assign a[11]=a[16]*a[10];



//mux instantiation
twmux u1(a[13],x,a[1],clkm);
twmux u2(a[14],a[4],a[3],clkm);
twmux u3(a[6],a[9],a[10],clkm);
twmux u4(h1,h2,a[16],clkm);
twmux u5(a[4],a[17],a[15],clkm);

//delay
delay d1(a[2],a[4],clk,rst);
delay d2(a[4],a[5],clk,rst);
delay d3(a[5],a[6],clk,rst);
delay d4(a[6],a[7],clk,rst);
delay d5(a[7],a[8],clk,rst);
delay d6(a[8],a[9],clk,rst);
delay d7(a[11],a[12],clk,rst);
delay d8(a[12],a[13],clk,rst); 
delay d9(a[13],a[14],clk,rst);
delay d10(a[15],a[17],clk,rst);



//output
always@(posedge clk)
if(clkm==0)
 out=a[15];

endmodule
