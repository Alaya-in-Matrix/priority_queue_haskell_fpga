-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_mealyzm_1 is
  port(eta_i1          : in product5;
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out product4);
end;

architecture structural of Path_mealyzm_1 is
  signal y_0       : product4;
  signal bodyVar_1 : product7;
  signal x_2       : product8;
  signal repANF_3  : product8;
  signal x_4       : product8;
  signal tmp_5     : product8;
begin
  bodyVar_o <= y_0;
  
  y_0 <= bodyVar_1.product7_sel1;
  
  Path_aStarCtrl_2_bodyVar_1 : entity Path_aStarCtrl_2
    port map
      (topLet_o => bodyVar_1
      ,eta_i1   => x_2
      ,eta_i2   => eta_i1);
  
  -- register begin
  register_Path_mealyzm_1_n_32 : block
    signal n_33 : product8;
    signal n_34 : product8;
  begin
    n_33 <= (product8_sel0 => unsigned'(4-1 downto 0 => '0'),product8_sel1 => (product9_sel0 => unsigned'("0000000000000000"),product9_sel1 => unsigned'("0000000000000000"),product9_sel2 => unsigned'("0000000000000000"),product9_sel3 => unsigned'("0000000000000000")),product8_sel2 => std_logic_vector'("000" & "00"),product8_sel3 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => unsigned'("0000000000000000"),product1_sel4 => false),product8_sel4 => array_of_product1'(0 to (4)-1 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => unsigned'("0000000000000000"),product1_sel4 => false)),product8_sel5 => unsigned'(2-1 downto 0 => '0'));
  
    process(system1000,system1000_rstn,n_33)
    begin
      if system1000_rstn = '0' then
        n_34 <= n_33;
      elsif rising_edge(system1000) then
        n_34 <= repANF_3;
      end if;
    end process;
  
    tmp_5 <= n_34;
  end block;
  -- register end
  
  x_2 <= tmp_5;
  
  repANF_3 <= x_4;
  
  x_4 <= bodyVar_1.product7_sel0;
end;
