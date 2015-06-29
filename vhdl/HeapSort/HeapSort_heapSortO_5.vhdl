-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HeapSort_types.all;

entity HeapSort_heapSortO_5 is
  port(eta1_i1  : in product0;
       topLet_o : out product6);
end;

architecture structural of HeapSort_heapSortO_5 is
  signal repANF_0  : integer;
  signal repANF_1  : integer;
  signal wild2_2   : integer;
  signal bodyVar_3 : integer;
  signal repANF_4  : std_logic_vector(33 downto 0);
  signal subjLet_5 : boolean;
  signal repANF_6  : array_of_integer(0 to 4);
  signal repANF_7  : std_logic_vector(160 downto 0);
  signal altLet_8  : product6;
  signal idx_9     : unsigned(15 downto 0);
  signal altLet_10 : product6;
  signal ds2_11    : unsigned(15 downto 0);
  signal altLet_12 : product6;
  signal altLet_13 : product6;
  signal vec1_14   : array_of_integer(0 to 5);
  signal ds1_15    : std_logic_vector(17 downto 0);
  signal tmp_18    : integer;
  signal tmp_22    : array_of_integer(0 to 4);
begin
  repANF_0 <= wild2_2;
  
  repANF_1 <= to_integer(idx_9);
  
  wild2_2 <= repANF_1;
  
  -- index begin
  indexVec_n_19 : block
    signal vec       : array_of_integer(0 to 5);
    signal vec_index : integer range 0 to 6-1;
  begin
    vec <= vec1_14;
  
    vec_index <= repANF_0
    -- pragma translate_off
                 mod 6
    -- pragma translate_on
                 ;
  
    tmp_18 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_3 <= tmp_18;
  
  repANF_4 <= std_logic_vector'("00" & std_logic_vector(to_signed(bodyVar_3
                                                                 ,32)));
  
  subjLet_5 <= ds2_11 = unsigned'("0000000000000000");
  
  -- tail begin
  tail_n_23 : block
    signal n_24 : array_of_integer(0 to 5);
  begin
    n_24 <= vec1_14;
    tmp_22 <= n_24(1 to n_24'high);
  end block;
  -- tail end
  
  repANF_6 <= tmp_22;
  
  repANF_7 <= std_logic_vector'("1" & ((std_logic_vector(to_signed(repANF_6(0)
                                                                  ,32))
                                        & std_logic_vector(to_signed(repANF_6(1)
                                                                    ,32))
                                        & std_logic_vector(to_signed(repANF_6(2)
                                                                    ,32))
                                        & std_logic_vector(to_signed(repANF_6(3)
                                                                    ,32))
                                        & std_logic_vector(to_signed(repANF_6(4)
                                                                    ,32)))));
  
  altLet_8 <= (product6_sel0 => repANF_4
              ,product6_sel1 => std_logic_vector'("0" & "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"));
  
  idx_9 <= unsigned(ds1_15(15 downto 0));
  
  with (subjLet_5) select
    altLet_10 <= (product6_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000")
                 ,product6_sel1 => std_logic_vector'("0" & "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000")) when (true),
                 (product6_sel0 => std_logic_vector'("01" & "00000000000000000000000000000000")
                 ,product6_sel1 => std_logic_vector'("0" & "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000")) when others;
  
  ds2_11 <= unsigned(ds1_15(15 downto 0));
  
  altLet_12 <= (product6_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000")
               ,product6_sel1 => repANF_7);
  
  with (ds1_15(17 downto 16)) select
    altLet_13 <= altLet_12 when ("11"),
                 (product6_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000")
                 ,product6_sel1 => std_logic_vector'("0" & "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000")) when ("10"),
                 altLet_10 when ("01"),
                 altLet_8 when others;
  
  vec1_14 <= eta1_i1.product0_sel0;
  
  ds1_15 <= eta1_i1.product0_sel1;
  
  topLet_o <= altLet_13;
end;
