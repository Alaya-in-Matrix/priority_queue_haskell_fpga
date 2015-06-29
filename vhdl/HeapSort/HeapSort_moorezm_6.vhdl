-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HeapSort_types.all;

entity HeapSort_moorezm_6 is
  port(eta_i1          : in std_logic_vector(33 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out product2);
end;

architecture structural of HeapSort_moorezm_6 is
  signal altLet_0  : product2;
  signal subjLet_1 : boolean;
  signal altLet_2  : product2;
  signal altLet_3  : product2;
  signal s1_4      : product3;
  signal repANF_5  : std_logic_vector(32 downto 0);
  signal st_6      : std_logic_vector(2 downto 0);
  signal ds1_7     : unsigned(15 downto 0);
  signal repANF_8  : product3;
  signal repANF_9  : integer;
  signal ds3_10    : array_of_integer(0 to 4);
  signal tmp_13    : product3;
  signal tmp_21    : integer;
begin
  bodyVar_o <= altLet_0;
  
  with (subjLet_1) select
    altLet_0 <= altLet_3 when (true),
                altLet_2 when others;
  
  subjLet_1 <= ds1_7 = unsigned'("0000000000000000");
  
  altLet_2 <= (product2_sel0 => st_6
              ,product2_sel1 => repANF_5);
  
  altLet_3 <= (product2_sel0 => st_6
              ,product2_sel1 => std_logic_vector'("0" & "00000000000000000000000000000000"));
  
  -- register begin
  register_HeapSort_moorezm_6_n_18 : block
    signal n_19 : product3;
    signal n_20 : product3;
  begin
    n_19 <= (product3_sel0 => std_logic_vector'("1" & std_logic_vector(to_unsigned(2,2))),product3_sel1 => unsigned'("0000000000000000"),product3_sel2 => unsigned'("0000000000000000"),product3_sel3 => array_of_integer'(0 to (5)-1 => 0));
  
    process(system1000,system1000_rstn,n_19)
    begin
      if system1000_rstn = '0' then
        n_20 <= n_19;
      elsif rising_edge(system1000) then
        n_20 <= repANF_8;
      end if;
    end process;
  
    tmp_13 <= n_20;
  end block;
  -- register end
  
  s1_4 <= tmp_13;
  
  repANF_5 <= std_logic_vector'("1" & std_logic_vector(to_signed(repANF_9
                                                                ,32)));
  
  st_6 <= s1_4.product3_sel0;
  
  ds1_7 <= s1_4.product3_sel1;
  
  HeapSort_priorityQueueS_7_repANF_8 : entity HeapSort_priorityQueueS_7
    port map
      (topLet_o => repANF_8
      ,eta_i1   => s1_4
      ,eta_i2   => eta_i1);
  
  -- head begin
  head_n_22 : block
    signal n_23 : array_of_integer(0 to 4);
  begin
    n_23 <= ds3_10;
    tmp_21 <= n_23(0);
  end block;
  -- head end
  
  repANF_9 <= tmp_21;
  
  ds3_10 <= s1_4.product3_sel3;
end;
