module b7zmb8z_decoder (clk, rst, Input, Output_1, Output_2, Output_3);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [7:0] Input;
  output  wire [0:0] Output_1;
  output  wire [0:0] Output_2;
  output  wire [0:0] Output_3;

  TC_Splitter8 # (.UUID(64'd3364388969315754903 ^ UUID)) Splitter8_0 (.in(wire_0), .out0(), .out1(), .out2(), .out3(), .out4(), .out5(), .out6(wire_3), .out7(wire_5));
  TC_Decoder3 # (.UUID(64'd134419313918044711 ^ UUID)) Decoder3_1 (.dis(1'd0), .sel0(wire_3), .sel1(wire_5), .sel2(1'd0), .out0(), .out1(wire_1), .out2(wire_4), .out3(wire_2), .out4(), .out5(), .out6(), .out7());
  TC_Switch # (.UUID(64'd2936518038460720649 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_2 (.en(wire_1), .in(wire_1), .out(Output_1));
  TC_Switch # (.UUID(64'd598058085990679113 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_3 (.en(wire_4), .in(wire_4), .out(Output_2));
  TC_Switch # (.UUID(64'd4193113190998630703 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_4 (.en(wire_2), .in(wire_2), .out(Output_3));

  wire [7:0] wire_0;
  assign wire_0 = Input;
  wire [0:0] wire_1;
  wire [0:0] wire_2;
  wire [0:0] wire_3;
  wire [0:0] wire_4;
  wire [0:0] wire_5;

endmodule
