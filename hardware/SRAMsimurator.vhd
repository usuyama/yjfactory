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
type RAM_type is array (262143 downto 0) of std_logic_vector(35 downto 0);
signal RAM : ram_type := (others=>(others=>'0'));
signal addr_keep_a,addr_keep_b,addr_keep_c : std_logic_vector(19 downto 0):=(others=>'0');
signal XE : std_logic_vector(2 downto 0) :=(others=> '0');
signal XWE_a,XWE_b,XWE_c : std_logic := '1';
signal XCKE : std_logic:='0';
signal data_inout : std_logic_vector(35 downto 0):=(others=>'0');
signal data_out_a,data_out_b,data_out_c : std_logic_vector(35 downto 0):=(others=>'0');
signal data_in_a,data_in_b,data_in_c : std_logic_vector(31 downto 0):=(others=>'0');
signal state : std_logic_vector(1 downto 0) := (others=>'0');
begin  -- SR
clk<=ZCLKA(0);
ZD(31 downto 0)<=(others=>'Z') when state="01" else
     data_out_a(31 downto 0) when state="00";
RAM(conv_integer(addr_keep_a(17 downto 0)))(31 downto 0)<=ZD when state="01";
data_out_a<=RAM(conv_integer(addr_keep_a(17 downto 0)));
process(clk)
    begin
      if (clk'event and clk='1') then

        addr_keep_a<=ZA;
        addr_keep_b<=addr_keep_a;
        XWE_a<=XWA;
        XCKE<=XZCKE;
        data_in_a<=ZD;
        if XWE_a='0' then
          state<="10";
        else
          if XWA='0' then
            state<="01";
          else
            state<="00";

          end if;
        end if;
      end if;
    end process;
end SR;
