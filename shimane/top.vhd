library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity top is
  Port ( MCLK1 : in  STD_LOGIC;
         RS_RX: in std_logic;
         RS_TX : out  STD_LOGIC;

         ZD : inout std_logic_vector (31 downto 0);
         ZDP : inout std_logic_vector (3 downto 0);

         ZA : out std_logic_vector (19 downto 0);
         XE1 : out std_logic;
         E2A : out std_logic;
         XE3 : out std_logic;
         XZBE : out std_logic_vector (3 downto 0);
         XGA : out std_logic;
         XWA : out std_logic;
         XZCKE : out std_logic;
         ZCLKMA : out std_logic_vector (1 downto 0);
         ADVA : out std_logic;
         XFT : out std_logic;
         XLBO : out std_logic;
         ZZA : out std_logic
         );
end top;

architecture behav of top is
  
  component processor is
    port(CLK: in std_logic;
         RESET: in std_logic;
         ANFANG: in std_logic;
         RS_RX: in std_logic;
         RS_TX: out std_logic;

         ZD : inout std_logic_vector (31 downto 0);
         ZDP : inout std_logic_vector (3 downto 0);

         ZA : out std_logic_vector (19 downto 0);
         XE1 : out std_logic;
         E2A : out std_logic;
         XE3 : out std_logic;
         XZBE : out std_logic_vector (3 downto 0);
         XGA : out std_logic;
         XWA : out std_logic;
         XZCKE : out std_logic;
--         ZCLKMA : out std_logic_vector (1 downto 0);
         ADVA : out std_logic;
         XFT : out std_logic;
         XLBO : out std_logic;
         ZZA : out std_logic
         );
  end component;

  signal clk,iclk: std_logic;
  signal reset: std_logic;
  signal state: std_logic_vector(1 downto 0):="00";
  signal start_sig: std_logic:='0';

begin
  ib: IBUFG port map (
    i=>MCLK1,
    o=>iclk);
  bg: BUFG port map (
    i=>iclk,
    o=>clk);

  myprocesser:processor port map(
    CLK=>clk,
    RESET=>reset,
    ANFANG=>start_sig,
    RS_RX=>RS_RX,
    RS_TX=>RS_TX,

    ZD =>ZD,
    ZDP=>ZDP,

    ZA=>ZA,
    XE1=>XE1,
    E2A=>E2A,
    XE3=>XE3,
    XZBE=>XZBE,
    XGA=>XGA,
    XWA =>XWA,
    XZCKE=>XZCKE,
--    ZCLKMA=>ZCLKMA,
    ADVA =>ADVA,
    XFT=>XFT,
    XLBO=>XLBO,
    ZZA=>ZZA
    );
  
  ZCLKMA(0)<=clk;
  ZCLKMA(1)<=clk;  
  process(clk)
  begin
    if rising_edge(clk) then
      case state is
        when "00"=>
          reset<='1';
          state<="01";
        when "01"=>
          reset<='0';
          state<="01";
        when others =>
          reset<='0';
      end case;
    end if;
  end process;
end behav;
