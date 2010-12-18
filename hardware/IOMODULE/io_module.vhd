library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IO_MODULE is
  port(
        CLK: in std_logic;
        RESET: in std_logic;
        RS_RX : in std_logic;
        SD: in std_logic_vector(7 downto 0);  -- send data
        READ_POS: in std_logic_vector (7 downto 0);
        GO: in std_logic;
        RS_TX : out std_logic;
        DOUT : out std_logic_vector (7 downto 0);  --received data
        RECV_POS: out std_logic_vector (7 downto 0);  -- receive 
        SEND_BUSY: out std_logic
        );
end IO_MODULE;

architecture cntl of IO_MODULE is
  component receiver3
    port(
      clk : in std_logic;
      rxd : in std_logic;
      buf_ok : out std_logic;
      received : out std_logic_vector (7 downto 0)
      );
  end component;
  signal buf_ok : std_logic := '0';
  signal received : std_logic_vector (7 downto 0);

  component u232c
    generic (wtime: std_logic_vector(15 downto 0) := x"1ADB");
    Port ( clk  : in  STD_LOGIC;
           data : in  STD_LOGIC_VECTOR (7 downto 0);
           go   : in  STD_LOGIC;
           busy : out STD_LOGIC;
           tx   : out STD_LOGIC);
  end component;
--  signal uart_go : std_logic := '0';
--  signal uart_busy : std_logic := '0';
--  signal send_data : std_logic_vector (7 downto 0);
  
  component SLDRAM
    port(
    clk : in std_logic;
    we : in std_logic;
    iadd : in std_logic_vector (7 downto 0); 
    oadd : in std_logic_vector (7 downto 0);
    din  : in std_logic_vector (7 downto 0);
    dout : out std_logic_vector(7 downto 0)
    );
  end component;
  signal we: std_logic := '0';
  signal iadd: std_logic_vector (7 downto 0) := (others => '0');
--  signal oadd: std_logic_vector (7 downto 0) := (others => '0');
  signal i_slddata: std_logic_vector (7 downto 0);
  signal iadrs_counter : std_logic_vector (7 downto 0) := (others => '0');
  signal state : std_logic_vector (1 downto 0) := "00";
  signal buffed_rx: std_logic := '1';
  signal buf_delay: std_logic:='0';
  
begin
  rs232c: u232c generic map (wtime=>x"1ADB")
  port map (
    clk=>clk,
    data=> SD,
    go=>GO,
    busy=>SEND_BUSY,
    tx=>rs_tx);
  receiver_0 : receiver3
  port map(
    clk => clk,
    rxd => buffed_rx,
    buf_ok => buf_ok,
    received => received);
  slddata_ram : SLDRAM
  port map(
    clk => clk,
    we => we,
    iadd => iadd,
    oadd => READ_POS,
    din => i_slddata,
    dout => DOUT
    );

  
  rx_latch : process(clk)
  begin
    if rising_edge(clk) then
      buffed_rx<=RS_RX;
    end if;
  end process rx_latch;

  RECV_POS<=iadrs_counter;
          
  receive_sld_data : process (clk)
  begin
    if rising_edge(clk) then
      if buf_ok = '1' then
        i_slddata <= received;
        iadd <= iadrs_counter;
        we <= '1';
        buf_delay<='1';
      else
        we <= '0';
        buf_delay<='0';
      end if;
      if RESET='1' then
        iadrs_counter<=x"00";
      elsif buf_delay='1' then
        iadrs_counter<=iadrs_counter+1;
      end if;
    end if;
  end process receive_sld_data;
end cntl;      
  -- send のプロセス。

--  send_data_process:process(clk)
--  begin
--    if rising_edge(clk) then
--      if GO='1' then
--        uart_go<=
--        send_data <= SD;
--      end if;
--    end if;
--  end process send_data_process;
--end cntl;
  
