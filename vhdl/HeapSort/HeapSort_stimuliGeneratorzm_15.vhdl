-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HeapSort_types.all;

entity HeapSort_stimuliGeneratorzm_15 is
  port(-- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out std_logic_vector(160 downto 0));
end;

architecture structural of HeapSort_stimuliGeneratorzm_15 is
  signal y_0       : std_logic_vector(160 downto 0);
  signal bodyVar_1 : product7;
  signal repANF_2  : unsigned(0 downto 0);
  signal bodyVar_3 : std_logic_vector(160 downto 0);
  signal subjLet_4 : boolean;
  signal altLet_5  : unsigned(0 downto 0);
  signal repANF_6  : integer;
  signal x_7       : unsigned(0 downto 0);
  signal wild_8    : integer;
  signal repANF_9  : unsigned(0 downto 0);
  signal repANF_10 : integer;
  signal x_11      : unsigned(0 downto 0);
  signal tmp_13    : array_of_integer(0 to 4);
  signal tmp_12    : std_logic_vector(160 downto 0);
  signal tmp_24    : array_of_integer(0 to 4);
  signal tmp_33    : unsigned(0 downto 0);
begin
  bodyVar_o <= y_0;
  
  y_0 <= bodyVar_1.product7_sel1;
  
  bodyVar_1 <= (product7_sel0 => repANF_2
               ,product7_sel1 => bodyVar_3);
  
  with (subjLet_4) select
    repANF_2 <= altLet_5 when (true),
                x_7 when others;
  
  -- reverse begin
  reverse_n_14 : block
    signal n_15 : array_of_integer(0 to 4);
  begin
    n_15 <= array_of_integer'(1,2,3,4,5);
  
    reverseZ_n_16 : if tmp_13'length = 0 generate
      tmp_13 <= n_15;
    end generate;
  
    reverseSN_n_17 : if tmp_13'length /= 0 generate
      reverseIter_n_18 : for n_19 in n_15'range generate
        tmp_13(n_15'high - n_19) <= n_15(n_19);
      end generate;
    end generate;
  end block;
  -- reverse end
  
  -- index begin
  indexVec_n_20 : block
    signal vec       : array_of_std_logic_vector_161(0 to 1);
    signal vec_index : integer range 0 to 2-1;
  begin
    vec <= array_of_std_logic_vector_161'(std_logic_vector'("1" & ((std_logic_vector(to_signed(tmp_13(0),32)) & std_logic_vector(to_signed(tmp_13(1),32)) & std_logic_vector(to_signed(tmp_13(2),32)) & std_logic_vector(to_signed(tmp_13(3),32)) & std_logic_vector(to_signed(tmp_13(4),32))))),std_logic_vector'("0" & "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"));
  
    vec_index <= repANF_6
    -- pragma translate_off
                 mod 2
    -- pragma translate_on
                 ;
  
    tmp_12 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_3 <= tmp_12;
  
  -- reverse begin
  reverse_n_25 : block
    signal n_26 : array_of_integer(0 to 4);
  begin
    n_26 <= array_of_integer'(1,2,3,4,5);
  
    reverseZ_n_27 : if tmp_24'length = 0 generate
      tmp_24 <= n_26;
    end generate;
  
    reverseSN_n_28 : if tmp_24'length /= 0 generate
      reverseIter_n_29 : for n_30 in n_26'range generate
        tmp_24(n_26'high - n_30) <= n_26(n_30);
      end generate;
    end generate;
  end block;
  -- reverse end
  
  subjLet_4 <= x_7 < (to_unsigned((2 - 1),integer(ceil(log2(real(max(2,2)))))));
  
  altLet_5 <= x_7 + (to_unsigned(1,integer(ceil(log2(real(max(2,2)))))));
  
  repANF_6 <= wild_8;
  
  -- register begin
  register_HeapSort_stimuliGeneratorzm_15_n_35 : block
    signal n_36 : unsigned(0 downto 0);
    signal n_37 : unsigned(0 downto 0);
  begin
    n_36 <= (to_unsigned(0,integer(ceil(log2(real(max(2,2)))))));
  
    process(system1000,system1000_rstn,n_36)
    begin
      if system1000_rstn = '0' then
        n_37 <= n_36;
      elsif rising_edge(system1000) then
        n_37 <= repANF_9;
      end if;
    end process;
  
    tmp_33 <= n_37;
  end block;
  -- register end
  
  x_7 <= tmp_33;
  
  wild_8 <= repANF_10;
  
  repANF_9 <= x_11;
  
  repANF_10 <= to_integer(x_7);
  
  x_11 <= bodyVar_1.product7_sel0;
end;
