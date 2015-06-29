-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Path_types.all;

entity Path_aStarCtrl_2 is
  port(eta_i1   : in product8;
       eta_i2   : in product5;
       topLet_o : out product7);
end;

architecture structural of Path_aStarCtrl_2 is
  signal altLet_0    : product7;
  signal altLet_1    : product7;
  signal altLet_2    : product7;
  signal ds5_3       : std_logic_vector(4 downto 0);
  signal altLet_4    : product7;
  signal altLet_5    : product7;
  signal ds9_6       : product6;
  signal altLet_7    : product7;
  signal altLet_8    : product7;
  signal ds12_9      : std_logic_vector(2 downto 0);
  signal altLet_10   : product7;
  signal altLet_11   : product7;
  signal altLet_12   : product7;
  signal ds14_13     : unsigned(0 downto 0);
  signal subjLet_14  : boolean;
  signal altLet_15   : product7;
  signal bodyVar_16  : product7;
  signal altLet_17   : product7;
  signal ipv_18      : unsigned(1 downto 0);
  signal ds10_19     : std_logic_vector(64 downto 0);
  signal altLet_20   : product7;
  signal altLet_21   : product7;
  signal repANF_22   : product8;
  signal repANF_23   : product4;
  signal altLet_24   : product7;
  signal ds13_25     : std_logic_vector(65 downto 0);
  signal ds3_26      : unsigned(3 downto 0);
  signal subjLet_27  : boolean;
  signal altLet_28   : product7;
  signal repANF_29   : product8;
  signal repANF_30   : product4;
  signal repANF_31   : std_logic_vector(66 downto 0);
  signal newRv_32    : product1;
  signal a_33        : unsigned(15 downto 0);
  signal altLet_34   : product7;
  signal u_35        : product1;
  signal ds11_36     : product1;
  signal ds4_37      : product9;
  signal repANF_38   : unsigned(3 downto 0);
  signal repANF_39   : array_of_product1(0 to 3);
  signal repANF_40   : product8;
  signal altLet_41   : product7;
  signal repANF_42   : unsigned(15 downto 0);
  signal ipv1_43     : product9;
  signal a1_44       : boolean;
  signal altLet_45   : product7;
  signal ds6_46      : product1;
  signal ds8_47      : unsigned(1 downto 0);
  signal bodyVar_48  : product7;
  signal altLet_49   : product7;
  signal ds3_50      : unsigned(15 downto 0);
  signal subjLet_51  : boolean;
  signal altLet_52   : product7;
  signal altLet_53   : product7;
  signal ds7_54      : array_of_product1(0 to 3);
  signal repANF_55   : unsigned(1 downto 0);
  signal ds5_56      : unsigned(15 downto 0);
  signal wild9_57    : product1;
  signal altLet_58   : product7;
  signal altLet_59   : product7;
  signal altLet_60   : product7;
  signal repANF_61   : product8;
  signal repANF_62   : product4;
  signal ds5_63      : unsigned(15 downto 0);
  signal ds7_64      : boolean;
  signal repANF_65   : product8;
  signal repANF_66   : product4;
  signal repANF_67   : product8;
  signal repANF_68   : product4;
  signal ds6_69      : unsigned(15 downto 0);
  signal ds3_70      : unsigned(15 downto 0);
  signal ds3_71      : unsigned(15 downto 0);
  signal ds3_72      : unsigned(15 downto 0);
  signal ds4_73      : unsigned(15 downto 0);
  signal repANF_74   : std_logic_vector(65 downto 0);
  signal ds4_75      : unsigned(15 downto 0);
  signal zsR_76      : array_of_product1(0 to 3);
  signal repANF_77   : product8;
  signal repANF_78   : product4;
  signal altLet_79   : product7;
  signal altLet_80   : product7;
  signal altLet_81   : product7;
  signal bodyVar_82  : product4;
  signal a_83        : array_of_product1(0 to 3);
  signal repANF_84   : unsigned(15 downto 0);
  signal ds22_85     : unsigned(15 downto 0);
  signal ds24_86     : boolean;
  signal repANF_87   : array_of_product1(0 to 0);
  signal repANF_88   : unsigned(15 downto 0);
  signal altLet_89   : product7;
  signal altLet_90   : product7;
  signal altLet_91   : product4;
  signal subjLet_92  : product3;
  signal ds23_93     : unsigned(15 downto 0);
  signal ds25_94     : boolean;
  signal ds20_95     : unsigned(15 downto 0);
  signal ds5_96      : unsigned(15 downto 0);
  signal repANF_97   : unsigned(15 downto 0);
  signal repANF_98   : unsigned(15 downto 0);
  signal repANF_99   : unsigned(15 downto 0);
  signal repANF_100  : product8;
  signal repANF_101  : product4;
  signal subjLet_102 : boolean;
  signal altLet_103  : product7;
  signal altLet_104  : product7;
  signal subjLet_105 : boolean;
  signal altLet_106  : product4;
  signal repANF_107  : array_of_product1(0 to 4);
  signal ds21_108    : unsigned(15 downto 0);
  signal bodyVar_109 : product4;
  signal repANF_110  : product4;
  signal repANF_111  : product4;
  signal bodyVar_112 : product4;
  signal altLet_113  : product4;
  signal wild10_114  : product1;
  signal repANF_115  : std_logic_vector(66 downto 0);
  signal uv_116      : product1;
  signal subjLet_117 : boolean;
  signal altLet_118  : product4;
  signal repANF_119  : integer;
  signal repANF_120  : unsigned(15 downto 0);
  signal bodyVar_121 : product4;
  signal wild1_122   : integer;
  signal repANF_123  : std_logic_vector(66 downto 0);
  signal uv_124      : product1;
  signal repANF_125  : integer;
  signal tmp_364     : product1;
  signal tmp_485     : product3;
  signal tmp_536     : product1;
begin
  with (ds5_3(4 downto 2)) select
    altLet_0 <= altLet_2 when ("111"),
                altLet_1 when others;
  
  altLet_1 <= altLet_4;
  
  altLet_2 <= (product7_sel0 => eta_i1
              ,product7_sel1 => (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
                                ,product4_sel1 => unsigned'("0000000000000000")
                                ,product4_sel2 => unsigned'("0000000000000000")
                                ,product4_sel3 => false
                                ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                  ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                  ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                                  ,product1_sel3 => unsigned'("0000000000000000")
                                                  ,product1_sel4 => false)
                                ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000")));
  
  ds5_3 <= eta_i1.product8_sel2;
  
  altLet_4 <= altLet_5;
  
  with (ds12_9(2 downto 2)) select
    altLet_5 <= altLet_8 when ("1"),
                altLet_7 when others;
  
  ds9_6 <= eta_i2.product5_sel0;
  
  with (ds14_13) select
    altLet_7 <= (product7_sel0 => (product8_sel0 => unsigned'(4-1 downto 0 => '0')
                                  ,product8_sel1 => (product9_sel0 => unsigned'("0000000000000000")
                                                    ,product9_sel1 => unsigned'("0000000000000000")
                                                    ,product9_sel2 => unsigned'("0000000000000000")
                                                    ,product9_sel3 => unsigned'("0000000000000000"))
                                  ,product8_sel2 => std_logic_vector'("111" & std_logic_vector(to_unsigned(1
                                                                                                          ,2)))
                                  ,product8_sel3 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                    ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                    ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                                    ,product1_sel3 => unsigned'("0000000000000000")
                                                    ,product1_sel4 => false)
                                  ,product8_sel4 => array_of_product1'(0 to (4)-1 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => unsigned'("0000000000000000"),product1_sel4 => false))
                                  ,product8_sel5 => unsigned'(2-1 downto 0 => '0'))
                ,product7_sel1 => (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
                                  ,product4_sel1 => unsigned'("0000000000000000")
                                  ,product4_sel2 => unsigned'("0000000000000000")
                                  ,product4_sel3 => false
                                  ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                    ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                    ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                                    ,product1_sel3 => unsigned'("0000000000000000")
                                                    ,product1_sel4 => false)
                                  ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000"))) when ("1"),
                (product7_sel0 => (product8_sel0 => unsigned'(4-1 downto 0 => '0')
                                  ,product8_sel1 => (product9_sel0 => unsigned'("0000000000000000")
                                                    ,product9_sel1 => unsigned'("0000000000000000")
                                                    ,product9_sel2 => unsigned'("0000000000000000")
                                                    ,product9_sel3 => unsigned'("0000000000000000"))
                                  ,product8_sel2 => std_logic_vector'("111" & std_logic_vector(to_unsigned(0
                                                                                                          ,2)))
                                  ,product8_sel3 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                    ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                    ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                                    ,product1_sel3 => unsigned'("0000000000000000")
                                                    ,product1_sel4 => false)
                                  ,product8_sel4 => array_of_product1'(0 to (4)-1 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => unsigned'("0000000000000000"),product1_sel4 => false))
                                  ,product8_sel5 => unsigned'(2-1 downto 0 => '0'))
                ,product7_sel1 => (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
                                  ,product4_sel1 => unsigned'("0000000000000000")
                                  ,product4_sel2 => unsigned'("0000000000000000")
                                  ,product4_sel3 => false
                                  ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                    ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                    ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                                    ,product1_sel3 => unsigned'("0000000000000000")
                                                    ,product1_sel4 => false)
                                  ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000"))) when others;
  
  with (ds5_3(4 downto 2)) select
    altLet_8 <= altLet_12 when ("011"),
                altLet_11 when ("001"),
                altLet_10 when ("000"),
                altLet_20 when others;
  
  ds12_9 <= ds9_6.product6_sel0;
  
  with (ds10_19(64 downto 64)) select
    altLet_10 <= altLet_15 when ("1"),
                 altLet_2 when others;
  
  with (ipv_18) select
    altLet_11 <= bodyVar_16 when ("10"),
                 altLet_20 when others;
  
  with (ipv_18) select
    altLet_12 <= altLet_17 when ("10"),
                 altLet_20 when ("01"),
                 altLet_2 when others;
  
  ds14_13 <= unsigned(ds12_9(1 downto 1));
  
  subjLet_14 <= ds3_26 = unsigned'("0011");
  
  with (ipv_18) select
    altLet_15 <= altLet_21 when ("10"),
                 altLet_20 when others;
  
  bodyVar_16 <= (product7_sel0 => repANF_22
                ,product7_sel1 => repANF_23);
  
  with (ds13_25(65 downto 65)) select
    altLet_17 <= altLet_24 when ("1"),
                 (product7_sel0 => (product8_sel0 => unsigned'(4-1 downto 0 => '0')
                                   ,product8_sel1 => (product9_sel0 => unsigned'("0000000000000000")
                                                     ,product9_sel1 => unsigned'("0000000000000000")
                                                     ,product9_sel2 => unsigned'("0000000000000000")
                                                     ,product9_sel3 => unsigned'("0000000000000000"))
                                   ,product8_sel2 => std_logic_vector'("111" & std_logic_vector(to_unsigned(1
                                                                                                           ,2)))
                                   ,product8_sel3 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                     ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                     ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                                     ,product1_sel3 => unsigned'("0000000000000000")
                                                     ,product1_sel4 => false)
                                   ,product8_sel4 => array_of_product1'(0 to (4)-1 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => unsigned'("0000000000000000"),product1_sel4 => false))
                                   ,product8_sel5 => unsigned'(2-1 downto 0 => '0'))
                 ,product7_sel1 => (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
                                   ,product4_sel1 => unsigned'("0000000000000000")
                                   ,product4_sel2 => unsigned'("0000000000000000")
                                   ,product4_sel3 => false
                                   ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                     ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                     ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                                     ,product1_sel3 => unsigned'("0000000000000000")
                                                     ,product1_sel4 => false)
                                   ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000"))) when others;
  
  ipv_18 <= unsigned(ds12_9(1 downto 0));
  
  ds10_19 <= eta_i2.product5_sel1;
  
  with (subjLet_14) select
    altLet_20 <= altLet_28 when (true),
                 altLet_49 when others;
  
  altLet_21 <= (product7_sel0 => repANF_29
               ,product7_sel1 => repANF_30);
  
  repANF_22 <= (product8_sel0 => unsigned'(4-1 downto 0 => '0')
               ,product8_sel1 => ds4_37
               ,product8_sel2 => std_logic_vector'("011" & "00")
               ,product8_sel3 => newRv_32
               ,product8_sel4 => array_of_product1'(0 to (4)-1 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => unsigned'("0000000000000000"),product1_sel4 => false))
               ,product8_sel5 => unsigned'(2-1 downto 0 => '0'));
  
  repANF_23 <= (product4_sel0 => repANF_31
               ,product4_sel1 => unsigned'(16-1 downto 0 => '0')
               ,product4_sel2 => a_33
               ,product4_sel3 => true
               ,product4_sel4 => newRv_32
               ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000"));
  
  altLet_24 <= altLet_34;
  
  ds13_25 <= ds9_6.product6_sel1;
  
  ds3_26 <= eta_i1.product8_sel0;
  
  subjLet_27 <= ds8_47 = unsigned'("11");
  
  with (ds5_3(4 downto 2)) select
    altLet_28 <= altLet_41 when ("100"),
                 altLet_49 when others;
  
  repANF_29 <= (product8_sel0 => unsigned'(4-1 downto 0 => '0')
               ,product8_sel1 => ipv1_43
               ,product8_sel2 => std_logic_vector'("001" & "00")
               ,product8_sel3 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                 ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                 ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                 ,product1_sel3 => unsigned'("0000000000000000")
                                 ,product1_sel4 => false)
               ,product8_sel4 => array_of_product1'(0 to (4)-1 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => unsigned'("0000000000000000"),product1_sel4 => false))
               ,product8_sel5 => unsigned'(2-1 downto 0 => '0'));
  
  repANF_30 <= (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
               ,product4_sel1 => repANF_42
               ,product4_sel2 => unsigned'(16-1 downto 0 => '0')
               ,product4_sel3 => false
               ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                 ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                 ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                 ,product1_sel3 => unsigned'("0000000000000000")
                                 ,product1_sel4 => false)
               ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000"));
  
  repANF_31 <= std_logic_vector'("00" & (std_logic_vector(newRv_32.product1_sel0)
                                         & std_logic_vector(newRv_32.product1_sel1)
                                         & std_logic_vector(newRv_32.product1_sel2)
                                         & std_logic_vector(newRv_32.product1_sel3)
                                         & toSLV(newRv_32.product1_sel4)));
  
  newRv_32 <= (product1_sel0 => a_33
              ,product1_sel1 => a_33
              ,product1_sel2 => unsigned'("0000000000000000")
              ,product1_sel3 => unsigned'("0000000000000000")
              ,product1_sel4 => a1_44);
  
  a_33 <= ds3_50;
  
  altLet_34 <= altLet_45;
  
  u_35 <= (product1_sel0 => unsigned(ds13_25(64 downto 49))
          ,product1_sel1 => unsigned(ds13_25(48 downto 33))
          ,product1_sel2 => unsigned(ds13_25(32 downto 17))
          ,product1_sel3 => unsigned(ds13_25(16 downto 1))
          ,product1_sel4 => fromSLV(ds13_25(0 downto 0)));
  
  ds11_36 <= eta_i2.product5_sel2;
  
  ds4_37 <= eta_i1.product8_sel1;
  
  repANF_38 <= ds3_26 + unsigned'("0001");
  
  Path_zuzuzl_3_repANF_39 : entity Path_zuzuzl_3
    port map
      (bodyVar_o => repANF_39
      ,eta_i1    => ds7_54
      ,eta_i2    => ds11_36);
  
  repANF_40 <= (product8_sel0 => unsigned'(4-1 downto 0 => '0')
               ,product8_sel1 => ds4_37
               ,product8_sel2 => std_logic_vector'("011" & "00")
               ,product8_sel3 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                 ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                 ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                 ,product1_sel3 => unsigned'("0000000000000000")
                                 ,product1_sel4 => false)
               ,product8_sel4 => array_of_product1'(0 to (4)-1 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => unsigned'("0000000000000000"),product1_sel4 => false))
               ,product8_sel5 => unsigned'(2-1 downto 0 => '0'));
  
  with (ipv_18) select
    altLet_41 <= bodyVar_48 when ("10"),
                 altLet_2 when ("01"),
                 altLet_49 when others;
  
  repANF_42 <= ds5_63;
  
  ipv1_43 <= (product9_sel0 => unsigned(ds10_19(63 downto 48))
             ,product9_sel1 => unsigned(ds10_19(47 downto 32))
             ,product9_sel2 => unsigned(ds10_19(31 downto 16))
             ,product9_sel3 => unsigned(ds10_19(15 downto 0)));
  
  a1_44 <= ds7_64;
  
  with (subjLet_51) select
    altLet_45 <= altLet_53 when (true),
                 altLet_52 when others;
  
  ds6_46 <= eta_i1.product8_sel3;
  
  ds8_47 <= eta_i1.product8_sel5;
  
  bodyVar_48 <= (product7_sel0 => repANF_61
                ,product7_sel1 => repANF_62);
  
  with (ds5_3(4 downto 2)) select
    altLet_49 <= altLet_60 when ("110"),
                 altLet_59 when ("101"),
                 altLet_58 when ("100"),
                 (product7_sel0 => (product8_sel0 => unsigned'(4-1 downto 0 => '0')
                                   ,product8_sel1 => (product9_sel0 => unsigned'("0000000000000000")
                                                     ,product9_sel1 => unsigned'("0000000000000000")
                                                     ,product9_sel2 => unsigned'("0000000000000000")
                                                     ,product9_sel3 => unsigned'("0000000000000000"))
                                   ,product8_sel2 => std_logic_vector'("111" & std_logic_vector(to_unsigned(2
                                                                                                           ,2)))
                                   ,product8_sel3 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                     ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                     ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                                     ,product1_sel3 => unsigned'("0000000000000000")
                                                     ,product1_sel4 => false)
                                   ,product8_sel4 => array_of_product1'(0 to (4)-1 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => unsigned'("0000000000000000"),product1_sel4 => false))
                                   ,product8_sel5 => unsigned'(2-1 downto 0 => '0'))
                 ,product7_sel1 => (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
                                   ,product4_sel1 => unsigned'("0000000000000000")
                                   ,product4_sel2 => unsigned'("0000000000000000")
                                   ,product4_sel3 => false
                                   ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                     ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                     ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                                     ,product1_sel3 => unsigned'("0000000000000000")
                                                     ,product1_sel4 => false)
                                   ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000"))) when others;
  
  ds3_50 <= ds11_36.product1_sel0;
  
  subjLet_51 <= ds3_70 = ds6_69;
  
  altLet_52 <= (product7_sel0 => repANF_65
               ,product7_sel1 => repANF_66);
  
  altLet_53 <= (product7_sel0 => repANF_67
               ,product7_sel1 => repANF_68);
  
  ds7_54 <= eta_i1.product8_sel4;
  
  repANF_55 <= ds8_47 + unsigned'("01");
  
  ds5_56 <= ds4_37.product9_sel2;
  
  -- head begin
  head_n_365 : block
    signal n_366 : array_of_product1(0 to 3);
  begin
    n_366 <= a_83;
    tmp_364 <= n_366(0);
  end block;
  -- head end
  
  wild9_57 <= tmp_364;
  
  altLet_58 <= (product7_sel0 => repANF_77
               ,product7_sel1 => repANF_78);
  
  with (subjLet_27) select
    altLet_59 <= altLet_80 when (true),
                 altLet_79 when others;
  
  altLet_60 <= altLet_81;
  
  repANF_61 <= (product8_sel0 => unsigned'(4-1 downto 0 => '0')
               ,product8_sel1 => ds4_37
               ,product8_sel2 => std_logic_vector'("101" & "00")
               ,product8_sel3 => ds6_46
               ,product8_sel4 => a_83
               ,product8_sel5 => unsigned'("00"));
  
  repANF_62 <= bodyVar_82;
  
  ds5_63 <= ipv1_43.product9_sel2;
  
  ds7_64 <= ds11_36.product1_sel4;
  
  repANF_65 <= (product8_sel0 => unsigned'("0000")
               ,product8_sel1 => ds4_37
               ,product8_sel2 => std_logic_vector'("100" & "00")
               ,product8_sel3 => u_35
               ,product8_sel4 => array_of_product1'(0 to (4)-1 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => unsigned'("0000000000000000"),product1_sel4 => false))
               ,product8_sel5 => unsigned'(2-1 downto 0 => '0'));
  
  repANF_66 <= (product4_sel0 => std_logic_vector'("01" & "00000000000000000000000000000000000000000000000000000000000000000")
               ,product4_sel1 => repANF_84
               ,product4_sel2 => unsigned'(16-1 downto 0 => '0')
               ,product4_sel3 => false
               ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                 ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                 ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                 ,product1_sel3 => unsigned'("0000000000000000")
                                 ,product1_sel4 => false)
               ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000"));
  
  repANF_67 <= (product8_sel0 => unsigned'(4-1 downto 0 => '0')
               ,product8_sel1 => ds4_37
               ,product8_sel2 => std_logic_vector'("110" & "00")
               ,product8_sel3 => u_35
               ,product8_sel4 => array_of_product1'(0 to (4)-1 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => unsigned'("0000000000000000"),product1_sel4 => false))
               ,product8_sel5 => unsigned'(2-1 downto 0 => '0'));
  
  repANF_68 <= (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
               ,product4_sel1 => ds6_69
               ,product4_sel2 => unsigned'(16-1 downto 0 => '0')
               ,product4_sel3 => false
               ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                 ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                 ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                 ,product1_sel3 => unsigned'("0000000000000000")
                                 ,product1_sel4 => false)
               ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000"));
  
  ds6_69 <= ds4_37.product9_sel3;
  
  ds3_70 <= u_35.product1_sel0;
  
  ds3_71 <= ds6_46.product1_sel0;
  
  ds3_72 <= ds4_37.product9_sel0;
  
  ds4_73 <= ds4_37.product9_sel1;
  
  repANF_74 <= std_logic_vector'("1" & (std_logic_vector(ds11_36.product1_sel0)
                                        & std_logic_vector(ds11_36.product1_sel1)
                                        & std_logic_vector(ds11_36.product1_sel2)
                                        & std_logic_vector(ds11_36.product1_sel3)
                                        & toSLV(ds11_36.product1_sel4)));
  
  ds4_75 <= ds11_36.product1_sel1;
  
  zsR_76 <= subjLet_92.product3_sel1;
  
  repANF_77 <= (product8_sel0 => repANF_38
               ,product8_sel1 => ds4_37
               ,product8_sel2 => std_logic_vector'("100" & "00")
               ,product8_sel3 => ds6_46
               ,product8_sel4 => repANF_39
               ,product8_sel5 => unsigned'(2-1 downto 0 => '0'));
  
  repANF_78 <= (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
               ,product4_sel1 => repANF_88
               ,product4_sel2 => unsigned'(16-1 downto 0 => '0')
               ,product4_sel3 => false
               ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                 ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                 ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                 ,product1_sel3 => unsigned'("0000000000000000")
                                 ,product1_sel4 => false)
               ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000"));
  
  with (ipv_18) select
    altLet_79 <= altLet_89 when ("10"),
                 (product7_sel0 => (product8_sel0 => unsigned'(4-1 downto 0 => '0')
                                   ,product8_sel1 => (product9_sel0 => unsigned'("0000000000000000")
                                                     ,product9_sel1 => unsigned'("0000000000000000")
                                                     ,product9_sel2 => unsigned'("0000000000000000")
                                                     ,product9_sel3 => unsigned'("0000000000000000"))
                                   ,product8_sel2 => std_logic_vector'("111" & std_logic_vector(to_unsigned(2
                                                                                                           ,2)))
                                   ,product8_sel3 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                     ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                     ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                                     ,product1_sel3 => unsigned'("0000000000000000")
                                                     ,product1_sel4 => false)
                                   ,product8_sel4 => array_of_product1'(0 to (4)-1 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001"),product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1),product1_sel3 => unsigned'("0000000000000000"),product1_sel4 => false))
                                   ,product8_sel5 => unsigned'(2-1 downto 0 => '0'))
                 ,product7_sel1 => (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
                                   ,product4_sel1 => unsigned'("0000000000000000")
                                   ,product4_sel2 => unsigned'("0000000000000000")
                                   ,product4_sel3 => false
                                   ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                     ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                     ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                                     ,product1_sel3 => unsigned'("0000000000000000")
                                                     ,product1_sel4 => false)
                                   ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000"))) when ("01"),
                 altLet_2 when others;
  
  altLet_80 <= (product7_sel0 => repANF_40
               ,product7_sel1 => (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
                                 ,product4_sel1 => unsigned'("0000000000000000")
                                 ,product4_sel2 => unsigned'("0000000000000000")
                                 ,product4_sel3 => false
                                 ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                   ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                                   ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                                   ,product1_sel3 => unsigned'("0000000000000000")
                                                   ,product1_sel4 => false)
                                 ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000")));
  
  altLet_81 <= altLet_90;
  
  bodyVar_82 <= altLet_91;
  
  a_83 <= zsR_76;
  
  Path_getNeighbor_4_repANF_84 : entity Path_getNeighbor_4
    port map
      (topLet_o => repANF_84
      ,pTS_i1   => ds3_70
      ,pTS_i2   => ds3_72
      ,pTS_i3   => ds4_73);
  
  ds22_85 <= wild9_57.product1_sel2;
  
  ds24_86 <= wild9_57.product1_sel4;
  
  repANF_87 <= array_of_product1'(0 => ds11_36);
  
  Path_getNeighbor_5_repANF_88 : entity Path_getNeighbor_5
    port map
      (topLet_o     => repANF_88
      ,idx1_i1      => repANF_97
      ,x1_i2        => repANF_98
      ,y1_i3        => repANF_99
      ,direction_i4 => repANF_38);
  
  altLet_89 <= (product7_sel0 => repANF_100
               ,product7_sel1 => repANF_101);
  
  with (subjLet_102) select
    altLet_90 <= altLet_104 when (true),
                 altLet_103 when others;
  
  with (subjLet_105) select
    altLet_91 <= altLet_106 when (true),
                 (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
                 ,product4_sel1 => unsigned'(16-1 downto 0 => '0')
                 ,product4_sel2 => unsigned'(16-1 downto 0 => '0')
                 ,product4_sel3 => false
                 ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                   ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                   ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                   ,product1_sel3 => unsigned'("0000000000000000")
                                   ,product1_sel4 => false)
                 ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000")) when others;
  
  -- sliptAt begin
  splitAt_n_487 : block
    signal n_488 : array_of_product1(0 to 4);
  begin
    n_488 <= repANF_107;
    tmp_485 <= (n_488(tmp_485.product3_sel0'left to tmp_485.product3_sel0'right)
               ,n_488(tmp_485.product3_sel1'left + tmp_485.product3_sel0'length to tmp_485.product3_sel1'right + tmp_485.product3_sel0'length));
  end block;
  -- splitAt end
  
  subjLet_92 <= tmp_485;
  
  ds23_93 <= wild10_114.product1_sel2;
  
  ds25_94 <= wild10_114.product1_sel4;
  
  ds20_95 <= wild9_57.product1_sel0;
  
  ds5_96 <= ds6_46.product1_sel2;
  
  repANF_97 <= ds3_71;
  
  repANF_98 <= ds3_72;
  
  repANF_99 <= ds4_73;
  
  repANF_100 <= (product8_sel0 => unsigned'(4-1 downto 0 => '0')
                ,product8_sel1 => ds4_37
                ,product8_sel2 => std_logic_vector'("101" & "00")
                ,product8_sel3 => ds6_46
                ,product8_sel4 => ds7_54
                ,product8_sel5 => repANF_55);
  
  repANF_101 <= bodyVar_109;
  
  subjLet_102 <= ds3_50 = ds5_56;
  
  altLet_103 <= (product7_sel0 => eta_i1
                ,product7_sel1 => repANF_110);
  
  altLet_104 <= (product7_sel0 => eta_i1
                ,product7_sel1 => repANF_111);
  
  subjLet_105 <= repANF_120 < ds22_85;
  
  with (ds24_86) select
    altLet_106 <= (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
                  ,product4_sel1 => unsigned'(16-1 downto 0 => '0')
                  ,product4_sel2 => unsigned'(16-1 downto 0 => '0')
                  ,product4_sel3 => false
                  ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                    ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                    ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                    ,product1_sel3 => unsigned'("0000000000000000")
                                    ,product1_sel4 => false)
                  ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000")) when (true),
                  bodyVar_112 when others;
  
  repANF_107 <= array_of_product1'(ds7_54) & array_of_product1'(repANF_87);
  
  ds21_108 <= wild10_114.product1_sel0;
  
  bodyVar_109 <= altLet_113;
  
  repANF_110 <= (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
                ,product4_sel1 => ds4_75
                ,product4_sel2 => unsigned'(16-1 downto 0 => '0')
                ,product4_sel3 => false
                ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                  ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                  ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                  ,product1_sel3 => unsigned'("0000000000000000")
                                  ,product1_sel4 => false)
                ,product4_sel5 => repANF_74);
  
  repANF_111 <= (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
                ,product4_sel1 => ds6_69
                ,product4_sel2 => unsigned'(16-1 downto 0 => '0')
                ,product4_sel3 => false
                ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                  ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                  ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                  ,product1_sel3 => unsigned'("0000000000000000")
                                  ,product1_sel4 => false)
                ,product4_sel5 => repANF_74);
  
  bodyVar_112 <= (product4_sel0 => repANF_115
                 ,product4_sel1 => unsigned'(16-1 downto 0 => '0')
                 ,product4_sel2 => ds20_95
                 ,product4_sel3 => true
                 ,product4_sel4 => uv_116
                 ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000"));
  
  with (subjLet_117) select
    altLet_113 <= altLet_118 when (true),
                  (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
                  ,product4_sel1 => unsigned'(16-1 downto 0 => '0')
                  ,product4_sel2 => unsigned'(16-1 downto 0 => '0')
                  ,product4_sel3 => false
                  ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                    ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                    ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                    ,product1_sel3 => unsigned'("0000000000000000")
                                    ,product1_sel4 => false)
                  ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000")) when others;
  
  -- index begin
  indexVec_n_537 : block
    signal vec       : array_of_product1(0 to 3);
    signal vec_index : integer range 0 to 4-1;
  begin
    vec <= ds7_54;
  
    vec_index <= repANF_119
    -- pragma translate_off
                 mod 4
    -- pragma translate_on
                 ;
  
    tmp_536 <= vec(vec_index);
  end block;
  -- index end
  
  wild10_114 <= tmp_536;
  
  repANF_115 <= std_logic_vector'("00" & (std_logic_vector(uv_116.product1_sel0)
                                          & std_logic_vector(uv_116.product1_sel1)
                                          & std_logic_vector(uv_116.product1_sel2)
                                          & std_logic_vector(uv_116.product1_sel3)
                                          & toSLV(uv_116.product1_sel4)));
  
  uv_116 <= (product1_sel0 => ds20_95
            ,product1_sel1 => ds3_71
            ,product1_sel2 => repANF_120
            ,product1_sel3 => unsigned'("0000000000000000")
            ,product1_sel4 => false);
  
  subjLet_117 <= repANF_120 < ds23_93;
  
  with (ds25_94) select
    altLet_118 <= (product4_sel0 => std_logic_vector'("10" & "00000000000000000000000000000000000000000000000000000000000000000")
                  ,product4_sel1 => unsigned'(16-1 downto 0 => '0')
                  ,product4_sel2 => unsigned'(16-1 downto 0 => '0')
                  ,product4_sel3 => false
                  ,product4_sel4 => (product1_sel0 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                    ,product1_sel1 => (unsigned'(16-1 downto 0 => '1')) - unsigned'("0000000000000001")
                                    ,product1_sel2 => shift_right((unsigned'(16-1 downto 0 => '1')),1)
                                    ,product1_sel3 => unsigned'("0000000000000000")
                                    ,product1_sel4 => false)
                  ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000")) when (true),
                  bodyVar_121 when others;
  
  repANF_119 <= wild1_122;
  
  repANF_120 <= ds5_96 + unsigned'("0000000000000001");
  
  bodyVar_121 <= (product4_sel0 => repANF_123
                 ,product4_sel1 => unsigned'(16-1 downto 0 => '0')
                 ,product4_sel2 => ds21_108
                 ,product4_sel3 => true
                 ,product4_sel4 => uv_124
                 ,product4_sel5 => std_logic_vector'("0" & "00000000000000000000000000000000000000000000000000000000000000000"));
  
  wild1_122 <= repANF_125;
  
  repANF_123 <= std_logic_vector'("00" & (std_logic_vector(uv_124.product1_sel0)
                                          & std_logic_vector(uv_124.product1_sel1)
                                          & std_logic_vector(uv_124.product1_sel2)
                                          & std_logic_vector(uv_124.product1_sel3)
                                          & toSLV(uv_124.product1_sel4)));
  
  uv_124 <= (product1_sel0 => ds21_108
            ,product1_sel1 => ds3_71
            ,product1_sel2 => repANF_120
            ,product1_sel3 => unsigned'("0000000000000000")
            ,product1_sel4 => false);
  
  repANF_125 <= to_integer(repANF_55);
  
  topLet_o <= altLet_0;
end;
