library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FDIV_TEST is
end FDIV_TEST;

architecture SIM of FDIV_TEST is
component FDIV is
  port(MCLK1,ready : in std_logic;
       A,B : in std_logic_vector(31 downto 0);
       R : out std_logic_vector(31 downto 0));
end component;
component FMUL is
  port (A,B : in std_logic_vector(31 downto 0);
        P : out std_logic_vector(31 downto 0));
end component FMUL;
signal clock,ready : std_logic := '0';
signal IN1 : std_logic_vector(31 downto 0) := "11010111100010011000100100101001";
signal IN2 : std_logic_vector(31 downto 0) := "00111010001111010111001001000001";
signal ANS : std_logic_vector(31 downto 0);
signal T : std_logic_vector(31 downto 0);
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
FDIV0: FDIV port map (clock,ready,IN1,IN2,ANS);
FMUL0: FMUL port map (IN2,ANS,T);
end SIM;
