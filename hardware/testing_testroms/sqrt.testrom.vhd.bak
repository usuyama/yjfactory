library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity PROM is

  port (
    clka  : in  std_logic;
--    wea   : in  std_logic_vector(0 downto 0);
    addra : in  std_logic_vector(6 downto 0);
--    dina  : in  std_logic_vector(31 downto 0);
    douta : out std_logic_vector(31 downto 0));

end PROM;

architecture R_rom of PROM is

type rom_type is array (0 to 5) of std_logic_vector(31 downto 0);
  constant rom : rom_type:=(
	-- entry:
"00010100000000000000000000000000",	-- 0: 	llif	%f0, 25.000000
"00010000000000000100000111001000",	-- 1: 	lhif	%f0, 25.000000
"11110000000000000000000000000000",	-- 2: 	sqrt	%f0, %f0
"00010100000000000000000000000000",	-- 3: 	llif	%f0, 100.000000
"00010000000000000100001011001000",	-- 4: 	lhif	%f0, 100.000000
"11110000000000000000000000000000",	-- 5: 	sqrt	%f0, %f0

);

signal shortened : std_logic_vector(6 downto 0):=(others=>'0');
begin  -- R_rom
  shortened<=addra(6 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
