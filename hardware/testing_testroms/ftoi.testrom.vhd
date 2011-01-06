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

type rom_type is array (0 to 12) of std_logic_vector(31 downto 0);
  constant rom : rom_type:=(
	-- entry:
"11001100000000010000000000000001",	-- 1: 	lli	%r1, 1
"01011000000000000000000000001000",	-- 2: 	jal	f
"11001100000000010000000000001010",	-- 3: 	lli	%r1, 10
"01011000000000000000000000001000",	-- 4: 	jal	f
"11001100000000011111111110000000",	-- 5: 	lli	%r1, -128
"11001000000000011111111111111111",	-- 6: 	lhi	%r1, -128
"01011000000000000000000000001000",	-- 7: 	jal	f
"11111100000000000000000000000000",	-- 8: 	halt	
	-- f:
"01100000001000000000000000000000",	-- 9: 	itof	%f0, %r1
"01100100000000100000000000000000",	-- 10: 	ftoi	%r2, %f0
"01111100010000010000000000000000",	-- 11: 	movi2f	%f1, %r2
"01011100001000110000000000000000",	-- 12: 	movf2i	%r3, %f1
"01001111111000000000000000000000"	-- 13: 	jr	%ra
);

signal shortened : std_logic_vector(6 downto 0):=(others=>'0');
begin  -- R_rom
  shortened<=addra(6 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
