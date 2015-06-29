-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_getSwapIdx_12 is
  port(eta_i1    : in array_of_product1(0 to 999);
       eta_i2    : in unsigned(15 downto 0);
       eta_i3    : in unsigned(15 downto 0);
       bodyVar_o : out unsigned(15 downto 0));
end;

architecture structural of Path_getSwapIdx_12 is
  signal c2Idx_0    : unsigned(15 downto 0);
  signal bodyVar_1  : unsigned(15 downto 0);
  signal c1Idx_2    : unsigned(15 downto 0);
  signal repANF_3   : unsigned(15 downto 0);
  signal subjLet_4  : boolean;
  signal bodyVar_5  : product1;
  signal wild1_6    : integer;
  signal repANF_7   : integer;
  signal repANF_8   : integer;
  signal bodyVar_9  : unsigned(15 downto 0);
  signal bodyVar_10 : product1;
  signal wild1_11   : integer;
  signal repANF_12  : integer;
  signal repANF_13  : integer;
  signal subjLet_14 : unsigned(1 downto 0);
  signal subjLet_15 : boolean;
  signal bodyVar_16 : product1;
  signal wild1_17   : integer;
  signal repANF_18  : integer;
  signal repANF_19  : integer;
  signal bodyVar_20 : unsigned(15 downto 0);
  signal bodyVar_21 : product1;
  signal wild1_22   : integer;
  signal repANF_23  : integer;
  signal repANF_24  : integer;
  signal subjLet_25 : unsigned(1 downto 0);
  signal tmp_33     : product1;
  signal tmp_37     : product1;
  signal tmp_42     : product1;
  signal tmp_46     : product1;
begin
  c2Idx_0 <= repANF_3 + unsigned'("0000000000000010");
  
  with (subjLet_15) select
    bodyVar_o <= bodyVar_20 when (true),
                 bodyVar_1 when others;
  
  with (subjLet_4) select
    bodyVar_1 <= bodyVar_9 when (true),
                 eta_i2 when others;
  
  c1Idx_2 <= repANF_3 + unsigned'("0000000000000001");
  
  repANF_3 <= resize(unsigned'("0000000000000010") * eta_i2, 16);
  
  subjLet_4 <= c1Idx_2 < eta_i3;
  
  -- index begin
  indexVec_n_34 : block
    signal vec       : array_of_product1(0 to 999);
    signal vec_index : integer range 0 to 1000-1;
  begin
    vec <= eta_i1;
  
    vec_index <= repANF_8
    -- pragma translate_off
                 mod 1000
    -- pragma translate_on
                 ;
  
    tmp_33 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_5 <= tmp_33;
  
  wild1_6 <= repANF_7;
  
  repANF_7 <= to_integer(eta_i2);
  
  repANF_8 <= wild1_6;
  
  with (subjLet_14) select
    bodyVar_9 <= c1Idx_2 when ("10"),
                 eta_i2 when ("01"),
                 eta_i2 when others;
  
  -- index begin
  indexVec_n_38 : block
    signal vec       : array_of_product1(0 to 999);
    signal vec_index : integer range 0 to 1000-1;
  begin
    vec <= eta_i1;
  
    vec_index <= repANF_13
    -- pragma translate_off
                 mod 1000
    -- pragma translate_on
                 ;
  
    tmp_37 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_10 <= tmp_37;
  
  wild1_11 <= repANF_12;
  
  repANF_12 <= to_integer(c1Idx_2);
  
  repANF_13 <= wild1_11;
  
  Path_compare_9_subjLet_14 : entity Path_compare_9
    port map
      (bodyVar_o => subjLet_14
      ,n1_i1     => bodyVar_5
      ,n2_i2     => bodyVar_10);
  
  subjLet_15 <= c2Idx_0 < eta_i3;
  
  -- index begin
  indexVec_n_43 : block
    signal vec       : array_of_product1(0 to 999);
    signal vec_index : integer range 0 to 1000-1;
  begin
    vec <= eta_i1;
  
    vec_index <= repANF_19
    -- pragma translate_off
                 mod 1000
    -- pragma translate_on
                 ;
  
    tmp_42 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_16 <= tmp_42;
  
  wild1_17 <= repANF_18;
  
  repANF_18 <= to_integer(bodyVar_1);
  
  repANF_19 <= wild1_17;
  
  with (subjLet_25) select
    bodyVar_20 <= c2Idx_0 when ("10"),
                  bodyVar_1 when ("01"),
                  bodyVar_1 when others;
  
  -- index begin
  indexVec_n_47 : block
    signal vec       : array_of_product1(0 to 999);
    signal vec_index : integer range 0 to 1000-1;
  begin
    vec <= eta_i1;
  
    vec_index <= repANF_24
    -- pragma translate_off
                 mod 1000
    -- pragma translate_on
                 ;
  
    tmp_46 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_21 <= tmp_46;
  
  wild1_22 <= repANF_23;
  
  repANF_23 <= to_integer(c2Idx_0);
  
  repANF_24 <= wild1_22;
  
  Path_compare_9_subjLet_25 : entity Path_compare_9
    port map
      (bodyVar_o => subjLet_25
      ,n1_i1     => bodyVar_16
      ,n2_i2     => bodyVar_21);
end;
