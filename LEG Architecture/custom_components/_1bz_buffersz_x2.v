module _1bz_buffersz_x2 (clk, rst, Input1, Input2, Output1, Output2);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [0:0] Input1;
  input  wire [0:0] Input2;
  output  wire [0:0] Output1;
  output  wire [0:0] Output2;

  TC_Switch # (.UUID(64'd1443266875213159958 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_0 (.en(wire_3), .in(wire_3), .out(wire_0));
  TC_Switch # (.UUID(64'd865188634775887617 ^ UUID), .BIT_WIDTH(64'd1)) Switch1_1 (.en(wire_1), .in(wire_1), .out(wire_2));
  TC_Switch # (.UUID(64'd318255513632156600 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_2 (.en(wire_0), .in(wire_0), .out(Output1));
  TC_Switch # (.UUID(64'd606943760555369806 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_3 (.en(wire_2), .in(wire_2), .out(Output2));

  wire [0:0] wire_0;
  wire [0:0] wire_1;
  assign wire_1 = Input2;
  wire [0:0] wire_2;
  wire [0:0] wire_3;
  assign wire_3 = Input1;

endmodule
