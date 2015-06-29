-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HeapSort_types.all;

entity HeapSort_processPop_10 is
  port(eta_i1   : in product3;
       topLet_o : out product3);
end;

architecture structural of HeapSort_processPop_10 is
  signal repANF_0  : array_of_integer(0 to 4);
  signal subjLet_1 : boolean;
  signal altLet_2  : product3;
  signal altLet_3  : product3;
  signal swapIdx_4 : unsigned(15 downto 0);
  signal bodyVar_5 : product3;
  signal st_6      : std_logic_vector(2 downto 0);
  signal sz_7      : unsigned(15 downto 0);
  signal idx1_8    : unsigned(15 downto 0);
  signal qu_9      : array_of_integer(0 to 4);
begin
  HeapSort_swap_9_repANF_0 : entity HeapSort_swap_9
    port map
      (bodyVar_o => repANF_0
      ,eta_i1    => qu_9
      ,eta_i2    => idx1_8
      ,eta_i3    => swapIdx_4);
  
  subjLet_1 <= swapIdx_4 /= idx1_8;
  
  altLet_2 <= (product3_sel0 => std_logic_vector'("1" & std_logic_vector(to_unsigned(2
                                                                                    ,2)))
              ,product3_sel1 => sz_7
              ,product3_sel2 => idx1_8
              ,product3_sel3 => qu_9);
  
  altLet_3 <= (product3_sel0 => st_6
              ,product3_sel1 => sz_7
              ,product3_sel2 => swapIdx_4
              ,product3_sel3 => repANF_0);
  
  HeapSort_getSwapIdx_11_swapIdx_4 : entity HeapSort_getSwapIdx_11
    port map
      (bodyVar_o => swapIdx_4
      ,eta_i1    => qu_9
      ,eta_i2    => idx1_8
      ,eta_i3    => sz_7);
  
  with (subjLet_1) select
    bodyVar_5 <= altLet_3 when (true),
                 altLet_2 when others;
  
  st_6 <= eta_i1.product3_sel0;
  
  sz_7 <= eta_i1.product3_sel1;
  
  idx1_8 <= eta_i1.product3_sel2;
  
  qu_9 <= eta_i1.product3_sel3;
  
  topLet_o <= bodyVar_5;
end;
