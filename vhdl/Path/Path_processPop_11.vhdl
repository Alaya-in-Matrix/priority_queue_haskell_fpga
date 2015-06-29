-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_processPop_11 is
  port(eta_i1   : in product0;
       topLet_o : out product0);
end;

architecture structural of Path_processPop_11 is
  signal repANF_0  : array_of_product1(0 to 999);
  signal subjLet_1 : boolean;
  signal altLet_2  : product0;
  signal altLet_3  : product0;
  signal swapIdx_4 : unsigned(15 downto 0);
  signal bodyVar_5 : product0;
  signal st_6      : std_logic_vector(2 downto 0);
  signal sz_7      : unsigned(15 downto 0);
  signal idx1_8    : unsigned(15 downto 0);
  signal qu_9      : array_of_product1(0 to 999);
begin
  Path_swap_10_repANF_0 : entity Path_swap_10
    port map
      (bodyVar_o => repANF_0
      ,eta_i1    => qu_9
      ,eta_i2    => idx1_8
      ,eta_i3    => swapIdx_4);
  
  subjLet_1 <= swapIdx_4 /= idx1_8;
  
  altLet_2 <= (product0_sel0 => std_logic_vector'("1" & std_logic_vector(to_unsigned(2
                                                                                    ,2)))
              ,product0_sel1 => sz_7
              ,product0_sel2 => idx1_8
              ,product0_sel3 => qu_9);
  
  altLet_3 <= (product0_sel0 => st_6
              ,product0_sel1 => sz_7
              ,product0_sel2 => swapIdx_4
              ,product0_sel3 => repANF_0);
  
  Path_getSwapIdx_12_swapIdx_4 : entity Path_getSwapIdx_12
    port map
      (bodyVar_o => swapIdx_4
      ,eta_i1    => qu_9
      ,eta_i2    => idx1_8
      ,eta_i3    => sz_7);
  
  with (subjLet_1) select
    bodyVar_5 <= altLet_3 when (true),
                 altLet_2 when others;
  
  st_6 <= eta_i1.product0_sel0;
  
  sz_7 <= eta_i1.product0_sel1;
  
  idx1_8 <= eta_i1.product0_sel2;
  
  qu_9 <= eta_i1.product0_sel3;
  
  topLet_o <= bodyVar_5;
end;
