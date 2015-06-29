-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_getNeighbor_4 is
  port(pTS_i1   : in unsigned(15 downto 0);
       pTS_i2   : in unsigned(15 downto 0);
       pTS_i3   : in unsigned(15 downto 0);
       topLet_o : out unsigned(15 downto 0));
end;

architecture structural of Path_getNeighbor_4 is
  signal altLet_0   : unsigned(15 downto 0);
  signal altLet_1   : unsigned(15 downto 0);
  signal altLet_2   : unsigned(15 downto 0);
  signal subjLet_3  : boolean;
  signal repANF_4   : unsigned(15 downto 0);
  signal altLet_5   : unsigned(15 downto 0);
  signal altLet_6   : unsigned(15 downto 0);
  signal altLet_7   : unsigned(15 downto 0);
  signal subjLet_8  : boolean;
  signal repANF_9   : unsigned(15 downto 0);
  signal altLet_10  : unsigned(15 downto 0);
  signal altLet_11  : unsigned(15 downto 0);
  signal altLet_12  : unsigned(15 downto 0);
  signal subjLet_13 : boolean;
  signal repANF_14  : unsigned(15 downto 0);
  signal altLet_15  : unsigned(15 downto 0);
  signal altLet_16  : unsigned(15 downto 0);
  signal subjLet_17 : boolean;
  signal repANF_18  : unsigned(15 downto 0);
  signal tmp_19     : boolean;
  signal tmp_22     : boolean;
  signal tmp_29     : boolean;
  signal tmp_37     : boolean;
begin
  tmp_19 <= unsigned'("0000") = unsigned'("0000");
  
  with (tmp_19) select
    topLet_o <= altLet_0 when (true),
                altLet_1 when others;
  
  with (subjLet_3) select
    altLet_0 <= altLet_2 when (true),
                pTS_i1 when others;
  
  tmp_22 <= unsigned'("0000") = unsigned'("0001");
  
  with (tmp_22) select
    altLet_1 <= altLet_5 when (true),
                altLet_6 when others;
  
  altLet_2 <= pTS_i1 + pTS_i2;
  
  subjLet_3 <= repANF_4 < pTS_i3;
  
  repANF_4 <= repANF_14 + unsigned'("0000000000000001");
  
  with (subjLet_8) select
    altLet_5 <= altLet_7 when (true),
                pTS_i1 when others;
  
  tmp_29 <= unsigned'("0000") = unsigned'("0010");
  
  with (tmp_29) select
    altLet_6 <= altLet_10 when (true),
                altLet_11 when others;
  
  altLet_7 <= pTS_i1 + unsigned'("0000000000000001");
  
  subjLet_8 <= repANF_9 < pTS_i2;
  
  repANF_9 <= repANF_18 + unsigned'("0000000000000001");
  
  with (subjLet_13) select
    altLet_10 <= altLet_12 when (true),
                 pTS_i1 when others;
  
  tmp_37 <= unsigned'("0000") = unsigned'("0011");
  
  with (tmp_37) select
    altLet_11 <= altLet_15 when (true),
                 pTS_i1 when others;
  
  altLet_12 <= pTS_i1 - pTS_i2;
  
  subjLet_13 <= repANF_14 >= unsigned'("0000000000000001");
  
  repANF_14 <= pTS_i1 / pTS_i2;
  
  with (subjLet_17) select
    altLet_15 <= altLet_16 when (true),
                 pTS_i1 when others;
  
  altLet_16 <= pTS_i1 - unsigned'("0000000000000001");
  
  subjLet_17 <= repANF_18 >= unsigned'("0000000000000001");
  
  repANF_18 <= pTS_i1 rem pTS_i2;
end;
