// Automatically generated Verilog-2005
module Path_getNeighbor_5(idx1_i1
                         ,x1_i2
                         ,y1_i3
                         ,direction_i4
                         ,topLet_o);
  input [15:0] idx1_i1;
  input [15:0] x1_i2;
  input [15:0] y1_i3;
  input [3:0] direction_i4;
  output [15:0] topLet_o;
  wire [15:0] altLet_0;
  wire [15:0] altLet_1;
  wire [0:0] subjLet_2;
  wire [15:0] altLet_3;
  wire [0:0] subjLet_4;
  wire [15:0] repANF_5;
  wire [15:0] altLet_6;
  wire [15:0] altLet_7;
  wire [0:0] subjLet_8;
  wire [15:0] altLet_9;
  wire [0:0] subjLet_10;
  wire [15:0] repANF_11;
  wire [15:0] altLet_12;
  wire [15:0] altLet_13;
  wire [0:0] subjLet_14;
  wire [15:0] altLet_15;
  wire [0:0] subjLet_16;
  wire [15:0] repANF_17;
  wire [15:0] altLet_18;
  wire [0:0] subjLet_19;
  wire [15:0] altLet_20;
  wire [0:0] subjLet_21;
  wire [15:0] repANF_22;
  reg [15:0] topLet_o_reg;
  always @(*) begin
    if(subjLet_2)
      topLet_o_reg = altLet_0;
    else
      topLet_o_reg = altLet_1;
  end
  assign topLet_o = topLet_o_reg;
  
  reg [15:0] altLet_0_reg;
  always @(*) begin
    if(subjLet_4)
      altLet_0_reg = altLet_3;
    else
      altLet_0_reg = idx1_i1;
  end
  assign altLet_0 = altLet_0_reg;
  
  reg [15:0] altLet_1_reg;
  always @(*) begin
    if(subjLet_8)
      altLet_1_reg = altLet_6;
    else
      altLet_1_reg = altLet_7;
  end
  assign altLet_1 = altLet_1_reg;
  
  assign subjLet_2 = direction_i4 == 4'd0;
  
  assign altLet_3 = idx1_i1 + x1_i2;
  
  assign subjLet_4 = repANF_5 < y1_i3;
  
  assign repANF_5 = repANF_17 + 16'd1;
  
  reg [15:0] altLet_6_reg;
  always @(*) begin
    if(subjLet_10)
      altLet_6_reg = altLet_9;
    else
      altLet_6_reg = idx1_i1;
  end
  assign altLet_6 = altLet_6_reg;
  
  reg [15:0] altLet_7_reg;
  always @(*) begin
    if(subjLet_14)
      altLet_7_reg = altLet_12;
    else
      altLet_7_reg = altLet_13;
  end
  assign altLet_7 = altLet_7_reg;
  
  assign subjLet_8 = direction_i4 == 4'd1;
  
  assign altLet_9 = idx1_i1 + 16'd1;
  
  assign subjLet_10 = repANF_11 < x1_i2;
  
  assign repANF_11 = repANF_22 + 16'd1;
  
  reg [15:0] altLet_12_reg;
  always @(*) begin
    if(subjLet_16)
      altLet_12_reg = altLet_15;
    else
      altLet_12_reg = idx1_i1;
  end
  assign altLet_12 = altLet_12_reg;
  
  reg [15:0] altLet_13_reg;
  always @(*) begin
    if(subjLet_19)
      altLet_13_reg = altLet_18;
    else
      altLet_13_reg = idx1_i1;
  end
  assign altLet_13 = altLet_13_reg;
  
  assign subjLet_14 = direction_i4 == 4'd2;
  
  assign altLet_15 = idx1_i1 - x1_i2;
  
  assign subjLet_16 = repANF_17 >= 16'd1;
  
  assign repANF_17 = idx1_i1 / x1_i2;
  
  reg [15:0] altLet_18_reg;
  always @(*) begin
    if(subjLet_21)
      altLet_18_reg = altLet_20;
    else
      altLet_18_reg = idx1_i1;
  end
  assign altLet_18 = altLet_18_reg;
  
  assign subjLet_19 = direction_i4 == 4'd3;
  
  assign altLet_20 = idx1_i1 - 16'd1;
  
  assign subjLet_21 = repANF_22 >= 16'd1;
  
  assign repANF_22 = idx1_i1 % x1_i2;
endmodule
