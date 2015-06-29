// Automatically generated Verilog-2005
module HeapSort_heapSortS_3(eta_i1
                           ,eta_i2
                           ,topLet_o);
  input [209:0] eta_i1;
  input [196:0] eta_i2;
  output [209:0] topLet_o;
  wire [209:0] altLet_0;
  wire [209:0] altLet_1;
  wire [209:0] altLet_2;
  wire [35:0] ds2_3;
  wire [209:0] altLet_4;
  wire [209:0] altLet_5;
  wire [2:0] ds4_6;
  wire [209:0] altLet_7;
  wire [191:0] vec1_8;
  wire [17:0] ds1_9;
  wire [209:0] altLet_10;
  wire [1:0] ipv_11;
  wire [209:0] altLet_12;
  wire [209:0] altLet_13;
  wire [209:0] altLet_14;
  wire [0:0] subjLet_15;
  wire [209:0] altLet_16;
  wire [209:0] altLet_17;
  wire [0:0] subjLet_18;
  wire [209:0] altLet_19;
  wire [209:0] altLet_20;
  wire [209:0] altLet_21;
  wire [160:0] ds3_22;
  wire [17:0] repANF_23;
  wire [17:0] repANF_24;
  wire [209:0] altLet_25;
  wire [191:0] repANF_26;
  wire [15:0] idx_27;
  wire [15:0] ds6_28;
  wire [32:0] ds5_29;
  wire signed [31:0] repANF_30;
  wire [15:0] repANF_31;
  wire [15:0] repANF_32;
  wire [191:0] repANF_33;
  wire [17:0] repANF_34;
  wire [159:0] v_35;
  wire [15:0] repANF_36;
  wire signed [31:0] top_37;
  wire [15:0] tmp_42;
  assign altLet_0 = altLet_1;
  
  assign altLet_1 = altLet_2;
  
  reg [209:0] altLet_2_reg;
  always @(*) begin
    case(ds4_6[2:2])
      1'b1 : altLet_2_reg = altLet_5;
      default : altLet_2_reg = altLet_4;
    endcase
  end
  assign altLet_2 = altLet_2_reg;
  
  assign ds2_3 = eta_i2[196:161];
  
  assign altLet_4 = {vec1_8
                    ,{2'b10,16'b0000000000000000}};
  
  reg [209:0] altLet_5_reg;
  always @(*) begin
    case(ds1_9[17:16])
      2'b10 : altLet_5_reg = altLet_4;
      default : altLet_5_reg = altLet_7;
    endcase
  end
  assign altLet_5 = altLet_5_reg;
  
  assign ds4_6 = ds2_3[35:33];
  
  reg [209:0] altLet_7_reg;
  always @(*) begin
    case(ipv_11)
      2'b10 : altLet_7_reg = altLet_10;
      default : altLet_7_reg = eta_i1;
    endcase
  end
  assign altLet_7 = altLet_7_reg;
  
  assign vec1_8 = eta_i1[209:18];
  
  assign ds1_9 = eta_i1[17:0];
  
  reg [209:0] altLet_10_reg;
  always @(*) begin
    case(ds1_9[17:16])
      2'b11 : altLet_10_reg = altLet_14;
      2'b01 : altLet_10_reg = altLet_13;
      default : altLet_10_reg = altLet_12;
    endcase
  end
  assign altLet_10 = altLet_10_reg;
  
  assign ipv_11 = ds4_6[1:0];
  
  reg [209:0] altLet_12_reg;
  always @(*) begin
    if(subjLet_15)
      altLet_12_reg = altLet_17;
    else
      altLet_12_reg = altLet_16;
  end
  assign altLet_12 = altLet_12_reg;
  
  reg [209:0] altLet_13_reg;
  always @(*) begin
    if(subjLet_18)
      altLet_13_reg = altLet_20;
    else
      altLet_13_reg = altLet_19;
  end
  assign altLet_13 = altLet_13_reg;
  
  reg [209:0] altLet_14_reg;
  always @(*) begin
    case(ds3_22[160:160])
      1'b1 : altLet_14_reg = altLet_21;
      default : altLet_14_reg = eta_i1;
    endcase
  end
  assign altLet_14 = altLet_14_reg;
  
  assign subjLet_15 = idx_27 >= repANF_32;
  
  assign altLet_16 = {vec1_8
                     ,repANF_23};
  
  assign altLet_17 = {vec1_8
                     ,repANF_24};
  
  assign subjLet_18 = ds6_28 == 16'd0;
  
  reg [209:0] altLet_19_reg;
  always @(*) begin
    case(ds5_29[32:32])
      1'b1 : altLet_19_reg = altLet_25;
      default : altLet_19_reg = {210 {1'bx}};
    endcase
  end
  assign altLet_19 = altLet_19_reg;
  
  assign altLet_20 = {vec1_8
                     ,{2'b11,16'b0000000000000000}};
  
  assign tmp_42 = 16'd1;
  
  assign altLet_21 = {repANF_26
                     ,{2'b00,tmp_42}};
  
  assign ds3_22 = eta_i2[160:0];
  
  assign repANF_23 = {2'b00,repANF_31};
  
  assign repANF_24 = {2'b01,repANF_32};
  
  assign altLet_25 = {repANF_33
                     ,repANF_34};
  
  assign repANF_26 = {32'sd0
                     ,v_35};
  
  assign idx_27 = ds1_9[15:0];
  
  assign ds6_28 = ds1_9[15:0];
  
  assign ds5_29 = ds2_3[32:0];
  
  assign repANF_30 = 6 - 1;
  
  assign repANF_31 = idx_27 + 16'd1;
  
  assign repANF_32 = $unsigned(repANF_30);
  
  HeapSort_zuzuzl_4 HeapSort_zuzuzl_4_repANF_33
  (.bodyVar_o (repANF_33)
  ,.eta_i1 (vec1_8)
  ,.eta_i2 (top_37));
  
  assign repANF_34 = {2'b01,repANF_36};
  
  assign v_35 = ds3_22[159:0];
  
  assign repANF_36 = ds6_28 - 16'd1;
  
  assign top_37 = ds5_29[31:0];
  
  assign topLet_o = altLet_0;
endmodule
