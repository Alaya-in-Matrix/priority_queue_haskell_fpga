-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_topEntity_0 is
  port(pIn_i1          : in std_logic_vector(64 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out std_logic_vector(65 downto 0));
end;

architecture structural of Path_topEntity_0 is
  signal ds8_0     : std_logic_vector(65 downto 0);
  signal pOut_1    : product4;
  signal bodyVar_2 : product5;
  signal x_3       : product6;
  signal x_4       : product1;
  signal repANF_5  : std_logic_vector(66 downto 0);
  signal bodyVar_6 : integer;
  signal bodyVar_7 : integer;
  signal repANF_8  : boolean;
  signal repANF_9  : product1;
  signal wild_10   : integer;
  signal wild_11   : integer;
  signal ds3_12    : std_logic_vector(66 downto 0);
  signal repANF_13 : integer;
  signal repANF_14 : integer;
  signal ds6_15    : boolean;
  signal ds7_16    : product1;
  signal x_17      : unsigned(15 downto 0);
  signal x_18      : unsigned(15 downto 0);
  signal ds5_19    : unsigned(15 downto 0);
  signal ds4_20    : unsigned(15 downto 0);
  signal tmp_21    : product1;
begin
  bodyVar_o <= ds8_0;
  
  ds8_0 <= pOut_1.product4_sel5;
  
  Path_mealyzm_1_pOut_1 : entity Path_mealyzm_1
    port map
      (bodyVar_o       => pOut_1
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,eta_i1          => bodyVar_2);
  
  bodyVar_2 <= (product5_sel0 => x_3
               ,product5_sel1 => pIn_i1
               ,product5_sel2 => x_4);
  
  Path_moorezm_6_x_3 : entity Path_moorezm_6
    port map
      (altLet_o        => x_3
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,eta_i1          => repANF_5);
  
  -- blockRam begin
  blockRam_Path_topEntity_0_n_118 : block
    signal RAM  : array_of_product1(0 to 15) := array_of_product1'((product1_sel0 => unsigned'("0000000000000000"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => false),(product1_sel0 => unsigned'("0000000000000001"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => false),(product1_sel0 => unsigned'("0000000000000010"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => false),(product1_sel0 => unsigned'("0000000000000011"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => false),(product1_sel0 => unsigned'("0000000000000100"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => false),(product1_sel0 => unsigned'("0000000000000101"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => true),(product1_sel0 => unsigned'("0000000000000110"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => false),(product1_sel0 => unsigned'("0000000000000111"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => true),(product1_sel0 => unsigned'("0000000000001000"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => false),(product1_sel0 => unsigned'("0000000000001001"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => false),(product1_sel0 => unsigned'("0000000000001010"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => false),(product1_sel0 => unsigned'("0000000000001011"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => true),(product1_sel0 => unsigned'("0000000000001100"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => true),(product1_sel0 => unsigned'("0000000000001101"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => true),(product1_sel0 => unsigned'("0000000000001110"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => false),(product1_sel0 => unsigned'("0000000000001111"),product1_sel1 => unsigned'(16-1 downto 0 => '1'),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel4 => false));
    signal dout : product1;
    signal wr   : integer range 0 to 16 - 1;
    signal rd   : integer range 0 to 16 - 1;
  begin
    wr <= bodyVar_6
    -- pragma translate_off
          mod 16
    -- pragma translate_on
          ;
  
    rd <= bodyVar_7
    -- pragma translate_off
          mod 16
    -- pragma translate_on
          ;
  
    blockRam_n_119 : process(system1000)
    begin
      if rising_edge(system1000) then
        if repANF_8 then
          RAM(wr) <= repANF_9;
        end if;
        dout <= RAM(rd);
      end if;
    end process;
  
    tmp_21 <= dout;
  end block;
  -- blockRam end
  
  x_4 <= tmp_21;
  
  repANF_5 <= ds3_12;
  
  bodyVar_6 <= wild_10;
  
  bodyVar_7 <= wild_11;
  
  repANF_8 <= ds6_15;
  
  repANF_9 <= ds7_16;
  
  wild_10 <= repANF_13;
  
  wild_11 <= repANF_14;
  
  ds3_12 <= pOut_1.product4_sel0;
  
  repANF_13 <= to_integer(x_17);
  
  repANF_14 <= to_integer(x_18);
  
  ds6_15 <= pOut_1.product4_sel3;
  
  ds7_16 <= pOut_1.product4_sel4;
  
  x_17 <= ds5_19;
  
  x_18 <= ds4_20;
  
  ds5_19 <= pOut_1.product4_sel2;
  
  ds4_20 <= pOut_1.product4_sel1;
end;
