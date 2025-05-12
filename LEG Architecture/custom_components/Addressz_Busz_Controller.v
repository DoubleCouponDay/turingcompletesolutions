module Addressz_Busz_Controller (clk, rst, OP_Code, IMMA, IMMB, IMMALL, LSL, LSR);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [7:0] OP_Code;
  output  wire [0:0] IMMA;
  output  wire [0:0] IMMB;
  output  wire [0:0] IMMALL;
  output  wire [0:0] LSL;
  output  wire [0:0] LSR;

  TC_Switch # (.UUID(64'd244631585728324562 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_0 (.en(wire_4), .in(wire_4), .out(IMMA));
  TC_Switch # (.UUID(64'd2704206392758779867 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_1 (.en(wire_3), .in(wire_3), .out(IMMB));
  TC_Switch # (.UUID(64'd52670098753478097 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_2 (.en(wire_9), .in(wire_9), .out(IMMALL));
  TC_Switch # (.UUID(64'd4094027590318195954 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_3 (.en(wire_6), .in(wire_6), .out(LSL));
  TC_Splitter8 # (.UUID(64'd1280468113082965383 ^ UUID)) Splitter8_4 (.in(wire_1), .out0(wire_5), .out1(wire_8), .out2(wire_0), .out3(wire_7), .out4(), .out5(wire_10), .out6(), .out7());
  TC_Switch # (.UUID(64'd1007437671856557164 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_5 (.en(wire_2), .in(wire_2), .out(LSR));
  _4bz_decoder # (.UUID(64'd1196957717621947457 ^ UUID)) _4bz_decoder_6 (.clk(clk), .rst(rst), .bit1(wire_5), .bit2(wire_8), .bit3(wire_0), .bit4(wire_7), .Disable(wire_10), .\8 (), .\9 (wire_9_0), .\10 (wire_6), .\11 (), .\12 (), .\13 (wire_2), .\14 (), .\15 (), .\0 (), .\1 (), .\2 (), .\3 (), .\4 (), .\5 (), .\6 (), .\7 (wire_3_0));
  b7zmb8z_decoder # (.UUID(64'd1343490895307177157 ^ UUID)) b7zmb8z_decoder_7 (.clk(clk), .rst(rst), .Input(wire_1), .Output_1(wire_3_1), .Output_2(wire_4), .Output_3(wire_9_1));

  wire [0:0] wire_0;
  wire [7:0] wire_1;
  assign wire_1 = OP_Code;
  wire [0:0] wire_2;
  wire [0:0] wire_3;
  wire [0:0] wire_3_0;
  wire [0:0] wire_3_1;
  assign wire_3 = wire_3_0|wire_3_1;
  wire [0:0] wire_4;
  wire [0:0] wire_5;
  wire [0:0] wire_6;
  wire [0:0] wire_7;
  wire [0:0] wire_8;
  wire [0:0] wire_9;
  wire [0:0] wire_9_0;
  wire [0:0] wire_9_1;
  assign wire_9 = wire_9_0|wire_9_1;
  wire [0:0] wire_10;

endmodule
