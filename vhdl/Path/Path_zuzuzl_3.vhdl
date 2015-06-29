-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_zuzuzl_3 is
  port(eta_i1    : in array_of_product1(0 to 3);
       eta_i2    : in product1;
       bodyVar_o : out array_of_product1(0 to 3));
end;

architecture structural of Path_zuzuzl_3 is
  signal ds_0     : product2;
  signal x_1      : array_of_product1(0 to 3);
  signal repANF_2 : array_of_product1(0 to 3);
  signal repANF_3 : array_of_product1(0 to 0);
  signal ds_4     : product3;
  signal zsR_5    : array_of_product1(0 to 3);
  signal zsL_6    : array_of_product1(0 to 0);
  signal repANF_7 : array_of_product1(0 to 4);
  signal repANF_8 : array_of_product1(0 to 0);
  signal tmp_9    : product3;
begin
  bodyVar_o <= x_1;
  
  ds_0 <= (product2_sel0 => repANF_2
          ,product2_sel1 => repANF_3);
  
  x_1 <= ds_0.product2_sel0;
  
  repANF_2 <= zsR_5;
  
  repANF_3 <= zsL_6;
  
  -- sliptAt begin
  splitAt_n_11 : block
    signal n_12 : array_of_product1(0 to 4);
  begin
    n_12 <= repANF_7;
    tmp_9 <= (n_12(tmp_9.product3_sel0'left to tmp_9.product3_sel0'right)
               ,n_12(tmp_9.product3_sel1'left + tmp_9.product3_sel0'length to tmp_9.product3_sel1'right + tmp_9.product3_sel0'length));
  end block;
  -- splitAt end
  
  ds_4 <= tmp_9;
  
  zsR_5 <= ds_4.product3_sel1;
  
  zsL_6 <= ds_4.product3_sel0;
  
  repANF_7 <= array_of_product1'(eta_i1) & array_of_product1'(repANF_8);
  
  repANF_8 <= array_of_product1'(0 => eta_i2);
end;
