library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity top is
  port (clk:in std_logic);
end top;

architecture tp of top is

  component SRAM
    
  port (
    ZD    : inout std_logic_vector(31 downto 0);
    ZDP   : inout std_logic_vector(3 downto 0);
    ZA    : in    std_logic_vector(19 downto 0);
    XE1   : in    std_logic;
    E2A   : in    std_logic;
    XE3   : in    std_logic;
    XZBE  : in    std_logic_vector(3 downto 0);
    XGA   : in    std_logic;
    XWA   : in    std_logic;
    XZCKE : in    std_logic;
    ZCLKA : in    std_logic_vector(1 downto 0);
    ADVA : in std_logic;
    XFT : in std_logic;
    XLBO : in std_logic;
    ZZA : in std_logic);

  end component;

  component Allover
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
  RS_RX:in std_logic;
  RS_TX:out std_logic
);
  end component;
--  signal clk : std_logic:='0';
  signal ZD : std_logic_vector(31 downto 0):=(others=>'0');
--  variable ZD;
  signal ZDP : std_logic_vector(3 downto 0):=(others=>'0');
  signal ZA : std_logic_vector(19 downto 0):=(others=>'0');
  signal XE1 : std_logic:='0';
  signal E2A : std_logic:='0';
  signal XE3 : std_logic:='0';
  signal XZBE : std_logic_vector(3 downto 0):=(others=>'0');
  signal XGA : std_logic:='0';
  signal XWA : std_logic:='0';
  signal XZCKE : std_logic:='0';
  signal ADVA:std_logic:='0';
  signal XFT : std_logic:='0';
  signal XLBO : std_logic:='0';
  signal ZZA : std_logic:='0';
  signal RS_RX,RS_TX : std_logic:='0';
  signal clk1:std_logic;
  
begin  -- tp
clk1<=clk;
AL:Allover port map(
  MCLK1=>clk1,
   ZD  =>ZD,
    ZDP =>ZDP,
    ZA   =>ZA,
    XE1 => XE1,
    E2A  =>E2A,
    XE3  =>XE3,
    XZBE =>XZBE,
    XGA  =>XGA,
    XWA  =>XWA,
    XZCKE=>XZCKE,
    ADVA =>ADVA,
    XFT =>XFT,
    XLBO =>XLBO,
    ZZA =>ZZA,
	 RS_RX=>RS_RX,
	 RS_TX=>RS_TX);
SR:SRAM port map( 
   ZD  =>ZD,
    ZDP =>ZDP,
    ZA   =>ZA,
    XE1 => XE1,
    E2A  =>E2A,
    XE3  =>XE3,
    XZBE =>XZBE,
    XGA  =>XGA,
    XWA  =>XWA,
    XZCKE=>XZCKE,
    ZCLKA(0)=>clk,
  ZCLKA(1)=>clk,
    ADVA =>ADVA,
    XFT =>XFT,
    XLBO =>XLBO,
    ZZA =>ZZA);

end tp;
