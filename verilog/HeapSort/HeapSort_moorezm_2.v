// Automatically generated Verilog-2005
module HeapSort_moorezm_2(eta_i1
                         ,// clock
                         system1000
                         ,// asynchronous reset: active low
                         system1000_rstn
                         ,bodyVar_o);
  input [196:0] eta_i1;
  input system1000;
  input system1000_rstn;
  output [194:0] bodyVar_o;
  wire [209:0] repANF_0;
  wire [209:0] s1_1;
  wire [209:0] tmp_2;
  HeapSort_heapSortS_3 HeapSort_heapSortS_3_repANF_0
  (.topLet_o (repANF_0)
  ,.eta_i1 (s1_1)
  ,.eta_i2 (eta_i1));
  
  // register begin
  reg [209:0] n_5;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : register_HeapSort_moorezm_2_n_6
    if (~ system1000_rstn) begin
      n_5 <= {{(6) {32'sd0}},{2'b11,16'b0000000000000000}};
    end else begin
      n_5 <= repANF_0;
    end
  end
  
  assign tmp_2 = n_5;
  // register end
  
  assign s1_1 = tmp_2;
  
  HeapSort_heapSortO_5 HeapSort_heapSortO_5_bodyVar_o
  (.topLet_o (bodyVar_o)
  ,.eta_i1 (s1_1));
endmodule
