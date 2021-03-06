-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_swap_10 is
  port(eta_i1    : in array_of_product1(0 to 999);
       eta_i2    : in unsigned(15 downto 0);
       eta_i3    : in unsigned(15 downto 0);
       bodyVar_o : out array_of_product1(0 to 999));
end;

architecture structural of Path_swap_10 is
  signal wild1_0  : integer;
  signal repANF_1 : integer;
  signal wild1_2  : integer;
  signal repANF_3 : integer;
  signal repANF_4 : product1;
  signal repANF_5 : array_of_product1(0 to 999);
  signal repANF_6 : product1;
  signal repANF_7 : integer;
  signal repANF_8 : integer;
  signal tmp_11   : array_of_product1(0 to 999);
  signal tmp_15   : product1;
  signal tmp_17   : array_of_product1(0 to 999);
  signal tmp_19   : product1;
begin
  wild1_0 <= repANF_1;
  
  repANF_1 <= to_integer(eta_i3);
  
  -- replace begin
  replaceVec_n_12 : block
    signal vec       : array_of_product1(0 to 999);
    signal vec_index : integer range 0 to 1000-1;
    signal din       : product1;
  begin
    vec <= repANF_5;
    vec_index <= repANF_7
    -- pragma translate_off
                 mod 1000
    -- pragma translate_on
                 ;
    din <= repANF_4;
  
    process(vec,vec_index,din)
      variable ivec : array_of_product1(0 to 999);
    begin
      ivec := vec;
      ivec(vec_index) := din;
      tmp_11 <= ivec;
    end process;
  end block;
  -- replace end
  
  bodyVar_o <= tmp_11;
  
  wild1_2 <= repANF_3;
  
  repANF_3 <= to_integer(eta_i2);
  
  -- index begin
  indexVec_n_16 : block
    signal vec       : array_of_product1(0 to 999);
    signal vec_index : integer range 0 to 1000-1;
  begin
    vec <= eta_i1;
  
    vec_index <= repANF_8
    -- pragma translate_off
                 mod 1000
    -- pragma translate_on
                 ;
  
    tmp_15 <= vec(vec_index);
  end block;
  -- index end
  
  repANF_4 <= tmp_15;
  
  -- replace begin
  replaceVec_n_18 : block
    signal vec       : array_of_product1(0 to 999);
    signal vec_index : integer range 0 to 1000-1;
    signal din       : product1;
  begin
    vec <= eta_i1;
    vec_index <= repANF_8
    -- pragma translate_off
                 mod 1000
    -- pragma translate_on
                 ;
    din <= repANF_6;
  
    process(vec,vec_index,din)
      variable ivec : array_of_product1(0 to 999);
    begin
      ivec := vec;
      ivec(vec_index) := din;
      tmp_17 <= ivec;
    end process;
  end block;
  -- replace end
  
  repANF_5 <= tmp_17;
  
  -- index begin
  indexVec_n_20 : block
    signal vec       : array_of_product1(0 to 999);
    signal vec_index : integer range 0 to 1000-1;
  begin
    vec <= eta_i1;
  
    vec_index <= repANF_7
    -- pragma translate_off
                 mod 1000
    -- pragma translate_on
                 ;
  
    tmp_19 <= vec(vec_index);
  end block;
  -- index end
  
  repANF_6 <= tmp_19;
  
  repANF_7 <= wild1_2;
  
  repANF_8 <= wild1_0;
end;
