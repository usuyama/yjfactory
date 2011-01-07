library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use STD.textio.all;

entity FSQRT_TESTIO is
end FSQRT_TESTIO;

architecture SIM of FSQRT_TESTIO is
component FSQRT_TEST is
  port (A : in std_logic_vector(31 downto 0);
        R : out std_logic_vector(31 downto 0));
end component FSQRT_TEST;
signal A,R : std_logic_vector(31 downto 0);
file Ifile : text open read_mode is "sqrtin.txt";
file Ofile : text open write_mode is "sqrtout.txt";
begin
P: process
variable Iline,Oline : Line;
variable Ibit,Obit : bit_vector(31 downto 0);
variable ENDIO : std_logic := '0';
begin
  wait for 38 ps;
  if endfile(Ifile) then
    ENDIO := '1';
  end if;
  if (ENDIO = '0') then
    Obit := to_bitvector(R);
    write(Oline,Obit,right,32);
    writeline(Ofile,OLine);
    readline(Ifile, Iline);
    read(Iline, Ibit);
    A <= to_stdlogicvector(Ibit);
  end if;
end process;
FSQRT0: FSQRT_TEST port map (A,R);
end SIM;

---------------------------------------------------------------
---------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FSQRT_TEST is
  port (A : in std_logic_vector(31 downto 0);
        R : out std_logic_vector(31 downto 0));
end FSQRT_TEST;

architecture SIM of FSQRT_TEST is
component FSQRT is
  port(MCLK1,ready : in std_logic;
       A : in std_logic_vector(31 downto 0);
       R : out std_logic_vector(31 downto 0));
end component FSQRT;
signal clock,ready : std_logic := '0';
signal ANS : std_logic_vector(31 downto 0);
begin
P: process
variable V : integer := 0;
begin
  if (V = 37) then
    R <= ANS;
  elsif (V = 2) then
    ready <= '1';
  elsif (V = 3) then
    ready <= '0';
  end if;
  V := V + 1;
  if (V = 38) then
    V := 0;
  end if;
  clock <= not clock;
  wait for 1 ps;
end process;
FSQRT0: FSQRT port map (clock,ready,A,ANS);
end SIM;
