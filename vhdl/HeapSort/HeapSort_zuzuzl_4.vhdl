-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HeapSort_types.all;

entity HeapSort_zuzuzl_4 is
  port(eta_i1    : in array_of_integer(0 to 5);
       eta_i2    : in integer;
       bodyVar_o : out array_of_integer(0 to 5));
end;

architecture structural of HeapSort_zuzuzl_4 is
  signal ds_0     : product4;
  signal x_1      : array_of_integer(0 to 5);
  signal repANF_2 : array_of_integer(0 to 5);
  signal repANF_3 : array_of_integer(0 to 0);
  signal ds_4     : product5;
  signal zsR_5    : array_of_integer(0 to 5);
  signal zsL_6    : array_of_integer(0 to 0);
  signal repANF_7 : array_of_integer(0 to 6);
  signal repANF_8 : array_of_integer(0 to 0);
  signal tmp_9    : product5;
begin
  bodyVar_o <= x_1;
  
  ds_0 <= (product4_sel0 => repANF_2
          ,product4_sel1 => repANF_3);
  
  x_1 <= ds_0.product4_sel0;
  
  repANF_2 <= zsR_5;
  
  repANF_3 <= zsL_6;
  
  -- sliptAt begin
  splitAt_n_11 : block
    signal n_12 : array_of_integer(0 to 6);
  begin
    n_12 <= repANF_7;
    tmp_9 <= (n_12(tmp_9.product5_sel0'left to tmp_9.product5_sel0'right)
               ,n_12(tmp_9.product5_sel1'left + tmp_9.product5_sel0'length to tmp_9.product5_sel1'right + tmp_9.product5_sel0'length));
  end block;
  -- splitAt end
  
  ds_4 <= tmp_9;
  
  zsR_5 <= ds_4.product5_sel1;
  
  zsL_6 <= ds_4.product5_sel0;
  
  repANF_7 <= array_of_integer'(eta_i1) & array_of_integer'(repANF_8);
  
  repANF_8 <= array_of_integer'(0 => eta_i2);
end;
