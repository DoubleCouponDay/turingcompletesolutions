module ALUz_zmz_LEG (clk, rst, Opcode, Input_1, Input_2, Output, Carry);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [7:0] Opcode;
  input  wire [7:0] Input_1;
  input  wire [7:0] Input_2;
  output  wire [7:0] Output;
  output  wire [7:0] Carry;

  TC_Or # (.UUID(64'd3951201847372437152 ^ UUID), .BIT_WIDTH(64'd8)) Or8_0 (.in0(wire_2), .in1(wire_9), .out(wire_3));
  TC_Not # (.UUID(64'd854814770328614733 ^ UUID), .BIT_WIDTH(64'd8)) Not8_1 (.in(wire_2), .out(wire_30));
  TC_Add # (.UUID(64'd4031193283117613577 ^ UUID), .BIT_WIDTH(64'd8)) Add8_2 (.in0(wire_2), .in1(wire_9), .ci(1'd0), .out(wire_10), .co());
  TC_Neg # (.UUID(64'd2924328967916461941 ^ UUID), .BIT_WIDTH(64'd8)) Neg8_3 (.in(wire_9), .out(wire_12));
  TC_Add # (.UUID(64'd3994052178267264447 ^ UUID), .BIT_WIDTH(64'd8)) Add8_4 (.in0(wire_2), .in1(wire_12), .ci(1'd0), .out(wire_14), .co());
  TC_And # (.UUID(64'd3209279088392541300 ^ UUID), .BIT_WIDTH(64'd8)) And8_5 (.in0(wire_2), .in1(wire_9), .out(wire_27));
  TC_Switch # (.UUID(64'd1534677820237363975 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_6 (.en(wire_13), .in(wire_10), .out(wire_0_4));
  TC_Switch # (.UUID(64'd2199427390432680282 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_7 (.en(wire_24), .in(wire_14), .out(wire_0_3));
  TC_Switch # (.UUID(64'd2111099412897810152 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_8 (.en(wire_11), .in(wire_27), .out(wire_0_0));
  TC_Switch # (.UUID(64'd2131760192085080263 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_9 (.en(wire_15), .in(wire_3), .out(wire_0_1));
  TC_Switch # (.UUID(64'd427227062461687246 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_10 (.en(wire_26), .in(wire_30), .out(wire_0_2));
  TC_Switch # (.UUID(64'd1032425322804173098 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_11 (.en(wire_22), .in(wire_32), .out(wire_0_5));
  TC_Splitter8 # (.UUID(64'd1474874258793658652 ^ UUID)) Splitter8_12 (.in(wire_8), .out0(wire_31), .out1(wire_19), .out2(wire_20), .out3(wire_4), .out4(), .out5(wire_18), .out6(), .out7());
  TC_Xor # (.UUID(64'd4021252266046428660 ^ UUID), .BIT_WIDTH(64'd8)) Xor8_13 (.in0(wire_2), .in1(wire_9), .out(wire_32));
  TC_Switch # (.UUID(64'd2156175057904690357 ^ UUID), .BIT_WIDTH(64'd8)) Output8z_14 (.en(wire_1), .in(wire_0), .out(Output));
  TC_Switch # (.UUID(64'd2362927689729642460 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_15 (.en(wire_17), .in(wire_5), .out(wire_0_6));
  TC_Switch # (.UUID(64'd3534570736429883031 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_16 (.en(wire_13), .in(wire_13), .out(wire_1_7));
  TC_Switch # (.UUID(64'd1584629233533579060 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_17 (.en(wire_24), .in(wire_24), .out(wire_1_6));
  TC_Switch # (.UUID(64'd1874884933289727061 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_18 (.en(wire_11), .in(wire_11), .out(wire_1_5));
  TC_Switch # (.UUID(64'd1394744038272995384 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_19 (.en(wire_15), .in(wire_15), .out(wire_1_4));
  TC_Switch # (.UUID(64'd3882341307011958132 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_20 (.en(wire_26), .in(wire_26), .out(wire_1_2));
  TC_Switch # (.UUID(64'd422210216112380686 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_21 (.en(wire_22), .in(wire_22), .out(wire_1_0));
  TC_Switch # (.UUID(64'd476338478227813874 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_22 (.en(wire_17), .in(wire_17), .out(wire_1_1));
  TC_Switch # (.UUID(64'd2086223025770594245 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_23 (.en(wire_23), .in(wire_28), .out(wire_0_7));
  TC_Switch # (.UUID(64'd1569696315752441868 ^ UUID), .BIT_WIDTH(64'd8)) Output8z_24 (.en(wire_23), .in(wire_21), .out(Carry));
  TC_Switch # (.UUID(64'd3179240203855071035 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_25 (.en(wire_23), .in(wire_23), .out(wire_1_3));
  TC_Switch # (.UUID(64'd4142473353611887399 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_26 (.en(wire_23), .in(wire_16), .out(wire_21));
  TC_Switch # (.UUID(64'd2855199351355394123 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_27 (.en(wire_23), .in(wire_9), .out(wire_7_0));
  TC_Switch # (.UUID(64'd3213546187344507453 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_28 (.en(wire_23), .in(wire_2), .out(wire_29));
  TC_Mul # (.UUID(64'd4407139859907291182 ^ UUID), .BIT_WIDTH(64'd8)) DivMod8_29 (.in0(wire_29), .in1(wire_7), .out0(wire_28), .out1(wire_16));
  TC_Constant # (.UUID(64'd1860914511612779199 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_30 (.out(wire_25));
  TC_Not # (.UUID(64'd4438040630541641421 ^ UUID), .BIT_WIDTH(64'd1)) Not_31 (.in(wire_23), .out(wire_6));
  TC_Switch # (.UUID(64'd1624541896096247461 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_32 (.en(wire_6), .in({{7{1'b0}}, wire_25 }), .out(wire_7_1));
  _4bz_decoder # (.UUID(64'd1588337825030671488 ^ UUID)) _4bz_decoder_33 (.clk(clk), .rst(rst), .bit1(wire_31), .bit2(wire_19), .bit3(wire_20), .bit4(wire_4), .Disable(wire_18), .\8 (), .\9 (), .\10 (), .\11 (wire_17), .\12 (wire_23), .\13 (), .\14 (), .\15 (), .\0 (wire_13), .\1 (wire_24), .\2 (wire_11), .\3 (wire_15), .\4 (wire_26), .\5 (wire_22), .\6 (), .\7 ());
  _4bz_multiplier # (.UUID(64'd2031764433187063717 ^ UUID)) _4bz_multiplier_34 (.clk(clk), .rst(rst), .Input_1(wire_9), .Input_2(wire_2), .Output(wire_5));

  wire [7:0] wire_0;
  wire [7:0] wire_0_0;
  wire [7:0] wire_0_1;
  wire [7:0] wire_0_2;
  wire [7:0] wire_0_3;
  wire [7:0] wire_0_4;
  wire [7:0] wire_0_5;
  wire [7:0] wire_0_6;
  wire [7:0] wire_0_7;
  assign wire_0 = wire_0_0|wire_0_1|wire_0_2|wire_0_3|wire_0_4|wire_0_5|wire_0_6|wire_0_7;
  wire [0:0] wire_1;
  wire [0:0] wire_1_0;
  wire [0:0] wire_1_1;
  wire [0:0] wire_1_2;
  wire [0:0] wire_1_3;
  wire [0:0] wire_1_4;
  wire [0:0] wire_1_5;
  wire [0:0] wire_1_6;
  wire [0:0] wire_1_7;
  assign wire_1 = wire_1_0|wire_1_1|wire_1_2|wire_1_3|wire_1_4|wire_1_5|wire_1_6|wire_1_7;
  wire [7:0] wire_2;
  assign wire_2 = Input_1;
  wire [7:0] wire_3;
  wire [0:0] wire_4;
  wire [7:0] wire_5;
  wire [0:0] wire_6;
  wire [7:0] wire_7;
  wire [7:0] wire_7_0;
  wire [7:0] wire_7_1;
  assign wire_7 = wire_7_0|wire_7_1;
  wire [7:0] wire_8;
  assign wire_8 = Opcode;
  wire [7:0] wire_9;
  assign wire_9 = Input_2;
  wire [7:0] wire_10;
  wire [0:0] wire_11;
  wire [7:0] wire_12;
  wire [0:0] wire_13;
  wire [7:0] wire_14;
  wire [0:0] wire_15;
  wire [7:0] wire_16;
  wire [0:0] wire_17;
  wire [0:0] wire_18;
  wire [0:0] wire_19;
  wire [0:0] wire_20;
  wire [7:0] wire_21;
  wire [0:0] wire_22;
  wire [0:0] wire_23;
  wire [0:0] wire_24;
  wire [0:0] wire_25;
  wire [0:0] wire_26;
  wire [7:0] wire_27;
  wire [7:0] wire_28;
  wire [7:0] wire_29;
  wire [7:0] wire_30;
  wire [0:0] wire_31;
  wire [7:0] wire_32;

endmodule
