library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

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
    RS_RX:in std_logic;
  RS_TX:out std_logic
);
end top;

architecture tp of top is

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
  signal clk : std_logic:='0';
  signal ZD1 : std_logic_vector(31 downto 0):=(others=>'0');
--  variable ZD;
  signal ZDP1 : std_logic_vector(3 downto 0):=(others=>'0');
  signal ZA1 : std_logic_vector(19 downto 0):=(others=>'0');
  signal XE11 : std_logic:='0';
  signal E2A1 : std_logic:='0';
  signal XE31 : std_logic:='0';
  signal XZBE1 : std_logic_vector(3 downto 0):=(others=>'0');
  signal XGA1 : std_logic:='0';
  signal XWA1 : std_logic:='0';
  signal XZCKE1 : std_logic:='0';
  signal ADVA1:std_logic:='0';
  signal XFT1 : std_logic:='0';
  signal XLBO1 : std_logic:='0';
  signal ZZA1 : std_logic:='0';
  type RAM_type is array (63 downto 0) of std_logic_vector(35 downto 0);
signal RAM : ram_type := (others=>(others=>'0'));
signal addr_keep_a,addr_keep_b,addr_keep_c : std_logic_vector(19 downto 0);
signal XE : std_logic_vector(2 downto 0) :=(others=> '0');
signal XWE_a,XWE_b,XWE_c : std_logic := '0';
signal XCKE : std_logic:='0';
signal data_inout : std_logic_vector(35 downto 0):=(others=>'0');
signal data_out_a,data_out_b,data_out_c : std_logic_vector(35 downto 0):=(others=>'0');
signal data_in_a,data_in_b,data_in_c : std_logic_vector(35 downto 0):=(others=>'0');
begin  -- tp
clk<=MCLK1;
AL:Allover port map(
  MCLK1=>clk,
   ZD  =>ZD1,
    ZDP =>ZDP1,
    ZA   =>ZA1,
    XE1 => XE11,
    E2A  =>E2A1,
    XE3  =>XE31,
    XZBE =>XZBE1,
    XGA  =>XGA1,
    XWA  =>XWA1,
    XZCKE=>XZCKE1,
    ADVA =>ADVA1,
    XFT =>XFT1,
    XLBO =>XLBO1,
    ZZA =>ZZA1
    RS_RX=>RS_RX,
  RS_TX=>RS_TX);
  process(clk)
    begin
      if (clk'event and clk='1') then
        addr_keep_a<=ZA1;
        addr_keep_b<=addr_keep_a;
        addr_keep_c<=addr_keep_b;
        XWE_a<=XWA1;
        XCKE<=XZCKE1;
        XWE_b<=XWE_a;
        XWE_c<=XWE_b;
        if XWE_c='0' then
          ZD1<=(others=>'Z');
          ZDP1<=(others=>'Z');
          RAM(conv_integer(addr_keep_c(5 downto 0)))(31 downto 0)<=ZD1;
        else
          data_out_a<=RAM(conv_integer(addr_keep_c(5 downto 0)));
          ZD1<=data_out_c(31 downto 0);
        end if;
        data_out_b<=data_out_a;
        data_out_c<=data_out_b;
        data_in_b<=data_in_a;
        data_in_c<=data_in_b;
      end if;
    end process;
end tp;
