module IsJumpCommand (clk, rst, OpCode, IsJumpCommand);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [7:0] OpCode;
  output  wire [0:0] IsJumpCommand;

  TC_Switch # (.UUID(64'd1855043779751583049 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_0 (.en(wire_0), .in(wire_0), .out(IsJumpCommand));
  TC_Switch # (.UUID(64'd1072234432254575930 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_1 (.en(wire_12), .in(wire_12), .out(wire_0_2));
  TC_Switch # (.UUID(64'd643659730963060596 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_2 (.en(wire_3), .in(wire_3), .out(wire_0_4));
  TC_Switch # (.UUID(64'd446241967612144003 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_3 (.en(wire_10), .in(wire_10), .out(wire_0_6));
  TC_Switch # (.UUID(64'd3003231844810158168 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_4 (.en(wire_9), .in(wire_9), .out(wire_0_7));
  TC_Switch # (.UUID(64'd2030772487462831069 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_5 (.en(wire_11), .in(wire_11), .out(wire_0_8));
  TC_Switch # (.UUID(64'd1066766545201049019 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_6 (.en(wire_6), .in(wire_6), .out(wire_0_9));
  TC_Splitter8 # (.UUID(64'd2425288762872393962 ^ UUID)) Splitter8_7 (.in(wire_5), .out0(wire_16), .out1(wire_7), .out2(wire_4), .out3(wire_14), .out4(), .out5(wire_17), .out6(), .out7());
  TC_Not # (.UUID(64'd2019495432778887154 ^ UUID), .BIT_WIDTH(64'd1)) Not_8 (.in(wire_17), .out(wire_15));
  _4bz_decoder # (.UUID(64'd4458976636126143644 ^ UUID)) _4bz_decoder_9 (.clk(clk), .rst(rst), .bit1(wire_16), .bit2(wire_7), .bit3(wire_4), .bit4(wire_14), .Disable(wire_15), .\8 (wire_1), .\9 (wire_8), .\10 (wire_2), .\11 (wire_13), .\12 (), .\13 (), .\14 (), .\15 (), .\0 (wire_12), .\1 (wire_3), .\2 (wire_10), .\3 (wire_9), .\4 (wire_11), .\5 (wire_6), .\6 (), .\7 ());
  TC_Switch # (.UUID(64'd3117989322086406038 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_10 (.en(wire_1), .in(wire_1), .out(wire_0_0));
  TC_Switch # (.UUID(64'd3372340378220464140 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_11 (.en(wire_8), .in(wire_8), .out(wire_0_1));
  TC_Switch # (.UUID(64'd160455547236064065 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_12 (.en(wire_2), .in(wire_2), .out(wire_0_3));
  TC_Switch # (.UUID(64'd865062545312339186 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_13 (.en(wire_13), .in(wire_13), .out(wire_0_5));

  wire [0:0] wire_0;
  wire [0:0] wire_0_0;
  wire [0:0] wire_0_1;
  wire [0:0] wire_0_2;
  wire [0:0] wire_0_3;
  wire [0:0] wire_0_4;
  wire [0:0] wire_0_5;
  wire [0:0] wire_0_6;
  wire [0:0] wire_0_7;
  wire [0:0] wire_0_8;
  wire [0:0] wire_0_9;
  assign wire_0 = wire_0_0|wire_0_1|wire_0_2|wire_0_3|wire_0_4|wire_0_5|wire_0_6|wire_0_7|wire_0_8|wire_0_9;
  wire [0:0] wire_1;
  wire [0:0] wire_2;
  wire [0:0] wire_3;
  wire [0:0] wire_4;
  wire [7:0] wire_5;
  assign wire_5 = OpCode;
  wire [0:0] wire_6;
  wire [0:0] wire_7;
  wire [0:0] wire_8;
  wire [0:0] wire_9;
  wire [0:0] wire_10;
  wire [0:0] wire_11;
  wire [0:0] wire_12;
  wire [0:0] wire_13;
  wire [0:0] wire_14;
  wire [0:0] wire_15;
  wire [0:0] wire_16;
  wire [0:0] wire_17;

endmodule
