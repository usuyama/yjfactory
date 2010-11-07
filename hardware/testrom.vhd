library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity PROM is
  
  port (
    clka  : in  std_logic;
--    wea   : in  std_logic_vector(0 downto 0);
    addra : in  std_logic_vector(31 downto 0);
--    dina  : in  std_logic_vector(31 downto 0);
    douta : out std_logic_vector(31 downto 0));

end PROM;

architecture R_rom of PROM is
type rom_type is array (31 downto 0) of std_logic_vector(31 downto 0);
constant rom : rom_type:= (
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"00110000011000000000000000000011",--beq r0 r3 -3       9
"10101000011000110000000000000001",--subi r3 r3 1       8
"10000100001000100001000000000000",--add r1 r2 r2       7
"10000100001000100000100000000000",--add r1 r2 r1       6
"10100100000000110000000000000101",--addi r0 r3 2       5
"10100100000000100000000000000001",--addi r0 r2 1       4
"10100100000000010000000000000001",--addi r0 r1 1       3
"10100100000000010000000000000001",--addi r0 r1 1       2
"10100100000000010000000000000001"--addi r0 r1 1        1
);

signal shortened : std_logic_vector(4 downto 0):=(others=>'0');
  
begin  -- R_rom
  shortened<=addra(4 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
