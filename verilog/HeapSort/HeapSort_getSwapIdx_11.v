// Automatically generated Verilog-2005
module HeapSort_getSwapIdx_11(eta_i1
                             ,eta_i2
                             ,eta_i3
                             ,bodyVar_o);
  input [159:0] eta_i1;
  input [15:0] eta_i2;
  input [15:0] eta_i3;
  output [15:0] bodyVar_o;
  wire [15:0] c2Idx_0;
  wire [15:0] bodyVar_1;
  wire [15:0] c1Idx_2;
  wire [15:0] repANF_3;
  wire [0:0] subjLet_4;
  wire signed [31:0] bodyVar_5;
  wire signed [31:0] wild1_6;
  wire signed [31:0] repANF_7;
  wire signed [31:0] repANF_8;
  wire [15:0] bodyVar_9;
  wire signed [31:0] bodyVar_10;
  wire signed [31:0] wild1_11;
  wire signed [31:0] repANF_12;
  wire signed [31:0] repANF_13;
  wire [1:0] subjLet_14;
  wire signed [31:0] xzg_15;
  wire [1:0] altLet_16;
  wire signed [31:0] yzg_17;
  wire [1:0] altLet_18;
  wire [1:0] altLet_19;
  wire [0:0] subjLet_20;
  wire [0:0] subjLet_21;
  wire signed [31:0] repANF_22;
  wire signed [31:0] repANF_23;
  wire [0:0] subjLet_24;
  wire signed [31:0] bodyVar_25;
  wire signed [31:0] wild1_26;
  wire signed [31:0] repANF_27;
  wire signed [31:0] repANF_28;
  wire [15:0] bodyVar_29;
  wire signed [31:0] bodyVar_30;
  wire signed [31:0] wild1_31;
  wire signed [31:0] repANF_32;
  wire signed [31:0] repANF_33;
  wire [1:0] subjLet_34;
  wire signed [31:0] xzg_35;
  wire [1:0] altLet_36;
  wire signed [31:0] yzg_37;
  wire [1:0] altLet_38;
  wire [1:0] altLet_39;
  wire [0:0] subjLet_40;
  wire [0:0] subjLet_41;
  wire signed [31:0] repANF_42;
  wire signed [31:0] repANF_43;
  wire signed [31:0] tmp_51;
  wire signed [31:0] tmp_58;
  wire signed [31:0] tmp_tte_rhs_65;
  wire [0:0] tmp_tte_65;
  wire signed [31:0] tmp_tte_rhs_66;
  wire [0:0] tmp_tte_66;
  wire signed [31:0] tmp_70;
  wire signed [31:0] tmp_77;
  wire signed [31:0] tmp_tte_rhs_84;
  wire [0:0] tmp_tte_84;
  wire signed [31:0] tmp_tte_rhs_85;
  wire [0:0] tmp_tte_85;
  assign c2Idx_0 = repANF_3 + 16'd2;
  
  reg [15:0] bodyVar_o_reg;
  always @(*) begin
    if(subjLet_24)
      bodyVar_o_reg = bodyVar_29;
    else
      bodyVar_o_reg = bodyVar_1;
  end
  assign bodyVar_o = bodyVar_o_reg;
  
  reg [15:0] bodyVar_1_reg;
  always @(*) begin
    if(subjLet_4)
      bodyVar_1_reg = bodyVar_9;
    else
      bodyVar_1_reg = eta_i2;
  end
  assign bodyVar_1 = bodyVar_1_reg;
  
  assign c1Idx_2 = repANF_3 + 16'd1;
  
  assign repANF_3 = 16'd2 * eta_i2;
  
  assign subjLet_4 = c1Idx_2 < eta_i3;
  
  // indexVec begin
  wire signed [31:0] vec_n_52 [0:5-1];
  
  wire [159:0] vecflat_n_53;
  assign vecflat_n_53 = eta_i1;
  genvar n_54;
  for (n_54=0; n_54 < 5; n_54=n_54+1) begin : array_n_55
    assign vec_n_52[(5-1)-n_54] = vecflat_n_53[n_54*32+:32];
  end
  
  assign tmp_51 = vec_n_52[repANF_8];
  // indexVec end
  
  assign bodyVar_5 = tmp_51;
  
  assign wild1_6 = repANF_7;
  
  assign repANF_7 = $unsigned(eta_i2);
  
  assign repANF_8 = wild1_6;
  
  reg [15:0] bodyVar_9_reg;
  always @(*) begin
    case(subjLet_14)
      2'b10 : bodyVar_9_reg = c1Idx_2;
      2'b01 : bodyVar_9_reg = eta_i2;
      default : bodyVar_9_reg = eta_i2;
    endcase
  end
  assign bodyVar_9 = bodyVar_9_reg;
  
  // indexVec begin
  wire signed [31:0] vec_n_59 [0:5-1];
  
  wire [159:0] vecflat_n_60;
  assign vecflat_n_60 = eta_i1;
  genvar n_61;
  for (n_61=0; n_61 < 5; n_61=n_61+1) begin : array_n_62
    assign vec_n_59[(5-1)-n_61] = vecflat_n_60[n_61*32+:32];
  end
  
  assign tmp_58 = vec_n_59[repANF_13];
  // indexVec end
  
  assign bodyVar_10 = tmp_58;
  
  assign wild1_11 = repANF_12;
  
  assign repANF_12 = $unsigned(c1Idx_2);
  
  assign repANF_13 = wild1_11;
  
  assign subjLet_14 = altLet_16;
  
  assign xzg_15 = bodyVar_5;
  
  assign altLet_16 = altLet_18;
  
  assign yzg_17 = bodyVar_10;
  
  reg [1:0] altLet_18_reg;
  always @(*) begin
    if(subjLet_20)
      altLet_18_reg = 2'd0;
    else
      altLet_18_reg = altLet_19;
  end
  assign altLet_18 = altLet_18_reg;
  
  reg [1:0] altLet_19_reg;
  always @(*) begin
    if(subjLet_21)
      altLet_19_reg = 2'd1;
    else
      altLet_19_reg = 2'd2;
  end
  assign altLet_19 = altLet_19_reg;
  
  assign tmp_tte_rhs_65 = repANF_23;
  
  assign tmp_tte_65 = tmp_tte_rhs_65[0];
  
  assign subjLet_20 = tmp_tte_65;
  
  assign tmp_tte_rhs_66 = repANF_22;
  
  assign tmp_tte_66 = tmp_tte_rhs_66[0];
  
  assign subjLet_21 = tmp_tte_66;
  
  assign repANF_22 = (xzg_15 == yzg_17) ? 32'sd1 : 32'sd0;
  
  assign repANF_23 = (xzg_15 < yzg_17) ? 32'sd1 : 32'sd0;
  
  assign subjLet_24 = c2Idx_0 < eta_i3;
  
  // indexVec begin
  wire signed [31:0] vec_n_71 [0:5-1];
  
  wire [159:0] vecflat_n_72;
  assign vecflat_n_72 = eta_i1;
  genvar n_73;
  for (n_73=0; n_73 < 5; n_73=n_73+1) begin : array_n_74
    assign vec_n_71[(5-1)-n_73] = vecflat_n_72[n_73*32+:32];
  end
  
  assign tmp_70 = vec_n_71[repANF_28];
  // indexVec end
  
  assign bodyVar_25 = tmp_70;
  
  assign wild1_26 = repANF_27;
  
  assign repANF_27 = $unsigned(bodyVar_1);
  
  assign repANF_28 = wild1_26;
  
  reg [15:0] bodyVar_29_reg;
  always @(*) begin
    case(subjLet_34)
      2'b10 : bodyVar_29_reg = c2Idx_0;
      2'b01 : bodyVar_29_reg = bodyVar_1;
      default : bodyVar_29_reg = bodyVar_1;
    endcase
  end
  assign bodyVar_29 = bodyVar_29_reg;
  
  // indexVec begin
  wire signed [31:0] vec_n_78 [0:5-1];
  
  wire [159:0] vecflat_n_79;
  assign vecflat_n_79 = eta_i1;
  genvar n_80;
  for (n_80=0; n_80 < 5; n_80=n_80+1) begin : array_n_81
    assign vec_n_78[(5-1)-n_80] = vecflat_n_79[n_80*32+:32];
  end
  
  assign tmp_77 = vec_n_78[repANF_33];
  // indexVec end
  
  assign bodyVar_30 = tmp_77;
  
  assign wild1_31 = repANF_32;
  
  assign repANF_32 = $unsigned(c2Idx_0);
  
  assign repANF_33 = wild1_31;
  
  assign subjLet_34 = altLet_36;
  
  assign xzg_35 = bodyVar_25;
  
  assign altLet_36 = altLet_38;
  
  assign yzg_37 = bodyVar_30;
  
  reg [1:0] altLet_38_reg;
  always @(*) begin
    if(subjLet_40)
      altLet_38_reg = 2'd0;
    else
      altLet_38_reg = altLet_39;
  end
  assign altLet_38 = altLet_38_reg;
  
  reg [1:0] altLet_39_reg;
  always @(*) begin
    if(subjLet_41)
      altLet_39_reg = 2'd1;
    else
      altLet_39_reg = 2'd2;
  end
  assign altLet_39 = altLet_39_reg;
  
  assign tmp_tte_rhs_84 = repANF_43;
  
  assign tmp_tte_84 = tmp_tte_rhs_84[0];
  
  assign subjLet_40 = tmp_tte_84;
  
  assign tmp_tte_rhs_85 = repANF_42;
  
  assign tmp_tte_85 = tmp_tte_rhs_85[0];
  
  assign subjLet_41 = tmp_tte_85;
  
  assign repANF_42 = (xzg_35 == yzg_37) ? 32'sd1 : 32'sd0;
  
  assign repANF_43 = (xzg_35 < yzg_37) ? 32'sd1 : 32'sd0;
endmodule
