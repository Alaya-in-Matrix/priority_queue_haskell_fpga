// Automatically generated Verilog-2005
module Path_priorityQueueS_7(eta_i1
                            ,eta_i2
                            ,topLet_o);
  input [65034:0] eta_i1;
  input [66:0] eta_i2;
  output [65034:0] topLet_o;
  wire [65034:0] altLet_0;
  wire [65034:0] altLet_1;
  wire [2:0] ds2_2;
  wire [65034:0] altLet_3;
  wire [65034:0] altLet_4;
  wire [65034:0] altLet_5;
  wire [1:0] ds6_6;
  wire [65034:0] altLet_7;
  wire [65034:0] altLet_8;
  wire [64:0] val_9;
  reg [65034:0] altLet_0_reg;
  always @(*) begin
    case(ds2_2[2:2])
      1'b1 : altLet_0_reg = altLet_1;
      default : altLet_0_reg = eta_i1;
    endcase
  end
  assign altLet_0 = altLet_0_reg;
  
  reg [65034:0] altLet_1_reg;
  always @(*) begin
    case(ds6_6)
      2'b10 : altLet_1_reg = altLet_5;
      2'b01 : altLet_1_reg = altLet_4;
      default : altLet_1_reg = altLet_3;
    endcase
  end
  assign altLet_1 = altLet_1_reg;
  
  assign ds2_2 = eta_i1[65034:65032];
  
  Path_processPush_8 Path_processPush_8_altLet_3
  (.topLet_o (altLet_3)
  ,.eta_i1 (eta_i1));
  
  Path_processPop_11 Path_processPop_11_altLet_4
  (.topLet_o (altLet_4)
  ,.eta_i1 (eta_i1));
  
  reg [65034:0] altLet_5_reg;
  always @(*) begin
    case(eta_i2[66:65])
      2'b10 : altLet_5_reg = eta_i1;
      2'b01 : altLet_5_reg = altLet_8;
      default : altLet_5_reg = altLet_7;
    endcase
  end
  assign altLet_5 = altLet_5_reg;
  
  assign ds6_6 = ds2_2[1:0];
  
  Path_initPush_13 Path_initPush_13_altLet_7
  (.topLet_o (altLet_7)
  ,.eta_i1 (eta_i1)
  ,.eta_i2 (val_9));
  
  Path_initPop_14 Path_initPop_14_altLet_8
  (.topLet_o (altLet_8)
  ,.eta_i1 (eta_i1));
  
  assign val_9 = eta_i2[64:0];
  
  assign topLet_o = altLet_0;
endmodule
