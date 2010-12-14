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

  -- %r1 = 11 expected
type rom_type is array (0 to 18) of std_logic_vector(31 downto 0);
  constant rom : rom_type:=(
	-- entry:
"00000000000000000000000000000000"      --0.nop
"11001000000111100000000000000000",	-- 1: 	lli	%sp, 0
"10100100000111110000000000001010",	-- 2: 	addi	%ra, %r0, halt
"11001000000111011100001101010000",	-- 3: 	lli	%hp, 50000
"00010100000000000000000000000000",	-- 4: 	llif	%f0, 1.000000
"00010000000000000011111110000000",	-- 5: 	lhif	%f0, 1.000000
"00010100000000010000000000000000",	-- 6: 	llif	%f1, 2.000000
"00010000000000010100000000000000",	-- 7: 	lhif	%f1, 2.000000
"00010100000000100000000000000000",	-- 8: 	llif	%f2, 3.000000
"00010000000000100100000001000000",	-- 9: 	lhif	%f2, 3.000000
"01010100000000000000000000001011",	-- 10: 	j	f.89
	-- halt:
"11111100000000000000000000000000",	-- 11: 	halt
	-- f.89:
"00100000001000000000000000000011",	-- 12: 	bgtf	%f1, %f0, bgtf_else.212
"11001000000000010000000000100001",	-- 13: 	lli	%r1, 33
"01001111111000000000000000000000",	-- 14: 	jr	%ra
	-- bgtf_else.212:
"00100000010000010000000000000011",	-- 15: 	bgtf	%f2, %f1, bgtf_else.213
"11001000000000010000000000010110",	-- 16: 	lli	%r1, 22
"01001111111000000000000000000000",	-- 17: 	jr	%ra
	-- bgtf_else.213:
"11001000000000010000000000001011",	-- 18: 	lli	%r1, 11
"01001111111000000000000000000000"	-- 19: 	jr	%ra

);

signal shortened : std_logic_vector(6 downto 0):=(others=>'0');
begin  -- R_rom
  shortened<=addra(6 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
