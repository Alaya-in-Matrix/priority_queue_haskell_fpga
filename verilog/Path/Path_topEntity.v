// Automatically generated Verilog-2005
module Path_topEntity(input_0
                     ,// clock
                     system1000
                     ,// asynchronous reset: active low
                     system1000_rstn
                     ,output_0);
  input [64:0] input_0;
  input system1000;
  input system1000_rstn;
  output [65:0] output_0;
  Path_topEntity_0 Path_topEntity_0_inst
  (.pIn_i1 (input_0)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.bodyVar_o (output_0));
endmodule
