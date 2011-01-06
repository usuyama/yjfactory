library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity instmem is
      port(
        CLK : in std_logic;
        BUBBLE: in std_logic;
        ADRS : in std_logic_vector (13 downto 0);
        DOUT:out std_logic_vector(31 downto 0)
    );
end instmem;

architecture behav of instmem is
type RamType is array(0 to 16383) of std_logic_vector(31 downto 0);
signal RAM:RamType :=(
"00010100000000011111011111001111",
"00010000000000010100000101000001",
"00010100000000100111101011100001",
"00010000000000100100000110111100",
"11001100000000010000000000010100",
"10110000001000010000000000001010",
"10110000010000010000000000011110",
"11110000001000110000000000000000",
"11110000010001000000000000000000",
"10010000001001010000000000001010",
"10010000001001100000000000011110",
"10010000001001110000000000001010",
"11100000110001110010100000000000",
"01011100110000100000000000000000",
"01010100000000000000000000001110",
others => (others => '0'));

begin
  process(clk) begin
   if rising_edge(clk) then
     if BUBBLE='1' then
       DOUT <= x"00000000";
     else
       DOUT <= RAM(conv_integer (ADRS));
     end if;
   end if;
  end process;
end behav;
