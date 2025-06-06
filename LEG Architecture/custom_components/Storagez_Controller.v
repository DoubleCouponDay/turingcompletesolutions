module Storagez_Controller (clk, rst, ControlBus, CurrentCounter, ReturnCounter, DisableDataBus, EnableRamAddress, Overwrite, STORE, LOAD, PUSH, MuxStorageOut, RemainderToStack, POP, EnableStorageOut);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [7:0] ControlBus;
  input  wire [7:0] CurrentCounter;
  output  wire [7:0] ReturnCounter;
  output  wire [0:0] DisableDataBus;
  output  wire [0:0] EnableRamAddress;
  output  wire [0:0] Overwrite;
  output  wire [0:0] STORE;
  output  wire [0:0] LOAD;
  output  wire [0:0] PUSH;
  output  wire [0:0] MuxStorageOut;
  output  wire [0:0] RemainderToStack;
  output  wire [0:0] POP;
  output  wire [0:0] EnableStorageOut;

  TC_Splitter8 # (.UUID(64'd4130522927459377981 ^ UUID)) Splitter8_0 (.in(wire_13), .out0(wire_7), .out1(wire_14), .out2(wire_15), .out3(wire_19), .out4(), .out5(wire_18), .out6(), .out7());
  TC_Switch # (.UUID(64'd2238263497115858461 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_1 (.en(wire_9), .in(wire_9), .out(EnableRamAddress));
  TC_Switch # (.UUID(64'd1161925895724727580 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_2 (.en(wire_3), .in(wire_3), .out(Overwrite));
  TC_Switch # (.UUID(64'd123353097554117766 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_3 (.en(wire_10), .in(wire_10), .out(wire_3_0));
  TC_Switch # (.UUID(64'd4592726131469224126 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_4 (.en(wire_11), .in(wire_11), .out(wire_3_1));
  TC_Switch # (.UUID(64'd3105606322179936003 ^ UUID), .BIT_WIDTH(64'd8)) Output8z_5 (.en(wire_10), .in(wire_17), .out(ReturnCounter));
  TC_Switch # (.UUID(64'd4493545076533817587 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_6 (.en(wire_4), .in(wire_4), .out(STORE));
  TC_Switch # (.UUID(64'd4306430872059573874 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_7 (.en(wire_6), .in(wire_6), .out(LOAD));
  TC_Switch # (.UUID(64'd1088582404690742950 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_8 (.en(wire_0), .in(wire_0), .out(PUSH));
  TC_Switch # (.UUID(64'd146676273271453263 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_9 (.en(wire_5), .in(wire_5), .out(POP));
  TC_Switch # (.UUID(64'd4303082276566505029 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_10 (.en(wire_12), .in(wire_12), .out(MuxStorageOut));
  TC_Constant # (.UUID(64'd3555471344250782395 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h0)) Constant8_11 (.out());
  TC_Constant # (.UUID(64'd2554927396400522002 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h0)) Constant8_12 (.out());
  TC_Constant # (.UUID(64'd1257525961043067353 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h0)) Constant8_13 (.out());
  TC_Constant # (.UUID(64'd3710253218484337862 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h0)) Constant8_14 (.out());
  TC_Constant # (.UUID(64'd2729227639365097621 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h0)) Constant8_15 (.out());
  TC_Constant # (.UUID(64'd2411623210057493807 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h0)) Constant8_16 (.out());
  TC_Constant # (.UUID(64'd4445180934597832456 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h0)) Constant8_17 (.out());
  TC_Constant # (.UUID(64'd2832318701939639828 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h0)) Constant8_18 (.out());
  TC_Constant # (.UUID(64'd60437744194850530 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h0)) Constant8_19 (.out());
  TC_Switch # (.UUID(64'd87561695958091306 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_20 (.en(wire_10), .in(wire_10), .out(wire_0_0));
  TC_Constant # (.UUID(64'd4181206369990978001 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h0)) Constant8_21 (.out());
  TC_Switch # (.UUID(64'd2525969614463817599 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_22 (.en(wire_11), .in(wire_11), .out(wire_12));
  TC_Switch # (.UUID(64'd545340570083280098 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_23 (.en(wire_8), .in(wire_8), .out(EnableStorageOut));
  TC_Switch # (.UUID(64'd1290507590732483590 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_24 (.en(wire_5), .in(wire_5), .out(wire_8_0));
  TC_Switch # (.UUID(64'd2365338765766805959 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_25 (.en(wire_6), .in(wire_6), .out(wire_8_1));
  TC_Switch # (.UUID(64'd4057653837271627310 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_26 (.en(wire_12), .in(wire_12), .out(wire_5_1));
  TC_Switch # (.UUID(64'd2708320480596476171 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_27 (.en(wire_1), .in(wire_1), .out(RemainderToStack));
  TC_Not # (.UUID(64'd415433757541170294 ^ UUID), .BIT_WIDTH(64'd1)) Not_28 (.in(wire_18), .out(wire_9));
  TC_Constant # (.UUID(64'd268284809692094816 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h0)) Constant8_29 (.out());
  TC_Switch # (.UUID(64'd2073300565342414577 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_30 (.en(wire_2), .in(wire_2), .out(DisableDataBus));
  _4bz_decoder # (.UUID(64'd21939511280620635 ^ UUID)) _4bz_decoder_31 (.clk(clk), .rst(rst), .bit1(wire_7), .bit2(wire_14), .bit3(wire_15), .bit4(wire_19), .Disable(wire_18), .\8 (wire_0_1), .\9 (wire_5_0), .\10 (), .\11 (), .\12 (wire_1), .\13 (), .\14 (), .\15 (), .\0 (), .\1 (), .\2 (), .\3 (), .\4 (), .\5 (), .\6 (wire_4), .\7 (wire_6));
  Jumperz_ZL38z_39ZR # (.UUID(64'd1183656055897323219 ^ UUID)) Jumperz_ZL38z_39ZR_32 (.clk(clk), .rst(rst), .Input(wire_13), .counter(wire_16), .CALL(wire_10), .RET(wire_11), .return_address(wire_17));
  IsJumpCommand # (.UUID(64'd4135618144309628529 ^ UUID)) IsJumpCommand_33 (.clk(clk), .rst(rst), .OpCode(wire_13), .IsJumpCommand(wire_2));

  wire [0:0] wire_0;
  wire [0:0] wire_0_0;
  wire [0:0] wire_0_1;
  assign wire_0 = wire_0_0|wire_0_1;
  wire [0:0] wire_1;
  wire [0:0] wire_2;
  wire [0:0] wire_3;
  wire [0:0] wire_3_0;
  wire [0:0] wire_3_1;
  assign wire_3 = wire_3_0|wire_3_1;
  wire [0:0] wire_4;
  wire [0:0] wire_5;
  wire [0:0] wire_5_0;
  wire [0:0] wire_5_1;
  assign wire_5 = wire_5_0|wire_5_1;
  wire [0:0] wire_6;
  wire [0:0] wire_7;
  wire [0:0] wire_8;
  wire [0:0] wire_8_0;
  wire [0:0] wire_8_1;
  assign wire_8 = wire_8_0|wire_8_1;
  wire [0:0] wire_9;
  wire [0:0] wire_10;
  wire [0:0] wire_11;
  wire [0:0] wire_12;
  wire [7:0] wire_13;
  assign wire_13 = ControlBus;
  wire [0:0] wire_14;
  wire [0:0] wire_15;
  wire [7:0] wire_16;
  assign wire_16 = CurrentCounter;
  wire [7:0] wire_17;
  wire [0:0] wire_18;
  wire [0:0] wire_19;

endmodule
