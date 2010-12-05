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

type rom_type is array (0 to 107) of std_logic_vector(31 downto 0);
  constant rom : rom_type:=(
	-- entry:
"11001100000111100000000000000000",	-- 1: 	lli	%sp, 0
"10100100000111110000000000001000",	-- 2: 	addi	%ra, %r0, halt
"11001100000111011100001101010000",	-- 3: 	lli	%hp, 50000
"11001100000000010000000000000100",	-- 4: 	lli	%r1, 4
"11001100000000100000000000000011",	-- 5: 	lli	%r2, 3
"11001100000000110000000000000010",	-- 6: 	lli	%r3, 2
"11001100000001000000000000000001",	-- 7: 	lli	%r4, 1
"01010100000000000000000000001001",	-- 8: 	j	f.131
	-- halt:
"11111100000000000000000000000000",	-- 9: 	halt
	-- f.131:
"10000100001000100010100000000000",	-- 10: 	add	%r5, %r1, %r2
"10000100001000110011000000000000",	-- 11: 	add	%r6, %r1, %r3
"10000100001001000011100000000000",	-- 12: 	add	%r7, %r1, %r4
"10000100010000110100000000000000",	-- 13: 	add	%r8, %r2, %r3
"10000100010001000100100000000000",	-- 14: 	add	%r9, %r2, %r4
"10000100011001000101000000000000",	-- 15: 	add	%r10, %r3, %r4
"10000100101001100101100000000000",	-- 16: 	add	%r11, %r5, %r6
"10000100101001110110000000000000",	-- 17: 	add	%r12, %r5, %r7
"10000100101010000110100000000000",	-- 18: 	add	%r13, %r5, %r8
"10000100101010010111000000000000",	-- 19: 	add	%r14, %r5, %r9
"10000100101010100111100000000000",	-- 20: 	add	%r15, %r5, %r10
"10000100110001111000000000000000",	-- 21: 	add	%r16, %r6, %r7
"10000100110010001000100000000000",	-- 22: 	add	%r17, %r6, %r8
"10000100110010011001000000000000",	-- 23: 	add	%r18, %r6, %r9
"10000100110010101001100000000000",	-- 24: 	add	%r19, %r6, %r10
"10000100111010001010000000000000",	-- 25: 	add	%r20, %r7, %r8
"10000100111010011010100000000000",	-- 26: 	add	%r21, %r7, %r9
"10000100111010101011000000000000",	-- 27: 	add	%r22, %r7, %r10
"10000101000010011011100000000000",	-- 28: 	add	%r23, %r8, %r9
"10000101000010101100000000000000",	-- 29: 	add	%r24, %r8, %r10
"10000101001010101100100000000000",	-- 30: 	add	%r25, %r9, %r10
"10000101011011001101000000000000",	-- 31: 	add	%r26, %r11, %r12
"10000101011011011101100000000000",	-- 32: 	add	%r27, %r11, %r13
"00111111011111100000000000000000",	-- 33: 	sw	%r27, [%sp + 0]
"10000101011011101101100000000000",	-- 34: 	add	%r27, %r11, %r14
"00111111011111100000000000000001",	-- 35: 	sw	%r27, [%sp + 1]
"10000101011011111101100000000000",	-- 36: 	add	%r27, %r11, %r15
"00111111011111100000000000000010",	-- 37: 	sw	%r27, [%sp + 2]
"10000101011100001101100000000000",	-- 38: 	add	%r27, %r11, %r16
"00111111011111100000000000000011",	-- 39: 	sw	%r27, [%sp + 3]
"10000101011100011101100000000000",	-- 40: 	add	%r27, %r11, %r17
"00111111011111100000000000000100",	-- 41: 	sw	%r27, [%sp + 4]
"10000101011100101101100000000000",	-- 42: 	add	%r27, %r11, %r18
"00111111011111100000000000000101",	-- 43: 	sw	%r27, [%sp + 5]
"10000101011100111101100000000000",	-- 44: 	add	%r27, %r11, %r19
"00111111011111100000000000000110",	-- 45: 	sw	%r27, [%sp + 6]
"10000101011101001101100000000000",	-- 46: 	add	%r27, %r11, %r20
"00111111011111100000000000000111",	-- 47: 	sw	%r27, [%sp + 7]
"10000101011101011101100000000000",	-- 48: 	add	%r27, %r11, %r21
"00111111011111100000000000001000",	-- 49: 	sw	%r27, [%sp + 8]
"10000101011101101101100000000000",	-- 50: 	add	%r27, %r11, %r22
"00111111011111100000000000001001",	-- 51: 	sw	%r27, [%sp + 9]
"10000101011101111101100000000000",	-- 52: 	add	%r27, %r11, %r23
"00111111011111100000000000001010",	-- 53: 	sw	%r27, [%sp + 10]
"10000101011110001101100000000000",	-- 54: 	add	%r27, %r11, %r24
"00111111011111100000000000001011",	-- 55: 	sw	%r27, [%sp + 11]
"10000101011110011101100000000000",	-- 56: 	add	%r27, %r11, %r25
"10000100001000100000100000000000",	-- 57: 	add	%r1, %r1, %r2
"10000100001000110000100000000000",	-- 58: 	add	%r1, %r1, %r3
"10000100001001000000100000000000",	-- 59: 	add	%r1, %r1, %r4
"10000100001001010000100000000000",	-- 60: 	add	%r1, %r1, %r5
"10000100001001100000100000000000",	-- 61: 	add	%r1, %r1, %r6
"10000100001001110000100000000000",	-- 62: 	add	%r1, %r1, %r7
"10000100001010000000100000000000",	-- 63: 	add	%r1, %r1, %r8
"10000100001010010000100000000000",	-- 64: 	add	%r1, %r1, %r9
"10000100001010100000100000000000",	-- 65: 	add	%r1, %r1, %r10
"10000100001010110000100000000000",	-- 66: 	add	%r1, %r1, %r11
"10000100001011000000100000000000",	-- 67: 	add	%r1, %r1, %r12
"10000100001011010000100000000000",	-- 68: 	add	%r1, %r1, %r13
"10000100001011100000100000000000",	-- 69: 	add	%r1, %r1, %r14
"10000100001011110000100000000000",	-- 70: 	add	%r1, %r1, %r15
"10000100001100000000100000000000",	-- 71: 	add	%r1, %r1, %r16
"10000100001100010000100000000000",	-- 72: 	add	%r1, %r1, %r17
"10000100001100100000100000000000",	-- 73: 	add	%r1, %r1, %r18
"10000100001100110000100000000000",	-- 74: 	add	%r1, %r1, %r19
"10000100001101000000100000000000",	-- 75: 	add	%r1, %r1, %r20
"10000100001101010000100000000000",	-- 76: 	add	%r1, %r1, %r21
"10000100001101100000100000000000",	-- 77: 	add	%r1, %r1, %r22
"10000100001101110000100000000000",	-- 78: 	add	%r1, %r1, %r23
"10000100001110000000100000000000",	-- 79: 	add	%r1, %r1, %r24
"10000100001110010000100000000000",	-- 80: 	add	%r1, %r1, %r25
"10000100001110100000100000000000",	-- 81: 	add	%r1, %r1, %r26
"00111011110000100000000000000000",	-- 82: 	lw	%r2, [%sp + 0]
"10000100001000100000100000000000",	-- 83: 	add	%r1, %r1, %r2
"00111011110000100000000000000001",	-- 84: 	lw	%r2, [%sp + 1]
"10000100001000100000100000000000",	-- 85: 	add	%r1, %r1, %r2
"00111011110000100000000000000010",	-- 86: 	lw	%r2, [%sp + 2]
"10000100001000100000100000000000",	-- 87: 	add	%r1, %r1, %r2
"00111011110000100000000000000011",	-- 88: 	lw	%r2, [%sp + 3]
"10000100001000100000100000000000",	-- 89: 	add	%r1, %r1, %r2
"00111011110000100000000000000100",	-- 90: 	lw	%r2, [%sp + 4]
"10000100001000100000100000000000",	-- 91: 	add	%r1, %r1, %r2
"00111011110000100000000000000101",	-- 92: 	lw	%r2, [%sp + 5]
"10000100001000100000100000000000",	-- 93: 	add	%r1, %r1, %r2
"00111011110000100000000000000110",	-- 94: 	lw	%r2, [%sp + 6]
"10000100001000100000100000000000",	-- 95: 	add	%r1, %r1, %r2
"00111011110000100000000000000111",	-- 96: 	lw	%r2, [%sp + 7]
"10000100001000100000100000000000",	-- 97: 	add	%r1, %r1, %r2
"00111011110000100000000000001000",	-- 98: 	lw	%r2, [%sp + 8]
"10000100001000100000100000000000",	-- 99: 	add	%r1, %r1, %r2
"00111011110000100000000000001001",	-- 100: 	lw	%r2, [%sp + 9]
"10000100001000100000100000000000",	-- 101: 	add	%r1, %r1, %r2
"00111011110000100000000000001010",	-- 102: 	lw	%r2, [%sp + 10]
"10000100001000100000100000000000",	-- 103: 	add	%r1, %r1, %r2
"00111011110000100000000000001011",	-- 104: 	lw	%r2, [%sp + 11]
"10000100001000100000100000000000",	-- 105: 	add	%r1, %r1, %r2
"10000100001110110000100000000000",	-- 106: 	add	%r1, %r1, %r27
"10001000000000010000100000000000",	-- 107: 	sub	%r1, %r0, %r1
"01001111111000000000000000000000"	-- 108: 	jr	%ra
);

signal shortened : std_logic_vector(6 downto 0):=(others=>'0');
begin  -- R_rom
  shortened<=addra(6 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
