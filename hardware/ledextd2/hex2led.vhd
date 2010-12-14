library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity hex2led is
  Port (
    h : in STD_LOGIC_VECTOR(3 downto 0);
    led : out STD_LOGIC_VECTOR(6 downto 0)
    );
end hex2led;

architecture Behavioral of hex2led is
  signal ledtmp : STD_LOGIC_VECTOR(0 to 6);
begin

  --led <= ledtmp(ledtmp'reverse_range);
  led(0) <= ledtmp(0);
  led(1) <= ledtmp(1);
  led(2) <= ledtmp(2);
  led(3) <= ledtmp(3);
  led(4) <= ledtmp(4);
  led(5) <= ledtmp(5);
  led(6) <= ledtmp(6);
  ledtmp <= 
    "0001000" when h = "0000" else  -- 0--0で点灯
    "1101101" when h = "0001" else  -- 1
    "0100010" when h = "0010" else  -- 2
    "0100100" when h = "0011" else  -- 3
    "1000101" when h = "0100" else  -- 4
    "0010100" when h = "0101" else  -- 5
    "0010000" when h = "0110" else  -- 6
    "0101101" when h = "0111" else  -- 7
    "0000000" when h = "1000" else  -- 8
    "0000100" when h = "1001" else  -- 9
    "0000001" when h = "1010" else  -- A
    "1010000" when h = "1011" else  -- b
    "1110010" when h = "1100" else  -- c
    "1100000" when h = "1101" else  -- d
    "0010010" when h = "1110" else  -- E
    "0010011";                      -- F

end Behavioral;

