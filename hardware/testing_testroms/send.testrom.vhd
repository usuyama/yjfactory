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

type rom_type is array (0 to 22) of std_logic_vector(31 downto 0);
  constant rom : rom_type:=(
	-- entry:
"11001100000000010000000000110001",	-- 1: 	lli	%r1, 49
"11010000001000000000000000000000",	-- 2: 	sendc	%r1
"11001100000000010000000000110010",	-- 3: 	lli	%r1, 50
"11010000001000000000000000000000",	-- 4: 	sendc	%r1
"11001100000000010000000000110010",	-- 5: 	lli	%r1, 50
"11010000001000000000000000000000",	-- 6: 	sendc	%r1
"11001100000000010000000000110011",	-- 7: 	lli	%r1, 51
"11010000001000000000000000000000",	-- 8: 	sendc	%r1
"11001100000000010000000000110100",	-- 9: 	lli	%r1, 52
"11010000001000000000000000000000",	-- 10: 	sendc	%r1
"11001100000000010000000000110101",	-- 11: 	lli	%r1, 53
"11010000001000000000000000000000",	-- 12: 	sendc	%r1
"11001100000000010000000000110110",	-- 13: 	lli	%r1, 54
"11010000001000000000000000000000",	-- 14: 	sendc	%r1
"11001100000000010000000000110111",	-- 15: 	lli	%r1, 55
"11010000001000000000000000000000",	-- 16: 	sendc	%r1
"11001100000000010000000000111000",	-- 17: 	lli	%r1, 56
"11010000001000000000000000000000",	-- 18: 	sendc	%r1
"11001100000000010000000000111001",	-- 19: 	lli	%r1, 57
"11010000001000000000000000000000",	-- 20: 	sendc	%r1
"11001100000000010000000000111010",	-- 21: 	lli	%r1, 58
"11010000001000000000000000000000",	-- 22: 	sendc	%r1
"01010100000000000000000000000000"	-- 23: 	j	entry
);

signal shortened : std_logic_vector(6 downto 0):=(others=>'0');
begin  -- R_rom
  shortened<=addra(6 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
