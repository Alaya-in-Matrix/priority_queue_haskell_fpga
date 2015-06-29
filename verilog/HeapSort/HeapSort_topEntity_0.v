// Automatically generated Verilog-2005
module HeapSort_topEntity_0(eta_i1
                           ,// clock
                           system1000
                           ,// asynchronous reset: active low
                           system1000_rstn
                           ,topLet_o);
  input [160:0] eta_i1;
  input system1000;
  input system1000_rstn;
  output [160:0] topLet_o;
  HeapSort_heapSort_1 HeapSort_heapSort_1_topLet_o
  (.bodyVar_o (topLet_o)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.vecIn_i1 (eta_i1));
endmodule
