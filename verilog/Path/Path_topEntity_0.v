// Automatically generated Verilog-2005
module Path_topEntity_0(pIn_i1
                       ,// clock
                       system1000
                       ,// asynchronous reset: active low
                       system1000_rstn
                       ,bodyVar_o);
  input [64:0] pIn_i1;
  input system1000;
  input system1000_rstn;
  output [65:0] bodyVar_o;
  wire [65:0] ds8_0;
  wire [230:0] pOut_1;
  wire [198:0] bodyVar_2;
  wire [68:0] x_3;
  wire [64:0] x_4;
  wire [66:0] repANF_5;
  wire signed [31:0] bodyVar_6;
  wire signed [31:0] bodyVar_7;
  wire [0:0] repANF_8;
  wire [64:0] repANF_9;
  wire signed [31:0] wild_10;
  wire signed [31:0] wild_11;
  wire [66:0] ds3_12;
  wire signed [31:0] repANF_13;
  wire signed [31:0] repANF_14;
  wire [0:0] ds6_15;
  wire [64:0] ds7_16;
  wire [15:0] x_17;
  wire [15:0] x_18;
  wire [15:0] ds5_19;
  wire [15:0] ds4_20;
  wire [64:0] tmp_21;
  assign bodyVar_o = ds8_0;
  
  assign ds8_0 = pOut_1[65:0];
  
  Path_mealyzm_1 Path_mealyzm_1_pOut_1
  (.bodyVar_o (pOut_1)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.eta_i1 (bodyVar_2));
  
  assign bodyVar_2 = {x_3
                     ,pIn_i1
                     ,x_4};
  
  Path_moorezm_6 Path_moorezm_6_x_3
  (.altLet_o (x_3)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.eta_i1 (repANF_5));
  
  // blockRam begin
  reg [64:0] RAM_n_118 [0:16-1];
  reg [64:0] dout_n_119;
  
  reg [1039:0] ram_init_n_120;
  integer n_121;
  initial begin
    ram_init_n_120 = {{16'd0,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b0},{16'd1,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b0},{16'd2,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b0},{16'd3,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b0},{16'd4,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b0},{16'd5,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b1},{16'd6,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b0},{16'd7,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b1},{16'd8,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b0},{16'd9,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b0},{16'd10,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b0},{16'd11,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b1},{16'd12,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b1},{16'd13,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b1},{16'd14,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b0},{16'd15,{16 {1'b1}},({16 {1'b1}}) >> 32'sd1,({16 {1'b1}}) >> 32'sd1,1'b0}};
    for (n_121=0; n_121 < 16; n_121 = n_121 + 1) begin
      RAM_n_118[16-1-n_121] = ram_init_n_120[n_121*65+:65];
    end
  end
  
  always @(posedge system1000) begin : blockRam_Path_topEntity_0_n_122
    if (repANF_8) begin
      RAM_n_118[bodyVar_6] <= repANF_9;
    end
    dout_n_119 <= RAM_n_118[bodyVar_7];
  end
  
  assign tmp_21 = dout_n_119;
  // blockRam end
  
  assign x_4 = tmp_21;
  
  assign repANF_5 = ds3_12;
  
  assign bodyVar_6 = wild_10;
  
  assign bodyVar_7 = wild_11;
  
  assign repANF_8 = ds6_15;
  
  assign repANF_9 = ds7_16;
  
  assign wild_10 = repANF_13;
  
  assign wild_11 = repANF_14;
  
  assign ds3_12 = pOut_1[230:164];
  
  assign repANF_13 = $unsigned(x_17);
  
  assign repANF_14 = $unsigned(x_18);
  
  assign ds6_15 = pOut_1[131:131];
  
  assign ds7_16 = pOut_1[130:66];
  
  assign x_17 = ds5_19;
  
  assign x_18 = ds4_20;
  
  assign ds5_19 = pOut_1[147:132];
  
  assign ds4_20 = pOut_1[163:148];
endmodule
