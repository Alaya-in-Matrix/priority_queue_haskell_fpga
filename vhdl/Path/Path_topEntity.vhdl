-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_topEntity is
  port(input_0         : in std_logic_vector(64 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       output_0        : out std_logic_vector(65 downto 0));
end;

architecture structural of Path_topEntity is
begin
  Path_topEntity_0_inst : entity Path_topEntity_0
    port map
      (pIn_i1          => input_0
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,bodyVar_o       => output_0);
end;
