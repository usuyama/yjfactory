library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_textio.all;

library STD;
use STD.textio.all;

entity ACC_TEST is
end ACC_TEST;

architecture SIM_ACC of ACC_TEST is
  component ACCUMLATOR
    port (CLK : in std_logic;
          Q : out std_logic_vector(7 downto 0));
  end component;
  file WRITE_FILE : text open write_mode is "/home/usuyama/report/hardware/6/out.txt";
  signal ans : std_logic_vector(7 downto 0) := x"00";
  signal clk : std_logic := '0';

begin  -- SIM_FADR

  P: process(clk)
    variable lo : line;
 begin
	clk <= not clk after 10 ps;
   if clk'event and clk = '1' then
   else
     hwrite(lo, ans, right, 2);
     writeline(WRITE_FILE, lo);
   end if;
 end process;

 ACC: ACCUMLATOR port map (clk, ans);

end SIM_ACC;
