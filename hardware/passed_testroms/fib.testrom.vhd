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
type rom_type is array (0 to 7) of std_logic_vector(31 downto 0);
constant rom : rom_type:=(
"00000000000000000000000000000000",
"11001100000000010000000000000101",
"11001100000000100000000000000001",
"00111100001000100000000000000000",
"00111100010000010000000000000000",
"00111000010000110000000000000000",
"00111000001001000000000000000000",
"11111100000000000000000000000000"
);

signal shortened : std_logic_vector(4 downto 0):=(others=>'0');

begin  -- R_rom
    process (clka)
  begin  -- process
    if rising_edge(clka) then
      douta<=rom(conv_integer(shortened));    
    end if;
  end process;
  shortened<=addra(4 downto 0);

end R_rom;







