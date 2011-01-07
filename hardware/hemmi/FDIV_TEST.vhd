library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use STD.textio.all;

entity FDIV_TESTIO is
end FDIV_TESTIO;

architecture SIM of FDIV_TESTIO is
component FDIV_TEST is
  port (A,B : in std_logic_vector(31 downto 0);
        R : out std_logic_vector(31 downto 0));
end component FDIV_TEST;
signal A,B,R : std_logic_vector(31 downto 0);
file Ifile : text open read_mode is "fdivdump.txt";
file Ofile : text open write_mode is "divout.txt";
begin
P: process
variable Iline,Oline : Line;
variable Ibit1,Ibit2,Obit : bit_vector(31 downto 0);
variable ENDIO : std_logic := '0';
begin
  wait for 26 ps;
  if endfile(Ifile) then
    ENDIO := '1';
  end if;
  if (ENDIO = '0') then
    Obit := to_bitvector(R);
    write(Oline,Obit,right,32);
    writeline(Ofile,OLine);
    readline(Ifile, Iline);
    read(Iline, Ibit1);
    read(Iline, Ibit2);
    A <= to_stdlogicvector(Ibit1);
    B <= to_stdlogicvector(Ibit2);
  end if;
end process;
FDIV0: FDIV_TEST port map (A,B,R);
end SIM;

---------------------------------------------------------------
---------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FDIV_TEST is
  port (A,B : in std_logic_vector(31 downto 0);
        R : out std_logic_vector(31 downto 0));
end FDIV_TEST;

architecture SIM of FDIV_TEST is
component FDIV is
  port(MCLK1,ready : in std_logic;
       A,B : in std_logic_vector(31 downto 0);
       R : out std_logic_vector(31 downto 0));
end component;
signal clock,ready : std_logic := '0';
signal ANS : std_logic_vector(31 downto 0);
begin
P: process
variable V : integer := 0;
begin
  if (V = 25) then
    R <= ANS;
  elsif (V = 2) then
    ready <= '1';
  elsif (V = 3) then
    ready <= '0';
  end if;
  V := V + 1;
  if (V = 26) then
    V := 0;
  end if;
  clock <= not clock;
  wait for 1 ps;
end process;
FDIV0: FDIV port map (clock,ready,A,B,ANS);
end SIM;
