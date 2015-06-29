-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HeapSort_types.all;

entity HeapSort_moorezm_2 is
  port(eta_i1          : in product1;
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out product6);
end;

architecture structural of HeapSort_moorezm_2 is
  signal repANF_0 : product0;
  signal s1_1     : product0;
  signal tmp_2    : product0;
begin
  HeapSort_heapSortS_3_repANF_0 : entity HeapSort_heapSortS_3
    port map
      (topLet_o => repANF_0
      ,eta_i1   => s1_1
      ,eta1_i2  => eta_i1);
  
  -- register begin
  register_HeapSort_moorezm_2_n_5 : block
    signal n_6 : product0;
    signal n_7 : product0;
  begin
    n_6 <= (product0_sel0 => array_of_integer'(0 to (6)-1 => 0),product0_sel1 => std_logic_vector'("11" & "0000000000000000"));
  
    process(system1000,system1000_rstn,n_6)
    begin
      if system1000_rstn = '0' then
        n_7 <= n_6;
      elsif rising_edge(system1000) then
        n_7 <= repANF_0;
      end if;
    end process;
  
    tmp_2 <= n_7;
  end block;
  -- register end
  
  s1_1 <= tmp_2;
  
  HeapSort_heapSortO_5_bodyVar_o : entity HeapSort_heapSortO_5
    port map
      (topLet_o => bodyVar_o
      ,eta1_i1  => s1_1);
end;
