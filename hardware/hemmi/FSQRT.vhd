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
signal irt,irt0,irt1,irt2,irt22,irt31,irt32,irt4,irt42,irt5,irt52,irt6,NA : std_logic_vector(31 downto 0);
begin
p0 : process(MCLK1) is
begin
  if (rising_edge(MCLK1)) then
    if (ready = '1') then
      NA(31) <= '1';
      NA(22 downto 0) <= A(22 downto 0);
		irt(31) <= '0';
      irt(22 downto 0) <= "00000000000000000000000";
		if (A(23) = '1') then
		  irt(30 downto 23) <= "01111111";
		  NA(30 downto 23)  <= "01111110";
		else
		  irt(30 downto 23) <= "01111110";
		  NA(30 downto 23)  <= "01111101";
		end if;
	 else
	   irt <= irt5;
    end if;
  end if;
end process p0; 
irt6(31) <= A(31);
irt6(30 downto 23) <= "00000000" when A(30 downto 23) = "00000000" else
                      "11111111" when A(30 downto 23) = "11111111" else
						    irt5(30 downto 23) - ('0' & A(30 downto 24)) + "00111111";
irt6(22 downto 0) <= irt5(22 downto 0);
MUL0 : FMUL port map (irt,irt,irt2);
MUL1 : FMUL port map (NA,irt2,irt31);
ADD0 : FADD port map (irt31,"00111111110000000000000000000000",irt4);
MUL2 : FMUL port map (irt4,irt,irt5);
MUL3 : FMUL port map (irt6,A,R);
end STRUCTURE;