library ieee;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;

library UNISIM;
use UNISIM.VComponents.all;


entity top is
    port (
    MCLK1 : in std_logic;
  ZD: inout std_logic_vector(31 downto 0);
  ZDP: inout std_logic_vector(3 downto 0);
  ZA:out std_logic_vector(19 downto 0);
  XE1 : out std_logic;
  E2A: out std_logic;
  XE3 : out std_logic;
  XZBE : out std_logic_vector(3 downto 0);
  XGA : out std_logic;
  XWA : out std_logic;
  XZCKE : out std_logic;
  ZCLKMA : out std_logic_vector(1 downto 0);
  ADVA : out std_logic;
  XFT : out std_logic;
  XLBO : out std_logic;
  ZZA : out std_logic;
  outdata0 : out std_logic_vector(7 downto 0);
  outdata1 : out std_logic_vector(7 downto 0);
  outdata2 : out std_logic_vector(7 downto 0);
  outdata3 : out std_logic_vector(7 downto 0);
  outdata4 : out std_logic_vector(7 downto 0);
  outdata5 : out std_logic_vector(7 downto 0);
  outdata6 : out std_logic_vector(7 downto 0);
  outdata7 : out std_logic_vector(7 downto 0)
--  RS_RX:in std_logic;
--  RS_TX:out std_logic
    );
end top;

architecture t_o_p of top is
component ledextd2 is
  port(
    leddata : in std_logic_vector(31 downto 0);
    leddotdata : in std_logic_vector(7 downto 0);
    outdata0 : out std_logic_vector(7 downto 0);
    outdata1 : out std_logic_vector(7 downto 0);
    outdata2 : out std_logic_vector(7 downto 0);
    outdata3 : out std_logic_vector(7 downto 0);
    outdata4 : out std_logic_vector(7 downto 0);
    outdata5 : out std_logic_vector(7 downto 0);
    outdata6 : out std_logic_vector(7 downto 0);
    outdata7 : out std_logic_vector(7 downto 0)); 
end component;
signal iclk,mclk : std_logic;
signal state : std_logic_vector(3 downto 0):=(others=>'0');
signal acc : std_logic_vector(31 downto 0):=(others=>'0');
signal acc2 : std_logic_vector(31 downto 0):=(others=>'0');
signal leddata : std_logic_vector(31 downto 0) := (others=>'0');
signal leddotdata : std_logic_vector(7 downto 0) := (others=>'0');
begin  -- t_o_p
  led : ledextd2 port map(leddata, leddotdata, outdata0, outdata1, outdata2,
                          outdata3, outdata4, outdata5, outdata6, outdata7);
  ZCLKMA(0)<=mclk;
  ZCLKMA(1)<=mclk;
  leddata<=acc2;
  ib : IBUFG port map (
    i => MCLK1,
    o => iclk);
  bg : BUFG port map (
    i => iclk,
    o => mclk);

  statemachine: process (mclk)
  begin  -- process statemachine
    if rising_edge(mclk) then
      case state is
        when "0000" =>
          acc<=x"aaaaaaaa";
          ZD<=x"00000000";
          ZDP<=x"0";
          ZA<=x"00000";
          XE1<='0';
          E2A<='1';
          XE3<='0';
          XZBE<="0000";
          XGA<='0';
          XWA<='1';
          XZCKE<='0';
          ADVA<='0';
          XFT<='0';
          XLBO<='1';
          ZZA<='0';
          state<="0001";
        when "0001" =>
          XWA<='0';
          ZA<=x"0000f";
          state<="0010";
        when "0010" =>
          ZA<=x"00000";
          ZD<=acc;
          XWA<='1';
          state<="0011";
        when "0011" =>
          ZD<=x"00000000";
          state<="0100";
        when "0100" =>
          ZA<=x"0000f";
          state<="0101";
        when "0101" =>
          ZA<=x"00000";
          state<="0110";
          ZD<=(others=>'Z');
        when  "0110"=>
          ZA<=x"00000";

          acc2<=ZD;
          state<="1111";
        when "1111" =>
--         acc2<=ZD;
--          ZD<=x"00000000";
        when others =>
			 state<="0000";
      end case;
    end if;
  end process statemachine;
  

end t_o_p;
