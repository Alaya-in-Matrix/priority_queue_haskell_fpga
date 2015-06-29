// Automatically generated Verilog-2005
module Path_compare_9(n1_i1
                     ,n2_i2
                     ,bodyVar_o);
  input [64:0] n1_i1;
  input [64:0] n2_i2;
  output [1:0] bodyVar_o;
  wire [15:0] ds6_0;
  wire [15:0] ds5_1;
  wire [15:0] ds6_2;
  wire [15:0] ds5_3;
  wire [15:0] altLet_4;
  wire [15:0] altLet_5;
  wire [15:0] eta2_6;
  wire [15:0] eta3_7;
  wire [0:0] subjLet_8;
  wire [15:0] eta_9;
  wire [15:0] eta1_10;
  wire [1:0] altLet_11;
  wire [0:0] subjLet_12;
  wire [0:0] subjLet_13;
  wire [1:0] altLet_14;
  wire [0:0] subjLet_15;
  wire [1:0] bodyVar_16;
  assign ds6_0 = n1_i1[16:1];
  
  assign ds5_1 = n1_i1[32:17];
  
  assign ds6_2 = n2_i2[16:1];
  
  assign ds5_3 = n2_i2[32:17];
  
  assign altLet_4 = ds5_1 + ds6_0;
  
  assign altLet_5 = ds5_3 + ds6_2;
  
  assign eta2_6 = ds5_1;
  
  assign eta3_7 = ds5_3;
  
  assign subjLet_8 = eta2_6 <= eta3_7;
  
  assign eta_9 = altLet_4;
  
  assign eta1_10 = altLet_5;
  
  reg [1:0] altLet_11_reg;
  always @(*) begin
    if(subjLet_8)
      altLet_11_reg = 2'd0;
    else
      altLet_11_reg = 2'd2;
  end
  assign altLet_11 = altLet_11_reg;
  
  assign subjLet_12 = eta2_6 == eta3_7;
  
  assign subjLet_13 = eta_9 <= eta1_10;
  
  reg [1:0] altLet_14_reg;
  always @(*) begin
    if(subjLet_13)
      altLet_14_reg = 2'd0;
    else
      altLet_14_reg = 2'd2;
  end
  assign altLet_14 = altLet_14_reg;
  
  assign subjLet_15 = eta_9 == eta1_10;
  
  reg [1:0] bodyVar_16_reg;
  always @(*) begin
    if(subjLet_12)
      bodyVar_16_reg = 2'd1;
    else
      bodyVar_16_reg = altLet_11;
  end
  assign bodyVar_16 = bodyVar_16_reg;
  
  reg [1:0] bodyVar_o_reg;
  always @(*) begin
    if(subjLet_15)
      bodyVar_o_reg = bodyVar_16;
    else
      bodyVar_o_reg = altLet_14;
  end
  assign bodyVar_o = bodyVar_o_reg;
endmodule
