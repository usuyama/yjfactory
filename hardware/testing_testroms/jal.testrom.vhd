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

type rom_type is array (0 to 21) of std_logic_vector(31 downto 0);
  constant rom : rom_type:=(
	-- entry:
"11001100000000010000000000000000",	-- 1: 	lli	%r1, 0
"11001100000000100000000000000001",	-- 2: 	lli	%r2, 1
"11001100000000110000000000000010",	-- 3: 	lli	%r3, 2
"10100100000001000000000000000110",	-- 4: 	addi	%r4, %r0, f1.return_1
"01011000000000000000000000000110",	-- 5: 	jal	f1.return_1
"01010100000000000000000000001000",	-- 6: 	j	f2.jalr_f1
	-- f1.return_1:
"11001100000000010000000000000001",	-- 7: 	lli	%r1, 1
"01001111111000000000000000000000",	-- 8: 	jr	%ra
	-- f2.jalr_f1:
"01010000100000000000000000000000",	-- 9: 	jalr	%r4
	-- f3.jal_after_add:
"10000100010000110000100000000000",	-- 10: 	add	%r1, %r2, %r3
"01011000000000000000000000000110",	-- 11: 	jal	f1.return_1
	-- f4.jal_after_branch:
"11001100000000010000000000000000",	-- 12: 	lli	%r1, 0
"11001100000000100000000000000001",	-- 13: 	lli	%r2, 1
"00110000010000010000000000000001",	-- 14: 	bgt	%r2, %r1, else
	-- else:
"01011000000000000000000000000110",	-- 15: 	jal	f1.return_1
	-- f5.jalr_after_mul:
"10001100010000110000100000000000",	-- 16: 	mul	%r1, %r2, %r3
"01010000100000000000000000000000",	-- 17: 	jalr	%r4
	-- f6.jalr_after_branch:
"11001100000000010000000000000000",	-- 18: 	lli	%r1, 0
"11001100000000100000000000000001",	-- 19: 	lli	%r2, 1
"00110000001000101111111111111011",	-- 20: 	bgt	%r1, %r2, else
"01010000100000000000000000000000",	-- 21: 	jalr	%r4
"11111100000000000000000000000000"	-- 22: 	halt
);

signal shortened : std_logic_vector(6 downto 0):=(others=>'0');
begin  -- R_rom
  shortened<=addra(6 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
