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
"00010100000010111110101110000101",
"00010000000010110100000110100001",
"00010100000011101100001010001111",
"00010000000011100100000101000001",
"00010100000011010000000000000000",
"00010000000011010100001100010000",
"11110001011100000000000000000000",
"11110001110100000000000000000000",
"11110001101100000000000000000000",
"01010100000000000000000000001001",
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
