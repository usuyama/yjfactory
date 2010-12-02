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
component FADD is
  port (A,B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0));
end component FADD;
component FMUL is
  port (A,B : in std_logic_vector(31 downto 0);
        P : out std_logic_vector(31 downto 0));
end component FMUL;
signal AR,NX,X1,X2,X3,X4,Z1,Z2,Z3,Z4,D,D2,D3,DD,DD2 : std_logic_vector(31 downto 0);
begin
p0 : process(MCLK1) is
begin
  if (rising_edge(MCLK1)) then
    if (ready = '1') then
	   AR <= A;
      NX(31) <= '1';
      NX(22 downto 0) <= A(22 downto 0);
		X1(31) <= '0';
		Z1(31) <= '0';
      X1(22 downto 0) <= A(22 downto 0);
      Z1(22 downto 0) <= A(22 downto 0);
		if (A(23) = '1') then
		  X1(30 downto 23) <= "01111111";
		  Z1(30 downto 23) <= "01111111";
		  NX(30 downto 23) <= "01111110";
		else
		  X1(30 downto 23) <= "10000000";
		  Z1(30 downto 23) <= "10000000";
		  NX(30 downto 23) <= "01111111";
		end if;
	 else
	   NX <= (not X4(31)) & (X4(30 downto 23) - "00000001") & X4(22 downto 0);
		X1 <= X4;
		Z1 <= Z4;
		X2 <= X1;
		Z2 <= Z1;
	   D2 <= D;
		X3 <= X2;
		Z3 <= Z2;
		D3 <= D2;
		DD2 <= DD;
    end if;
  end if;
end process p0; 
R(31) <= AR(31);
R(30 downto 23) <= "00000000" when AR(30 downto 23) = "00000000" else
                   "11111111" when AR(30 downto 23) = "11111111" else
                   "01000000" + ('0' & A(30 downto 24)) when AR(23) = '1' else
                   "00111111" + ('0' & A(30 downto 24));
R(22 downto 0) <= Z4(22 downto 0);
ADD0 : FADD port map (NX,"00111111110000000000000000000000",D);
MUL0 : FMUL port map (D2,D2,DD);
MUL1 : FMUL port map (X3,DD2,X4);
MUL2 : FMUL port map (Z3,D3,Z4);
end STRUCTURE;
