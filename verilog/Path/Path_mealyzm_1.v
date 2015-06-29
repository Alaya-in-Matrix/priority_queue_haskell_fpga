// Automatically generated Verilog-2005
module Path_mealyzm_1(eta_i1
                     ,// clock
                     system1000
                     ,// asynchronous reset: active low
                     system1000_rstn
                     ,bodyVar_o);
  input [198:0] eta_i1;
  input system1000;
  input system1000_rstn;
  output [230:0] bodyVar_o;
  wire [230:0] y_0;
  wire [630:0] bodyVar_1;
  wire [399:0] x_2;
  wire [399:0] repANF_3;
  wire [399:0] x_4;
  wire [399:0] tmp_5;
  assign bodyVar_o = y_0;
  
  assign y_0 = bodyVar_1[230:0];
  
  Path_aStarCtrl_2 Path_aStarCtrl_2_bodyVar_1
  (.topLet_o (bodyVar_1)
  ,.eta_i1 (x_2)
  ,.eta_i2 (eta_i1));
  
  // register begin
  reg [399:0] n_32;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : register_Path_mealyzm_1_n_33
    if (~ system1000_rstn) begin
      n_32 <= {4'd0,{16'd0,16'd0,16'd0,16'd0},{3'b000,2'b00},{({16 {1'b1}}) - 16'd1,({16 {1'b1}}) - 16'd1,({16 {1'b1}}) >> 32'sd1,16'd0,1'b0},{(4) {{({16 {1'b1}}) - 16'd1,({16 {1'b1}}) - 16'd1,({16 {1'b1}}) >> 32'sd1,16'd0,1'b0}}},2'd0};
    end else begin
      n_32 <= repANF_3;
    end
  end
  
  assign tmp_5 = n_32;
  // register end
  
  assign x_2 = tmp_5;
  
  assign repANF_3 = x_4;
  
  assign x_4 = bodyVar_1[630:231];
endmodule
