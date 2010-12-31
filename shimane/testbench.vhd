library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity testbench is
end testbench;

architecture behav of testbench is
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
         ZCLKMA : out std_logic_vector (1 downto 0);
         ADVA : out std_logic;
         XFT : out std_logic;
         XLBO : out std_logic;
         ZZA : out std_logic
         );
  end component;

signal clk: std_logic;
signal reset: std_logic:='1';
signal state: std_logic_vector(1 downto 0):="00";
signal drop: std_logic:='0';
signal rs_rx: std_logic:='1';
signal anfang: std_logic:='0';
signal zd: std_logic_vector(31 downto 0);
signal zp : std_logic_vector(3 downto 0);
signal za: std_logic_vector(19 downto 0);
signal clk2:std_logic_vector(1 downto 0);
begin
  cpu:processor port map(
    CLK=>clk,
    RESET=>reset,
    ANFANG=>anfang,
    RS_RX=>rs_rx,
    RS_TX=>drop,

    ZD =>zd,
    ZDP=>zp,

    ZA=>za,
    XE1=>drop,
    E2A=>drop,
    XE3=>drop,
    XZBE=>zp,
    XGA=>drop,
    XWA =>drop,
    XZCKE=>drop,
    ZCLKMA=>clk2,
    ADVA =>drop,
    XFT=>drop,
    XLBO=>drop,
    ZZA=>drop
    );

  process(clk)
  begin
    if rising_edge(clk) then
  case state is
    when "00" => reset <= '1';
                 state<="01";
    when others => reset <= '0';
  end case;
  end if;
  end process;
  
  process
  begin
    clk <= '1';
    wait for 1 ns;
    clk<='0';
    wait for 1 ns;
  end process;

end behav;
