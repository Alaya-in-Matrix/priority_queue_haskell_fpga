-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HeapSort_types.all;

entity HeapSort_heapSortS_3 is
  port(eta_i1   : in product0;
       eta1_i2  : in product1;
       topLet_o : out product0);
end;

architecture structural of HeapSort_heapSortS_3 is
  signal altLet_0   : product0;
  signal altLet_1   : product0;
  signal altLet_2   : product0;
  signal ds2_3      : product2;
  signal altLet_4   : product0;
  signal altLet_5   : product0;
  signal ds4_6      : std_logic_vector(2 downto 0);
  signal altLet_7   : product0;
  signal vec1_8     : array_of_integer(0 to 5);
  signal ds1_9      : std_logic_vector(17 downto 0);
  signal altLet_10  : product0;
  signal ipv_11     : unsigned(1 downto 0);
  signal altLet_12  : product0;
  signal altLet_13  : product0;
  signal altLet_14  : product0;
  signal subjLet_15 : boolean;
  signal altLet_16  : product0;
  signal altLet_17  : product0;
  signal subjLet_18 : boolean;
  signal altLet_19  : product0;
  signal altLet_20  : product0;
  signal altLet_21  : product0;
  signal ds3_22     : std_logic_vector(160 downto 0);
  signal repANF_23  : std_logic_vector(17 downto 0);
  signal repANF_24  : std_logic_vector(17 downto 0);
  signal altLet_25  : product0;
  signal repANF_26  : array_of_integer(0 to 5);
  signal idx_27     : unsigned(15 downto 0);
  signal ds6_28     : unsigned(15 downto 0);
  signal ds5_29     : std_logic_vector(32 downto 0);
  signal repANF_30  : integer;
  signal repANF_31  : unsigned(15 downto 0);
  signal repANF_32  : unsigned(15 downto 0);
  signal repANF_33  : array_of_integer(0 to 5);
  signal repANF_34  : std_logic_vector(17 downto 0);
  signal v_35       : array_of_integer(0 to 4);
  signal repANF_36  : unsigned(15 downto 0);
  signal top_37     : integer;
  signal tmp_42     : unsigned(15 downto 0);
begin
  altLet_0 <= altLet_1;
  
  altLet_1 <= altLet_2;
  
  with (ds4_6(2 downto 2)) select
    altLet_2 <= altLet_5 when ("1"),
                altLet_4 when others;
  
  ds2_3 <= eta1_i2.product1_sel0;
  
  altLet_4 <= (product0_sel0 => vec1_8
              ,product0_sel1 => std_logic_vector'("10" & "0000000000000000"));
  
  with (ds1_9(17 downto 16)) select
    altLet_5 <= altLet_4 when ("10"),
                altLet_7 when others;
  
  ds4_6 <= ds2_3.product2_sel0;
  
  with (ipv_11) select
    altLet_7 <= altLet_10 when ("10"),
                eta_i1 when others;
  
  vec1_8 <= eta_i1.product0_sel0;
  
  ds1_9 <= eta_i1.product0_sel1;
  
  with (ds1_9(17 downto 16)) select
    altLet_10 <= altLet_14 when ("11"),
                 altLet_13 when ("01"),
                 altLet_12 when others;
  
  ipv_11 <= unsigned(ds4_6(1 downto 0));
  
  with (subjLet_15) select
    altLet_12 <= altLet_17 when (true),
                 altLet_16 when others;
  
  with (subjLet_18) select
    altLet_13 <= altLet_20 when (true),
                 altLet_19 when others;
  
  with (ds3_22(160 downto 160)) select
    altLet_14 <= altLet_21 when ("1"),
                 eta_i1 when others;
  
  subjLet_15 <= idx_27 >= repANF_32;
  
  altLet_16 <= (product0_sel0 => vec1_8
               ,product0_sel1 => repANF_23);
  
  altLet_17 <= (product0_sel0 => vec1_8
               ,product0_sel1 => repANF_24);
  
  subjLet_18 <= ds6_28 = unsigned'("0000000000000000");
  
  with (ds5_29(32 downto 32)) select
    altLet_19 <= altLet_25 when ("1"),
                 ((others => integer'high),(others => 'X')) when others;
  
  altLet_20 <= (product0_sel0 => vec1_8
               ,product0_sel1 => std_logic_vector'("11" & "0000000000000000"));
  
  tmp_42 <= unsigned'("0000000000000001");
  
  altLet_21 <= (product0_sel0 => repANF_26
               ,product0_sel1 => std_logic_vector'("00" & std_logic_vector(tmp_42)));
  
  ds3_22 <= eta1_i2.product1_sel1;
  
  repANF_23 <= std_logic_vector'("00" & std_logic_vector(repANF_31));
  
  repANF_24 <= std_logic_vector'("01" & std_logic_vector(repANF_32));
  
  altLet_25 <= (product0_sel0 => repANF_33
               ,product0_sel1 => repANF_34);
  
  repANF_26 <= array_of_integer'(integer'(0) & v_35);
  
  idx_27 <= unsigned(ds1_9(15 downto 0));
  
  ds6_28 <= unsigned(ds1_9(15 downto 0));
  
  ds5_29 <= ds2_3.product2_sel1;
  
  repANF_30 <= 6 - 1;
  
  repANF_31 <= idx_27 + unsigned'("0000000000000001");
  
  repANF_32 <= to_unsigned(repANF_30,16);
  
  HeapSort_zuzuzl_4_repANF_33 : entity HeapSort_zuzuzl_4
    port map
      (bodyVar_o => repANF_33
      ,eta_i1    => vec1_8
      ,eta_i2    => top_37);
  
  repANF_34 <= std_logic_vector'("01" & std_logic_vector(repANF_36));
  
  v_35 <= (to_integer(signed(ds3_22(31 downto 0)))
          ,to_integer(signed(ds3_22(63 downto 32)))
          ,to_integer(signed(ds3_22(95 downto 64)))
          ,to_integer(signed(ds3_22(127 downto 96)))
          ,to_integer(signed(ds3_22(159 downto 128))));
  
  repANF_36 <= ds6_28 - unsigned'("0000000000000001");
  
  top_37 <= to_integer(signed(ds5_29(31 downto 0)));
  
  topLet_o <= altLet_0;
end;
