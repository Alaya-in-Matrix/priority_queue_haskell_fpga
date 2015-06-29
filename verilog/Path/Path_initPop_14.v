// Automatically generated Verilog-2005
module Path_initPop_14(eta_i1
                      ,topLet_o);
  input [65034:0] eta_i1;
  output [65034:0] topLet_o;
  wire signed [31:0] repANF_0;
  wire signed [31:0] wild9_1;
  wire signed [31:0] repANF_2;
  wire [64:0] bodyVar_3;
  wire [64999:0] qu_4;
  wire [15:0] id_5;
  wire [15:0] ds1_6;
  wire [64999:0] repANF_7;
  wire [15:0] repANF_8;
  wire [65034:0] altLet_9;
  wire [65034:0] altLet_10;
  wire [0:0] subjLet_11;
  wire [65034:0] altLet_12;
  wire [64:0] tmp_15;
  wire [64999:0] tmp_20;
  assign topLet_o = altLet_12;
  
  assign repANF_0 = $unsigned(repANF_8);
  
  assign wild9_1 = repANF_0;
  
  assign repANF_2 = wild9_1;
  
  // indexVec begin
  wire [64:0] vec_n_16 [0:1000-1];
  
  wire [64999:0] vecflat_n_17;
  assign vecflat_n_17 = qu_4;
  genvar n_18;
  for (n_18=0; n_18 < 1000; n_18=n_18+1) begin : array_n_19
    assign vec_n_16[(1000-1)-n_18] = vecflat_n_17[n_18*65+:65];
  end
  
  assign tmp_15 = vec_n_16[repANF_2];
  // indexVec end
  
  assign bodyVar_3 = tmp_15;
  
  assign qu_4 = eta_i1[64999:0];
  
  assign id_5 = eta_i1[65015:65000];
  
  assign ds1_6 = eta_i1[65031:65016];
  
  // replaceVec start
  wire [64999:0] vecflat_n_21;
  assign vecflat_n_21 = qu_4;
  
  reg [64:0] vec_n_22 [0:1000-1];
  integer n_23;
  always @(*) begin
    for (n_23=0;n_23<1000;n_23=n_23+1) begin
      vec_n_22[1000-1-n_23] = vecflat_n_21[n_23*65+:65];
    end
    vec_n_22[32'sd0] = bodyVar_3;
  end
  
  genvar n_24;
  for (n_24=0;n_24<1000;n_24=n_24+1) begin : vec_n_25
    assign tmp_20[n_24*65+:65] = vec_n_22[(1000-1)-n_24];
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
  
  reg [65034:0] altLet_12_reg;
  always @(*) begin
    if(subjLet_11)
      altLet_12_reg = altLet_9;
    else
      altLet_12_reg = altLet_10;
  end
  assign altLet_12 = altLet_12_reg;
endmodule
