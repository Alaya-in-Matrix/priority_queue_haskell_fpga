-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_getNeighbor_5 is
  port(idx1_i1      : in unsigned(15 downto 0);
       x1_i2        : in unsigned(15 downto 0);
       y1_i3        : in unsigned(15 downto 0);
       direction_i4 : in unsigned(3 downto 0);
       topLet_o     : out unsigned(15 downto 0));
end;

architecture structural of Path_getNeighbor_5 is
  signal altLet_0   : unsigned(15 downto 0);
  signal altLet_1   : unsigned(15 downto 0);
  signal subjLet_2  : boolean;
  signal altLet_3   : unsigned(15 downto 0);
  signal subjLet_4  : boolean;
  signal repANF_5   : unsigned(15 downto 0);
  signal altLet_6   : unsigned(15 downto 0);
  signal altLet_7   : unsigned(15 downto 0);
  signal subjLet_8  : boolean;
  signal altLet_9   : unsigned(15 downto 0);
  signal subjLet_10 : boolean;
  signal repANF_11  : unsigned(15 downto 0);
  signal altLet_12  : unsigned(15 downto 0);
  signal altLet_13  : unsigned(15 downto 0);
  signal subjLet_14 : boolean;
  signal altLet_15  : unsigned(15 downto 0);
  signal subjLet_16 : boolean;
  signal repANF_17  : unsigned(15 downto 0);
  signal altLet_18  : unsigned(15 downto 0);
  signal subjLet_19 : boolean;
  signal altLet_20  : unsigned(15 downto 0);
  signal subjLet_21 : boolean;
  signal repANF_22  : unsigned(15 downto 0);
begin
  with (subjLet_2) select
    topLet_o <= altLet_0 when (true),
                altLet_1 when others;
  
  with (subjLet_4) select
    altLet_0 <= altLet_3 when (true),
                idx1_i1 when others;
  
  with (subjLet_8) select
    altLet_1 <= altLet_6 when (true),
                altLet_7 when others;
  
  subjLet_2 <= direction_i4 = unsigned'("0000");
  
  altLet_3 <= idx1_i1 + x1_i2;
  
  subjLet_4 <= repANF_5 < y1_i3;
  
  repANF_5 <= repANF_17 + unsigned'("0000000000000001");
  
  with (subjLet_10) select
    altLet_6 <= altLet_9 when (true),
                idx1_i1 when others;
  
  with (subjLet_14) select
    altLet_7 <= altLet_12 when (true),
                altLet_13 when others;
  
  subjLet_8 <= direction_i4 = unsigned'("0001");
  
  altLet_9 <= idx1_i1 + unsigned'("0000000000000001");
  
  subjLet_10 <= repANF_11 < x1_i2;
  
  repANF_11 <= repANF_22 + unsigned'("0000000000000001");
  
  with (subjLet_16) select
    altLet_12 <= altLet_15 when (true),
                 idx1_i1 when others;
  
  with (subjLet_19) select
    altLet_13 <= altLet_18 when (true),
                 idx1_i1 when others;
  
  subjLet_14 <= direction_i4 = unsigned'("0010");
  
  altLet_15 <= idx1_i1 - x1_i2;
  
  subjLet_16 <= repANF_17 >= unsigned'("0000000000000001");
  
  repANF_17 <= idx1_i1 / x1_i2;
  
  with (subjLet_21) select
    altLet_18 <= altLet_20 when (true),
                 idx1_i1 when others;
  
  subjLet_19 <= direction_i4 = unsigned'("0011");
  
  altLet_20 <= idx1_i1 - unsigned'("0000000000000001");
  
  subjLet_21 <= repANF_22 >= unsigned'("0000000000000001");
  
  repANF_22 <= idx1_i1 rem x1_i2;
end;
