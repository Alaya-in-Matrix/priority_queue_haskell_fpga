// Automatically generated Verilog-2005
module HeapSort_processPop_10(eta_i1
                             ,topLet_o);
  input [194:0] eta_i1;
  output [194:0] topLet_o;
  wire [159:0] repANF_0;
  wire [0:0] subjLet_1;
  wire [194:0] altLet_2;
  wire [194:0] altLet_3;
  wire [15:0] swapIdx_4;
  wire [194:0] bodyVar_5;
  wire [2:0] st_6;
  wire [15:0] sz_7;
  wire [15:0] idx1_8;
  wire [159:0] qu_9;
  HeapSort_swap_9 HeapSort_swap_9_repANF_0
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
  
  HeapSort_getSwapIdx_11 HeapSort_getSwapIdx_11_swapIdx_4
  (.bodyVar_o (swapIdx_4)
  ,.eta_i1 (qu_9)
  ,.eta_i2 (idx1_8)
  ,.eta_i3 (sz_7));
  
  reg [194:0] bodyVar_5_reg;
  always @(*) begin
    if(subjLet_1)
      bodyVar_5_reg = altLet_3;
    else
      bodyVar_5_reg = altLet_2;
  end
  assign bodyVar_5 = bodyVar_5_reg;
  
  assign st_6 = eta_i1[194:192];
  
  assign sz_7 = eta_i1[191:176];
  
  assign idx1_8 = eta_i1[175:160];
  
  assign qu_9 = eta_i1[159:0];
  
  assign topLet_o = bodyVar_5;
endmodule
