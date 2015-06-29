-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_priorityQueueS_7 is
  port(eta_i1   : in product0;
       eta_i2   : in std_logic_vector(66 downto 0);
       topLet_o : out product0);
end;

architecture structural of Path_priorityQueueS_7 is
  signal altLet_0 : product0;
  signal altLet_1 : product0;
  signal ds2_2    : std_logic_vector(2 downto 0);
  signal altLet_3 : product0;
  signal altLet_4 : product0;
  signal altLet_5 : product0;
  signal ds6_6    : unsigned(1 downto 0);
  signal altLet_7 : product0;
  signal altLet_8 : product0;
  signal val_9    : product1;
begin
  with (ds2_2(2 downto 2)) select
    altLet_0 <= altLet_1 when ("1"),
                eta_i1 when others;
  
  with (ds6_6) select
    altLet_1 <= altLet_5 when ("10"),
                altLet_4 when ("01"),
                altLet_3 when others;
  
  ds2_2 <= eta_i1.product0_sel0;
  
  Path_processPush_8_altLet_3 : entity Path_processPush_8
    port map
      (topLet_o => altLet_3
      ,eta_i1   => eta_i1);
  
  Path_processPop_11_altLet_4 : entity Path_processPop_11
    port map
      (topLet_o => altLet_4
      ,eta_i1   => eta_i1);
  
  with (eta_i2(66 downto 65)) select
    altLet_5 <= eta_i1 when ("10"),
                altLet_8 when ("01"),
                altLet_7 when others;
  
  ds6_6 <= unsigned(ds2_2(1 downto 0));
  
  Path_initPush_13_altLet_7 : entity Path_initPush_13
    port map
      (topLet_o => altLet_7
      ,eta_i1   => eta_i1
      ,eta_i2   => val_9);
  
  Path_initPop_14_altLet_8 : entity Path_initPop_14
    port map
      (topLet_o => altLet_8
      ,eta_i1   => eta_i1);
  
  val_9 <= (product1_sel0 => unsigned(eta_i2(64 downto 49))
           ,product1_sel1 => unsigned(eta_i2(48 downto 33))
           ,product1_sel2 => unsigned(eta_i2(32 downto 17))
           ,product1_sel3 => unsigned(eta_i2(16 downto 1))
           ,product1_sel4 => fromSLV(eta_i2(0 downto 0)));
  
  topLet_o <= altLet_0;
end;
