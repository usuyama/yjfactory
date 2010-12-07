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

-- %f0 = 144.0
-- 01000011000100000000000000000000
type rom_type is array (0 to 36) of std_logic_vector(31 downto 0);
  constant rom : rom_type:=(
	-- entry:
"11001100000111100000000000000000",	-- 0: 	lli	%sp, 0
"10100100000111110000000000000110",	-- 1: 	addi	%ra, %r0, halt
"11001100000111011100001101010000",	-- 2: 	lli	%hp, 50000
"00010100000000000000000000000000",	-- 3: 	llif	%f0, 10.000000
"00010000000000000100000100100000",	-- 4: 	lhif	%f0, 10.000000
"01010100000000000000000000000111",	-- 5: 	j	fib.98
	-- halt:
"11111100000000000000000000000000",	-- 6: 	halt
	-- fib.98:
"00010100000000011100110011001101",	-- 7: 	llif	%f1, 0.100000
"00010000000000010011110111001100",	-- 8: 	lhif	%f1, 0.100000
"00100000001000000000000000011001",	-- 9: 	bgtf	%f1, %f0, bgtf_else.230
"00010100000000010000000000000000",	-- 10: 	llif	%f1, 1.000000
"00010000000000010011111110000000",	-- 11: 	lhif	%f1, 1.000000
"11100100000000010000100000000000",	-- 12: 	subf	%f1, %f0, %f1
"10110000000111100000000000000000",	-- 13: 	sf	%f0, [%sp + 0]
"00001100001000000000000000000000",	-- 14: 	movf	%f0, %f1
"00111111111111100000000000000001",	-- 15: 	sw	%ra, [%sp + 1]
"10100111110111100000000000000010",	-- 16: 	addi	%sp, %sp, 2
"01011000000000000000000000000111",	-- 17: 	jal	fib.98
"10101011110111100000000000000010",	-- 18: 	subi	%sp, %sp, 2
"00111011110111110000000000000001",	-- 19: 	lw	%ra, [%sp + 1]
"00010100000000010000000000000000",	-- 20: 	llif	%f1, 2.000000
"00010000000000010100000000000000",	-- 21: 	lhif	%f1, 2.000000
"10010011110000100000000000000000",	-- 22: 	lf	%f2, [%sp + 0]
"11100100010000010000100000000000",	-- 23: 	subf	%f1, %f2, %f1
"10110000000111100000000000000001",	-- 24: 	sf	%f0, [%sp + 1]
"00001100001000000000000000000000",	-- 25: 	movf	%f0, %f1
"00111111111111100000000000000010",	-- 26: 	sw	%ra, [%sp + 2]
"10100111110111100000000000000011",	-- 27: 	addi	%sp, %sp, 3
"01011000000000000000000000000111",	-- 28: 	jal	fib.98
"10101011110111100000000000000011",	-- 29: 	subi	%sp, %sp, 3
"00111011110111110000000000000010",	-- 30: 	lw	%ra, [%sp + 2]
"10010011110000010000000000000001",	-- 31: 	lf	%f1, [%sp + 1]
"11100000001000000000000000000000",	-- 32: 	addf	%f0, %f1, %f0
"01001111111000000000000000000000",	-- 33: 	jr	%ra
	-- bgtf_else.230:
"00010100000000000000000000000000",	-- 34: 	llif	%f0, 1.000000
"00010000000000000011111110000000",	-- 35: 	lhif	%f0, 1.000000
"01001111111000000000000000000000",	-- 36: 	jr	%ra

);

signal shortened : std_logic_vector(6 downto 0):=(others=>'0');
begin  -- R_rom
  shortened<=addra(6 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
