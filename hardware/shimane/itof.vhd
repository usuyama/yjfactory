library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity ITOF is
  port(
    i_int : in std_logic_vector(31 downto 0);  --input integer
    o_fl : out std_logic_vector(31 downto 0)
    );
  end ITOF;

architecture behav of ITOF is
signal tmp: std_logic_vector(31 downto 0);
begin
  tmp <= i_int when i_int(31) = '0' else
         not(i_int - 1);
  
  o_fl(31) <= i_int(31);                -- 符号
  -- (指数部 & 仮数部) : 23bitを切り出してもさらに下にbitがある場合は、繰り上がりを考える。
  o_fl(30 downto 0) <= ("10011101" & tmp(29 downto 7)) when (tmp(30) = '1') and (tmp(6)='0' or tmp(7 downto 0)="01000000") else
    "10011101"&(tmp(29 downto 7)+1) when (tmp(30) = '1' and tmp(29 downto 7)/="11111111111111111111111") else
    "10011110"&"00000000000000000000000"when tmp(30) = '1' else
    "10011100"&tmp(28 downto 6) when tmp(29) = '1' and (tmp(5)='0' or tmp(6 downto 0)="0100000") else
    "10011100"&(tmp(28 downto 6)+1) when tmp(29) = '1' and tmp(28 downto 6)/="11111111111111111111111" else
    "10011101"&"00000000000000000000000"when tmp(29) = '1' else
    "10011011"&tmp(27 downto 5) when tmp(28) = '1' and (tmp(4)='0' or tmp(5 downto 0)="010000") else
    "10011011"&(tmp(27 downto 5)+1) when tmp(28) = '1' and tmp(27 downto 5)/="11111111111111111111111" else
    "10011100"&"00000000000000000000000"when tmp(28) = '1' else
    "10011010"&tmp(26 downto 4) when tmp(27) = '1' and (tmp(3)='0' or tmp(4 downto 0)="01000") else
    "10011010"&(tmp(26 downto 4)+1) when tmp(27) = '1' and tmp(26 downto 4)/="11111111111111111111111" else
    "10011011"&"00000000000000000000000"when tmp(27) = '1' else
    "10011001"&tmp(25 downto 3) when tmp(26) = '1' and (tmp(2)='0' or tmp(3 downto 0)="0100") else
    "10011001"&(tmp(25 downto 3)+1) when tmp(26) = '1' and tmp(25 downto 3)/="11111111111111111111111" else
    "10011010"&"00000000000000000000000"when tmp(26) = '1' else
    "10011000"&tmp(24 downto 2) when tmp(25) = '1' and (tmp(1)='0' or tmp(2 downto 0)="010") else
    "10011000"&(tmp(24 downto 2)+1) when tmp(25) = '1' and tmp(24 downto 2)/="11111111111111111111111" else
    "10011001"&"00000000000000000000000"when tmp(25) = '1' else
    "10010111"&tmp(23 downto 1) when tmp(24) = '1' and (tmp(0)='0' or tmp(1 downto 0)="01") else
    "10010111"&(tmp(23 downto 1)+1) when tmp(24) = '1' and tmp(23 downto 1)/="11111111111111111111111" else
    "10011000"&"00000000000000000000000"when tmp(24) = '1' else
    "10010110"&tmp(22 downto 0) when tmp(23) = '1' else
    "10010101"&tmp(21 downto 0)&"0" when tmp(22) = '1' else
    "10010100"&tmp(20 downto 0)&"00" when tmp(21) = '1' else
    "10010011"&tmp(19 downto 0)&"000" when tmp(20) = '1' else
    "10010010"&tmp(18 downto 0)&"0000" when tmp(19) = '1' else
    "10010001"&tmp(17 downto 0)&"00000" when tmp(18) = '1' else
    "10010000"&tmp(16 downto 0)&"000000" when tmp(17) = '1' else
    "10001111"&tmp(15 downto 0)&"0000000" when tmp(16) = '1' else
    "10001110"&tmp(14 downto 0)&"00000000" when tmp(15) = '1' else
    "10001101"&tmp(13 downto 0)&"000000000" when tmp(14) = '1' else
    "10001100"&tmp(12 downto 0)&"0000000000" when tmp(13) = '1' else
    "10001011"&tmp(11 downto 0)&"00000000000" when tmp(12) = '1' else
    "10001010"&tmp(10 downto 0)&"000000000000" when tmp(11) = '1' else
    "10001001"&tmp(9 downto 0)&"0000000000000" when tmp(10) = '1' else
    "10001000"&tmp(8 downto 0)&"00000000000000" when tmp(9) = '1' else
    "10000111"&tmp(7 downto 0)&"000000000000000" when tmp(8) = '1' else
    "10000110"&tmp(6 downto 0)&"0000000000000000" when tmp(7) = '1' else
    "10000101"&tmp(5 downto 0)&"00000000000000000" when tmp(6) = '1' else
    "10000100"&tmp(4 downto 0)&"000000000000000000" when tmp(5) = '1' else
    "10000011"&tmp(3 downto 0)&"0000000000000000000" when tmp(4) = '1' else
    "10000010"&tmp(2 downto 0)&"00000000000000000000" when tmp(3) = '1' else
    "10000001"&tmp(1 downto 0)&"000000000000000000000" when tmp(2) = '1' else
    "10000000"&tmp(0 downto 0)&"0000000000000000000000" when tmp(1) = '1' else
    "01111111"&"00000000000000000000000" when tmp(0) = '1' else
    "0000000000000000000000000000000";

end behav;
