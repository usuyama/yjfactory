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
component FADD is
  port (A,B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0));
end component FADD;
component FMUL is
  port (A,B : in std_logic_vector(31 downto 0);
        P : out std_logic_vector(31 downto 0));
end component FMUL;
signal X1,X3,X4,Y1,Y3,Y4,D2,D3 : std_logic_vector(31 downto 0);
signal E : integer;
begin
p0 : process(MCLK1) is
begin
  if (rising_edge(MCLK1)) then
    if (ready = '1') then
	   X1(31) <= '0';
		if (A(30 downto 23) = "00000000" or B(30 downto 23) = "11111111") then
		  E <= 0;
		elsif (A(30 downto 23) = "11111111" or B(30 downto 23) = "00000000") then
		  E <= 255;
	   elsif (A(22 downto 0) <= B(22 downto 0)) then
		  X1(30 downto 23) <= "10000000";
		  E <= conv_integer(A(30 downto 23)) - conv_integer(B(30 downto 23)) + 126;
		else
		  X1(30 downto 23) <= "01111111";
		  E <= conv_integer(A(30 downto 23)) - conv_integer(B(30 downto 23)) + 127;
		end if;
      X1(22 downto 0) <= A(22 downto 0);
		Y1 <= "101111111" & B(22 downto 0);
	 else
	   X1 <= X4;
		Y1 <= Y4;
		X3 <= X1;
		Y3 <= Y1;
		D3 <= D2;
	 end if;
  end if;
end process p0;
R <= (A(31) xor B(31)) & conv_std_logic_vector(E,8) & X4(22 downto 0);
ADD0 : FADD port map (Y1,"01000000000000000000000000000000",D2);
MUL1 : FMUL port map (D3,X3,X4);
MUL2 : FMUL port map (D3,Y3,Y4);
end STRUCTURE;
