module b0zmb2z_decoder (clk, rst, Input, out2, out3, out5, out0, out7, out4, out6, out1);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [7:0] Input;
  output  wire [0:0] out2;
  output  wire [0:0] out3;
  output  wire [0:0] out5;
  output  wire [0:0] out0;
  output  wire [0:0] out7;
  output  wire [0:0] out4;
  output  wire [0:0] out6;
  output  wire [0:0] out1;

  TC_Splitter8 # (.UUID(64'd1369801715929016885 ^ UUID)) Splitter8_0 (.in(wire_4), .out0(wire_0), .out1(wire_7), .out2(wire_8), .out3(), .out4(), .out5(), .out6(), .out7());
  TC_Decoder3 # (.UUID(64'd35464610505924651 ^ UUID)) Decoder3_1 (.dis(1'd0), .sel0(wire_0), .sel1(wire_7), .sel2(wire_8), .out0(wire_11), .out1(wire_9), .out2(wire_1), .out3(wire_10), .out4(wire_5), .out5(wire_3), .out6(wire_2), .out7(wire_6));

  wire [0:0] wire_0;
  wire [0:0] wire_1;
  assign out2 = wire_1;
  wire [0:0] wire_2;
  assign out6 = wire_2;
  wire [0:0] wire_3;
  assign out5 = wire_3;
  wire [7:0] wire_4;
  assign wire_4 = Input;
  wire [0:0] wire_5;
  assign out4 = wire_5;
  wire [0:0] wire_6;
  assign out7 = wire_6;
  wire [0:0] wire_7;
  wire [0:0] wire_8;
  wire [0:0] wire_9;
  assign out1 = wire_9;
  wire [0:0] wire_10;
  assign out3 = wire_10;
  wire [0:0] wire_11;
  assign out0 = wire_11;

endmodule
