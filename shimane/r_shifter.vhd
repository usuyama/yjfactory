library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity r_shifter is
  
  port (
a : in std_logic_vector(31 downto 0);
n:in std_logic_vector(31 downto 0);
o: out std_logic_vector(31 downto 0)
);

end r_shifter;
architecture r_s of r_shifter is
signal n_s : std_logic_vector(4 downto 0);
begin
  n_s<=n(4 downto 0);
  o(31)<=a(31);
  o(30 downto 0)<=a(30 downto 0) when n_s="00000" else
                   a(31)&a(30 downto 1) when n_s="00001" else
                   a(31)&a(31)&a(30 downto 2) when n_s="00010" else
                   a(31)&a(31)&a(31)&a(30 downto 3) when n_s="00011" else
                   a(31)&a(31)&a(31)&a(31)&a(30 downto 4) when n_s="00100" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 5) when n_s="00101" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 6) when n_s="00110" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 7) when n_s="00111" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 8) when n_s="01000" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 9) when n_s="01001" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 10) when n_s="01010" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 11) when n_s="01011" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 12) when n_s="01100" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 13) when n_s="01101" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 14) when n_s="01110" else
                  a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 15) when n_s="01111" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 16)when n_s="10000" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 17) when n_s="10001" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 18) when n_s="10010" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 19) when n_s="10011" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 20) when n_s="10100" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 21) when n_s="10101" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 22) when n_s="10110" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 23) when n_s="10111" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 24) when n_s="11000" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 25) when n_s="11001" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 26) when n_s="11010" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 27) when n_s="11011" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 28) when n_s="11100" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 29) when n_s="11101" else
                   a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(31)&a(30 downto 30) when n_s="11110" else
                   (others=>a(31));
end r_s;
