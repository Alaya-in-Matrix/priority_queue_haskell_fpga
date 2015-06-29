// Automatically generated Verilog-2005
module HeapSort_initPush_12(eta_i1
                           ,eta_i2
                           ,topLet_o);
  input [194:0] eta_i1;
  input signed [31:0] eta_i2;
  output [194:0] topLet_o;
  wire [194:0] altLet_0;
  wire [0:0] subjLet_1;
  wire [194:0] altLet_2;
  wire [194:0] altLet_3;
  wire [15:0] repANF_4;
  wire [15:0] repANF_5;
  wire [159:0] bodyVar_6;
  wire [15:0] sz_7;
  wire [15:0] id_8;
  wire [159:0] qu_9;
  wire signed [31:0] repANF_10;
  wire signed [31:0] repANF_11;
  wire signed [31:0] wild1_12;
  wire signed [31:0] repANF_13;
  wire [159:0] tmp_18;
  reg [194:0] altLet_0_reg;
  always @(*) begin
    if(subjLet_1)
      altLet_0_reg = altLet_3;
    else
      altLet_0_reg = altLet_2;
  end
  assign altLet_0 = altLet_0_reg;
  
  assign subjLet_1 = sz_7 == repANF_4;
  
  assign altLet_2 = {{1'b1,2'd0}
                    ,repANF_5
                    ,sz_7
                    ,bodyVar_6};
  
  assign altLet_3 = {{1'b0,1'd0,1'b0}
                    ,sz_7
                    ,id_8
                    ,qu_9};
  
  assign repANF_4 = $unsigned(repANF_10);
  
  assign repANF_5 = sz_7 + 16'd1;
  
  // replaceVec start
  wire [159:0] vecflat_n_19;
  assign vecflat_n_19 = qu_9;
  
  reg signed [31:0] vec_n_20 [0:5-1];
  integer n_21;
  always @(*) begin
    for (n_21=0;n_21<5;n_21=n_21+1) begin
      vec_n_20[5-1-n_21] = vecflat_n_19[n_21*32+:32];
    end
    vec_n_20[repANF_11] = eta_i2;
  end
  
  genvar n_22;
  for (n_22=0;n_22<5;n_22=n_22+1) begin : vec_n_23
    assign tmp_18[n_22*32+:32] = vec_n_20[(5-1)-n_22];
  end
  // replaceVec end
  
  assign bodyVar_6 = tmp_18;
  
  assign sz_7 = eta_i1[191:176];
  
  assign id_8 = eta_i1[175:160];
  
  assign qu_9 = eta_i1[159:0];
  
  assign repANF_10 = 5;
  
  assign repANF_11 = wild1_12;
  
  assign wild1_12 = repANF_13;
  
  assign repANF_13 = $unsigned(sz_7);
  
  assign topLet_o = altLet_0;
endmodule
