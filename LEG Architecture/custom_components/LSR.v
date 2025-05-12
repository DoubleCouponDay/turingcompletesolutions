module LSR (clk, rst, Value, \4bit_shift_num , OUT);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [7:0] Value;
  input  wire [7:0] \4bit_shift_num ;
  output  wire [7:0] OUT;

  TC_Maker8 # (.UUID(64'd4070956763843732027 ^ UUID)) Maker8_0 (.in0(wire_12), .in1(wire_7), .in2(wire_3), .in3(wire_2), .in4(wire_0), .in5(1'd0), .in6(1'd0), .in7(1'd0), .out(wire_14));
  TC_Maker8 # (.UUID(64'd2095689194834905660 ^ UUID)) Maker8_1 (.in0(wire_8), .in1(wire_1), .in2(wire_12), .in3(wire_7), .in4(wire_3), .in5(wire_2), .in6(wire_0), .in7(1'd0), .out(wire_6));
  TC_Maker8 # (.UUID(64'd2857425547003869807 ^ UUID)) Maker8_2 (.in0(wire_1), .in1(wire_12), .in2(wire_7), .in3(wire_3), .in4(wire_2), .in5(wire_0), .in6(1'd0), .in7(1'd0), .out(wire_10));
  TC_Maker8 # (.UUID(64'd2157113647127502056 ^ UUID)) Maker8_3 (.in0(wire_7), .in1(wire_3), .in2(wire_2), .in3(wire_0), .in4(1'd0), .in5(1'd0), .in6(1'd0), .in7(1'd0), .out(wire_9));
  TC_Switch # (.UUID(64'd754205743575561753 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_4 (.en(wire_16), .in(wire_6), .out(wire_5_1));
  TC_Switch # (.UUID(64'd1355549629925763905 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_5 (.en(wire_15), .in(wire_10), .out(wire_5_0));
  TC_Switch # (.UUID(64'd3331599866367458386 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_6 (.en(wire_13), .in(wire_9), .out(wire_5_3));
  TC_Switch # (.UUID(64'd2944426215826214845 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_7 (.en(wire_11), .in(wire_14), .out(wire_5_2));
  TC_Splitter8 # (.UUID(64'd2426042913865220304 ^ UUID)) Splitter8_8 (.in(wire_4), .out0(), .out1(wire_8), .out2(wire_1), .out3(wire_12), .out4(wire_7), .out5(wire_3), .out6(wire_2), .out7(wire_0));
  b0zmb2z_decoder # (.UUID(64'd9393504448034332 ^ UUID)) b0zmb2z_decoder_9 (.clk(clk), .rst(rst), .Input(wire_17), .out2(wire_15), .out3(wire_11), .out5(), .out0(), .out7(), .out4(wire_13), .out6(), .out1(wire_16));

  wire [0:0] wire_0;
  wire [0:0] wire_1;
  wire [0:0] wire_2;
  wire [0:0] wire_3;
  wire [7:0] wire_4;
  assign wire_4 = Value;
  wire [7:0] wire_5;
  wire [7:0] wire_5_0;
  wire [7:0] wire_5_1;
  wire [7:0] wire_5_2;
  wire [7:0] wire_5_3;
  assign wire_5 = wire_5_0|wire_5_1|wire_5_2|wire_5_3;
  assign OUT = wire_5;
  wire [7:0] wire_6;
  wire [0:0] wire_7;
  wire [0:0] wire_8;
  wire [7:0] wire_9;
  wire [7:0] wire_10;
  wire [0:0] wire_11;
  wire [0:0] wire_12;
  wire [0:0] wire_13;
  wire [7:0] wire_14;
  wire [0:0] wire_15;
  wire [0:0] wire_16;
  wire [7:0] wire_17;
  assign wire_17 = \4bit_shift_num ;

endmodule
