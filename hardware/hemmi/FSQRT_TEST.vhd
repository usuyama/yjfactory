library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FSQRT_TEST is
end FSQRT_TEST;

architecture SIM of FSQRT_TEST is
component FSQRT is
  port(MCLK1,ready : in std_logic;
       A : in std_logic_vector(31 downto 0);
       R : out std_logic_vector(31 downto 0));
end component;
component FMUL is
  port (A,B : in std_logic_vector(31 downto 0);
        P : out std_logic_vector(31 downto 0));
end component FMUL;
signal clock,ready : std_logic := '0';
signal IN1 : std_logic_vector(31 downto 0) := "01000000110001100001111000001000";
signal ANS,T : std_logic_vector(31 downto 0);
begin
P: process
variable V : integer := 0;
  begin
	 if (V = 2) then
	   ready <= '1';
	 elsif (V = 3) then
	   ready <= '0';
	 end if;
    V := V + 1;
	 clock <= not clock;
	 wait for 1 ps;
end process;
FSQRT0: FSQRT port map (clock,ready,IN1,ANS);
FMUL0 : FMUL port map (ANS,ANS,T);
end SIM;
