library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FMUL is
  port (A,B : in std_logic_vector(31 downto 0);
        P : out std_logic_vector(31 downto 0));
end FMUL;

architecture GATE of FMUL is
signal E1,E2 : std_logic_vector(8 downto 0);
signal F : std_logic_vector(47 downto 0);
begin
  E1 <= ('0' & A(30 downto 23)) + ('0' & B(30 downto 23)) - "001111111";
  E2 <= ('0' & A(30 downto 23)) + ('0' & B(30 downto 23)) - "001111110";
  F <= ('1' & A(22 downto 0)) * ('1' & B(22 downto 0));

  P(31) <= A(31) xor B(31);
  P(30 downto 0) <= "0000000000000000000000000000000" when (A(30 downto 0) = "0000000000000000000000000000000"
                                                         or B(30 downto 0) = "0000000000000000000000000000000") else
                    E2(7 downto 0) & F(46 downto 24) when (F(47) = '1') else
                    E1(7 downto 0) & F(45 downto 23);
end GATE;
