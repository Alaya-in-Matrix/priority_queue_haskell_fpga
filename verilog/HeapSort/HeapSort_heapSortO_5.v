// Automatically generated Verilog-2005
module HeapSort_heapSortO_5(eta_i1
                           ,topLet_o);
  input [209:0] eta_i1;
  output [194:0] topLet_o;
  wire signed [31:0] repANF_0;
  wire signed [31:0] repANF_1;
  wire signed [31:0] wild1_2;
  wire signed [31:0] bodyVar_3;
  wire [33:0] repANF_4;
  wire [0:0] subjLet_5;
  wire [159:0] repANF_6;
  wire [160:0] repANF_7;
  wire [194:0] altLet_8;
  wire [15:0] idx_9;
  wire [194:0] altLet_10;
  wire [15:0] ds2_11;
  wire [194:0] altLet_12;
  wire [194:0] altLet_13;
  wire [191:0] vec1_14;
  wire [17:0] ds1_15;
  wire signed [31:0] tmp_18;
  wire [159:0] tmp_25;
  assign repANF_0 = wild1_2;
  
  assign repANF_1 = $unsigned(idx_9);
  
  assign wild1_2 = repANF_1;
  
  // indexVec begin
  wire signed [31:0] vec_n_19 [0:6-1];
  
  wire [191:0] vecflat_n_20;
  assign vecflat_n_20 = vec1_14;
  genvar n_21;
  for (n_21=0; n_21 < 6; n_21=n_21+1) begin : array_n_22
    assign vec_n_19[(6-1)-n_21] = vecflat_n_20[n_21*32+:32];
  end
  
  assign tmp_18 = vec_n_19[repANF_0];
  // indexVec end
  
  assign bodyVar_3 = tmp_18;
  
  assign repANF_4 = {2'b00,bodyVar_3};
  
  assign subjLet_5 = ds2_11 == 16'd0;
  
  // tail begin
  wire [191:0] n_26;
  assign n_26 = vec1_14;
  
  assign tmp_25 = n_26[160-1 : 0];
  // tail end
  
  assign repANF_6 = tmp_25;
  
  assign repANF_7 = {1'b1,repANF_6};
  
  assign altLet_8 = {repANF_4
                    ,{1'b0,160'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
  
  assign idx_9 = ds1_15[15:0];
  
  reg [194:0] altLet_10_reg;
  always @(*) begin
    if(subjLet_5)
      altLet_10_reg = {{2'b10,32'b00000000000000000000000000000000}
                      ,{1'b0,160'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
    else
      altLet_10_reg = {{2'b01,32'b00000000000000000000000000000000}
                      ,{1'b0,160'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
  end
  assign altLet_10 = altLet_10_reg;
  
  assign ds2_11 = ds1_15[15:0];
  
  assign altLet_12 = {{2'b10,32'b00000000000000000000000000000000}
                     ,repANF_7};
  
  reg [194:0] altLet_13_reg;
  always @(*) begin
    case(ds1_15[17:16])
      2'b11 : altLet_13_reg = altLet_12;
      2'b10 : altLet_13_reg = {{2'b10,32'b00000000000000000000000000000000}
                              ,{1'b0,160'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
      2'b01 : altLet_13_reg = altLet_10;
      default : altLet_13_reg = altLet_8;
    endcase
  end
  assign altLet_13 = altLet_13_reg;
  
  assign vec1_14 = eta_i1[209:18];
  
  assign ds1_15 = eta_i1[17:0];
  
  assign topLet_o = altLet_13;
endmodule
