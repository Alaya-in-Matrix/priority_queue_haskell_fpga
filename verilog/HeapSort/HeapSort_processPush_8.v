// Automatically generated Verilog-2005
module HeapSort_processPush_8(eta_i1
                             ,topLet_o);
  input [194:0] eta_i1;
  output [194:0] topLet_o;
  wire [159:0] qu_0;
  wire [15:0] idx1_1;
  wire [15:0] sz_2;
  wire [2:0] st_3;
  wire [194:0] altLet_4;
  wire [0:0] subjLet_5;
  wire [15:0] pId_6;
  wire [15:0] repANF_7;
  wire signed [31:0] bodyVar_8;
  wire signed [31:0] wild1_9;
  wire signed [31:0] repANF_10;
  wire signed [31:0] repANF_11;
  wire [194:0] bodyVar_12;
  wire signed [31:0] bodyVar_13;
  wire signed [31:0] wild1_14;
  wire signed [31:0] repANF_15;
  wire signed [31:0] repANF_16;
  wire [194:0] altLet_17;
  wire signed [31:0] repANF_18;
  wire signed [31:0] repANF_19;
  wire [194:0] altLet_20;
  wire [194:0] altLet_21;
  wire [1:0] subjLet_22;
  wire [159:0] repANF_23;
  wire signed [31:0] xzg_24;
  wire [1:0] altLet_25;
  wire signed [31:0] yzg_26;
  wire [1:0] altLet_27;
  wire [1:0] altLet_28;
  wire [0:0] subjLet_29;
  wire [0:0] subjLet_30;
  wire signed [31:0] tmp_36;
  wire signed [31:0] tmp_43;
  wire signed [31:0] tmp_tte_rhs_52;
  wire [0:0] tmp_tte_52;
  wire signed [31:0] tmp_tte_rhs_53;
  wire [0:0] tmp_tte_53;
  assign topLet_o = altLet_4;
  
  assign qu_0 = eta_i1[159:0];
  
  assign idx1_1 = eta_i1[175:160];
  
  assign sz_2 = eta_i1[191:176];
  
  assign st_3 = eta_i1[194:192];
  
  reg [194:0] altLet_4_reg;
  always @(*) begin
    if(subjLet_5)
      altLet_4_reg = altLet_20;
    else
      altLet_4_reg = bodyVar_12;
  end
  assign altLet_4 = altLet_4_reg;
  
  assign subjLet_5 = idx1_1 == 16'd0;
  
  assign pId_6 = repANF_7 >> 32'sd1;
  
  assign repANF_7 = idx1_1 - 16'd1;
  
  // indexVec begin
  wire signed [31:0] vec_n_37 [0:5-1];
  
  wire [159:0] vecflat_n_38;
  assign vecflat_n_38 = qu_0;
  genvar n_39;
  for (n_39=0; n_39 < 5; n_39=n_39+1) begin : array_n_40
    assign vec_n_37[(5-1)-n_39] = vecflat_n_38[n_39*32+:32];
  end
  
  assign tmp_36 = vec_n_37[repANF_11];
  // indexVec end
  
  assign bodyVar_8 = tmp_36;
  
  assign wild1_9 = repANF_10;
  
  assign repANF_10 = $unsigned(pId_6);
  
  assign repANF_11 = wild1_9;
  
  reg [194:0] bodyVar_12_reg;
  always @(*) begin
    case(subjLet_22)
      2'b10 : bodyVar_12_reg = altLet_17;
      2'b01 : bodyVar_12_reg = altLet_17;
      default : bodyVar_12_reg = altLet_20;
    endcase
  end
  assign bodyVar_12 = bodyVar_12_reg;
  
  // indexVec begin
  wire signed [31:0] vec_n_44 [0:5-1];
  
  wire [159:0] vecflat_n_45;
  assign vecflat_n_45 = qu_0;
  genvar n_46;
  for (n_46=0; n_46 < 5; n_46=n_46+1) begin : array_n_47
    assign vec_n_44[(5-1)-n_46] = vecflat_n_45[n_46*32+:32];
  end
  
  assign tmp_43 = vec_n_44[repANF_16];
  // indexVec end
  
  assign bodyVar_13 = tmp_43;
  
  assign wild1_14 = repANF_15;
  
  assign repANF_15 = $unsigned(idx1_1);
  
  assign repANF_16 = wild1_14;
  
  reg [194:0] altLet_17_reg;
  always @(*) begin
    case(subjLet_22)
      2'b01 : altLet_17_reg = altLet_20;
      default : altLet_17_reg = altLet_21;
    endcase
  end
  assign altLet_17 = altLet_17_reg;
  
  assign repANF_18 = (xzg_24 == yzg_26) ? 32'sd1 : 32'sd0;
  
  assign repANF_19 = (xzg_24 < yzg_26) ? 32'sd1 : 32'sd0;
  
  assign altLet_20 = {{1'b1,2'd2}
                     ,sz_2
                     ,idx1_1
                     ,qu_0};
  
  assign altLet_21 = {st_3
                     ,sz_2
                     ,pId_6
                     ,repANF_23};
  
  assign subjLet_22 = altLet_25;
  
  HeapSort_swap_9 HeapSort_swap_9_repANF_23
  (.bodyVar_o (repANF_23)
  ,.eta_i1 (qu_0)
  ,.eta_i2 (idx1_1)
  ,.eta_i3 (pId_6));
  
  assign xzg_24 = bodyVar_8;
  
  assign altLet_25 = altLet_27;
  
  assign yzg_26 = bodyVar_13;
  
  reg [1:0] altLet_27_reg;
  always @(*) begin
    if(subjLet_29)
      altLet_27_reg = 2'd0;
    else
      altLet_27_reg = altLet_28;
  end
  assign altLet_27 = altLet_27_reg;
  
  reg [1:0] altLet_28_reg;
  always @(*) begin
    if(subjLet_30)
      altLet_28_reg = 2'd1;
    else
      altLet_28_reg = 2'd2;
  end
  assign altLet_28 = altLet_28_reg;
  
  assign tmp_tte_rhs_52 = repANF_19;
  
  assign tmp_tte_52 = tmp_tte_rhs_52[0];
  
  assign subjLet_29 = tmp_tte_52;
  
  assign tmp_tte_rhs_53 = repANF_18;
  
  assign tmp_tte_53 = tmp_tte_rhs_53[0];
  
  assign subjLet_30 = tmp_tte_53;
endmodule
