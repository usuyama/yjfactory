library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FSQRT is
  port(clk : in std_logic;
       A : in std_logic_vector(31 downto 0);
       R : out std_logic_vector(31 downto 0);
		 AO : out std_logic_vector(31 downto 0));
end entity FSQRT;

architecture STRUCTURE of FSQRT is
component FADD is
  port (A,B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0));
end component FADD;
component FMUL is
  port (A,B : in std_logic_vector(31 downto 0);
        P : out std_logic_vector(31 downto 0));
end component FMUL;
signal NA,irt,irt2,irt3,irt4,irt5,rt,AP : std_logic_vector(31 downto 0);
begin
p0 : process(A) is
variable E : integer;
begin
  NA(31) <= not A(31);
  NA(30 downto 23) <= A(30 downto 23) - "00000001";
  NA(22 downto 0) <= A(22 downto 0);
  E := conv_integer(A(30 downto 23));
  irt(31) <= A(31);
  if (E = 0) then
    irt(30 downto 0) <= "1111111100000000000000000000000";
  elsif (E = 127) then
    irt(30 downto 0) <= A(30 downto 0);
  else
    if (A(23) = '1') then
	   E := E - 1;
		irt(22) <= '0';
    else
		irt(22) <= '1';
	 end if;
	 E := 190 - E/2;
    irt(30 downto 23) <= conv_std_logic_vector(E,8);
    irt(21 downto 0) <= "0000000000000000000000";
  end if;
end process p0;
p1 : process(clk) is
begin
  if (rising_edge(clk)) then
      R <= rt;
      irt <= irt5;
  end if;
end process p1;
AO <= irt;
MUL0 : FMUL port map (irt,irt,irt2);
MUL1 : FMUL port map (NA,irt2,irt3);
ADD0 : FADD port map (irt3,"00111111110000000000000000000000",irt4);
MUL2 : FMUL port map (irt4,irt,irt5);
MUL3 : FMUL port map (irt5,A,rt);
MUL4 : FMUL port map (rt,rt,AP);
end STRUCTURE;
