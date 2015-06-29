-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HeapSort_types.all;

entity HeapSort_initPush_12 is
  port(eta_i1   : in product3;
       eta_i2   : in integer;
       topLet_o : out product3);
end;

architecture structural of HeapSort_initPush_12 is
  signal altLet_0  : product3;
  signal subjLet_1 : boolean;
  signal altLet_2  : product3;
  signal altLet_3  : product3;
  signal repANF_4  : unsigned(15 downto 0);
  signal repANF_5  : unsigned(15 downto 0);
  signal bodyVar_6 : array_of_integer(0 to 4);
  signal sz_7      : unsigned(15 downto 0);
  signal id_8      : unsigned(15 downto 0);
  signal qu_9      : array_of_integer(0 to 4);
  signal repANF_10 : integer;
  signal repANF_11 : integer;
  signal wild2_12  : integer;
  signal repANF_13 : integer;
  signal tmp_18    : array_of_integer(0 to 4);
begin
  with (subjLet_1) select
    altLet_0 <= altLet_3 when (true),
                altLet_2 when others;
  
  subjLet_1 <= sz_7 = repANF_4;
  
  altLet_2 <= (product3_sel0 => std_logic_vector'("1" & std_logic_vector(to_unsigned(0
                                                                                    ,2)))
              ,product3_sel1 => repANF_5
              ,product3_sel2 => sz_7
              ,product3_sel3 => bodyVar_6);
  
  altLet_3 <= (product3_sel0 => std_logic_vector'("0" & std_logic_vector(to_unsigned(0
                                                                                    ,1)) & "0")
              ,product3_sel1 => sz_7
              ,product3_sel2 => id_8
              ,product3_sel3 => qu_9);
  
  repANF_4 <= to_unsigned(repANF_10,16);
  
  repANF_5 <= sz_7 + unsigned'("0000000000000001");
  
  -- replace begin
  replaceVec_n_19 : block
    signal vec       : array_of_integer(0 to 4);
    signal vec_index : integer range 0 to 5-1;
    signal din       : integer;
  begin
    vec <= qu_9;
    vec_index <= repANF_11
    -- pragma translate_off
                 mod 5
    -- pragma translate_on
                 ;
    din <= eta_i2;
  
    process(vec,vec_index,din)
      variable ivec : array_of_integer(0 to 4);
    begin
      ivec := vec;
      ivec(vec_index) := din;
      tmp_18 <= ivec;
    end process;
  end block;
  -- replace end
  
  bodyVar_6 <= tmp_18;
  
  sz_7 <= eta_i1.product3_sel1;
  
  id_8 <= eta_i1.product3_sel2;
  
  qu_9 <= eta_i1.product3_sel3;
  
  repANF_10 <= 5;
  
  repANF_11 <= wild2_12;
  
  wild2_12 <= repANF_13;
  
  repANF_13 <= to_integer(sz_7);
  
  topLet_o <= altLet_0;
end;
