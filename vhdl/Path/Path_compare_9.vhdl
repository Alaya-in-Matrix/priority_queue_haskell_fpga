-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_compare_9 is
  port(n1_i1     : in product1;
       n2_i2     : in product1;
       bodyVar_o : out unsigned(1 downto 0));
end;

architecture structural of Path_compare_9 is
  signal ds6_0      : unsigned(15 downto 0);
  signal ds5_1      : unsigned(15 downto 0);
  signal ds6_2      : unsigned(15 downto 0);
  signal ds5_3      : unsigned(15 downto 0);
  signal altLet_4   : unsigned(15 downto 0);
  signal altLet_5   : unsigned(15 downto 0);
  signal eta2_6     : unsigned(15 downto 0);
  signal eta3_7     : unsigned(15 downto 0);
  signal subjLet_8  : boolean;
  signal eta_9      : unsigned(15 downto 0);
  signal eta1_10    : unsigned(15 downto 0);
  signal altLet_11  : unsigned(1 downto 0);
  signal subjLet_12 : boolean;
  signal subjLet_13 : boolean;
  signal altLet_14  : unsigned(1 downto 0);
  signal subjLet_15 : boolean;
  signal bodyVar_16 : unsigned(1 downto 0);
begin
  ds6_0 <= n1_i1.product1_sel3;
  
  ds5_1 <= n1_i1.product1_sel2;
  
  ds6_2 <= n2_i2.product1_sel3;
  
  ds5_3 <= n2_i2.product1_sel2;
  
  altLet_4 <= ds5_1 + ds6_0;
  
  altLet_5 <= ds5_3 + ds6_2;
  
  eta2_6 <= ds5_1;
  
  eta3_7 <= ds5_3;
  
  subjLet_8 <= eta2_6 <= eta3_7;
  
  eta_9 <= altLet_4;
  
  eta1_10 <= altLet_5;
  
  with (subjLet_8) select
    altLet_11 <= to_unsigned(0
                            ,2) when (true),
                 to_unsigned(2,2) when others;
  
  subjLet_12 <= eta2_6 = eta3_7;
  
  subjLet_13 <= eta_9 <= eta1_10;
  
  with (subjLet_13) select
    altLet_14 <= to_unsigned(0
                            ,2) when (true),
                 to_unsigned(2,2) when others;
  
  subjLet_15 <= eta_9 = eta1_10;
  
  with (subjLet_12) select
    bodyVar_16 <= to_unsigned(1
                             ,2) when (true),
                  altLet_11 when others;
  
  with (subjLet_15) select
    bodyVar_o <= bodyVar_16 when (true),
                 altLet_14 when others;
end;
