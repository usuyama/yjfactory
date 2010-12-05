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

-- %f0 = 19.6666666666667 expected
-- %f0 = 01000001100111010101010101010101
architecture R_rom of PROM is
type rom_type is array (0 to 19) of std_logic_vector(31 downto 0);
constant rom : rom_type:=(

	-- entry:
"11001000000111100000000000000000",	-- 1: 	lli	%sp, 0
"10100100000111110000000000010100",	-- 2: 	addi	%ra, %r0, halt
"11001000000111011100001101010000",	-- 3: 	lli	%hp, 50000
"00010100000000000000000000000000",	-- 4: 	llif	%f0, 1.000000
"00010000000000000011111110000000",	-- 5: 	lhif	%f0, 1.000000
"00010100000000010000000000000000",	-- 6: 	llif	%f1, 2.000000
"00010000000000010100000000000000",	-- 7: 	lhif	%f1, 2.000000
"00010100000000100000000000000000",	-- 8: 	llif	%f2, 3.000000
"00010000000000100100000001000000",	-- 9: 	lhif	%f2, 3.000000
"00010100000000110000000000000000",	-- a: 	llif	%f3, 4.000000
"00010000000000110100000010000000",	-- b: 	lhif	%f3, 4.000000
"00010100000001000000000000000000",	-- c: 	llif	%f4, 5.000000
"00010000000001000100000010100000",	-- d: 	lhif	%f4, 5.000000
"00010100000001010000000000000000",	-- e: 	llif	%f5, 1.000000
"00010000000001010011111110000000",	-- f: 	lhif	%f5, 1.000000
"11101000000000010000000000000000",	-- 10: 	mulf	%f0, %f0, %f1
"11101100000000100000000000000000",	-- 11: 	divf	%f0, %f0, %f2
"11101000011001000000100000000000",	-- 12: 	mulf	%f1, %f3, %f4
"11100000000000010000000000000000",	-- 13: 	addf	%f0, %f0, %f1
"11100100000001010000000000000000",	-- 14: 	subf	%f0, %f0, %f5
);

signal shortened : std_logic_vector(6 downto 0):=(others=>'0');
begin  -- R_rom
  shortened<=addra(6 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
