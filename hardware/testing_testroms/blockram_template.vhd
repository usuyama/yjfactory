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

type rom_type is array (0 to 5) of std_logic_vector(31 downto 0);
  constant rom : rom_type:=(
    "000000000000000000",
    "000000000000000000"
	-- entry:
);
signal read_a : std_logic_vector(6 downto 0);
signal shortened : std_logic_vector(6 downto 0):=(others=>'0');
begin  -- R_rom
  process(clk)
    if (clk'event and clk='1')then
      read_a<=addra;
    end if;
  end process;
  shortened<=read_a(6 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
