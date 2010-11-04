library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FINV is
  port(clk,enable : in std_logic;
       A : in std_logic_vector(31 downto 0);
       R : out std_logic_vector(31 downto 0));
end entity FINV;

architecture STRUCTURE of FINV is
component FADD is
  port (A,B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0));
end component FADD;
component FMUL is
  port (A,B : in std_logic_vector(31 downto 0);
        P : out std_logic_vector(31 downto 0));
end component FMUL;
signal inv0,inv1,inv2,inv3,NA : std_logic_vector(31 downto 0);
begin
p0 : process(clk) is
begin
  if (rising_edge(clk)) then
    if (enable = '1') then
      NA(31) <= not A(31);
      NA(30 downto 0) <= A(30 downto 0);
		inv0(31) <= A(31);
		inv0(30 downto 23) <= "11111110" - A(30 downto 23);
		inv0(22 downto 0) <= A(22 downto 0);
	 else
	   inv0 <= inv3;
	 end if;
  end if;
end process p0;
R <= inv3;
MUL0 : FMUL port map (NA,inv0,inv1);
ADD0 : FMUL port map (inv1,"01000000000000000000000000000000",inv2);
MUL1 : FMUL port map (inv2,irt,inv3);
end STRUCTURE;
