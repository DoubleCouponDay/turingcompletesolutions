module LSL (clk, rst, value, num_shift_4bit, \output );
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [7:0] value;
  input  wire [7:0] num_shift_4bit;
  output  wire [7:0] \output ;

  TC_Splitter8 # (.UUID(64'd3962162333943236821 ^ UUID)) Splitter8_0 (.in(wire_16), .out0(wire_7), .out1(wire_6), .out2(wire_3), .out3(wire_11), .out4(wire_5), .out5(wire_10), .out6(wire_9), .out7());
  TC_Maker8 # (.UUID(64'd407529192061139269 ^ UUID)) Maker8_1 (.in0(1'd0), .in1(wire_7), .in2(wire_6), .in3(wire_3), .in4(wire_11), .in5(wire_5), .in6(wire_10), .in7(wire_9), .out(wire_14));
  TC_Maker8 # (.UUID(64'd2689731988706896948 ^ UUID)) Maker8_2 (.in0(1'd0), .in1(1'd0), .in2(1'd0), .in3(1'd0), .in4(wire_7), .in5(wire_6), .in6(wire_3), .in7(wire_11), .out(wire_17));
  TC_Maker8 # (.UUID(64'd99493261592674047 ^ UUID)) Maker8_3 (.in0(1'd0), .in1(1'd0), .in2(wire_7), .in3(wire_6), .in4(wire_3), .in5(wire_11), .in6(wire_5), .in7(wire_10), .out(wire_8));
  TC_Maker8 # (.UUID(64'd297774121181803393 ^ UUID)) Maker8_4 (.in0(1'd0), .in1(1'd0), .in2(1'd0), .in3(wire_7), .in4(wire_6), .in5(wire_3), .in6(wire_11), .in7(wire_5), .out(wire_2));
  TC_Switch # (.UUID(64'd4582245870708649836 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_5 (.en(wire_15), .in(wire_14), .out(wire_1_0));
  TC_Switch # (.UUID(64'd4298230330137153339 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_6 (.en(wire_12), .in(wire_8), .out(wire_1_1));
  TC_Switch # (.UUID(64'd2917795267358051712 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_7 (.en(wire_13), .in(wire_2), .out(wire_1_2));
  TC_Switch # (.UUID(64'd2142419266852890530 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_8 (.en(wire_4), .in(wire_17), .out(wire_1_3));
  b0zmb2z_decoder # (.UUID(64'd1877415387379625436 ^ UUID)) b0zmb2z_decoder_9 (.clk(clk), .rst(rst), .Input(wire_0), .out2(wire_12), .out3(wire_13), .out5(), .out0(), .out7(), .out4(wire_4), .out6(), .out1(wire_15));

  wire [7:0] wire_0;
  assign wire_0 = num_shift_4bit;
  wire [7:0] wire_1;
  wire [7:0] wire_1_0;
  wire [7:0] wire_1_1;
  wire [7:0] wire_1_2;
  wire [7:0] wire_1_3;
  assign wire_1 = wire_1_0|wire_1_1|wire_1_2|wire_1_3;
  assign \output  = wire_1;
  wire [7:0] wire_2;
  wire [0:0] wire_3;
  wire [0:0] wire_4;
  wire [0:0] wire_5;
  wire [0:0] wire_6;
  wire [0:0] wire_7;
  wire [7:0] wire_8;
  wire [0:0] wire_9;
  wire [0:0] wire_10;
  wire [0:0] wire_11;
  wire [0:0] wire_12;
  wire [0:0] wire_13;
  wire [7:0] wire_14;
  wire [0:0] wire_15;
  wire [7:0] wire_16;
  assign wire_16 = value;
  wire [7:0] wire_17;

endmodule
