// Automatically generated Verilog-2005
module Path_swap_10(eta_i1
                   ,eta_i2
                   ,eta_i3
                   ,bodyVar_o);
  input [64999:0] eta_i1;
  input [15:0] eta_i2;
  input [15:0] eta_i3;
  output [64999:0] bodyVar_o;
  wire signed [31:0] wild9_0;
  wire signed [31:0] repANF_1;
  wire signed [31:0] wild1_2;
  wire signed [31:0] repANF_3;
  wire [64:0] repANF_4;
  wire [64999:0] repANF_5;
  wire [64:0] repANF_6;
  wire signed [31:0] repANF_7;
  wire signed [31:0] repANF_8;
  wire [64999:0] tmp_11;
  wire [64:0] tmp_19;
  wire [64999:0] tmp_24;
  wire [64:0] tmp_30;
  assign wild9_0 = repANF_1;
  
  assign repANF_1 = $unsigned(eta_i3);
  
  // replaceVec start
  wire [64999:0] vecflat_n_12;
  assign vecflat_n_12 = repANF_5;
  
  reg [64:0] vec_n_13 [0:1000-1];
  integer n_14;
  always @(*) begin
    for (n_14=0;n_14<1000;n_14=n_14+1) begin
      vec_n_13[1000-1-n_14] = vecflat_n_12[n_14*65+:65];
    end
    vec_n_13[repANF_7] = repANF_4;
  end
  
  genvar n_15;
  for (n_15=0;n_15<1000;n_15=n_15+1) begin : vec_n_16
    assign tmp_11[n_15*65+:65] = vec_n_13[(1000-1)-n_15];
  end
  // replaceVec end
  
  assign bodyVar_o = tmp_11;
  
  assign wild1_2 = repANF_3;
  
  assign repANF_3 = $unsigned(eta_i2);
  
  // indexVec begin
  wire [64:0] vec_n_20 [0:1000-1];
  
  wire [64999:0] vecflat_n_21;
  assign vecflat_n_21 = eta_i1;
  genvar n_22;
  for (n_22=0; n_22 < 1000; n_22=n_22+1) begin : array_n_23
    assign vec_n_20[(1000-1)-n_22] = vecflat_n_21[n_22*65+:65];
  end
  
  assign tmp_19 = vec_n_20[repANF_8];
  // indexVec end
  
  assign repANF_4 = tmp_19;
  
  // replaceVec start
  wire [64999:0] vecflat_n_25;
  assign vecflat_n_25 = eta_i1;
  
  reg [64:0] vec_n_26 [0:1000-1];
  integer n_27;
  always @(*) begin
    for (n_27=0;n_27<1000;n_27=n_27+1) begin
      vec_n_26[1000-1-n_27] = vecflat_n_25[n_27*65+:65];
    end
    vec_n_26[repANF_8] = repANF_6;
  end
  
  genvar n_28;
  for (n_28=0;n_28<1000;n_28=n_28+1) begin : vec_n_29
    assign tmp_24[n_28*65+:65] = vec_n_26[(1000-1)-n_28];
  end
  // replaceVec end
  
  assign repANF_5 = tmp_24;
  
  // indexVec begin
  wire [64:0] vec_n_31 [0:1000-1];
  
  wire [64999:0] vecflat_n_32;
  assign vecflat_n_32 = eta_i1;
  genvar n_33;
  for (n_33=0; n_33 < 1000; n_33=n_33+1) begin : array_n_34
    assign vec_n_31[(1000-1)-n_33] = vecflat_n_32[n_33*65+:65];
  end
  
  assign tmp_30 = vec_n_31[repANF_7];
  // indexVec end
  
  assign repANF_6 = tmp_30;
  
  assign repANF_7 = wild1_2;
  
  assign repANF_8 = wild9_0;
endmodule
