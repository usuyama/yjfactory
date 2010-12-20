library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FDIV is
  port(MCLK1,ready : in std_logic;
       A,B : in std_logic_vector(31 downto 0);
       R : out std_logic_vector(31 downto 0));
end entity FDIV;

architecture STRUCTURE of FDIV is
signal X1,X3,Y1,Y3,D2,D3 : std_logic_vector(31 downto 0);
signal X4,Y4 : std_logic_vector(63 downto 0);
signal Sign : std_logic;
signal E : std_logic_vector(7 downto 0);
begin
p0 : process(MCLK1) is
begin
  if (rising_edge(MCLK1)) then
    if (ready = '1') then
      Sign <= A(31) xor B(31);
      X1 <= '1' & A(22 downto 0) & "00000000";
      if (A(22 downto 0) < B(22 downto 0)) then
        Y1 <= "01" & B(22 downto 0) & "0000000";
        E <= A(30 downto 23) - B(30 downto 23) + "01111110";
      else
        Y1 <= '1' & B(22 downto 0) & "00000000";
        E <= A(30 downto 23) - B(30 downto 23) + "01111111";
      end if;
    else
      X1 <= X4(62 downto 31);
      Y1 <= Y4(62 downto 31);
      X3 <= X1;
      Y3 <= Y1;
      D3 <= D2;
      R <= Sign & E & X4(61 downto 39);
    end if;
  end if;
end process p0;
D2 <= (not Y1) + "00000000000000000000000000000001";
X4 <= X3 * D3;
Y4 <= Y3 * D3;
end STRUCTURE;
