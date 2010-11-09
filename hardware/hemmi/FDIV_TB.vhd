library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FDIV_TEST is
end FDIV_TEST;

architecture SIM of FDIV_TEST is
component FDIV is
  port(clk,ready : in std_logic;
       A,B : in std_logic_vector(31 downto 0);
       R : out std_logic_vector(31 downto 0));
end component;
component FMUL is
  port(A,B : in std_logic_vector(31 downto 0);
       P : out std_logic_vector(31 downto 0));
end component;
signal clock,ready : std_logic := '0';
signal A : std_logic_vector(31 downto 0) := "11000111100011110000000110001000";
signal B : std_logic_vector(31 downto 0) := "00111111100000010001001001000001";
signal R : std_logic_vector(31 downto 0); -- R = A / B
signal T : std_logic_vector(31 downto 0); -- T = B * R = B * (A / B) = A
begin
P: process
variable V : integer := 0;
begin
  if (V = 0) then
    ready <= '1';
    V := 1;
  elsif (V = 1) then
    ready <= '0';
  end if;
  wait for 1 ps;
  clock <= not clock;
end process;
FDIV0: FDIV port map (clock,ready,A,B,R);
FMUL0: FMUL port map (B, R, T);
end SIM;
