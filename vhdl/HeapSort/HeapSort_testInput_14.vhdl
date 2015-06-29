-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HeapSort_types.all;

entity HeapSort_testInput_14 is
  port(-- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       topLet_o        : out std_logic_vector(160 downto 0));
end;

architecture structural of HeapSort_testInput_14 is
begin
  HeapSort_stimuliGeneratorzm_15_topLet_o : entity HeapSort_stimuliGeneratorzm_15
    port map
      (bodyVar_o       => topLet_o
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn);
end;
