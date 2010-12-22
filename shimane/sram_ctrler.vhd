library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_1164.ALL;

entity SRAM_CTRLER is
  port( clk : in std_logic;
        we : in std_logic;
        datain : in std_logic_vector (35 downto 0);
        addrsin : in std_logic_vector (19 downto 0);
        
        ZD : inout std_logic_vector (31 downto 0);
        ZDP : inout std_logic_vector (3 downto 0);

        ZA : out std_logic_vector (19 downto 0);
        XE1 : out std_logic := '0';
        E2A : out std_logic := '1';
        XE3 : out std_logic := '0';
        XZBE : out std_logic_vector(3 downto 0) := (others => '0');
        XGA : out std_logic := '0';
        XWA : out std_logic;
        XZCKE : out std_logic := '0';
--        ZCLKMA : out std_logic_vector (1 downto 0);
        XLBO : out std_logic := '1';
        XFT : out std_logic := '1';
        ADVA : out std_logic := '0';
        ZZA : out std_logic := '0'
);
end SRAM_CTRLER;
architecture structure of SRAM_CTRLER is
  signal din_buf: std_logic_vector (31 downto 0) := x"00000001";
  signal din_buf2: std_logic_vector (31 downto 0) :=  x"00000001";
  signal pin_buf: std_logic_vector (3 downto 0) := (others => '1');
  signal pin_buf2: std_logic_vector (3 downto 0) := (others => '1');
  signal we_buf: std_logic := '0';
  signal we_buf2: std_logic := '0';
  
begin
  XWA <= not we;
  ZA <= addrsin;
--  ZCLKMA(0) <= clk;
--  ZCLKMA(1) <= clk;
  
  main : process(clk)
  begin
    if rising_edge(clk) then
      we_buf <= we;
--      we_buf2<= we_buf;
      din_buf <= datain (31 downto 0);
--      din_buf2<= din_buf;
      pin_buf <= datain (35 downto 32);
--      pin_buf2 <= pin_buf;
      if we_buf = '1' then
        ZD <= din_buf;
        ZDP <= pin_buf;
      else
        ZD <= (others => 'Z');
        ZDP <= (others => 'Z');
      end if;
    end if;
  end process;
end structure;
