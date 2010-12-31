library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

library work;
use work.fdiv_table.all;

entity FLOAT_DIV is
  port (A,B : in std_logic_vector(31 downto 0);
        clk : in std_logic;
        OUTPUT : out std_logic_vector(31 downto 0));
end FLOAT_DIV;

architecture FLOAT_DIV_ARCHTECT of FLOAT_DIV is
  signal x : std_logic_vector(23 downto 0);
  signal a1,b1 : std_logic_vector(22 downto 0);
  signal a2 : std_logic_vector(25 downto 0);
  signal b2 : std_logic_vector(24 downto 0);
  signal s1,s2 : std_logic;
  signal e,e2 : std_logic_vector(9 downto 0);
begin

P :process (clk)
  variable a2tmp,b2tmp : std_logic_vector(47 downto 0);
  variable etmp : std_logic_vector(9 downto 0);
  variable ftmp : std_logic_vector(51 downto 0);
begin
  if rising_edge(clk) then
--0
    x <= table(conv_integer(B(22 downto 12)));
    a1 <= a(22 downto 0);
    b1 <= b(22 downto 0);

    s1 <= A(31) xor B(31);

    if A(22 downto 0)>=B(22 downto 0) then
      etmp := "1001111111" + A(30 downto 23) - B(30 downto 23);
    else
      etmp := "1001111110" + A(30 downto 23) - B(30 downto 23);
    end if;
    e(9) <= ((not etmp(9)) or etmp(8));
    e(8) <= etmp(9);
    e(7 downto 0) <= etmp(7 downto 0);

--1
    a2tmp := ("1"&a1)*x;
    b2tmp := ("1"&b1)*x;
    a2 <= a2tmp(47 downto 22);
    b2 <= not (b2tmp(46 downto 22) +b2tmp(21));

    s2 <= s1;
    e2 <= e;

--2
    ftmp := a2*("1"&b2);

    OUTPUT(31)<= s2;
    if e2(9)='1' then
      --under/overflow
      --underflow なら全て0, overflow なら全て1 (underflow:etmp(9)='0', overflow:etmp(9~8)="11")
      OUTPUT(30 downto 0) <= (others=>e2(8));
    else
      OUTPUT(30 downto 23) <= e2(7 downto 0);
      if ftmp(51)='1' then
        OUTPUT(22 downto 0)<=ftmp(50 downto 28);
      else
        if ftmp(50)='1' then
          OUTPUT(22 downto 0)<=ftmp(49 downto 27);
        else
          OUTPUT(22 downto 0)<=ftmp(48 downto 26);
        end if;
      end if;
    end if;
  end if;
end process;


end FLOAT_DIV_ARCHTECT;

