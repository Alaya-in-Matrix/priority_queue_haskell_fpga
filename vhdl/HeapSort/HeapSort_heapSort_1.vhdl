-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HeapSort_types.all;

entity HeapSort_heapSort_1 is
  port(vecIn_i1        : in std_logic_vector(160 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out std_logic_vector(160 downto 0));
end;

architecture structural of HeapSort_heapSort_1 is
  signal tup_0     : product6;
  signal y_1       : std_logic_vector(160 downto 0);
  signal bodyVar_2 : product1;
  signal x_3       : product2;
  signal repANF_4  : std_logic_vector(33 downto 0);
  signal x_5       : std_logic_vector(33 downto 0);
begin
  bodyVar_o <= y_1;
  
  HeapSort_moorezm_2_tup_0 : entity HeapSort_moorezm_2
    port map
      (bodyVar_o       => tup_0
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,eta_i1          => bodyVar_2);
  
  y_1 <= tup_0.product6_sel1;
  
  bodyVar_2 <= (product1_sel0 => x_3
               ,product1_sel1 => vecIn_i1);
  
  HeapSort_moorezm_6_x_3 : entity HeapSort_moorezm_6
    port map
      (bodyVar_o       => x_3
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,eta_i1          => repANF_4);
  
  repANF_4 <= x_5;
  
  x_5 <= tup_0.product6_sel0;
end;
