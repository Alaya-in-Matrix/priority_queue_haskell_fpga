-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HeapSort_types.all;

entity HeapSort_priorityQueueS_7 is
  port(eta_i1   : in product3;
       eta_i2   : in std_logic_vector(33 downto 0);
       topLet_o : out product3);
end;

architecture structural of HeapSort_priorityQueueS_7 is
  signal altLet_0 : product3;
  signal altLet_1 : product3;
  signal ds2_2    : std_logic_vector(2 downto 0);
  signal altLet_3 : product3;
  signal altLet_4 : product3;
  signal altLet_5 : product3;
  signal ds6_6    : unsigned(1 downto 0);
  signal altLet_7 : product3;
  signal altLet_8 : product3;
  signal val_9    : integer;
begin
  with (ds2_2(2 downto 2)) select
    altLet_0 <= altLet_1 when ("1"),
                eta_i1 when others;
  
  with (ds6_6) select
    altLet_1 <= altLet_5 when ("10"),
                altLet_4 when ("01"),
                altLet_3 when others;
  
  ds2_2 <= eta_i1.product3_sel0;
  
  HeapSort_processPush_8_altLet_3 : entity HeapSort_processPush_8
    port map
      (topLet_o => altLet_3
      ,eta_i1   => eta_i1);
  
  HeapSort_processPop_10_altLet_4 : entity HeapSort_processPop_10
    port map
      (topLet_o => altLet_4
      ,eta_i1   => eta_i1);
  
  with (eta_i2(33 downto 32)) select
    altLet_5 <= eta_i1 when ("10"),
                altLet_8 when ("01"),
                altLet_7 when others;
  
  ds6_6 <= unsigned(ds2_2(1 downto 0));
  
  HeapSort_initPush_12_altLet_7 : entity HeapSort_initPush_12
    port map
      (topLet_o => altLet_7
      ,eta_i1   => eta_i1
      ,eta_i2   => val_9);
  
  HeapSort_initPop_13_altLet_8 : entity HeapSort_initPop_13
    port map
      (topLet_o => altLet_8
      ,eta_i1   => eta_i1);
  
  val_9 <= to_integer(signed(eta_i2(31 downto 0)));
  
  topLet_o <= altLet_0;
end;
