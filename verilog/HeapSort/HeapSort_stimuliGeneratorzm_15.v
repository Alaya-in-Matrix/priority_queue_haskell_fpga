// Automatically generated Verilog-2005
module HeapSort_stimuliGeneratorzm_15(// clock
                                     system1000
                                     ,// asynchronous reset: active low
                                     system1000_rstn
                                     ,bodyVar_o);
  input system1000;
  input system1000_rstn;
  output [160:0] bodyVar_o;
  wire [160:0] y_0;
  wire [161:0] bodyVar_1;
  wire [0:0] repANF_2;
  wire [160:0] bodyVar_3;
  wire [0:0] subjLet_4;
  wire [0:0] altLet_5;
  wire signed [31:0] repANF_6;
  wire [0:0] x_7;
  wire signed [31:0] wild_8;
  wire [0:0] repANF_9;
  wire signed [31:0] repANF_10;
  wire [0:0] x_11;
  wire [159:0] tmp_13;
  wire [160:0] tmp_12;
  wire [159:0] tmp_24;
  wire [0:0] tmp_30;
  assign bodyVar_o = y_0;
  
  assign y_0 = bodyVar_1[160:0];
  
  assign bodyVar_1 = {repANF_2
                     ,bodyVar_3};
  
  reg [0:0] repANF_2_reg;
  always @(*) begin
    if(subjLet_4)
      repANF_2_reg = altLet_5;
    else
      repANF_2_reg = x_7;
  end
  assign repANF_2 = repANF_2_reg;
  
  // reverse begin
  wire [159:0] n_14;
  assign n_14 = {32'sd1,32'sd2,32'sd3,32'sd4,32'sd5};
  
  genvar n_15;
  for (n_15 = 0; n_15 < 5; n_15 = n_15 + 1) begin : reverse_n_16
    assign tmp_13[(5 - 1 - n_15)*32+:32] = n_14[n_15*32+:32];
  end
  // reverse end
  
  // indexVec begin
  wire [160:0] vec_n_17 [0:2-1];
  
  wire [321:0] vecflat_n_18;
  assign vecflat_n_18 = {{1'b1,tmp_13},{1'b0,160'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
  genvar n_19;
  for (n_19=0; n_19 < 2; n_19=n_19+1) begin : array_n_20
    assign vec_n_17[(2-1)-n_19] = vecflat_n_18[n_19*161+:161];
  end
  
  assign tmp_12 = vec_n_17[repANF_6];
  // indexVec end
  
  assign bodyVar_3 = tmp_12;
  
  // reverse begin
  wire [159:0] n_25;
  assign n_25 = {32'sd1,32'sd2,32'sd3,32'sd4,32'sd5};
  
  genvar n_26;
  for (n_26 = 0; n_26 < 5; n_26 = n_26 + 1) begin : reverse_n_27
    assign tmp_24[(5 - 1 - n_26)*32+:32] = n_25[n_26*32+:32];
  end
  // reverse end
  
  assign subjLet_4 = x_7 < ($unsigned((2 - 1)));
  
  assign altLet_5 = x_7 + ($unsigned(1));
  
  assign repANF_6 = wild_8;
  
  // register begin
  reg [0:0] n_32;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : register_HeapSort_stimuliGeneratorzm_15_n_33
    if (~ system1000_rstn) begin
      n_32 <= ($unsigned(0));
    end else begin
      n_32 <= repANF_9;
    end
  end
  
  assign tmp_30 = n_32;
  // register end
  
  assign x_7 = tmp_30;
  
  assign wild_8 = repANF_10;
  
  assign repANF_9 = x_11;
  
  assign repANF_10 = $unsigned(x_7);
  
  assign x_11 = bodyVar_1[161:161];
endmodule
