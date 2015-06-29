// Automatically generated Verilog-2005
module HeapSort_zuzuzl_4(eta_i1
                        ,eta_i2
                        ,bodyVar_o);
  input [191:0] eta_i1;
  input signed [31:0] eta_i2;
  output [191:0] bodyVar_o;
  wire [223:0] ds_0;
  wire [191:0] x_1;
  wire [191:0] repANF_2;
  wire [31:0] repANF_3;
  wire [223:0] ds_4;
  wire [191:0] zsR_5;
  wire [31:0] zsL_6;
  wire [223:0] repANF_7;
  wire [31:0] repANF_8;
  assign bodyVar_o = x_1;
  
  assign ds_0 = {repANF_2
                ,repANF_3};
  
  assign x_1 = ds_0[223:32];
  
  assign repANF_2 = zsR_5;
  
  assign repANF_3 = zsL_6;
  
  assign ds_4 = repANF_7;
  
  assign zsR_5 = ds_4[191:0];
  
  assign zsL_6 = ds_4[223:192];
  
  assign repANF_7 = {eta_i1,repANF_8};
  
  assign repANF_8 = eta_i2;
endmodule
