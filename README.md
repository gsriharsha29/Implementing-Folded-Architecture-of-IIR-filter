# Implementing-Folded-Architecture-of-IIR-filter
Verilog code for folded architecture of IIR filter (y[n]=ay[n-3]+by[n-5]+x[n]) and verifying the outputs for different inputs
Four verilog files ae uploaded viz iir.v, twmux.v, delay.v, iir_t.v

'iir.v' is the main module in which all other modules are instantiated
'delay.v' module consist of simple delay element behavioral model which is the positive edge triggered
'twmux.v' module represnts the structure o a Multiplexer 2-to-1
'iit_t.v' is the test bench

The image 'iir_filter.PNG' represents the IIR filter that has tobe implemented and the image 'iir_folded.PNG' represents the folded architecture of the said IIR filter, here the switches are implemented by using MUX
