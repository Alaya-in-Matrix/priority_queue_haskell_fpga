-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HeapSort_types.all;

entity HeapSort_initPop_13 is
  port(eta_i1   : in product3;
       topLet_o : out product3);
end;

architecture structural of HeapSort_initPop_13 is
  signal repANF_0   : integer;
  signal wild2_1    : integer;
  signal repANF_2   : integer;
  signal bodyVar_3  : integer;
  signal qu_4       : array_of_integer(0 to 4);
  signal id_5       : unsigned(15 downto 0);
  signal ds1_6      : unsigned(15 downto 0);
  signal repANF_7   : array_of_integer(0 to 4);
  signal repANF_8   : unsigned(15 downto 0);
  signal altLet_9   : product3;
  signal altLet_10  : product3;
  signal subjLet_11 : boolean;
  signal altLet_12  : product3;
  signal tmp_15     : integer;
  signal tmp_17     : array_of_integer(0 to 4);
begin
  topLet_o <= altLet_12;
  
  repANF_0 <= to_integer(repANF_8);
  
  wild2_1 <= repANF_0;
  
  repANF_2 <= wild2_1;
  
  -- index begin
  indexVec_n_16 : block
    signal vec       : array_of_integer(0 to 4);
    signal vec_index : integer range 0 to 5-1;
  begin
    vec <= qu_4;
  
    vec_index <= repANF_2
    -- pragma translate_off
                 mod 5
    -- pragma translate_on
                 ;
  
    tmp_15 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_3 <= tmp_15;
  
  qu_4 <= eta_i1.product3_sel3;
  
  id_5 <= eta_i1.product3_sel2;
  
  ds1_6 <= eta_i1.product3_sel1;
  
  -- replace begin
  replaceVec_n_18 : block
    signal vec       : array_of_integer(0 to 4);
    signal vec_index : integer range 0 to 5-1;
    signal din       : integer;
  begin
    vec <= qu_4;
    vec_index <= 0
    -- pragma translate_off
                 mod 5
    -- pragma translate_on
                 ;
    din <= bodyVar_3;
  
    process(vec,vec_index,din)
      variable ivec : array_of_integer(0 to 4);
    begin
      ivec := vec;
      ivec(vec_index) := din;
      tmp_17 <= ivec;
    end process;
  end block;
  -- replace end
  
  repANF_7 <= tmp_17;
  
  repANF_8 <= ds1_6 - unsigned'("0000000000000001");
  
  altLet_9 <= (product3_sel0 => std_logic_vector'("0" & std_logic_vector(to_unsigned(1
                                                                                    ,1)) & "0")
              ,product3_sel1 => unsigned'("0000000000000000")
              ,product3_sel2 => id_5
              ,product3_sel3 => qu_4);
  
  altLet_10 <= (product3_sel0 => std_logic_vector'("1" & std_logic_vector(to_unsigned(1
                                                                                     ,2)))
               ,product3_sel1 => repANF_8
               ,product3_sel2 => unsigned'("0000000000000000")
               ,product3_sel3 => repANF_7);
  
  subjLet_11 <= ds1_6 = unsigned'("0000000000000000");
  
  with (subjLet_11) select
    altLet_12 <= altLet_9 when (true),
                 altLet_10 when others;
end;
