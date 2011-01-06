library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity PROM is

  port (
    clka  : in  std_logic;
    wea   : in  std_logic_vector(0 downto 0);
    addra : in  std_logic_vector(13 downto 0);
    dina  : in  std_logic_vector(31 downto 0);
    douta : out std_logic_vector(31 downto 0));

end PROM;

architecture R_rom of PROM is

-- %f0 = 19.6666666666667 expected
-- %f0 = 01000001100111010101010101010101

type rom_type is array (0 to 22) of std_logic_vector(31 downto 0);
  constant rom : rom_type:=(
	-- entry:
"11001100000111100000000000000000",	-- 0: 	lli	%sp, 0
"10100100000111110000000000010000",	-- 1: 	addi	%ra, %r0, halt
"11001100000111011100001101010000",	-- 2: 	lli	%hp, 50000
"00010100000000000000000000000000",	-- 3: 	llif	%f0, 1.000000
"00010000000000000011111110000000",	-- 4: 	lhif	%f0, 1.000000
"00010100000000010000000000000000",	-- 5: 	llif	%f1, 2.000000
"00010000000000010100000000000000",	-- 6: 	lhif	%f1, 2.000000
"00010100000000100000000000000000",	-- 7: 	llif	%f2, 3.000000
"00010000000000100100000001000000",	-- 8: 	lhif	%f2, 3.000000
"00010100000000110000000000000000",	-- 9: 	llif	%f3, 4.000000
"00010000000000110100000010000000",	-- 10: 	lhif	%f3, 4.000000
"00010100000001000000000000000000",	-- 11: 	llif	%f4, 5.000000
"00010000000001000100000010100000",	-- 12: 	lhif	%f4, 5.000000
"00010100000001010000000000000000",	-- 13: 	llif	%f5, 1.000000
"00010000000001010011111110000000",	-- 14: 	lhif	%f5, 1.000000
"01010100000000000000000000010001",	-- 15: 	j	f.100
	-- halt:
"11111100000000000000000000000000",	-- 16: 	halt
	-- f.100:
"11101000000000010000000000000000",	-- 17: 	mulf	%f0, %f0, %f1
"11101100000000100000000000000000",	-- 18: 	divf	%f0, %f0, %f2
"11101000011001000000100000000000",	-- 19: 	mulf	%f1, %f3, %f4
"11100000000000010000000000000000",	-- 20: 	addf	%f0, %f0, %f1
"11100100000001010000000000000000",	-- 21: 	subf	%f0, %f0, %f5
"01001111111000000000000000000000"	-- 22: 	jr	%ra
);

signal shortened : std_logic_vector(13 downto 0):=(others=>'0');
begin  -- R_rom
  process (clka)
  begin  -- process
    if rising_edge(clka) then
      douta<=rom(conv_integer(shortened));    
    end if;
  end process;
  shortened<=addra(13 downto 0);
end R_rom;
