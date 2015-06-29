// Automatically generated Verilog-2005
module HeapSort_moorezm_6(eta_i1
                         ,// clock
                         system1000
                         ,// asynchronous reset: active low
                         system1000_rstn
                         ,bodyVar_o);
  input [33:0] eta_i1;
  input system1000;
  input system1000_rstn;
  output [35:0] bodyVar_o;
  wire [35:0] altLet_0;
  wire [0:0] subjLet_1;
  wire [35:0] altLet_2;
  wire [35:0] altLet_3;
  wire [194:0] s1_4;
  wire [32:0] repANF_5;
  wire [2:0] st_6;
  wire [15:0] ds1_7;
  wire [194:0] repANF_8;
  wire signed [31:0] repANF_9;
  wire [159:0] ds3_10;
  wire [194:0] tmp_13;
  wire signed [31:0] tmp_20;
  assign bodyVar_o = altLet_0;
  
  reg [35:0] altLet_0_reg;
  always @(*) begin
    if(subjLet_1)
      altLet_0_reg = altLet_3;
    else
      altLet_0_reg = altLet_2;
  end
  assign altLet_0 = altLet_0_reg;
  
  assign subjLet_1 = ds1_7 == 16'd0;
  
  assign altLet_2 = {st_6
                    ,repANF_5};
  
  assign altLet_3 = {st_6
                    ,{1'b0,32'b00000000000000000000000000000000}};
  
  // register begin
  reg [194:0] n_18;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : register_HeapSort_moorezm_6_n_19
    if (~ system1000_rstn) begin
      n_18 <= {{1'b1,2'd2},16'd0,16'd0,{(5) {32'sd0}}};
    end else begin
      n_18 <= repANF_8;
    end
  end
  
  assign tmp_13 = n_18;
  // register end
  
  assign s1_4 = tmp_13;
  
  assign repANF_5 = {1'b1,repANF_9};
  
  assign st_6 = s1_4[194:192];
  
  assign ds1_7 = s1_4[191:176];
  
  HeapSort_priorityQueueS_7 HeapSort_priorityQueueS_7_repANF_8
  (.topLet_o (repANF_8)
  ,.eta_i1 (s1_4)
  ,.eta_i2 (eta_i1));
  
  // head begin
  wire [159:0] n_21;
  assign n_21 = ds3_10;
  
  assign tmp_20 = n_21[160-1:160-32];
  // head end
  
  assign repANF_9 = tmp_20;
  
  assign ds3_10 = s1_4[159:0];
endmodule
