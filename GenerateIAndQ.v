module GenerateIAndQ(clk1, Ichannel, Qchannel);
  input clk1;
  output reg Ichannel;  
  output reg Qchannel; 
  always @(posedge clk1)
  begin
      Ichannel = {$random} % 2;
      Qchannel = {$random} % 2;
  end
endmodule
