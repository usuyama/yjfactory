library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FMUL is
  port (A,B : in std_logic_vector(31 downto 0);
        P : out std_logic_vector(31 downto 0));
end FMUL;

architecture GATE of FMUL is
signal E1,E2 : integer;
signal F1,F2 : std_logic_vector(47 downto 0);
signal AF,BF : std_logic_vector(23 downto 0);
signal G : std_logic;
begin
  P(31) <= A(31) xor B(31);
  E1 <= conv_integer(A(30 downto 23)) + conv_integer(B(30 downto 23)) - 127;
  F1 <= ('1' & A(22 downto 0)) * ('1' & B(22 downto 0));
  G <= F1(23) when (F1(47) = '1') else F1(22);

  F2(47 downto 23) <= F1(47 downto 23) + ("000000000000000000000000" & G);
  F2(22 downto 0) <= F1(22 downto 0);
  E2 <= E1 + 1 when (F2(47) = '1') else E1;
  P(30 downto 0) <= "1111111100000000000000000000000"               when E2 > 254 else
                     "0000000000000000000000000000000"               when E2 < 0 else
                     conv_std_logic_vector(E2,8) & F2(46 downto 24) when F2(47) = '1' else
                     conv_std_logic_vector(E2,8) & F2(45 downto 23);
end GATE;
