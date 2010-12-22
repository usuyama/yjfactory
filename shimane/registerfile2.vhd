library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity regfile is
  port(CLK: in std_logic;
--       RESET: in std_logic;
       WE : in std_logic;
       WE_MEM: in std_logic;
       LOW: in std_logic;
       HIGH: in std_logic;
       ISJAL: in std_logic;
       DIN: in std_logic_vector(31 downto 0);
       D_FRMEM: in std_logic_vector(31 downto 0);
       RET_ADRS: in std_logic_vector(31 downto 0);
       WSEL: in std_logic_vector(4 downto 0);
       WSEL_M: in std_logic_vector(4 downto 0);
       WF_EN: in std_logic;
       WFLAG: in std_logic_vector(4 downto 0);
       RSEL1 : in std_logic_vector(4 downto 0);
       RSEL2 : in std_logic_vector(4 downto 0);
       W_RESV: out std_logic_vector(31 downto 0):=(others=>'0');
       RD1 : out std_logic_vector(31 downto 0);
       RD2 : out std_logic_vector(31 downto 0)
       );
end regfile;


architecture behav of regfile is
signal data_in: std_logic_vector(31 downto 0);
type RegType is array(0 to 31) of std_logic_vector(31 downto 0);
signal reg:RegType:= (others =>(others => '0'));

begin
  RD1<=reg(conv_integer(RSEL1));
  RD2<=reg(conv_integer(RSEL2));
  data_in <= DIN when ISJAL='0' else RET_ADRS;
  
  process(clk)
  begin
    if rising_edge(clk) then
      if WE='1' then
        if LOW='1' then
          reg(conv_integer(WSEL))(31 downto 0) <= "0000000000000000"&DIN(15 downto 0);
        elsif HIGH='1' then
          reg(conv_integer(WSEL))(31 downto 16) <= DIN(15 downto 0);
        else
          reg(conv_integer(WSEL)) <= data_in;
        end if;
      end if;
      if WE_MEM='1' then
        reg(conv_integer(WSEL_M)) <= D_FRMEM;
      end if;
    end if;
  end process;

  process(CLK)
  begin
    if rising_edge(clk) then
--      if RESET='1' then W_RESV <= x"00000000"; end if;
      if WE='1' then W_RESV(conv_integer(WSEL)) <= '0'; end if;
      if WE_MEM='1' then W_RESV(conv_integer(WSEL_M)) <= '0'; end if;
      if WF_EN='1' then W_RESV(conv_integer(WFLAG))<= '1'; end if;
    end if;
  end process;
end behav;
