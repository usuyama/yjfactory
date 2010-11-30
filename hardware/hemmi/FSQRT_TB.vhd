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
  port(A,B : in std_logic_vector(31 downto 0);
       P : out std_logic_vector(31 downto 0));
end component;
signal clock,ready : std_logic := '0';
signal A : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
signal R : std_logic_vector(31 downto 0); -- R = sqrt(A)
signal T : std_logic_vector(31 downto 0); -- T = R * R
begin
P: process
variable V : integer := 0;
begin
  if (V = 6) then
    A <= "01111001010011110000000110001000";
  end if;
  V := V + 1;
  wait for 1 ps;
  clock <= not clock;
end process;
FSQRT0: FSQRT port map (clock,ready,A,R);
FMUL0: FMUL port map (R,R,T);
end SIM;
