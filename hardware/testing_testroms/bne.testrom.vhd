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

type rom_type is array (0 to 7) of std_logic_vector(31 downto 0);
  constant rom : rom_type:=(
	-- entry:
"00000000000000000000000000000000",
"11001100000000010000000000000001",
"11001100000000100000000000000010",
"00101000001000100000000000000010",
"11111100000000000000000000000000",
"11001100000000100000000000000001",
"00101000001000101111111111111010",
"01010100000000000000000000000100"

);

signal shortened : std_logic_vector(6 downto 0):=(others=>'0');
begin  -- R_rom
  shortened<=addra(6 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
