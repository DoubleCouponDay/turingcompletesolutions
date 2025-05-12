module Jumperz_ZL38z_39ZR (clk, rst, Input, counter, CALL, RET, return_address);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [7:0] Input;
  input  wire [7:0] counter;
  output  wire [0:0] CALL;
  output  wire [0:0] RET;
  output  wire [7:0] return_address;

  TC_Switch # (.UUID(64'd4393467675310146784 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_0 (.en(wire_0), .in(wire_0), .out(CALL));
  TC_Constant # (.UUID(64'd1069918286576136765 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h26)) Constant8_1 (.out(wire_9));
  TC_Constant # (.UUID(64'd1023434247069020327 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h27)) Constant8_2 (.out(wire_8));
  TC_Switch # (.UUID(64'd1124138708244549140 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_3 (.en(wire_4), .in(wire_4), .out(wire_0));
  TC_Switch # (.UUID(64'd729996511495164096 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_4 (.en(wire_5), .in(wire_5), .out(wire_2));
  TC_Equal # (.UUID(64'd4462755777023484262 ^ UUID), .BIT_WIDTH(64'd8)) Equal8_5 (.in0(wire_9), .in1(wire_6), .out(wire_4));
  TC_Equal # (.UUID(64'd3708372338965084337 ^ UUID), .BIT_WIDTH(64'd8)) Equal8_6 (.in0(wire_8), .in1(wire_6), .out(wire_5));
  TC_Switch # (.UUID(64'd389933219180048844 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_7 (.en(wire_2), .in(wire_2), .out(RET));
  TC_Switch # (.UUID(64'd1169463395532122701 ^ UUID), .BIT_WIDTH(64'd8)) Output8z_8 (.en(wire_0), .in(wire_7), .out(return_address));
  TC_Constant # (.UUID(64'd4258017568357337495 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h4)) Constant8_9 (.out(wire_3));
  TC_Add # (.UUID(64'd4114503400474413029 ^ UUID), .BIT_WIDTH(64'd8)) Add8_10 (.in0(wire_1), .in1(wire_3), .ci(1'd0), .out(wire_7), .co());

  wire [0:0] wire_0;
  wire [7:0] wire_1;
  assign wire_1 = counter;
  wire [0:0] wire_2;
  wire [7:0] wire_3;
  wire [0:0] wire_4;
  wire [0:0] wire_5;
  wire [7:0] wire_6;
  assign wire_6 = Input;
  wire [7:0] wire_7;
  wire [7:0] wire_8;
  wire [7:0] wire_9;

endmodule
