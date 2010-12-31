library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity reg32bit is
  port(CLK: in std_logic;
       RESET: in std_logic;
       WE: in std_logic;
       LOW: in std_logic;
       HIGH: in std_logic;
       DIN: in std_logic_vector(31 downto 0);
       DOUT: out std_logic_vector(31 downto 0)
       );
end reg32bit;

architecture behav of reg32bit is

begin
  process(CLK)
  begin
    if rising_edge(clk) then
      if(RESET='1') then DOUT <=x"00000000";
      elsif WE='1' then
        if LOW='1' then DOUT(15 downto 0) <= DIN(15 downto 0);
        elsif HIGH='1' then DOUT(31 downto 16) <= DIN(15 downto 0);
        else DOUT <= DIN;
        end if;
      end if;
    end if;
  end process;
end behav;          
