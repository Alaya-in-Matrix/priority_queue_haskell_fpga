library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package HeapSort_types is
  type array_of_integer is array (integer range <>) of integer;
  type product6 is record
    product6_sel0 : std_logic_vector(33 downto 0);
    product6_sel1 : std_logic_vector(160 downto 0);
  end record;
  type product5 is record
    product5_sel0 : array_of_integer(0 to 0);
    product5_sel1 : array_of_integer(0 to 5);
  end record;
  type product0 is record
    product0_sel0 : array_of_integer(0 to 5);
    product0_sel1 : std_logic_vector(17 downto 0);
  end record;
  type product7 is record
    product7_sel0 : unsigned(0 downto 0);
    product7_sel1 : std_logic_vector(160 downto 0);
  end record;
  type product2 is record
    product2_sel0 : std_logic_vector(2 downto 0);
    product2_sel1 : std_logic_vector(32 downto 0);
  end record;
  type product3 is record
    product3_sel0 : std_logic_vector(2 downto 0);
    product3_sel1 : unsigned(15 downto 0);
    product3_sel2 : unsigned(15 downto 0);
    product3_sel3 : array_of_integer(0 to 4);
  end record;
  type product1 is record
    product1_sel0 : product2;
    product1_sel1 : std_logic_vector(160 downto 0);
  end record;
  type product4 is record
    product4_sel0 : array_of_integer(0 to 5);
    product4_sel1 : array_of_integer(0 to 0);
  end record;
  type array_of_std_logic_vector_161 is array (integer range <>) of std_logic_vector(160 downto 0);
  function max (left, right: in integer) return integer;
  function toSLV (u : in unsigned) return std_logic_vector;
  function toSLV (slv : in std_logic_vector) return std_logic_vector;
  function to_integer (i : in integer) return integer;
  function toSLV (i : in integer) return std_logic_vector;
  function toSLV (value :  array_of_integer) return std_logic_vector;
  function toSLV (p : product6) return std_logic_vector;
  function toSLV (p : product5) return std_logic_vector;
  function toSLV (p : product0) return std_logic_vector;
  function toSLV (p : product7) return std_logic_vector;
  function toSLV (p : product2) return std_logic_vector;
  function toSLV (p : product3) return std_logic_vector;
  function toSLV (p : product1) return std_logic_vector;
  function toSLV (p : product4) return std_logic_vector;
  function toSLV (b : in boolean) return std_logic_vector;
  function fromSLV (sl : in std_logic_vector) return boolean;
  function toSLV (value :  array_of_std_logic_vector_161) return std_logic_vector;
end;

package body HeapSort_types is
  function max (left, right: in integer) return integer is
  begin
    if left > right then return left;
    else return right;
    end if;
  end;
  function toSLV (u : in unsigned) return std_logic_vector is
  begin
    return std_logic_vector(u);
  end;
  function toSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function to_integer (i : in integer) return integer is
  begin
    return i;
  end;
  function toSLV (i : in integer) return std_logic_vector is
  begin
    return std_logic_vector(to_signed(i,32));
  end;
  function toSLV (value :  array_of_integer) return std_logic_vector is
    alias ivalue    : array_of_integer(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 32);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 32) + 1 to i*32) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function toSLV (p : product6) return std_logic_vector is
  begin
    return (toSLV(p.product6_sel0) & toSLV(p.product6_sel1));
  end;
  function toSLV (p : product5) return std_logic_vector is
  begin
    return (toSLV(p.product5_sel0) & toSLV(p.product5_sel1));
  end;
  function toSLV (p : product0) return std_logic_vector is
  begin
    return (toSLV(p.product0_sel0) & toSLV(p.product0_sel1));
  end;
  function toSLV (p : product7) return std_logic_vector is
  begin
    return (toSLV(p.product7_sel0) & toSLV(p.product7_sel1));
  end;
  function toSLV (p : product2) return std_logic_vector is
  begin
    return (toSLV(p.product2_sel0) & toSLV(p.product2_sel1));
  end;
  function toSLV (p : product3) return std_logic_vector is
  begin
    return (toSLV(p.product3_sel0) & toSLV(p.product3_sel1) & toSLV(p.product3_sel2) & toSLV(p.product3_sel3));
  end;
  function toSLV (p : product1) return std_logic_vector is
  begin
    return (toSLV(p.product1_sel0) & toSLV(p.product1_sel1));
  end;
  function toSLV (p : product4) return std_logic_vector is
  begin
    return (toSLV(p.product4_sel0) & toSLV(p.product4_sel1));
  end;
  function toSLV (b : in boolean) return std_logic_vector is
  begin
    if b then
      return "1";
    else
      return "0";
    end if;
  end;
  function fromSLV (sl : in std_logic_vector) return boolean is
  begin
    if sl = "1" then
      return true;
    else
      return false;
    end if;
  end;
  function toSLV (value :  array_of_std_logic_vector_161) return std_logic_vector is
    alias ivalue    : array_of_std_logic_vector_161(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 161);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 161) + 1 to i*161) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
end;
