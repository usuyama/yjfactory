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

type rom_type is array (0 to 14) of std_logic_vector(31 downto 0);
  constant rom : rom_type:=(
	-- entry:
"00010100000000001111011111001111",	-- 0: 	llif	%f0, 10.123
"00010000000000000100000100100001",	-- 1: 	lhif	%f0, 10.123
"11110100000000000000000000000000",	-- 2: 	floor	%f0, %f0
"00010100000000001111111101111101",	-- 3: 	llif	%f0, 123.999
"00010000000000000100001011110111",	-- 4: 	lhif	%f0, 123.999
"11110100000000000000000000000000",	-- 5: 	floor	%f0, %f0
"00010100000000000000000000000000",	-- 6: 	llif	%f0, 1.0
"00010000000000000011111110000000",	-- 7: 	lhif	%f0, 1.0
"11111000000000000000000000000000",	-- 8: 	absf	%f0, %f0
"00011000000000000000000000000000",	-- 9: 	negf	%f0, %f0
"00010100000000000000000000000000",	-- 10: 	llif	%f0, -1.0
"00010000000000001011111110000000",	-- 11: 	lhif	%f0, -1.0
"11111000000000000000000000000000",	-- 12: 	absf	%f0, %f0
"00011000000000000000000000000000",	-- 13: 	negf	%f0, %f0
"11111100000000000000000000000000"	-- 14: 	halt
);

signal shortened : std_logic_vector(6 downto 0):=(others=>'0');
begin  -- R_rom
  shortened<=addra(6 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
