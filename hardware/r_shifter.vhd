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
                   a(31)&a(31)&a(28 downto 0) when n="00010" else
                   a(31)&a(31)&a(31)&a(27 downto 0) when n="00011" else
                   a(31)&a(31)&a(31)&a(31)&a(26 downto 0) when n="00100" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(25 downto 0) when n="00101" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(24 downto 0) when n="00110" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(23 downto 0) when n="00111" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(22 downto 0) when n="01000" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(21 downto 0) when n="01001" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(20 downto 0) when n="01010" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(19 downto 0) when n="01011" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(18 downto 0) when n="01100" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(17 downto 0) when n="01101" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(16 downto 0) when n="01110" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(15 downto 0) when n="01111" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(14 downto 0)when n="10000" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(13 downto 0) when n="10001" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(12 downto 0) when n="10010" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(11 downto 0) when n="10011" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(10 downto 0) when n="10100" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(9 downto 0) when n="10101" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(8 downto 0) when n="10110" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(7 downto 0) when n="10111" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(6 downto 0) when n="11000" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(5 downto 0) when n="11001" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(4 downto 0) when n="11010" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(3 downto 0) when n="11011" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(2 downto 0) when n="11100" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(1 downto 0) when n="11101" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(0 downto 0) when n="11110" else
                   (others=>a(31));
  end process;
end a_s;
