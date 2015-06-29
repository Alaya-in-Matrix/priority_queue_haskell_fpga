-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HeapSort_types.all;

entity HeapSort_getSwapIdx_11 is
  port(eta_i1    : in array_of_integer(0 to 4);
       eta_i2    : in unsigned(15 downto 0);
       eta_i3    : in unsigned(15 downto 0);
       bodyVar_o : out unsigned(15 downto 0));
end;

architecture structural of HeapSort_getSwapIdx_11 is
  signal c2Idx_0        : unsigned(15 downto 0);
  signal bodyVar_1      : unsigned(15 downto 0);
  signal c1Idx_2        : unsigned(15 downto 0);
  signal repANF_3       : unsigned(15 downto 0);
  signal subjLet_4      : boolean;
  signal bodyVar_5      : integer;
  signal wild2_6        : integer;
  signal repANF_7       : integer;
  signal repANF_8       : integer;
  signal bodyVar_9      : unsigned(15 downto 0);
  signal bodyVar_10     : integer;
  signal wild2_11       : integer;
  signal repANF_12      : integer;
  signal repANF_13      : integer;
  signal subjLet_14     : unsigned(1 downto 0);
  signal xzg_15         : integer;
  signal altLet_16      : unsigned(1 downto 0);
  signal yzg_17         : integer;
  signal altLet_18      : unsigned(1 downto 0);
  signal altLet_19      : unsigned(1 downto 0);
  signal subjLet_20     : boolean;
  signal subjLet_21     : boolean;
  signal repANF_22      : integer;
  signal repANF_23      : integer;
  signal subjLet_24     : boolean;
  signal bodyVar_25     : integer;
  signal wild2_26       : integer;
  signal repANF_27      : integer;
  signal repANF_28      : integer;
  signal bodyVar_29     : unsigned(15 downto 0);
  signal bodyVar_30     : integer;
  signal wild2_31       : integer;
  signal repANF_32      : integer;
  signal repANF_33      : integer;
  signal subjLet_34     : unsigned(1 downto 0);
  signal xzg_35         : integer;
  signal altLet_36      : unsigned(1 downto 0);
  signal yzg_37         : integer;
  signal altLet_38      : unsigned(1 downto 0);
  signal altLet_39      : unsigned(1 downto 0);
  signal subjLet_40     : boolean;
  signal subjLet_41     : boolean;
  signal repANF_42      : integer;
  signal repANF_43      : integer;
  signal tmp_51         : integer;
  signal tmp_55         : integer;
  signal tmp_tte_rhs_59 : integer;
  signal tmp_tte_59     : boolean;
  signal tmp_tte_rhs_60 : integer;
  signal tmp_tte_60     : boolean;
  signal tmp_61         : integer;
  signal tmp_62         : integer;
  signal tmp_64         : integer;
  signal tmp_68         : integer;
  signal tmp_tte_rhs_72 : integer;
  signal tmp_tte_72     : boolean;
  signal tmp_tte_rhs_73 : integer;
  signal tmp_tte_73     : boolean;
  signal tmp_74         : integer;
  signal tmp_75         : integer;
begin
  c2Idx_0 <= repANF_3 + unsigned'("0000000000000010");
  
  with (subjLet_24) select
    bodyVar_o <= bodyVar_29 when (true),
                 bodyVar_1 when others;
  
  with (subjLet_4) select
    bodyVar_1 <= bodyVar_9 when (true),
                 eta_i2 when others;
  
  c1Idx_2 <= repANF_3 + unsigned'("0000000000000001");
  
  repANF_3 <= resize(unsigned'("0000000000000010") * eta_i2, 16);
  
  subjLet_4 <= c1Idx_2 < eta_i3;
  
  -- index begin
  indexVec_n_52 : block
    signal vec       : array_of_integer(0 to 4);
    signal vec_index : integer range 0 to 5-1;
  begin
    vec <= eta_i1;
  
    vec_index <= repANF_8
    -- pragma translate_off
                 mod 5
    -- pragma translate_on
                 ;
  
    tmp_51 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_5 <= tmp_51;
  
  wild2_6 <= repANF_7;
  
  repANF_7 <= to_integer(eta_i2);
  
  repANF_8 <= wild2_6;
  
  with (subjLet_14) select
    bodyVar_9 <= c1Idx_2 when ("10"),
                 eta_i2 when ("01"),
                 eta_i2 when others;
  
  -- index begin
  indexVec_n_56 : block
    signal vec       : array_of_integer(0 to 4);
    signal vec_index : integer range 0 to 5-1;
  begin
    vec <= eta_i1;
  
    vec_index <= repANF_13
    -- pragma translate_off
                 mod 5
    -- pragma translate_on
                 ;
  
    tmp_55 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_10 <= tmp_55;
  
  wild2_11 <= repANF_12;
  
  repANF_12 <= to_integer(c1Idx_2);
  
  repANF_13 <= wild2_11;
  
  subjLet_14 <= altLet_16;
  
  xzg_15 <= bodyVar_5;
  
  altLet_16 <= altLet_18;
  
  yzg_17 <= bodyVar_10;
  
  with (subjLet_20) select
    altLet_18 <= to_unsigned(0
                            ,2) when (true),
                 altLet_19 when others;
  
  with (subjLet_21) select
    altLet_19 <= to_unsigned(1
                            ,2) when (true),
                 to_unsigned(2,2) when others;
  
  tmp_tte_rhs_59 <= repANF_23;
  
  tmp_tte_59 <= false when tmp_tte_rhs_59 = 0 else true;
  
  subjLet_20 <= tmp_tte_59;
  
  tmp_tte_rhs_60 <= repANF_22;
  
  tmp_tte_60 <= false when tmp_tte_rhs_60 = 0 else true;
  
  subjLet_21 <= tmp_tte_60;
  
  tmp_61 <= 1 when xzg_15 = yzg_17 else 0;
  
  repANF_22 <= tmp_61;
  
  tmp_62 <= 1 when xzg_15 < yzg_17 else 0;
  
  repANF_23 <= tmp_62;
  
  subjLet_24 <= c2Idx_0 < eta_i3;
  
  -- index begin
  indexVec_n_65 : block
    signal vec       : array_of_integer(0 to 4);
    signal vec_index : integer range 0 to 5-1;
  begin
    vec <= eta_i1;
  
    vec_index <= repANF_28
    -- pragma translate_off
                 mod 5
    -- pragma translate_on
                 ;
  
    tmp_64 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_25 <= tmp_64;
  
  wild2_26 <= repANF_27;
  
  repANF_27 <= to_integer(bodyVar_1);
  
  repANF_28 <= wild2_26;
  
  with (subjLet_34) select
    bodyVar_29 <= c2Idx_0 when ("10"),
                  bodyVar_1 when ("01"),
                  bodyVar_1 when others;
  
  -- index begin
  indexVec_n_69 : block
    signal vec       : array_of_integer(0 to 4);
    signal vec_index : integer range 0 to 5-1;
  begin
    vec <= eta_i1;
  
    vec_index <= repANF_33
    -- pragma translate_off
                 mod 5
    -- pragma translate_on
                 ;
  
    tmp_68 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_30 <= tmp_68;
  
  wild2_31 <= repANF_32;
  
  repANF_32 <= to_integer(c2Idx_0);
  
  repANF_33 <= wild2_31;
  
  subjLet_34 <= altLet_36;
  
  xzg_35 <= bodyVar_25;
  
  altLet_36 <= altLet_38;
  
  yzg_37 <= bodyVar_30;
  
  with (subjLet_40) select
    altLet_38 <= to_unsigned(0
                            ,2) when (true),
                 altLet_39 when others;
  
  with (subjLet_41) select
    altLet_39 <= to_unsigned(1
                            ,2) when (true),
                 to_unsigned(2,2) when others;
  
  tmp_tte_rhs_72 <= repANF_43;
  
  tmp_tte_72 <= false when tmp_tte_rhs_72 = 0 else true;
  
  subjLet_40 <= tmp_tte_72;
  
  tmp_tte_rhs_73 <= repANF_42;
  
  tmp_tte_73 <= false when tmp_tte_rhs_73 = 0 else true;
  
  subjLet_41 <= tmp_tte_73;
  
  tmp_74 <= 1 when xzg_35 = yzg_37 else 0;
  
  repANF_42 <= tmp_74;
  
  tmp_75 <= 1 when xzg_35 < yzg_37 else 0;
  
  repANF_43 <= tmp_75;
end;
