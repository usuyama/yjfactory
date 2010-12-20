library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FSQRT is
  port(MCLK1,ready : in std_logic;
       A : in std_logic_vector(31 downto 0);
       R : out std_logic_vector(31 downto 0));
end entity FSQRT;

architecture STRUCTURE of FSQRT is
signal X1,X2,X3,Z1,Z2,Z3,D1,D2,D3,DD2 : std_logic_vector(31 downto 0);
signal X4,Z4,DD : std_logic_vector(63 downto 0);
signal E1,E2 : std_logic_vector(7 downto 0);
signal Sign : std_logic;
begin
p0 : process(MCLK1) is
begin
  if (rising_edge(MCLK1)) then
    if (ready = '1') then
      Sign <= A(31);
      E1 <= "01000000" + ('0' & A(30 downto 24));
      E2 <= "00111111" + ('0' & A(30 downto 24));
      if (A(23) = '1') then
        X1 <= '1' & A(22 downto 0) & "00000000";
        Z1 <= '1' & A(22 downto 0) & "00000000";
      else
        X1 <= "01" & A(22 downto 0) & "0000000";
        Z1 <= "01" & A(22 downto 0) & "0000000";
      end if;
    else
      X1 <= X4(62 downto 31);
      Z1 <= Z4(62 downto 31);
      X2 <= X1;
      Z2 <= Z1;
      D2 <= D1;
      X3 <= X2;
      Z3 <= Z2;
      D3 <= D2;
      DD2 <= DD(62 downto 31);
      R(31) <= Sign;
      if (Z4(62) = '1') then
	     R(30 downto 23) <= E1;
        R(22 downto 0) <= Z4(61 downto 39);
      else
        R(30 downto 23) <= E2;
        R(22 downto 0) <= Z4(60 downto 38);
      end if;
    end if;
  end if;
end process p0; 
D1 <= "11000000000000000000000000000000" - ('0' & X1(31 downto 1));
DD <= D2 * D2;
X4 <= X3 * DD2;
Z4 <= Z3 * D3;
end STRUCTURE;
