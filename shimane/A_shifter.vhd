library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity a_shifter is
  
  port (
a : in std_logic_vector(31 downto 0);
n:in std_logic_vector(31 downto 0);
o: out std_logic_vector(31 downto 0);
);

end a_shifter;
architecture a_s of a_shifter is
signal n_s : std_logic_vector(4 downto 0);
begin
  process(a,n)
  n_s<=n(4 downto 0);
  o(31)<=a(31);
  o(30 downto 0)<=a(30 downto 0) when n="00000" else
                   a(31)&a(29 downto 0) when n="00001" else
                   a(28 downto 0) when n="00010" else
                   a(27 downto 0)&"000" when n="00011" else
                   a(26 downto 0)&"0000" when n="00100" else
                   a(25 downto 0)&"00000" when n="00101" else
                   a(24 downto 0)&"000000" when n="00110" else
                   a(23 downto 0)&"0000000" when n="00111" else
                   a(22 downto 0)&"00000000" when n="01000" else
                   a(21 downto 0)&"000000000" when n="01001" else
                   a(20 downto 0)&"0000000000" when n="01010" else
                   a(19 downto 0)&"00000000000" when n="01011" else
                   a(18 downto 0)&"000000000000" when n="01100" else
                   a(17 downto 0)&"0000000000000" when n="01101" else
                   a(16 downto 0)&"00000000000000" when n="01110" else
                   a(15 downto 0)&"000000000000000" when n="01111" else
                   a(14 downto 0)&"0000000000000000" when n="10000" else
                   a(13 downto 0)&"00000000000000000" when n="10001" else
                   a(12 downto 0)&"000000000000000000" when n="10010" else
                   a(11 downto 0)&"0000000000000000000" when n="10011" else
                   a(10 downto 0)&"00000000000000000000" when n="10100" else
                   a(9 downto 0)&"000000000000000000000" when n="10101" else
                   a(8 downto 0)&"0000000000000000000000" when n="10110" else
                   a(7 downto 0)&"00000000000000000000000" when n="10111" else
                   a(6 downto 0)&"000000000000000000000000" when n="11000" else
                   a(5 downto 0)&"0000000000000000000000000" when n="11001" else
                   a(4 downto 0)&"00000000000000000000000000" when n="11010" else
                   a(3 downto 0)&"000000000000000000000000000" when n="11011" else
                   a(2 downto 0)&"0000000000000000000000000000" when n="11100" else
                   a(1 downto 0)&"00000000000000000000000000000" when n="11101" else
                   a(0 downto 0)&"000000000000000000000000000000" when n="11110" else
                   "00000000000000000000000000000000";
  end process;
end a_s;
