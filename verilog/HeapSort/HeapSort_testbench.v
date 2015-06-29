// Automatically generated Verilog-2005
module HeapSort_testbench(done);
  output [0:0] done;
  wire [0:0] finished;
  wire system1000;
  wire system1000_rstn;
  wire [160:0] eta_i1;
  wire [160:0] topLet_o;
  assign done = finished;
  
  // pragma translate_off
  always @(*) begin
    if (finished == 1'b1) begin
      $finish;
    end
  end
  // pragma translate_on
  
  
  // pragma translate_off
  reg  n_1;
  always begin
    n_1 = 0;
    #2 forever begin
      n_1 = ~ n_1;
      #500;
      n_1 = ~ n_1;
      #500;
    end
  end
  assign system1000 = n_1;
  // pragma translate_on
  
  // pragma translate_off
  reg  n_2;
  initial begin
    n_2 = 0;
    #1 n_2 = 1;
  end
  assign system1000_rstn = n_2;
  // pragma translate_on
  
  HeapSort_topEntity_0 totest
  (.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.eta_i1 (eta_i1)
  ,.topLet_o (topLet_o));
  
  HeapSort_testInput_14 stimuli
  (.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.topLet_o (eta_i1));
  
  reg [0:0] n_0;
  always begin
  // pragma translate_off
    n_0 <= 1'b0;
    #100
  // pragma translate_on
    n_0 = 1'b1;
  end
  assign finished = n_0;
endmodule
