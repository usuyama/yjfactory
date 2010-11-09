library ieee;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity SRAM is
  
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

end SRAM;

architecture SR of SRAM is
signal clk : std_logic;
type RAM_type is array (63 downto 0) of std_logic_vector(35 downto 0);
signal RAM : ram_type := (others=>(others=>'0'));
signal addr_keep_a,addr_keep_b,addr_keep_c : std_logic_vector(19 downto 0);
signal XE : std_logic_vector(2 downto 0) :=(others=> '0');
signal XWE_a,XWE_b,XWE_c : std_logic := '0';
signal XCKE : std_logic:='0';
signal data_inout : std_logic_vector(35 downto 0):=(others=>'0');
signal data_out_a,data_out_b,data_out_c : std_logic_vector(35 downto 0):=(others=>'0');
signal data_in_a,data_in_b,data_in_c : std_logic_vector(35 downto 0):=(others=>'0');
begin  -- SR
clk<=ZCLKA(0);
  process(clk)
    begin
      if (clk'event and clk='1') then
        addr_keep_a<=ZA;
        addr_keep_b<=addr_keep_a;
        addr_keep_c<=addr_keep_b;
        XWE_a<=XWA;
        XCKE<=XZCKE;
        XWE_b<=XWE_a;
        XWE_c<=XWE_b;
        if XWE_c='0' then
          ZD<=(others=>'Z');
          ZDP<=(others=>'Z');
          RAM(conv_integer(addr_keep_c(5 downto 0)))(31 downto 0)<=ZD;
        else
          data_out_a<=RAM(conv_integer(addr_keep_c(5 downto 0)));
          ZD<=data_out_c(31 downto 0);
        end if;
        data_out_b<=data_out_a;
        data_out_c<=data_out_b;
        data_in_b<=data_in_a;
        data_in_c<=data_in_b;
      end if;
    end process;
end SR;
