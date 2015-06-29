// Automatically generated Verilog-2005
module Path_getSwapIdx_12(eta_i1
                         ,eta_i2
                         ,eta_i3
                         ,bodyVar_o);
  input [64999:0] eta_i1;
  input [15:0] eta_i2;
  input [15:0] eta_i3;
  output [15:0] bodyVar_o;
  wire [15:0] c2Idx_0;
  wire [15:0] bodyVar_1;
  wire [15:0] c1Idx_2;
  wire [15:0] repANF_3;
  wire [0:0] subjLet_4;
  wire [64:0] bodyVar_5;
  wire signed [31:0] wild9_6;
  wire signed [31:0] repANF_7;
  wire signed [31:0] repANF_8;
  wire [15:0] bodyVar_9;
  wire [64:0] bodyVar_10;
  wire signed [31:0] wild9_11;
  wire signed [31:0] repANF_12;
  wire signed [31:0] repANF_13;
  wire [1:0] subjLet_14;
  wire [0:0] subjLet_15;
  wire [64:0] bodyVar_16;
  wire signed [31:0] wild9_17;
  wire signed [31:0] repANF_18;
  wire signed [31:0] repANF_19;
  wire [15:0] bodyVar_20;
  wire [64:0] bodyVar_21;
  wire signed [31:0] wild9_22;
  wire signed [31:0] repANF_23;
  wire signed [31:0] repANF_24;
  wire [1:0] subjLet_25;
  wire [64:0] tmp_33;
  wire [64:0] tmp_40;
  wire [64:0] tmp_48;
  wire [64:0] tmp_55;
  assign c2Idx_0 = repANF_3 + 16'd2;
  
  reg [15:0] bodyVar_o_reg;
  always @(*) begin
    if(subjLet_15)
      bodyVar_o_reg = bodyVar_20;
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
  wire [64:0] vec_n_34 [0:1000-1];
  
  wire [64999:0] vecflat_n_35;
  assign vecflat_n_35 = eta_i1;
  genvar n_36;
  for (n_36=0; n_36 < 1000; n_36=n_36+1) begin : array_n_37
    assign vec_n_34[(1000-1)-n_36] = vecflat_n_35[n_36*65+:65];
  end
  
  assign tmp_33 = vec_n_34[repANF_8];
  // indexVec end
  
  assign bodyVar_5 = tmp_33;
  
  assign wild9_6 = repANF_7;
  
  assign repANF_7 = $unsigned(eta_i2);
  
  assign repANF_8 = wild9_6;
  
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
  wire [64:0] vec_n_41 [0:1000-1];
  
  wire [64999:0] vecflat_n_42;
  assign vecflat_n_42 = eta_i1;
  genvar n_43;
  for (n_43=0; n_43 < 1000; n_43=n_43+1) begin : array_n_44
    assign vec_n_41[(1000-1)-n_43] = vecflat_n_42[n_43*65+:65];
  end
  
  assign tmp_40 = vec_n_41[repANF_13];
  // indexVec end
  
  assign bodyVar_10 = tmp_40;
  
  assign wild9_11 = repANF_12;
  
  assign repANF_12 = $unsigned(c1Idx_2);
  
  assign repANF_13 = wild9_11;
  
  Path_compare_9 Path_compare_9_subjLet_14
  (.bodyVar_o (subjLet_14)
  ,.n1_i1 (bodyVar_5)
  ,.n2_i2 (bodyVar_10));
  
  assign subjLet_15 = c2Idx_0 < eta_i3;
  
  // indexVec begin
  wire [64:0] vec_n_49 [0:1000-1];
  
  wire [64999:0] vecflat_n_50;
  assign vecflat_n_50 = eta_i1;
  genvar n_51;
  for (n_51=0; n_51 < 1000; n_51=n_51+1) begin : array_n_52
    assign vec_n_49[(1000-1)-n_51] = vecflat_n_50[n_51*65+:65];
  end
  
  assign tmp_48 = vec_n_49[repANF_19];
  // indexVec end
  
  assign bodyVar_16 = tmp_48;
  
  assign wild9_17 = repANF_18;
  
  assign repANF_18 = $unsigned(bodyVar_1);
  
  assign repANF_19 = wild9_17;
  
  reg [15:0] bodyVar_20_reg;
  always @(*) begin
    case(subjLet_25)
      2'b10 : bodyVar_20_reg = c2Idx_0;
      2'b01 : bodyVar_20_reg = bodyVar_1;
      default : bodyVar_20_reg = bodyVar_1;
    endcase
  end
  assign bodyVar_20 = bodyVar_20_reg;
  
  // indexVec begin
  wire [64:0] vec_n_56 [0:1000-1];
  
  wire [64999:0] vecflat_n_57;
  assign vecflat_n_57 = eta_i1;
  genvar n_58;
  for (n_58=0; n_58 < 1000; n_58=n_58+1) begin : array_n_59
    assign vec_n_56[(1000-1)-n_58] = vecflat_n_57[n_58*65+:65];
  end
  
  assign tmp_55 = vec_n_56[repANF_24];
  // indexVec end
  
  assign bodyVar_21 = tmp_55;
  
  assign wild9_22 = repANF_23;
  
  assign repANF_23 = $unsigned(c2Idx_0);
  
  assign repANF_24 = wild9_22;
  
  Path_compare_9 Path_compare_9_subjLet_25
  (.bodyVar_o (subjLet_25)
  ,.n1_i1 (bodyVar_16)
  ,.n2_i2 (bodyVar_21));
endmodule
