-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_processPush_8 is
  port(eta_i1   : in product0;
       topLet_o : out product0);
end;

architecture structural of Path_processPush_8 is
  signal qu_0       : array_of_product1(0 to 999);
  signal idx1_1     : unsigned(15 downto 0);
  signal sz_2       : unsigned(15 downto 0);
  signal st_3       : std_logic_vector(2 downto 0);
  signal altLet_4   : product0;
  signal subjLet_5  : boolean;
  signal pId_6      : unsigned(15 downto 0);
  signal repANF_7   : unsigned(15 downto 0);
  signal bodyVar_8  : product1;
  signal wild1_9    : integer;
  signal repANF_10  : integer;
  signal repANF_11  : integer;
  signal bodyVar_12 : product0;
  signal bodyVar_13 : product1;
  signal wild1_14   : integer;
  signal repANF_15  : integer;
  signal repANF_16  : integer;
  signal altLet_17  : product0;
  signal altLet_18  : product0;
  signal altLet_19  : product0;
  signal subjLet_20 : unsigned(1 downto 0);
  signal repANF_21  : array_of_product1(0 to 999);
  signal tmp_27     : product1;
  signal tmp_31     : product1;
begin
  topLet_o <= altLet_4;
  
  qu_0 <= eta_i1.product0_sel3;
  
  idx1_1 <= eta_i1.product0_sel2;
  
  sz_2 <= eta_i1.product0_sel1;
  
  st_3 <= eta_i1.product0_sel0;
  
  with (subjLet_5) select
    altLet_4 <= altLet_18 when (true),
                bodyVar_12 when others;
  
  subjLet_5 <= idx1_1 = unsigned'("0000000000000000");
  
  pId_6 <= shift_right(repANF_7,1);
  
  repANF_7 <= idx1_1 - unsigned'("0000000000000001");
  
  -- index begin
  indexVec_n_28 : block
    signal vec       : array_of_product1(0 to 999);
    signal vec_index : integer range 0 to 1000-1;
  begin
    vec <= qu_0;
  
    vec_index <= repANF_11
    -- pragma translate_off
                 mod 1000
    -- pragma translate_on
                 ;
  
    tmp_27 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_8 <= tmp_27;
  
  wild1_9 <= repANF_10;
  
  repANF_10 <= to_integer(pId_6);
  
  repANF_11 <= wild1_9;
  
  with (subjLet_20) select
    bodyVar_12 <= altLet_17 when ("10"),
                  altLet_17 when ("01"),
                  altLet_18 when others;
  
  -- index begin
  indexVec_n_32 : block
    signal vec       : array_of_product1(0 to 999);
    signal vec_index : integer range 0 to 1000-1;
  begin
    vec <= qu_0;
  
    vec_index <= repANF_16
    -- pragma translate_off
                 mod 1000
    -- pragma translate_on
                 ;
  
    tmp_31 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_13 <= tmp_31;
  
  wild1_14 <= repANF_15;
  
  repANF_15 <= to_integer(idx1_1);
  
  repANF_16 <= wild1_14;
  
  with (subjLet_20) select
    altLet_17 <= altLet_18 when ("01"),
                 altLet_19 when others;
  
  altLet_18 <= (product0_sel0 => std_logic_vector'("1" & std_logic_vector(to_unsigned(2
                                                                                     ,2)))
               ,product0_sel1 => sz_2
               ,product0_sel2 => idx1_1
               ,product0_sel3 => qu_0);
  
  altLet_19 <= (product0_sel0 => st_3
               ,product0_sel1 => sz_2
               ,product0_sel2 => pId_6
               ,product0_sel3 => repANF_21);
  
  Path_compare_9_subjLet_20 : entity Path_compare_9
    port map
      (bodyVar_o => subjLet_20
      ,n1_i1     => bodyVar_8
      ,n2_i2     => bodyVar_13);
  
  Path_swap_10_repANF_21 : entity Path_swap_10
    port map
      (bodyVar_o => repANF_21
      ,eta_i1    => qu_0
      ,eta_i2    => idx1_1
      ,eta_i3    => pId_6);
end;
