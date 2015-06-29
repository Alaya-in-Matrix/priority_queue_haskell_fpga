-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_testbench is
  port(done : out boolean);
end;

architecture structural of Path_testbench is
  signal finished        : boolean;
  signal system1000      : std_logic;
  signal system1000_rstn : std_logic;
  signal pIn_i1          : std_logic_vector(64 downto 0);
  signal bodyVar_o       : std_logic_vector(65 downto 0);
begin
  done <= finished;
  
  -- pragma translate_off
  process is
  begin
    system1000 <= '0';
    wait for 2 ns;
    while (not finished) loop
      system1000 <= not system1000;
      wait for 500 ns;
      system1000 <= not system1000;
      wait for 500 ns;
    end loop;
    wait;
  end process;
  -- pragma translate_on
  
  -- pragma translate_off
  system1000_rstn <= '0',
             '1' after 1 ns;
  -- pragma translate_on
  
  totest : entity Path_topEntity_0
    port map
      (system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,pIn_i1          => pIn_i1
      ,bodyVar_o       => bodyVar_o);
  
  stimuli : entity Path_testInput_15
    port map
      (topLet_o => pIn_i1);
  
  finished <=
  -- pragma translate_off
              false,
  -- pragma translate_on
              true
  -- pragma translate_off
              after 100 ns
  -- pragma translate_on
              ;
end;
