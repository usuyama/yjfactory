library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FTOI is
  port(
    i : in std_logic_vector(31 downto 0);  --input integer
    o : out std_logic_vector(31 downto 0)
    );
  end FTOI;

architecture behav of FTOI is
signal exp: std_logic_vector(7 downto 0);
signal tmp: std_logic_vector(31 downto 0);  -- 0 bit目 は繰り上がり判定。31 to 1 が、outputの 30 to 0 に対応
signal round: std_logic;
signal ignore_sign: std_logic_vector(31 downto 0);
begin
--  tmp2 <= i_int when i_int(31) = '0' else
--         not(i_int - 1);
  exp <= i(30 downto 23);

-------------------------------------------------------------------------------  round <=
--    '1' when exp="01111111" and i(21 downto 0)/=0 else
--    '1' when exp="10000000" and i(20 downto 0)/=0 else
--    '1' when exp="10000001" and i(19 downto 0)/=0 else
--    '1' when exp="10000010" and i(18 downto 0)/=0 else
--    '1' when exp="10000011" and i(17 downto 0)/=0 else
--    '1' when exp="10000100" and i(16 downto 0)/=0 else
--    '1' when exp="10000101" and i(15 downto 0)/=0 else
--    '1' when exp="10000110" and i(14 downto 0)/=0 else
--    '1' when exp="10000111" and i(13 downto 0)/=0 else
--    '1' when exp="10001000" and i(12 downto 0)/=0 else
--    '1' when exp="10001001" and i(11 downto 0)/=0 else
--    '1' when exp="10001010" and i(10 downto 0)/=0 else
--    '1' when exp="10001011" and i(9 downto 0)/=0 else
--    '1' when exp="10001100" and i(8 downto 0)/=0 else
--    '1' when exp="10001101" and i(7 downto 0)/=0 else
--    '1' when exp="10001110" and i(6 downto 0)/=0 else
--    '1' when exp="10001111" and i(5 downto 0)/=0 else
--    '1' when exp="10010000" and i(4 downto 0)/=0 else
--    '1' when exp="10010001" and i(3 downto 0)/=0 else
--    '1' when exp="10010010" and i(2 downto 0)/=0 else
--    '1' when exp="10010011" and i(1 downto 0)/=0 else
--    '1' when exp="10010100" and i(0 downto 0)/=0 else
--    '0';

  tmp <=
    "00000000000000000000000000000001"when exp="01111110" else
    "0000000000000000000000000000001"&i(22 downto 22) when exp="01111111" else
    x"00000000" when exp(7)='0' else
    "000000000000000000000000000001"&i(22 downto 21) when exp="10000000" else
    "00000000000000000000000000001"&i(22 downto 20) when exp="10000001" else
    "0000000000000000000000000001"&i(22 downto 19) when exp="10000010" else
    "000000000000000000000000001"&i(22 downto 18) when exp="10000011" else
    "00000000000000000000000001"&i(22 downto 17) when exp="10000100" else
    "0000000000000000000000001"&i(22 downto 16) when exp="10000101" else
    "000000000000000000000001"&i(22 downto 15) when exp="10000110" else
    "00000000000000000000001"&i(22 downto 14) when exp="10000111" else
    "0000000000000000000001"&i(22 downto 13) when exp="10001000" else
    "000000000000000000001"&i(22 downto 12) when exp="10001001" else
    "00000000000000000001"&i(22 downto 11) when exp="10001010" else
    "0000000000000000001"&i(22 downto 10) when exp="10001011" else
    "000000000000000001"&i(22 downto 9) when exp="10001100" else
    "00000000000000001"&i(22 downto 8) when exp="10001101" else
    "0000000000000001"&i(22 downto 7) when exp="10001110" else
    "000000000000001"&i(22 downto 6) when exp="10001111" else
    "00000000000001"&i(22 downto 5) when exp="10010000" else
    "0000000000001"&i(22 downto 4) when exp="10010001" else
    "000000000001"&i(22 downto 3) when exp="10010010" else
    "00000000001"&i(22 downto 2) when exp="10010011" else
    "0000000001"&i(22 downto 1) when exp="10010100" else
    "000000001"&i(22 downto 0) when exp="10010101" else
    "00000001"&i(22 downto 0)&"0" when exp="10010110" else
    "0000001"&i(22 downto 0)&"00" when exp="10010111" else
    "000001"&i(22 downto 0)&"000" when exp="10011000" else
    "00001"&i(22 downto 0)&"0000" when exp="10011001" else
    "0001"&i(22 downto 0)&"00000" when exp="10011010" else
    "001"&i(22 downto 0)&"000000" when exp="10011011" else
    "01"&i(22 downto 0)&"0000000" when exp="10011100" else
    "1"&i(22 downto 0)&"00000000" when exp="10011101" else
    "11111111111111111111111111111111";

  -- round even; tmp(0) はガードビット。 round はラウンドビット
  ignore_sign <=
    "0"&tmp(31 downto 1) when tmp(0)='0' else-- or(round='0' and tmp(1)='0') else
    "0"&tmp(31 downto 1)+1;

  -- 元の
  o(31 downto 0) <= 
    ignore_sign when i(31)='0' else
    not(ignore_sign)+1 ;

end behav;
