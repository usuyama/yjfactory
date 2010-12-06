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

type rom_type is array (0 to 11) of std_logic_vector(31 downto 0);
  constant rom : rom_type:=(
	-- entry:
"11001100000111100000000000000000",	-- 0: 	lli	%sp, 0
"00010100000000000000000000000000",	-- 1: 	llif	%f0, 11.000000
"00010000000000000100000100110000",	-- 2: 	lhif	%f0, 11.000000
"10110000000111100000000000000000",	-- 3: 	sf	%f0, [%sp + 0]
"10010011110000010000000000000000",	-- 4: 	lf	%f1, [%sp + 0]
"10110000001111100000000000000001",	-- 5: 	sf	%f1, [%sp + 1]
"00010100000000000000000000000000",	-- 6: 	llif	%f0, 22.000000
"00010000000000000100000110110000",	-- 7: 	lhif	%f0, 22.000000
"10110000000111100000000000000010",	-- 8: 	sf	%f0, [%sp + 2]
"10010011110000000000000000000001",	-- 9: 	lf	%f0, [%sp + 1]
"10010011110000010000000000000010",	-- 10: 	lf	%f1, [%sp + 2]
"11111100000000000000000000000000"	-- 11: 	halt
);

signal shortened : std_logic_vector(6 downto 0):=(others=>'0');
begin  -- R_rom
  shortened<=addra(6 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
