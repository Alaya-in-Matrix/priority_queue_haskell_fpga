// Automatically generated Verilog-2005
module Path_aStarCtrl_2(eta_i1
                       ,eta_i2
                       ,topLet_o);
  input [399:0] eta_i1;
  input [198:0] eta_i2;
  output [630:0] topLet_o;
  wire [630:0] altLet_0;
  wire [630:0] altLet_1;
  wire [630:0] altLet_2;
  wire [4:0] ds5_3;
  wire [630:0] altLet_4;
  wire [630:0] altLet_5;
  wire [68:0] ds9_6;
  wire [630:0] altLet_7;
  wire [630:0] altLet_8;
  wire [2:0] ds12_9;
  wire [630:0] altLet_10;
  wire [630:0] altLet_11;
  wire [630:0] altLet_12;
  wire [0:0] ds14_13;
  wire [0:0] subjLet_14;
  wire [630:0] altLet_15;
  wire [630:0] bodyVar_16;
  wire [630:0] altLet_17;
  wire [1:0] ipv_18;
  wire [64:0] ds10_19;
  wire [630:0] altLet_20;
  wire [630:0] altLet_21;
  wire [399:0] repANF_22;
  wire [230:0] repANF_23;
  wire [630:0] altLet_24;
  wire [65:0] ds13_25;
  wire [3:0] ds3_26;
  wire [0:0] subjLet_27;
  wire [630:0] altLet_28;
  wire [399:0] repANF_29;
  wire [230:0] repANF_30;
  wire [66:0] repANF_31;
  wire [64:0] newRv_32;
  wire [15:0] a_33;
  wire [630:0] altLet_34;
  wire [64:0] u_35;
  wire [64:0] ds11_36;
  wire [63:0] ds4_37;
  wire [3:0] repANF_38;
  wire [259:0] repANF_39;
  wire [399:0] repANF_40;
  wire [630:0] altLet_41;
  wire [15:0] repANF_42;
  wire [63:0] ipv1_43;
  wire [0:0] a1_44;
  wire [630:0] altLet_45;
  wire [64:0] ds6_46;
  wire [1:0] ds8_47;
  wire [630:0] bodyVar_48;
  wire [630:0] altLet_49;
  wire [15:0] ds3_50;
  wire [0:0] subjLet_51;
  wire [630:0] altLet_52;
  wire [630:0] altLet_53;
  wire [259:0] ds7_54;
  wire [1:0] repANF_55;
  wire [15:0] ds5_56;
  wire [64:0] wild9_57;
  wire [630:0] altLet_58;
  wire [630:0] altLet_59;
  wire [630:0] altLet_60;
  wire [399:0] repANF_61;
  wire [230:0] repANF_62;
  wire [15:0] ds5_63;
  wire [0:0] ds7_64;
  wire [399:0] repANF_65;
  wire [230:0] repANF_66;
  wire [399:0] repANF_67;
  wire [230:0] repANF_68;
  wire [15:0] ds6_69;
  wire [15:0] ds3_70;
  wire [15:0] ds3_71;
  wire [15:0] ds3_72;
  wire [15:0] ds4_73;
  wire [65:0] repANF_74;
  wire [15:0] ds4_75;
  wire [259:0] zsR_76;
  wire [399:0] repANF_77;
  wire [230:0] repANF_78;
  wire [630:0] altLet_79;
  wire [630:0] altLet_80;
  wire [630:0] altLet_81;
  wire [230:0] bodyVar_82;
  wire [259:0] a_83;
  wire [15:0] repANF_84;
  wire [15:0] ds22_85;
  wire [0:0] ds24_86;
  wire [64:0] repANF_87;
  wire [15:0] repANF_88;
  wire [630:0] altLet_89;
  wire [630:0] altLet_90;
  wire [230:0] altLet_91;
  wire [324:0] subjLet_92;
  wire [15:0] ds23_93;
  wire [0:0] ds25_94;
  wire [15:0] ds20_95;
  wire [15:0] ds5_96;
  wire [15:0] repANF_97;
  wire [15:0] repANF_98;
  wire [15:0] repANF_99;
  wire [399:0] repANF_100;
  wire [230:0] repANF_101;
  wire [0:0] subjLet_102;
  wire [630:0] altLet_103;
  wire [630:0] altLet_104;
  wire [0:0] subjLet_105;
  wire [230:0] altLet_106;
  wire [324:0] repANF_107;
  wire [15:0] ds21_108;
  wire [230:0] bodyVar_109;
  wire [230:0] repANF_110;
  wire [230:0] repANF_111;
  wire [230:0] bodyVar_112;
  wire [230:0] altLet_113;
  wire [64:0] wild10_114;
  wire [66:0] repANF_115;
  wire [64:0] uv_116;
  wire [0:0] subjLet_117;
  wire [230:0] altLet_118;
  wire signed [31:0] repANF_119;
  wire [15:0] repANF_120;
  wire [230:0] bodyVar_121;
  wire signed [31:0] wild9_122;
  wire [66:0] repANF_123;
  wire [64:0] uv_124;
  wire signed [31:0] repANF_125;
  wire [64:0] tmp_364;
  wire [64:0] tmp_533;
  reg [630:0] altLet_0_reg;
  always @(*) begin
    case(ds5_3[4:2])
      3'b111 : altLet_0_reg = altLet_2;
      default : altLet_0_reg = altLet_1;
    endcase
  end
  assign altLet_0 = altLet_0_reg;
  
  assign altLet_1 = altLet_4;
  
  assign altLet_2 = {eta_i1
                    ,{{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                     ,16'd0
                     ,16'd0
                     ,1'b0
                     ,{({16 {1'b1}}) - 16'd1
                      ,({16 {1'b1}}) - 16'd1
                      ,({16 {1'b1}}) >> 32'sd1
                      ,16'd0
                      ,1'b0}
                     ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}}};
  
  assign ds5_3 = eta_i1[331:327];
  
  assign altLet_4 = altLet_5;
  
  reg [630:0] altLet_5_reg;
  always @(*) begin
    case(ds12_9[2:2])
      1'b1 : altLet_5_reg = altLet_8;
      default : altLet_5_reg = altLet_7;
    endcase
  end
  assign altLet_5 = altLet_5_reg;
  
  assign ds9_6 = eta_i2[198:130];
  
  reg [630:0] altLet_7_reg;
  always @(*) begin
    case(ds14_13)
      1'b1 : altLet_7_reg = {{4'd0
                             ,{16'd0,16'd0,16'd0,16'd0}
                             ,{3'b111,2'd1}
                             ,{({16 {1'b1}}) - 16'd1
                              ,({16 {1'b1}}) - 16'd1
                              ,({16 {1'b1}}) >> 32'sd1
                              ,16'd0
                              ,1'b0}
                             ,{(4) {{({16 {1'b1}}) - 16'd1,({16 {1'b1}}) - 16'd1,({16 {1'b1}}) >> 32'sd1,16'd0,1'b0}}}
                             ,2'd0}
                            ,{{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                             ,16'd0
                             ,16'd0
                             ,1'b0
                             ,{({16 {1'b1}}) - 16'd1
                              ,({16 {1'b1}}) - 16'd1
                              ,({16 {1'b1}}) >> 32'sd1
                              ,16'd0
                              ,1'b0}
                             ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}}};
      default : altLet_7_reg = {{4'd0
                                ,{16'd0,16'd0,16'd0,16'd0}
                                ,{3'b111,2'd0}
                                ,{({16 {1'b1}}) - 16'd1
                                 ,({16 {1'b1}}) - 16'd1
                                 ,({16 {1'b1}}) >> 32'sd1
                                 ,16'd0
                                 ,1'b0}
                                ,{(4) {{({16 {1'b1}}) - 16'd1,({16 {1'b1}}) - 16'd1,({16 {1'b1}}) >> 32'sd1,16'd0,1'b0}}}
                                ,2'd0}
                               ,{{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                                ,16'd0
                                ,16'd0
                                ,1'b0
                                ,{({16 {1'b1}}) - 16'd1
                                 ,({16 {1'b1}}) - 16'd1
                                 ,({16 {1'b1}}) >> 32'sd1
                                 ,16'd0
                                 ,1'b0}
                                ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}}};
    endcase
  end
  assign altLet_7 = altLet_7_reg;
  
  reg [630:0] altLet_8_reg;
  always @(*) begin
    case(ds5_3[4:2])
      3'b011 : altLet_8_reg = altLet_12;
      3'b001 : altLet_8_reg = altLet_11;
      3'b000 : altLet_8_reg = altLet_10;
      default : altLet_8_reg = altLet_20;
    endcase
  end
  assign altLet_8 = altLet_8_reg;
  
  assign ds12_9 = ds9_6[68:66];
  
  reg [630:0] altLet_10_reg;
  always @(*) begin
    case(ds10_19[64:64])
      1'b1 : altLet_10_reg = altLet_15;
      default : altLet_10_reg = altLet_2;
    endcase
  end
  assign altLet_10 = altLet_10_reg;
  
  reg [630:0] altLet_11_reg;
  always @(*) begin
    case(ipv_18)
      2'b10 : altLet_11_reg = bodyVar_16;
      default : altLet_11_reg = altLet_20;
    endcase
  end
  assign altLet_11 = altLet_11_reg;
  
  reg [630:0] altLet_12_reg;
  always @(*) begin
    case(ipv_18)
      2'b10 : altLet_12_reg = altLet_17;
      2'b01 : altLet_12_reg = altLet_20;
      default : altLet_12_reg = altLet_2;
    endcase
  end
  assign altLet_12 = altLet_12_reg;
  
  assign ds14_13 = ds12_9[1:1];
  
  assign subjLet_14 = ds3_26 == 4'd3;
  
  reg [630:0] altLet_15_reg;
  always @(*) begin
    case(ipv_18)
      2'b10 : altLet_15_reg = altLet_21;
      default : altLet_15_reg = altLet_20;
    endcase
  end
  assign altLet_15 = altLet_15_reg;
  
  assign bodyVar_16 = {repANF_22
                      ,repANF_23};
  
  reg [630:0] altLet_17_reg;
  always @(*) begin
    case(ds13_25[65:65])
      1'b1 : altLet_17_reg = altLet_24;
      default : altLet_17_reg = {{4'd0
                                 ,{16'd0,16'd0,16'd0,16'd0}
                                 ,{3'b111,2'd1}
                                 ,{({16 {1'b1}}) - 16'd1
                                  ,({16 {1'b1}}) - 16'd1
                                  ,({16 {1'b1}}) >> 32'sd1
                                  ,16'd0
                                  ,1'b0}
                                 ,{(4) {{({16 {1'b1}}) - 16'd1,({16 {1'b1}}) - 16'd1,({16 {1'b1}}) >> 32'sd1,16'd0,1'b0}}}
                                 ,2'd0}
                                ,{{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                                 ,16'd0
                                 ,16'd0
                                 ,1'b0
                                 ,{({16 {1'b1}}) - 16'd1
                                  ,({16 {1'b1}}) - 16'd1
                                  ,({16 {1'b1}}) >> 32'sd1
                                  ,16'd0
                                  ,1'b0}
                                 ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}}};
    endcase
  end
  assign altLet_17 = altLet_17_reg;
  
  assign ipv_18 = ds12_9[1:0];
  
  assign ds10_19 = eta_i2[129:65];
  
  reg [630:0] altLet_20_reg;
  always @(*) begin
    if(subjLet_14)
      altLet_20_reg = altLet_28;
    else
      altLet_20_reg = altLet_49;
  end
  assign altLet_20 = altLet_20_reg;
  
  assign altLet_21 = {repANF_29
                     ,repANF_30};
  
  assign repANF_22 = {4'd0
                     ,ds4_37
                     ,{3'b011,2'b00}
                     ,newRv_32
                     ,{(4) {{({16 {1'b1}}) - 16'd1,({16 {1'b1}}) - 16'd1,({16 {1'b1}}) >> 32'sd1,16'd0,1'b0}}}
                     ,2'd0};
  
  assign repANF_23 = {repANF_31
                     ,16'd0
                     ,a_33
                     ,1'b1
                     ,newRv_32
                     ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}};
  
  assign altLet_24 = altLet_34;
  
  assign ds13_25 = ds9_6[65:0];
  
  assign ds3_26 = eta_i1[399:396];
  
  assign subjLet_27 = ds8_47 == 2'd3;
  
  reg [630:0] altLet_28_reg;
  always @(*) begin
    case(ds5_3[4:2])
      3'b100 : altLet_28_reg = altLet_41;
      default : altLet_28_reg = altLet_49;
    endcase
  end
  assign altLet_28 = altLet_28_reg;
  
  assign repANF_29 = {4'd0
                     ,ipv1_43
                     ,{3'b001,2'b00}
                     ,{({16 {1'b1}}) - 16'd1
                      ,({16 {1'b1}}) - 16'd1
                      ,({16 {1'b1}}) >> 32'sd1
                      ,16'd0
                      ,1'b0}
                     ,{(4) {{({16 {1'b1}}) - 16'd1,({16 {1'b1}}) - 16'd1,({16 {1'b1}}) >> 32'sd1,16'd0,1'b0}}}
                     ,2'd0};
  
  assign repANF_30 = {{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                     ,repANF_42
                     ,16'd0
                     ,1'b0
                     ,{({16 {1'b1}}) - 16'd1
                      ,({16 {1'b1}}) - 16'd1
                      ,({16 {1'b1}}) >> 32'sd1
                      ,16'd0
                      ,1'b0}
                     ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}};
  
  assign repANF_31 = {2'b00,newRv_32};
  
  assign newRv_32 = {a_33
                    ,a_33
                    ,16'd0
                    ,16'd0
                    ,a1_44};
  
  assign a_33 = ds3_50;
  
  assign altLet_34 = altLet_45;
  
  assign u_35 = ds13_25[64:0];
  
  assign ds11_36 = eta_i2[64:0];
  
  assign ds4_37 = eta_i1[395:332];
  
  assign repANF_38 = ds3_26 + 4'd1;
  
  Path_zuzuzl_3 Path_zuzuzl_3_repANF_39
  (.bodyVar_o (repANF_39)
  ,.eta_i1 (ds7_54)
  ,.eta_i2 (ds11_36));
  
  assign repANF_40 = {4'd0
                     ,ds4_37
                     ,{3'b011,2'b00}
                     ,{({16 {1'b1}}) - 16'd1
                      ,({16 {1'b1}}) - 16'd1
                      ,({16 {1'b1}}) >> 32'sd1
                      ,16'd0
                      ,1'b0}
                     ,{(4) {{({16 {1'b1}}) - 16'd1,({16 {1'b1}}) - 16'd1,({16 {1'b1}}) >> 32'sd1,16'd0,1'b0}}}
                     ,2'd0};
  
  reg [630:0] altLet_41_reg;
  always @(*) begin
    case(ipv_18)
      2'b10 : altLet_41_reg = bodyVar_48;
      2'b01 : altLet_41_reg = altLet_2;
      default : altLet_41_reg = altLet_49;
    endcase
  end
  assign altLet_41 = altLet_41_reg;
  
  assign repANF_42 = ds5_63;
  
  assign ipv1_43 = ds10_19[63:0];
  
  assign a1_44 = ds7_64;
  
  reg [630:0] altLet_45_reg;
  always @(*) begin
    if(subjLet_51)
      altLet_45_reg = altLet_53;
    else
      altLet_45_reg = altLet_52;
  end
  assign altLet_45 = altLet_45_reg;
  
  assign ds6_46 = eta_i1[326:262];
  
  assign ds8_47 = eta_i1[1:0];
  
  assign bodyVar_48 = {repANF_61
                      ,repANF_62};
  
  reg [630:0] altLet_49_reg;
  always @(*) begin
    case(ds5_3[4:2])
      3'b110 : altLet_49_reg = altLet_60;
      3'b101 : altLet_49_reg = altLet_59;
      3'b100 : altLet_49_reg = altLet_58;
      default : altLet_49_reg = {{4'd0
                                 ,{16'd0,16'd0,16'd0,16'd0}
                                 ,{3'b111,2'd2}
                                 ,{({16 {1'b1}}) - 16'd1
                                  ,({16 {1'b1}}) - 16'd1
                                  ,({16 {1'b1}}) >> 32'sd1
                                  ,16'd0
                                  ,1'b0}
                                 ,{(4) {{({16 {1'b1}}) - 16'd1,({16 {1'b1}}) - 16'd1,({16 {1'b1}}) >> 32'sd1,16'd0,1'b0}}}
                                 ,2'd0}
                                ,{{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                                 ,16'd0
                                 ,16'd0
                                 ,1'b0
                                 ,{({16 {1'b1}}) - 16'd1
                                  ,({16 {1'b1}}) - 16'd1
                                  ,({16 {1'b1}}) >> 32'sd1
                                  ,16'd0
                                  ,1'b0}
                                 ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}}};
    endcase
  end
  assign altLet_49 = altLet_49_reg;
  
  assign ds3_50 = ds11_36[64:49];
  
  assign subjLet_51 = ds3_70 == ds6_69;
  
  assign altLet_52 = {repANF_65
                     ,repANF_66};
  
  assign altLet_53 = {repANF_67
                     ,repANF_68};
  
  assign ds7_54 = eta_i1[261:2];
  
  assign repANF_55 = ds8_47 + 2'd1;
  
  assign ds5_56 = ds4_37[31:16];
  
  // head begin
  wire [259:0] n_365;
  assign n_365 = a_83;
  
  assign tmp_364 = n_365[260-1:260-65];
  // head end
  
  assign wild9_57 = tmp_364;
  
  assign altLet_58 = {repANF_77
                     ,repANF_78};
  
  reg [630:0] altLet_59_reg;
  always @(*) begin
    if(subjLet_27)
      altLet_59_reg = altLet_80;
    else
      altLet_59_reg = altLet_79;
  end
  assign altLet_59 = altLet_59_reg;
  
  assign altLet_60 = altLet_81;
  
  assign repANF_61 = {4'd0
                     ,ds4_37
                     ,{3'b101,2'b00}
                     ,ds6_46
                     ,a_83
                     ,2'd0};
  
  assign repANF_62 = bodyVar_82;
  
  assign ds5_63 = ipv1_43[31:16];
  
  assign ds7_64 = ds11_36[0:0];
  
  assign repANF_65 = {4'd0
                     ,ds4_37
                     ,{3'b100,2'b00}
                     ,u_35
                     ,{(4) {{({16 {1'b1}}) - 16'd1,({16 {1'b1}}) - 16'd1,({16 {1'b1}}) >> 32'sd1,16'd0,1'b0}}}
                     ,2'd0};
  
  assign repANF_66 = {{2'b01,65'b00000000000000000000000000000000000000000000000000000000000000000}
                     ,repANF_84
                     ,16'd0
                     ,1'b0
                     ,{({16 {1'b1}}) - 16'd1
                      ,({16 {1'b1}}) - 16'd1
                      ,({16 {1'b1}}) >> 32'sd1
                      ,16'd0
                      ,1'b0}
                     ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}};
  
  assign repANF_67 = {4'd0
                     ,ds4_37
                     ,{3'b110,2'b00}
                     ,u_35
                     ,{(4) {{({16 {1'b1}}) - 16'd1,({16 {1'b1}}) - 16'd1,({16 {1'b1}}) >> 32'sd1,16'd0,1'b0}}}
                     ,2'd0};
  
  assign repANF_68 = {{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                     ,ds6_69
                     ,16'd0
                     ,1'b0
                     ,{({16 {1'b1}}) - 16'd1
                      ,({16 {1'b1}}) - 16'd1
                      ,({16 {1'b1}}) >> 32'sd1
                      ,16'd0
                      ,1'b0}
                     ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}};
  
  assign ds6_69 = ds4_37[15:0];
  
  assign ds3_70 = u_35[64:49];
  
  assign ds3_71 = ds6_46[64:49];
  
  assign ds3_72 = ds4_37[63:48];
  
  assign ds4_73 = ds4_37[47:32];
  
  assign repANF_74 = {1'b1,ds11_36};
  
  assign ds4_75 = ds11_36[48:33];
  
  assign zsR_76 = subjLet_92[259:0];
  
  assign repANF_77 = {repANF_38
                     ,ds4_37
                     ,{3'b100,2'b00}
                     ,ds6_46
                     ,repANF_39
                     ,2'd0};
  
  assign repANF_78 = {{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                     ,repANF_88
                     ,16'd0
                     ,1'b0
                     ,{({16 {1'b1}}) - 16'd1
                      ,({16 {1'b1}}) - 16'd1
                      ,({16 {1'b1}}) >> 32'sd1
                      ,16'd0
                      ,1'b0}
                     ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}};
  
  reg [630:0] altLet_79_reg;
  always @(*) begin
    case(ipv_18)
      2'b10 : altLet_79_reg = altLet_89;
      2'b01 : altLet_79_reg = {{4'd0
                               ,{16'd0,16'd0,16'd0,16'd0}
                               ,{3'b111,2'd2}
                               ,{({16 {1'b1}}) - 16'd1
                                ,({16 {1'b1}}) - 16'd1
                                ,({16 {1'b1}}) >> 32'sd1
                                ,16'd0
                                ,1'b0}
                               ,{(4) {{({16 {1'b1}}) - 16'd1,({16 {1'b1}}) - 16'd1,({16 {1'b1}}) >> 32'sd1,16'd0,1'b0}}}
                               ,2'd0}
                              ,{{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                               ,16'd0
                               ,16'd0
                               ,1'b0
                               ,{({16 {1'b1}}) - 16'd1
                                ,({16 {1'b1}}) - 16'd1
                                ,({16 {1'b1}}) >> 32'sd1
                                ,16'd0
                                ,1'b0}
                               ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}}};
      default : altLet_79_reg = altLet_2;
    endcase
  end
  assign altLet_79 = altLet_79_reg;
  
  assign altLet_80 = {repANF_40
                     ,{{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                      ,16'd0
                      ,16'd0
                      ,1'b0
                      ,{({16 {1'b1}}) - 16'd1
                       ,({16 {1'b1}}) - 16'd1
                       ,({16 {1'b1}}) >> 32'sd1
                       ,16'd0
                       ,1'b0}
                      ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}}};
  
  assign altLet_81 = altLet_90;
  
  assign bodyVar_82 = altLet_91;
  
  assign a_83 = zsR_76;
  
  Path_getNeighbor_4 Path_getNeighbor_4_repANF_84
  (.topLet_o (repANF_84)
  ,.pTS_i1 (ds3_70)
  ,.pTS_i2 (ds3_72)
  ,.pTS_i3 (ds4_73));
  
  assign ds22_85 = wild9_57[32:17];
  
  assign ds24_86 = wild9_57[0:0];
  
  assign repANF_87 = ds11_36;
  
  Path_getNeighbor_5 Path_getNeighbor_5_repANF_88
  (.topLet_o (repANF_88)
  ,.idx1_i1 (repANF_97)
  ,.x1_i2 (repANF_98)
  ,.y1_i3 (repANF_99)
  ,.direction_i4 (repANF_38));
  
  assign altLet_89 = {repANF_100
                     ,repANF_101};
  
  reg [630:0] altLet_90_reg;
  always @(*) begin
    if(subjLet_102)
      altLet_90_reg = altLet_104;
    else
      altLet_90_reg = altLet_103;
  end
  assign altLet_90 = altLet_90_reg;
  
  reg [230:0] altLet_91_reg;
  always @(*) begin
    if(subjLet_105)
      altLet_91_reg = altLet_106;
    else
      altLet_91_reg = {{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                      ,16'd0
                      ,16'd0
                      ,1'b0
                      ,{({16 {1'b1}}) - 16'd1
                       ,({16 {1'b1}}) - 16'd1
                       ,({16 {1'b1}}) >> 32'sd1
                       ,16'd0
                       ,1'b0}
                      ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}};
  end
  assign altLet_91 = altLet_91_reg;
  
  assign subjLet_92 = repANF_107;
  
  assign ds23_93 = wild10_114[32:17];
  
  assign ds25_94 = wild10_114[0:0];
  
  assign ds20_95 = wild9_57[64:49];
  
  assign ds5_96 = ds6_46[32:17];
  
  assign repANF_97 = ds3_71;
  
  assign repANF_98 = ds3_72;
  
  assign repANF_99 = ds4_73;
  
  assign repANF_100 = {4'd0
                      ,ds4_37
                      ,{3'b101,2'b00}
                      ,ds6_46
                      ,ds7_54
                      ,repANF_55};
  
  assign repANF_101 = bodyVar_109;
  
  assign subjLet_102 = ds3_50 == ds5_56;
  
  assign altLet_103 = {eta_i1
                      ,repANF_110};
  
  assign altLet_104 = {eta_i1
                      ,repANF_111};
  
  assign subjLet_105 = repANF_120 < ds22_85;
  
  reg [230:0] altLet_106_reg;
  always @(*) begin
    if(ds24_86)
      altLet_106_reg = {{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                       ,16'd0
                       ,16'd0
                       ,1'b0
                       ,{({16 {1'b1}}) - 16'd1
                        ,({16 {1'b1}}) - 16'd1
                        ,({16 {1'b1}}) >> 32'sd1
                        ,16'd0
                        ,1'b0}
                       ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}};
    else
      altLet_106_reg = bodyVar_112;
  end
  assign altLet_106 = altLet_106_reg;
  
  assign repANF_107 = {ds7_54,repANF_87};
  
  assign ds21_108 = wild10_114[64:49];
  
  assign bodyVar_109 = altLet_113;
  
  assign repANF_110 = {{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                      ,ds4_75
                      ,16'd0
                      ,1'b0
                      ,{({16 {1'b1}}) - 16'd1
                       ,({16 {1'b1}}) - 16'd1
                       ,({16 {1'b1}}) >> 32'sd1
                       ,16'd0
                       ,1'b0}
                      ,repANF_74};
  
  assign repANF_111 = {{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                      ,ds6_69
                      ,16'd0
                      ,1'b0
                      ,{({16 {1'b1}}) - 16'd1
                       ,({16 {1'b1}}) - 16'd1
                       ,({16 {1'b1}}) >> 32'sd1
                       ,16'd0
                       ,1'b0}
                      ,repANF_74};
  
  assign bodyVar_112 = {repANF_115
                       ,16'd0
                       ,ds20_95
                       ,1'b1
                       ,uv_116
                       ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}};
  
  reg [230:0] altLet_113_reg;
  always @(*) begin
    if(subjLet_117)
      altLet_113_reg = altLet_118;
    else
      altLet_113_reg = {{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                       ,16'd0
                       ,16'd0
                       ,1'b0
                       ,{({16 {1'b1}}) - 16'd1
                        ,({16 {1'b1}}) - 16'd1
                        ,({16 {1'b1}}) >> 32'sd1
                        ,16'd0
                        ,1'b0}
                       ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}};
  end
  assign altLet_113 = altLet_113_reg;
  
  // indexVec begin
  wire [64:0] vec_n_534 [0:4-1];
  
  wire [259:0] vecflat_n_535;
  assign vecflat_n_535 = ds7_54;
  genvar n_536;
  for (n_536=0; n_536 < 4; n_536=n_536+1) begin : array_n_537
    assign vec_n_534[(4-1)-n_536] = vecflat_n_535[n_536*65+:65];
  end
  
  assign tmp_533 = vec_n_534[repANF_119];
  // indexVec end
  
  assign wild10_114 = tmp_533;
  
  assign repANF_115 = {2'b00,uv_116};
  
  assign uv_116 = {ds20_95
                  ,ds3_71
                  ,repANF_120
                  ,16'd0
                  ,1'b0};
  
  assign subjLet_117 = repANF_120 < ds23_93;
  
  reg [230:0] altLet_118_reg;
  always @(*) begin
    if(ds25_94)
      altLet_118_reg = {{2'b10,65'b00000000000000000000000000000000000000000000000000000000000000000}
                       ,16'd0
                       ,16'd0
                       ,1'b0
                       ,{({16 {1'b1}}) - 16'd1
                        ,({16 {1'b1}}) - 16'd1
                        ,({16 {1'b1}}) >> 32'sd1
                        ,16'd0
                        ,1'b0}
                       ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}};
    else
      altLet_118_reg = bodyVar_121;
  end
  assign altLet_118 = altLet_118_reg;
  
  assign repANF_119 = wild9_122;
  
  assign repANF_120 = ds5_96 + 16'd1;
  
  assign bodyVar_121 = {repANF_123
                       ,16'd0
                       ,ds21_108
                       ,1'b1
                       ,uv_124
                       ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}};
  
  assign wild9_122 = repANF_125;
  
  assign repANF_123 = {2'b00,uv_124};
  
  assign uv_124 = {ds21_108
                  ,ds3_71
                  ,repANF_120
                  ,16'd0
                  ,1'b0};
  
  assign repANF_125 = $unsigned(repANF_55);
  
  assign topLet_o = altLet_0;
endmodule
