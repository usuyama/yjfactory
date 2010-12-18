library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity bench is
  
port (
  mclk1 : in std_logic;
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
  ZZA : out std_logic);
end bench;

architecture eb of bench is


  component FMUL
    port (
      A : in  std_logic_vector(31 downto 0);
      B : in  std_logic_vector(31 downto 0);
      P : out std_logic_vector(31 downto 0));
  end component;
signal aa,bb,pp : std_logic_vector(31 downto 0):=(others=>'0');

begin
FM : FMUL port map (
  A => aa,
  B => bb,
  P => pp);


  process(mclk1)
  begin
    if (mclk1'event and mclk1='1') then
      aa(31)<='0';
      bb(31)<='0';
      aa(30 downto 23)<=aa(30 downto 23);
      bb(30 downto 23)<=bb(30 downto 23);
      aa(22 downto 0)<=aa(22 downto 0);
      bb(22 downto 0)<=bb(22 downto 0);
    end if;
	 end process;
end eb;
