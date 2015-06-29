// Automatically generated Verilog-2005
module Path_processPush_8(eta_i1
                         ,topLet_o);
  input [65034:0] eta_i1;
  output [65034:0] topLet_o;
  wire [64999:0] qu_0;
  wire [15:0] idx1_1;
  wire [15:0] sz_2;
  wire [2:0] st_3;
  wire [65034:0] altLet_4;
  wire [0:0] subjLet_5;
  wire [15:0] pId_6;
  wire [15:0] repANF_7;
  wire [64:0] bodyVar_8;
  wire signed [31:0] wild9_9;
  wire signed [31:0] repANF_10;
  wire signed [31:0] repANF_11;
  wire [65034:0] bodyVar_12;
  wire [64:0] bodyVar_13;
  wire signed [31:0] wild9_14;
  wire signed [31:0] repANF_15;
  wire signed [31:0] repANF_16;
  wire [65034:0] altLet_17;
  wire [65034:0] altLet_18;
  wire [65034:0] altLet_19;
  wire [1:0] subjLet_20;
  wire [64999:0] repANF_21;
  wire [64:0] tmp_27;
  wire [64:0] tmp_34;
  assign topLet_o = altLet_4;
  
  assign qu_0 = eta_i1[64999:0];
  
  assign idx1_1 = eta_i1[65015:65000];
  
  assign sz_2 = eta_i1[65031:65016];
  
  assign st_3 = eta_i1[65034:65032];
  
  reg [65034:0] altLet_4_reg;
  always @(*) begin
    if(subjLet_5)
      altLet_4_reg = altLet_18;
    else
      altLet_4_reg = bodyVar_12;
  end
  assign altLet_4 = altLet_4_reg;
  
  assign subjLet_5 = idx1_1 == 16'd0;
  
  assign pId_6 = repANF_7 >> 32'sd1;
  
  assign repANF_7 = idx1_1 - 16'd1;
  
  // indexVec begin
  wire [64:0] vec_n_28 [0:1000-1];
  
  wire [64999:0] vecflat_n_29;
  assign vecflat_n_29 = qu_0;
  genvar n_30;
  for (n_30=0; n_30 < 1000; n_30=n_30+1) begin : array_n_31
    assign vec_n_28[(1000-1)-n_30] = vecflat_n_29[n_30*65+:65];
  end
  
  assign tmp_27 = vec_n_28[repANF_11];
  // indexVec end
  
  assign bodyVar_8 = tmp_27;
  
  assign wild9_9 = repANF_10;
  
  assign repANF_10 = $unsigned(pId_6);
  
  assign repANF_11 = wild9_9;
  
  reg [65034:0] bodyVar_12_reg;
  always @(*) begin
    case(subjLet_20)
      2'b10 : bodyVar_12_reg = altLet_17;
      2'b01 : bodyVar_12_reg = altLet_17;
      default : bodyVar_12_reg = altLet_18;
    endcase
  end
  assign bodyVar_12 = bodyVar_12_reg;
  
  // indexVec begin
  wire [64:0] vec_n_35 [0:1000-1];
  
  wire [64999:0] vecflat_n_36;
  assign vecflat_n_36 = qu_0;
  genvar n_37;
  for (n_37=0; n_37 < 1000; n_37=n_37+1) begin : array_n_38
    assign vec_n_35[(1000-1)-n_37] = vecflat_n_36[n_37*65+:65];
  end
  
  assign tmp_34 = vec_n_35[repANF_16];
  // indexVec end
  
  assign bodyVar_13 = tmp_34;
  
  assign wild9_14 = repANF_15;
  
  assign repANF_15 = $unsigned(idx1_1);
  
  assign repANF_16 = wild9_14;
  
  reg [65034:0] altLet_17_reg;
  always @(*) begin
    case(subjLet_20)
      2'b01 : altLet_17_reg = altLet_18;
      default : altLet_17_reg = altLet_19;
    endcase
  end
  assign altLet_17 = altLet_17_reg;
  
  assign altLet_18 = {{1'b1,2'd2}
                     ,sz_2
                     ,idx1_1
                     ,qu_0};
  
  assign altLet_19 = {st_3
                     ,sz_2
                     ,pId_6
                     ,repANF_21};
  
  Path_compare_9 Path_compare_9_subjLet_20
  (.bodyVar_o (subjLet_20)
  ,.n1_i1 (bodyVar_8)
  ,.n2_i2 (bodyVar_13));
  
  Path_swap_10 Path_swap_10_repANF_21
  (.bodyVar_o (repANF_21)
  ,.eta_i1 (qu_0)
  ,.eta_i2 (idx1_1)
  ,.eta_i3 (pId_6));
endmodule
