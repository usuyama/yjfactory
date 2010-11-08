library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FLOOR is
  port(
    i : in std_logic_vector(31 downto 0);  --input integer
    o : out std_logic_vector(31 downto 0)
    );
  end FLOOR;

architecture behav of FLOOR is
signal exp: std_logic_vector(7 downto 0);
--signal tmp: std_logic_vector(31 downto 0);  -- 0 bit目 は繰り上がり判定。31 to 1 が、outputの 30 to 0 に対応
--signal ignore_sign: std_logic_vector(31 downto 0);
begin
--  tmp2 <= i_int when i_int(31) = '0' else
--         not(i_int - 1);
  exp <= i(30 downto 23);
  
  o <=
    i(31 downto 23)&"00000000000000000000000" when exp="01111111" else
    "00000000000000000000000000000000" when exp(7) = '0' else
    i(31 downto 22)&"0000000000000000000000" when exp="10000000" else
    i(31 downto 21)&"000000000000000000000" when exp="10000001" else
    i(31 downto 20)&"00000000000000000000" when exp="10000010" else
    i(31 downto 19)&"0000000000000000000" when exp="10000011" else
    i(31 downto 18)&"000000000000000000" when exp="10000100" else
    i(31 downto 17)&"00000000000000000" when exp="10000101" else
    i(31 downto 16)&"0000000000000000" when exp="10000110" else
    i(31 downto 15)&"000000000000000" when exp="10000111" else
    i(31 downto 14)&"00000000000000" when exp="10001000" else
    i(31 downto 13)&"0000000000000" when exp="10001001" else
    i(31 downto 12)&"000000000000" when exp="10001010" else
    i(31 downto 11)&"00000000000" when exp="10001011" else
    i(31 downto 10)&"0000000000" when exp="10001100" else
    i(31 downto 9)&"000000000" when exp="10001101" else
    i(31 downto 8)&"00000000" when exp="10001110" else
    i(31 downto 7)&"0000000" when exp="10001111" else
    i(31 downto 6)&"000000" when exp="10010000" else
    i(31 downto 5)&"00000" when exp="10010001" else
    i(31 downto 4)&"0000" when exp="10010010" else
    i(31 downto 3)&"000" when exp="10010011" else
    i(31 downto 2)&"00" when exp="10010100" else
    i(31 downto 1)&"0" when exp="10010101" else
    i(31 downto 0);

end behav;
