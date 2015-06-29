// Automatically generated Verilog-2005
module HeapSort_priorityQueueS_7(eta_i1
                                ,eta_i2
                                ,topLet_o);
  input [194:0] eta_i1;
  input [33:0] eta_i2;
  output [194:0] topLet_o;
  wire [194:0] altLet_0;
  wire [194:0] altLet_1;
  wire [2:0] ds2_2;
  wire [194:0] altLet_3;
  wire [194:0] altLet_4;
  wire [194:0] altLet_5;
  wire [1:0] ds6_6;
  wire [194:0] altLet_7;
  wire [194:0] altLet_8;
  wire signed [31:0] val_9;
  reg [194:0] altLet_0_reg;
  always @(*) begin
    case(ds2_2[2:2])
      1'b1 : altLet_0_reg = altLet_1;
      default : altLet_0_reg = eta_i1;
    endcase
  end
  assign altLet_0 = altLet_0_reg;
  
  reg [194:0] altLet_1_reg;
  always @(*) begin
    case(ds6_6)
      2'b10 : altLet_1_reg = altLet_5;
      2'b01 : altLet_1_reg = altLet_4;
      default : altLet_1_reg = altLet_3;
    endcase
  end
  assign altLet_1 = altLet_1_reg;
  
  assign ds2_2 = eta_i1[194:192];
  
  HeapSort_processPush_8 HeapSort_processPush_8_altLet_3
  (.topLet_o (altLet_3)
  ,.eta_i1 (eta_i1));
  
  HeapSort_processPop_10 HeapSort_processPop_10_altLet_4
  (.topLet_o (altLet_4)
  ,.eta_i1 (eta_i1));
  
  reg [194:0] altLet_5_reg;
  always @(*) begin
    case(eta_i2[33:32])
      2'b10 : altLet_5_reg = eta_i1;
      2'b01 : altLet_5_reg = altLet_8;
      default : altLet_5_reg = altLet_7;
    endcase
  end
  assign altLet_5 = altLet_5_reg;
  
  assign ds6_6 = ds2_2[1:0];
  
  HeapSort_initPush_12 HeapSort_initPush_12_altLet_7
  (.topLet_o (altLet_7)
  ,.eta_i1 (eta_i1)
  ,.eta_i2 (val_9));
  
  HeapSort_initPop_13 HeapSort_initPop_13_altLet_8
  (.topLet_o (altLet_8)
  ,.eta_i1 (eta_i1));
  
  assign val_9 = eta_i2[31:0];
  
  assign topLet_o = altLet_0;
endmodule
