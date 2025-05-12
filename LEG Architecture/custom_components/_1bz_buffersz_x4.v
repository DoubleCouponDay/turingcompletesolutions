module _1bz_buffersz_x4 (clk, rst, Input1, Input2, Input3, Input4, Output1, Output2, Output3, Output4);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [0:0] Input1;
  input  wire [0:0] Input2;
  input  wire [0:0] Input3;
  input  wire [0:0] Input4;
  output  wire [0:0] Output1;
  output  wire [0:0] Output2;
  output  wire [0:0] Output3;
  output  wire [0:0] Output4;

  TC_Switch # (.UUID(64'd1443266875213159958 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_0 (.en(wire_6), .in(wire_6), .out(wire_7));
  TC_Switch # (.UUID(64'd865188634775887617 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_1 (.en(wire_1), .in(wire_1), .out(wire_5));
  TC_Switch # (.UUID(64'd3523697527060299725 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_2 (.en(wire_2), .in(wire_2), .out(wire_3));
  TC_Switch # (.UUID(64'd1951578216795176964 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_3 (.en(wire_4), .in(wire_4), .out(wire_0));
  TC_Switch # (.UUID(64'd318255513632156600 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_4 (.en(wire_7), .in(wire_7), .out(Output1));
  TC_Switch # (.UUID(64'd606943760555369806 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_5 (.en(wire_5), .in(wire_5), .out(Output2));
  TC_Switch # (.UUID(64'd1775289051259198929 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_6 (.en(wire_3), .in(wire_3), .out(Output3));
  TC_Switch # (.UUID(64'd841164280603139039 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_7 (.en(wire_0), .in(wire_0), .out(Output4));

  wire [0:0] wire_0;
  wire [0:0] wire_1;
  assign wire_1 = Input2;
  wire [0:0] wire_2;
  assign wire_2 = Input3;
  wire [0:0] wire_3;
  wire [0:0] wire_4;
  assign wire_4 = Input4;
  wire [0:0] wire_5;
  wire [0:0] wire_6;
  assign wire_6 = Input1;
  wire [0:0] wire_7;

endmodule
