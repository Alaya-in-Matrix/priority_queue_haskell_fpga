// Automatically generated Verilog-2005
module HeapSort_initPop_13(eta_i1
                          ,topLet_o);
  input [194:0] eta_i1;
  output [194:0] topLet_o;
  wire signed [31:0] repANF_0;
  wire signed [31:0] wild1_1;
  wire signed [31:0] repANF_2;
  wire signed [31:0] bodyVar_3;
  wire [159:0] qu_4;
  wire [15:0] id_5;
  wire [15:0] ds1_6;
  wire [159:0] repANF_7;
  wire [15:0] repANF_8;
  wire [194:0] altLet_9;
  wire [194:0] altLet_10;
  wire [0:0] subjLet_11;
  wire [194:0] altLet_12;
  wire signed [31:0] tmp_15;
  wire [159:0] tmp_20;
  assign topLet_o = altLet_12;
  
  assign repANF_0 = $unsigned(repANF_8);
  
  assign wild1_1 = repANF_0;
  
  assign repANF_2 = wild1_1;
  
  // indexVec begin
  wire signed [31:0] vec_n_16 [0:5-1];
  
  wire [159:0] vecflat_n_17;
  assign vecflat_n_17 = qu_4;
  genvar n_18;
  for (n_18=0; n_18 < 5; n_18=n_18+1) begin : array_n_19
    assign vec_n_16[(5-1)-n_18] = vecflat_n_17[n_18*32+:32];
  end
  
  assign tmp_15 = vec_n_16[repANF_2];
  // indexVec end
  
  assign bodyVar_3 = tmp_15;
  
  assign qu_4 = eta_i1[159:0];
  
  assign id_5 = eta_i1[175:160];
  
  assign ds1_6 = eta_i1[191:176];
  
  // replaceVec start
  wire [159:0] vecflat_n_21;
  assign vecflat_n_21 = qu_4;
  
  reg signed [31:0] vec_n_22 [0:5-1];
  integer n_23;
  always @(*) begin
    for (n_23=0;n_23<5;n_23=n_23+1) begin
      vec_n_22[5-1-n_23] = vecflat_n_21[n_23*32+:32];
    end
    vec_n_22[32'sd0] = bodyVar_3;
  end
  
  genvar n_24;
  for (n_24=0;n_24<5;n_24=n_24+1) begin : vec_n_25
    assign tmp_20[n_24*32+:32] = vec_n_22[(5-1)-n_24];
  end
  // replaceVec end
  
  assign repANF_7 = tmp_20;
  
  assign repANF_8 = ds1_6 - 16'd1;
  
  assign altLet_9 = {{1'b0,1'd1,1'b0}
                    ,16'd0
                    ,id_5
                    ,qu_4};
  
  assign altLet_10 = {{1'b1,2'd1}
                     ,repANF_8
                     ,16'd0
                     ,repANF_7};
  
  assign subjLet_11 = ds1_6 == 16'd0;
  
  reg [194:0] altLet_12_reg;
  always @(*) begin
    if(subjLet_11)
      altLet_12_reg = altLet_9;
    else
      altLet_12_reg = altLet_10;
  end
  assign altLet_12 = altLet_12_reg;
endmodule
