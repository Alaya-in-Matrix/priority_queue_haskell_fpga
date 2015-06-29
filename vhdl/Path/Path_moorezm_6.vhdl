-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_moorezm_6 is
  port(eta_i1          : in std_logic_vector(66 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       altLet_o        : out product6);
end;

architecture structural of Path_moorezm_6 is
  signal subjLet_0 : boolean;
  signal altLet_1  : product6;
  signal altLet_2  : product6;
  signal s1_3      : product0;
  signal repANF_4  : std_logic_vector(65 downto 0);
  signal st_5      : std_logic_vector(2 downto 0);
  signal ds2_6     : unsigned(15 downto 0);
  signal repANF_7  : product0;
  signal repANF_8  : product1;
  signal ds4_9     : array_of_product1(0 to 999);
  signal tmp_12    : product0;
  signal tmp_29    : product1;
begin
  with (subjLet_0) select
    altLet_o <= altLet_2 when (true),
                altLet_1 when others;
  
  subjLet_0 <= ds2_6 = unsigned'("0000000000000000");
  
  altLet_1 <= (product6_sel0 => st_5
              ,product6_sel1 => repANF_4);
  
  altLet_2 <= (product6_sel0 => st_5
              ,product6_sel1 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000"));
  
  -- register begin
  register_Path_moorezm_6_n_26 : block
    signal n_27 : product0;
    signal n_28 : product0;
  begin
    n_27 <= (product0_sel0 => std_logic_vector'("1" & std_logic_vector(to_unsigned(2,2))),product0_sel1 => unsigned'("0000000000000000"),product0_sel2 => unsigned'("0000000000000000"),product0_sel3 => array_of_product1'(0 to (1000)-1 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => unsigned'("0000000000000000"),product1_sel4 => false)));
  
    process(system1000,system1000_rstn,n_27)
    begin
      if system1000_rstn = '0' then
        n_28 <= n_27;
      elsif rising_edge(system1000) then
        n_28 <= repANF_7;
      end if;
    end process;
  
    tmp_12 <= n_28;
  end block;
  -- register end
  
  s1_3 <= tmp_12;
  
  repANF_4 <= std_logic_vector'("1" & (std_logic_vector(repANF_8.product1_sel0)
                                       & std_logic_vector(repANF_8.product1_sel1)
                                       & std_logic_vector(repANF_8.product1_sel2)
                                       & std_logic_vector(repANF_8.product1_sel3)
                                       & toSLV(repANF_8.product1_sel4)));
  
  st_5 <= s1_3.product0_sel0;
  
  ds2_6 <= s1_3.product0_sel1;
  
  Path_priorityQueueS_7_repANF_7 : entity Path_priorityQueueS_7
    port map
      (topLet_o => repANF_7
      ,eta_i1   => s1_3
      ,eta_i2   => eta_i1);
  
  -- head begin
  head_n_30 : block
    signal n_31 : array_of_product1(0 to 999);
  begin
    n_31 <= ds4_9;
    tmp_29 <= n_31(0);
  end block;
  -- head end
  
  repANF_8 <= tmp_29;
  
  ds4_9 <= s1_3.product0_sel3;
end;
