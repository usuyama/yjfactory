library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


-- iadd のアドレスの値が、dout から常に出ている。
-- we が 1 の時は、iadd のアドレスに、din の値が書き込まれる。
-- we が 1 の時の dout の出力は、不明。(io テスト用なので、実際の instruction memory としては使わない事。)
entity SLDRAM is
      port(
        clk : in std_logic;
        we : in std_logic;
        iadd : in std_logic_vector (7 downto 0); 
        oadd : in std_logic_vector (7 downto 0);
        din  : in std_logic_vector (7 downto 0);
        dout : out std_logic_vector(7 downto 0)
    );
end SLDRAM;

architecture behav of SLDRAM is
type RamType is array(0 to 255) of std_logic_vector(7 downto 0);
signal RAM : RamType;
begin
  process(clk) begin
   if rising_edge(clk) then
     if(we = '1') then
       RAM(conv_integer(iadd)) <= din;
     end if;
     dout <= RAM(conv_integer(oadd));
   end if;
  end process;
end behav;
