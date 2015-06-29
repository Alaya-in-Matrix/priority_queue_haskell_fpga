-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HeapSort_types.all;

entity HeapSort_processPush_8 is
  port(eta_i1   : in product3;
       topLet_o : out product3);
end;

architecture structural of HeapSort_processPush_8 is
  signal qu_0           : array_of_integer(0 to 4);
  signal idx1_1         : unsigned(15 downto 0);
  signal sz_2           : unsigned(15 downto 0);
  signal st_3           : std_logic_vector(2 downto 0);
  signal altLet_4       : product3;
  signal subjLet_5      : boolean;
  signal pId_6          : unsigned(15 downto 0);
  signal repANF_7       : unsigned(15 downto 0);
  signal bodyVar_8      : integer;
  signal wild2_9        : integer;
  signal repANF_10      : integer;
  signal repANF_11      : integer;
  signal bodyVar_12     : product3;
  signal bodyVar_13     : integer;
  signal wild2_14       : integer;
  signal repANF_15      : integer;
  signal repANF_16      : integer;
  signal altLet_17      : product3;
  signal repANF_18      : integer;
  signal repANF_19      : integer;
  signal altLet_20      : product3;
  signal altLet_21      : product3;
  signal subjLet_22     : unsigned(1 downto 0);
  signal repANF_23      : array_of_integer(0 to 4);
  signal xzg_24         : integer;
  signal altLet_25      : unsigned(1 downto 0);
  signal yzg_26         : integer;
  signal altLet_27      : unsigned(1 downto 0);
  signal altLet_28      : unsigned(1 downto 0);
  signal subjLet_29     : boolean;
  signal subjLet_30     : boolean;
  signal tmp_36         : integer;
  signal tmp_40         : integer;
  signal tmp_44         : integer;
  signal tmp_45         : integer;
  signal tmp_tte_rhs_46 : integer;
  signal tmp_tte_46     : boolean;
  signal tmp_tte_rhs_47 : integer;
  signal tmp_tte_47     : boolean;
begin
  topLet_o <= altLet_4;
  
  qu_0 <= eta_i1.product3_sel3;
  
  idx1_1 <= eta_i1.product3_sel2;
  
  sz_2 <= eta_i1.product3_sel1;
  
  st_3 <= eta_i1.product3_sel0;
  
  with (subjLet_5) select
    altLet_4 <= altLet_20 when (true),
                bodyVar_12 when others;
  
  subjLet_5 <= idx1_1 = unsigned'("0000000000000000");
  
  pId_6 <= shift_right(repANF_7,1);
  
  repANF_7 <= idx1_1 - unsigned'("0000000000000001");
  
  -- index begin
  indexVec_n_37 : block
    signal vec       : array_of_integer(0 to 4);
    signal vec_index : integer range 0 to 5-1;
  begin
    vec <= qu_0;
  
    vec_index <= repANF_11
    -- pragma translate_off
                 mod 5
    -- pragma translate_on
                 ;
  
    tmp_36 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_8 <= tmp_36;
  
  wild2_9 <= repANF_10;
  
  repANF_10 <= to_integer(pId_6);
  
  repANF_11 <= wild2_9;
  
  with (subjLet_22) select
    bodyVar_12 <= altLet_17 when ("10"),
                  altLet_17 when ("01"),
                  altLet_20 when others;
  
  -- index begin
  indexVec_n_41 : block
    signal vec       : array_of_integer(0 to 4);
    signal vec_index : integer range 0 to 5-1;
  begin
    vec <= qu_0;
  
    vec_index <= repANF_16
    -- pragma translate_off
                 mod 5
    -- pragma translate_on
                 ;
  
    tmp_40 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_13 <= tmp_40;
  
  wild2_14 <= repANF_15;
  
  repANF_15 <= to_integer(idx1_1);
  
  repANF_16 <= wild2_14;
  
  with (subjLet_22) select
    altLet_17 <= altLet_20 when ("01"),
                 altLet_21 when others;
  
  tmp_44 <= 1 when xzg_24 = yzg_26 else 0;
  
  repANF_18 <= tmp_44;
  
  tmp_45 <= 1 when xzg_24 < yzg_26 else 0;
  
  repANF_19 <= tmp_45;
  
  altLet_20 <= (product3_sel0 => std_logic_vector'("1" & std_logic_vector(to_unsigned(2
                                                                                     ,2)))
               ,product3_sel1 => sz_2
               ,product3_sel2 => idx1_1
               ,product3_sel3 => qu_0);
  
  altLet_21 <= (product3_sel0 => st_3
               ,product3_sel1 => sz_2
               ,product3_sel2 => pId_6
               ,product3_sel3 => repANF_23);
  
  subjLet_22 <= altLet_25;
  
  HeapSort_swap_9_repANF_23 : entity HeapSort_swap_9
    port map
      (bodyVar_o => repANF_23
      ,eta_i1    => qu_0
      ,eta_i2    => idx1_1
      ,eta_i3    => pId_6);
  
  xzg_24 <= bodyVar_8;
  
  altLet_25 <= altLet_27;
  
  yzg_26 <= bodyVar_13;
  
  with (subjLet_29) select
    altLet_27 <= to_unsigned(0
                            ,2) when (true),
                 altLet_28 when others;
  
  with (subjLet_30) select
    altLet_28 <= to_unsigned(1
                            ,2) when (true),
                 to_unsigned(2,2) when others;
  
  tmp_tte_rhs_46 <= repANF_19;
  
  tmp_tte_46 <= false when tmp_tte_rhs_46 = 0 else true;
  
  subjLet_29 <= tmp_tte_46;
  
  tmp_tte_rhs_47 <= repANF_18;
  
  tmp_tte_47 <= false when tmp_tte_rhs_47 = 0 else true;
  
  subjLet_30 <= tmp_tte_47;
end;
