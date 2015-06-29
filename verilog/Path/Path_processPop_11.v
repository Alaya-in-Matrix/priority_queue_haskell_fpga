// Automatically generated Verilog-2005
module Path_processPop_11(eta_i1
                         ,topLet_o);
  input [65034:0] eta_i1;
  output [65034:0] topLet_o;
  wire [64999:0] repANF_0;
  wire [0:0] subjLet_1;
  wire [65034:0] altLet_2;
  wire [65034:0] altLet_3;
  wire [15:0] swapIdx_4;
  wire [65034:0] bodyVar_5;
  wire [2:0] st_6;
  wire [15:0] sz_7;
  wire [15:0] idx1_8;
  wire [64999:0] qu_9;
  Path_swap_10 Path_swap_10_repANF_0
  (.bodyVar_o (repANF_0)
  ,.eta_i1 (qu_9)
  ,.eta_i2 (idx1_8)
  ,.eta_i3 (swapIdx_4));
  
  assign subjLet_1 = swapIdx_4 != idx1_8;
  
  assign altLet_2 = {{1'b1,2'd2}
                    ,sz_7
                    ,idx1_8
                    ,qu_9};
  
  assign altLet_3 = {st_6
                    ,sz_7
                    ,swapIdx_4
                    ,repANF_0};
  
  Path_getSwapIdx_12 Path_getSwapIdx_12_swapIdx_4
  (.bodyVar_o (swapIdx_4)
  ,.eta_i1 (qu_9)
  ,.eta_i2 (idx1_8)
  ,.eta_i3 (sz_7));
  
  reg [65034:0] bodyVar_5_reg;
  always @(*) begin
    if(subjLet_1)
      bodyVar_5_reg = altLet_3;
    else
      bodyVar_5_reg = altLet_2;
  end
  assign bodyVar_5 = bodyVar_5_reg;
  
  assign st_6 = eta_i1[65034:65032];
  
  assign sz_7 = eta_i1[65031:65016];
  
  assign idx1_8 = eta_i1[65015:65000];
  
  assign qu_9 = eta_i1[64999:0];
  
  assign topLet_o = bodyVar_5;
endmodule
