module Modulate(clk, clk1, bit_stream, QPSK_out);
  input clk, clk1;
  output wire bit_stream;  
  output wire signed [9:0] QPSK_out;  
  wire Ichannel, Qchannel;  
  GenerateInput gen(.clk1(clk1), .bit_stream(bit_stream));
  Split split(.clk1(clk1), .bit_stream(bit_stream), .Ichannel(Ichannel), .Qchannel(Qchannel));
  Mix mix(.clk(clk), .Ichannel(Ichannel), .Qchannel(Qchannel), .QPSK_out(QPSK_out));
endmodule
