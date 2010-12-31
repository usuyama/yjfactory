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
signal RAM : RamType:=(
x"3f",x"80",x"00",x"00",x"3f",x"80",x"00",x"00",x"3f",x"80",x"00",x"00",x"3f",x"80",x"00",x"00",
x"41",x"f0",x"00",x"00",x"3f",x"80",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",
x"43",x"7f",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"01",x"00",x"00",x"00",x"02",
x"00",x"00",x"00",x"00",x"42",x"20",x"00",x"00",x"41",x"20",x"00",x"00",x"42",x"20",x"00",x"00",
x"00",x"00",x"00",x"00",x"c2",x"20",x"00",x"00",x"00",x"00",x"00",x"00",x"3f",x"80",x"00",x"00",
x"3e",x"4c",x"cc",x"cd",x"42",x"80",x"00",x"00",x"43",x"7f",x"00",x"00",x"43",x"7f",x"00",x"00",
x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"04",x"00",x"00",x"00",x"03",x"00",x"00",x"00",x"01",
x"00",x"00",x"00",x"00",x"41",x"f0",x"00",x"00",x"41",x"f0",x"00",x"00",x"41",x"f0",x"00",x"00",
x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"3f",x"80",x"00",x"00",
x"3f",x"80",x"00",x"00",x"43",x"7f",x"00",x"00",x"43",x"7f",x"00",x"00",x"43",x"7f",x"00",x"00",
x"43",x"7f",x"00",x"00",x"ff",x"ff",x"ff",x"ff",x"00",x"00",x"00",x"00",x"ff",x"ff",x"ff",x"ff",
x"00",x"00",x"00",x"01",x"ff",x"ff",x"ff",x"ff",x"ff",x"ff",x"ff",x"ff",x"00",x"00",x"00",x"63",
x"00",x"00",x"00",x"00",x"00",x"00",x"00",x"01",x"ff",x"ff",x"ff",x"ff",x"ff",x"ff",x"ff",x"ff",others=>(others=>'0'));

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
