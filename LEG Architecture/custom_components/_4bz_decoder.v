module _4bz_decoder (clk, rst, bit1, bit2, bit3, bit4, Disable, \8 , \9 , \10 , \11 , \12 , \13 , \14 , \15 , \0 , \1 , \2 , \3 , \4 , \5 , \6 , \7 );
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [0:0] bit1;
  input  wire [0:0] bit2;
  input  wire [0:0] bit3;
  input  wire [0:0] bit4;
  input  wire [0:0] Disable;
  output  wire [0:0] \8 ;
  output  wire [0:0] \9 ;
  output  wire [0:0] \10 ;
  output  wire [0:0] \11 ;
  output  wire [0:0] \12 ;
  output  wire [0:0] \13 ;
  output  wire [0:0] \14 ;
  output  wire [0:0] \15 ;
  output  wire [0:0] \0 ;
  output  wire [0:0] \1 ;
  output  wire [0:0] \2 ;
  output  wire [0:0] \3 ;
  output  wire [0:0] \4 ;
  output  wire [0:0] \5 ;
  output  wire [0:0] \6 ;
  output  wire [0:0] \7 ;

  TC_Decoder3 # (.UUID(64'd1985355352865238133 ^ UUID)) Decoder3_0 (.dis(wire_24), .sel0(wire_19), .sel1(wire_3), .sel2(wire_12), .out0(wire_30), .out1(wire_14), .out2(wire_15), .out3(wire_28), .out4(wire_11), .out5(wire_20), .out6(wire_7), .out7(wire_33));
  TC_Decoder3 # (.UUID(64'd171531414460874085 ^ UUID)) Decoder3_1 (.dis(wire_24), .sel0(wire_25), .sel1(1'd0), .sel2(1'd0), .out0(), .out1(wire_2), .out2(), .out3(), .out4(), .out5(), .out6(), .out7());
  TC_And # (.UUID(64'd51831827679052668 ^ UUID), .BIT_WIDTH(64'd1)) And_2 (.in0(wire_14), .in1(wire_2), .out(wire_6));
  TC_Constant # (.UUID(64'd2099461689802368563 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_3 (.out());
  TC_Constant # (.UUID(64'd160605649318395015 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_4 (.out());
  TC_Constant # (.UUID(64'd472571872793855030 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_5 (.out());
  TC_Constant # (.UUID(64'd3259766886062007331 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_6 (.out());
  TC_Constant # (.UUID(64'd979692111442099893 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_7 (.out());
  TC_Constant # (.UUID(64'd1759297287993089623 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_8 (.out());
  TC_Constant # (.UUID(64'd2071574544489234415 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_9 (.out());
  TC_Constant # (.UUID(64'd2612681980676664917 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_10 (.out());
  TC_Constant # (.UUID(64'd2078183357636793293 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_11 (.out());
  TC_Constant # (.UUID(64'd716416952742443616 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_12 (.out());
  TC_Constant # (.UUID(64'd3402253153142289461 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_13 (.out());
  TC_Constant # (.UUID(64'd2198376916768897625 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_14 (.out());
  TC_Constant # (.UUID(64'd2069425476157988781 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_15 (.out());
  TC_Constant # (.UUID(64'd2583576174349462261 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_16 (.out());
  TC_Constant # (.UUID(64'd1879011408440129547 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_17 (.out());
  TC_Constant # (.UUID(64'd1984152272298172873 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_18 (.out());
  TC_Constant # (.UUID(64'd2089383280122407269 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_19 (.out());
  TC_Constant # (.UUID(64'd780545816291569931 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_20 (.out());
  TC_Constant # (.UUID(64'd3187737958308362523 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_21 (.out());
  TC_Constant # (.UUID(64'd2442936305956988645 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_22 (.out());
  TC_Constant # (.UUID(64'd2357092334702141078 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_23 (.out());
  TC_Constant # (.UUID(64'd78315717856679783 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_24 (.out());
  TC_And # (.UUID(64'd3888871326198436554 ^ UUID), .BIT_WIDTH(64'd1)) And_25 (.in0(wire_15), .in1(wire_2), .out(wire_0));
  TC_And # (.UUID(64'd4498205829731729189 ^ UUID), .BIT_WIDTH(64'd1)) And_26 (.in0(wire_11), .in1(wire_2), .out(wire_16));
  TC_And # (.UUID(64'd665512187428957692 ^ UUID), .BIT_WIDTH(64'd1)) And_27 (.in0(wire_20), .in1(wire_2), .out(wire_23));
  TC_And # (.UUID(64'd1834331173954307680 ^ UUID), .BIT_WIDTH(64'd1)) And_28 (.in0(wire_7), .in1(wire_2), .out(wire_27));
  TC_And # (.UUID(64'd4258361491292852445 ^ UUID), .BIT_WIDTH(64'd1)) And_29 (.in0(wire_33), .in1(wire_2), .out(wire_1));
  TC_And # (.UUID(64'd1279326997206416562 ^ UUID), .BIT_WIDTH(64'd1)) And_30 (.in0(wire_7), .in1(wire_32), .out(wire_5));
  TC_And # (.UUID(64'd529388038244450210 ^ UUID), .BIT_WIDTH(64'd1)) And_31 (.in0(wire_20), .in1(wire_35), .out(wire_10));
  TC_And # (.UUID(64'd2790061049562061091 ^ UUID), .BIT_WIDTH(64'd1)) And_32 (.in0(wire_11), .in1(wire_18), .out(wire_17));
  TC_And # (.UUID(64'd979437331333736899 ^ UUID), .BIT_WIDTH(64'd1)) And_33 (.in0(wire_28), .in1(wire_34), .out(wire_26));
  TC_And # (.UUID(64'd1033360227403643189 ^ UUID), .BIT_WIDTH(64'd1)) And_34 (.in0(wire_15), .in1(wire_22), .out(wire_36));
  TC_And # (.UUID(64'd280866689957384949 ^ UUID), .BIT_WIDTH(64'd1)) And_35 (.in0(wire_14), .in1(wire_13), .out(wire_31));
  TC_And # (.UUID(64'd2551878309978114883 ^ UUID), .BIT_WIDTH(64'd1)) And_36 (.in0(wire_30), .in1(wire_29), .out(wire_4));
  TC_Constant # (.UUID(64'd1146849639826735473 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_37 (.out());
  TC_Not # (.UUID(64'd72796858617980198 ^ UUID), .BIT_WIDTH(64'd1)) Not_38 (.in(wire_2), .out(wire_29));
  TC_Not # (.UUID(64'd3353960763600962955 ^ UUID), .BIT_WIDTH(64'd1)) Not_39 (.in(wire_2), .out(wire_13));
  TC_Not # (.UUID(64'd4432384040599460814 ^ UUID), .BIT_WIDTH(64'd1)) Not_40 (.in(wire_2), .out(wire_22));
  TC_Not # (.UUID(64'd1273836143489623019 ^ UUID), .BIT_WIDTH(64'd1)) Not_41 (.in(wire_2), .out(wire_34));
  TC_Not # (.UUID(64'd4065115566163961625 ^ UUID), .BIT_WIDTH(64'd1)) Not_42 (.in(wire_2), .out(wire_18));
  TC_Not # (.UUID(64'd4588909099664140504 ^ UUID), .BIT_WIDTH(64'd1)) Not_43 (.in(wire_2), .out(wire_35));
  TC_Not # (.UUID(64'd2764266387263488962 ^ UUID), .BIT_WIDTH(64'd1)) Not_44 (.in(wire_2), .out(wire_32));
  TC_Not # (.UUID(64'd2324829432415021822 ^ UUID), .BIT_WIDTH(64'd1)) Not_45 (.in(wire_2), .out(wire_37));
  TC_And # (.UUID(64'd1323367103854058637 ^ UUID), .BIT_WIDTH(64'd1)) And_46 (.in0(wire_33), .in1(wire_37), .out(wire_21));
  TC_Constant # (.UUID(64'd4426137644128888578 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd0)) Off_47 (.out());
  TC_And # (.UUID(64'd501271348442293792 ^ UUID), .BIT_WIDTH(64'd1)) And_48 (.in0(wire_30), .in1(wire_2), .out(wire_9));
  TC_And # (.UUID(64'd4509242957939591620 ^ UUID), .BIT_WIDTH(64'd1)) And_49 (.in0(wire_28), .in1(wire_2), .out(wire_8));
  TC_Switch # (.UUID(64'd4022084175349773092 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_50 (.en(wire_4), .in(wire_4), .out(\0 ));
  TC_Switch # (.UUID(64'd793039194641815757 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_51 (.en(wire_31), .in(wire_31), .out(\1 ));
  TC_Switch # (.UUID(64'd2952920644793047308 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_52 (.en(wire_36), .in(wire_36), .out(\2 ));
  TC_Switch # (.UUID(64'd1763158828352039923 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_53 (.en(wire_26), .in(wire_26), .out(\3 ));
  TC_Switch # (.UUID(64'd3517077406096930145 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_54 (.en(wire_17), .in(wire_17), .out(\4 ));
  TC_Switch # (.UUID(64'd2003331724026011513 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_55 (.en(wire_10), .in(wire_10), .out(\5 ));
  TC_Switch # (.UUID(64'd1577038065364390354 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_56 (.en(wire_5), .in(wire_5), .out(\6 ));
  TC_Switch # (.UUID(64'd618893313543574540 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_57 (.en(wire_21), .in(wire_21), .out(\7 ));
  TC_Switch # (.UUID(64'd1182880001770976445 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_58 (.en(wire_9), .in(wire_9), .out(\8 ));
  TC_Switch # (.UUID(64'd3561436138470554835 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_59 (.en(wire_6), .in(wire_6), .out(\9 ));
  TC_Switch # (.UUID(64'd3879724421383234111 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_60 (.en(wire_0), .in(wire_0), .out(\10 ));
  TC_Switch # (.UUID(64'd2044812206149846388 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_61 (.en(wire_8), .in(wire_8), .out(\11 ));
  TC_Switch # (.UUID(64'd3686238765745427545 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_62 (.en(wire_16), .in(wire_16), .out(\12 ));
  TC_Switch # (.UUID(64'd2516077445749204199 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_63 (.en(wire_23), .in(wire_23), .out(\13 ));
  TC_Switch # (.UUID(64'd1475711197500738642 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_64 (.en(wire_27), .in(wire_27), .out(\14 ));
  TC_Switch # (.UUID(64'd3657891679233778961 ^ UUID), .BIT_WIDTH(64'd1)) Output1z_65 (.en(wire_1), .in(wire_1), .out(\15 ));

  wire [0:0] wire_0;
  wire [0:0] wire_1;
  wire [0:0] wire_2;
  wire [0:0] wire_3;
  assign wire_3 = bit2;
  wire [0:0] wire_4;
  wire [0:0] wire_5;
  wire [0:0] wire_6;
  wire [0:0] wire_7;
  wire [0:0] wire_8;
  wire [0:0] wire_9;
  wire [0:0] wire_10;
  wire [0:0] wire_11;
  wire [0:0] wire_12;
  assign wire_12 = bit3;
  wire [0:0] wire_13;
  wire [0:0] wire_14;
  wire [0:0] wire_15;
  wire [0:0] wire_16;
  wire [0:0] wire_17;
  wire [0:0] wire_18;
  wire [0:0] wire_19;
  assign wire_19 = bit1;
  wire [0:0] wire_20;
  wire [0:0] wire_21;
  wire [0:0] wire_22;
  wire [0:0] wire_23;
  wire [0:0] wire_24;
  assign wire_24 = Disable;
  wire [0:0] wire_25;
  assign wire_25 = bit4;
  wire [0:0] wire_26;
  wire [0:0] wire_27;
  wire [0:0] wire_28;
  wire [0:0] wire_29;
  wire [0:0] wire_30;
  wire [0:0] wire_31;
  wire [0:0] wire_32;
  wire [0:0] wire_33;
  wire [0:0] wire_34;
  wire [0:0] wire_35;
  wire [0:0] wire_36;
  wire [0:0] wire_37;

endmodule
