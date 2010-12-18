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
type rom_type is array (0 to 19) of std_logic_vector(31 downto 0);
  constant rom : rom_type:=(
	-- entry:
"11001000000111100000000000000000",	-- 1: 	lli	%sp, 0
"10100100000111110000000000001000",	-- 2: 	addi	%ra, %r0, halt
"11001000000111011100001101010000",	-- 3: 	lli	%hp, 50000
"11001000000000010000000000000001",	-- 4: 	lli	%r1, 1
"11001000000000100000000000000010",	-- 5: 	lli	%r2, 2
"11001000000000110000000000000011",	-- 6: 	lli	%r3, 3
"11001000000001000000000000000011",	-- 7: 	lli	%r4, 3
"01010100000000000000000000001001",	-- 8: 	j	f.90
	-- halt:
"11111100000000000000000000000000",	-- 9: 	halt
	-- f.90:
"00110000010000010000000000000011",	-- 10: 	bgt	%r2, %r1, bgt_else.215
"11001000000000010000000000101100",	-- 11: 	lli	%r1, 44
"01001111111000000000000000000000",	-- 12: 	jr	%ra
	-- bgt_else.215:
"00110000010000110000000000000110",	-- 13: 	bgt	%r2, %r3, bgt_else.216
"00101000011001000000000000000011",	-- 14: 	bneq	%r3, %r4, bneq_else.217
"11001000000000010000000000001011",	-- 15: 	lli	%r1, 11
"01001111111000000000000000000000",	-- 16: 	jr	%ra
	-- bneq_else.217:
"11001000000000010000000000010110",	-- 17: 	lli	%r1, 22
"01001111111000000000000000000000",	-- 18: 	jr	%ra
	-- bgt_else.216:
"11001000000000010000000000100001",	-- 19: 	lli	%r1, 33
"01001111111000000000000000000000"	-- 20: 	jr	%ra

);

signal shortened : std_logic_vector(6 downto 0):=(others=>'0');
begin  -- R_rom
  shortened<=addra(6 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
