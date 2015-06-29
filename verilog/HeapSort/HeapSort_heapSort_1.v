// Automatically generated Verilog-2005
module HeapSort_heapSort_1(vecIn_i1
                          ,// clock
                          system1000
                          ,// asynchronous reset: active low
                          system1000_rstn
                          ,bodyVar_o);
  input [160:0] vecIn_i1;
  input system1000;
  input system1000_rstn;
  output [160:0] bodyVar_o;
  wire [194:0] tup_0;
  wire [160:0] y_1;
  wire [196:0] bodyVar_2;
  wire [35:0] x_3;
  wire [33:0] repANF_4;
  wire [33:0] x_5;
  assign bodyVar_o = y_1;
  
  HeapSort_moorezm_2 HeapSort_moorezm_2_tup_0
  (.bodyVar_o (tup_0)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.eta_i1 (bodyVar_2));
  
  assign y_1 = tup_0[160:0];
  
  assign bodyVar_2 = {x_3
                     ,vecIn_i1};
  
  HeapSort_moorezm_6 HeapSort_moorezm_6_x_3
  (.bodyVar_o (x_3)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.eta_i1 (repANF_4));
  
  assign repANF_4 = x_5;
  
  assign x_5 = tup_0[194:161];
endmodule
