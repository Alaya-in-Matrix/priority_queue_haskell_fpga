// Automatically generated Verilog-2005
module Path_moorezm_6(eta_i1
                     ,// clock
                     system1000
                     ,// asynchronous reset: active low
                     system1000_rstn
                     ,altLet_o);
  input [66:0] eta_i1;
  input system1000;
  input system1000_rstn;
  output [68:0] altLet_o;
  wire [0:0] subjLet_0;
  wire [68:0] altLet_1;
  wire [68:0] altLet_2;
  wire [65034:0] s1_3;
  wire [65:0] repANF_4;
  wire [2:0] st_5;
  wire [15:0] ds2_6;
  wire [65034:0] repANF_7;
  wire [64:0] repANF_8;
  wire [64999:0] ds4_9;
  wire [65034:0] tmp_12;
  wire [64:0] tmp_28;
  reg [68:0] altLet_o_reg;
  always @(*) begin
    if(subjLet_0)
      altLet_o_reg = altLet_2;
    else
      altLet_o_reg = altLet_1;
  end
  assign altLet_o = altLet_o_reg;
  
  assign subjLet_0 = ds2_6 == 16'd0;
  
  assign altLet_1 = {st_5
                    ,repANF_4};
  
  assign altLet_2 = {st_5
                    ,{1'b0,65'b00000000000000000000000000000000000000000000000000000000000000000}};
  
  // register begin
  reg [65034:0] n_26;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : register_Path_moorezm_6_n_27
    if (~ system1000_rstn) begin
      n_26 <= {{1'b1,2'd2},16'd0,16'd0,{(1000) {{({16 {1'b1}}) - 16'd1,({16 {1'b1}}) - 16'd1,({16 {1'b1}}) >> 32'sd1,16'd0,1'b0}}}};
    end else begin
      n_26 <= repANF_7;
    end
  end
  
  assign tmp_12 = n_26;
  // register end
  
  assign s1_3 = tmp_12;
  
  assign repANF_4 = {1'b1,repANF_8};
  
  assign st_5 = s1_3[65034:65032];
  
  assign ds2_6 = s1_3[65031:65016];
  
  Path_priorityQueueS_7 Path_priorityQueueS_7_repANF_7
  (.topLet_o (repANF_7)
  ,.eta_i1 (s1_3)
  ,.eta_i2 (eta_i1));
  
  // head begin
  wire [64999:0] n_29;
  assign n_29 = ds4_9;
  
  assign tmp_28 = n_29[65000-1:65000-65];
  // head end
  
  assign repANF_8 = tmp_28;
  
  assign ds4_9 = s1_3[64999:0];
endmodule
