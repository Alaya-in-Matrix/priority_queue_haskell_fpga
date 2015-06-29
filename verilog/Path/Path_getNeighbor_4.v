// Automatically generated Verilog-2005
module Path_getNeighbor_4(pTS_i1
                         ,pTS_i2
                         ,pTS_i3
                         ,topLet_o);
  input [15:0] pTS_i1;
  input [15:0] pTS_i2;
  input [15:0] pTS_i3;
  output [15:0] topLet_o;
  wire [15:0] altLet_0;
  wire [15:0] altLet_1;
  wire [15:0] altLet_2;
  wire [0:0] subjLet_3;
  wire [15:0] repANF_4;
  wire [15:0] altLet_5;
  wire [15:0] altLet_6;
  wire [15:0] altLet_7;
  wire [0:0] subjLet_8;
  wire [15:0] repANF_9;
  wire [15:0] altLet_10;
  wire [15:0] altLet_11;
  wire [15:0] altLet_12;
  wire [0:0] subjLet_13;
  wire [15:0] repANF_14;
  wire [15:0] altLet_15;
  wire [15:0] altLet_16;
  wire [0:0] subjLet_17;
  wire [15:0] repANF_18;
  wire [0:0] tmp_19;
  wire [0:0] tmp_22;
  wire [0:0] tmp_29;
  wire [0:0] tmp_37;
  assign tmp_19 = 4'd0 == 4'd0;
  
  reg [15:0] topLet_o_reg;
  always @(*) begin
    if(tmp_19)
      topLet_o_reg = altLet_0;
    else
      topLet_o_reg = altLet_1;
  end
  assign topLet_o = topLet_o_reg;
  
  reg [15:0] altLet_0_reg;
  always @(*) begin
    if(subjLet_3)
      altLet_0_reg = altLet_2;
    else
      altLet_0_reg = pTS_i1;
  end
  assign altLet_0 = altLet_0_reg;
  
  assign tmp_22 = 4'd0 == 4'd1;
  
  reg [15:0] altLet_1_reg;
  always @(*) begin
    if(tmp_22)
      altLet_1_reg = altLet_5;
    else
      altLet_1_reg = altLet_6;
  end
  assign altLet_1 = altLet_1_reg;
  
  assign altLet_2 = pTS_i1 + pTS_i2;
  
  assign subjLet_3 = repANF_4 < pTS_i3;
  
  assign repANF_4 = repANF_14 + 16'd1;
  
  reg [15:0] altLet_5_reg;
  always @(*) begin
    if(subjLet_8)
      altLet_5_reg = altLet_7;
    else
      altLet_5_reg = pTS_i1;
  end
  assign altLet_5 = altLet_5_reg;
  
  assign tmp_29 = 4'd0 == 4'd2;
  
  reg [15:0] altLet_6_reg;
  always @(*) begin
    if(tmp_29)
      altLet_6_reg = altLet_10;
    else
      altLet_6_reg = altLet_11;
  end
  assign altLet_6 = altLet_6_reg;
  
  assign altLet_7 = pTS_i1 + 16'd1;
  
  assign subjLet_8 = repANF_9 < pTS_i2;
  
  assign repANF_9 = repANF_18 + 16'd1;
  
  reg [15:0] altLet_10_reg;
  always @(*) begin
    if(subjLet_13)
      altLet_10_reg = altLet_12;
    else
      altLet_10_reg = pTS_i1;
  end
  assign altLet_10 = altLet_10_reg;
  
  assign tmp_37 = 4'd0 == 4'd3;
  
  reg [15:0] altLet_11_reg;
  always @(*) begin
    if(tmp_37)
      altLet_11_reg = altLet_15;
    else
      altLet_11_reg = pTS_i1;
  end
  assign altLet_11 = altLet_11_reg;
  
  assign altLet_12 = pTS_i1 - pTS_i2;
  
  assign subjLet_13 = repANF_14 >= 16'd1;
  
  assign repANF_14 = pTS_i1 / pTS_i2;
  
  reg [15:0] altLet_15_reg;
  always @(*) begin
    if(subjLet_17)
      altLet_15_reg = altLet_16;
    else
      altLet_15_reg = pTS_i1;
  end
  assign altLet_15 = altLet_15_reg;
  
  assign altLet_16 = pTS_i1 - 16'd1;
  
  assign subjLet_17 = repANF_18 >= 16'd1;
  
  assign repANF_18 = pTS_i1 % pTS_i2;
endmodule
