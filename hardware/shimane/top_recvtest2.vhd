library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity top is
  port( MCLK1 : in std_logic;
        RS_RX : in std_logic;
        RS_TX : out std_logic
        );
end top;

architecture cntl of top is
  signal clk,iclk: std_logic;
  component receiver2
    port(
      clk : in std_logic;
      rxd : in std_logic;
      loaded : out std_logic;
      buf_ok : out std_logic;
      received : out std_logic_vector (7 downto 0)
      );
  end component;
  signal loaded : std_logic := '0';
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
  signal uart_go : std_logic := '0';
  signal uart_busy : std_logic := '0';
  signal send_data : std_logic_vector (7 downto 0);
  
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
  signal oadd: std_logic_vector (7 downto 0) := (others => '0');
  signal o_slddata: std_logic_vector (7 downto 0);
  signal i_slddata: std_logic_vector (7 downto 0);
  signal iadrs_counter : std_logic_vector (7 downto 0) := (others => '0');
  signal state : std_logic_vector (3 downto 0) := "0000";
  signal buffed_rx: std_logic := '1';

begin
  ib: IBUFG port map (
    i=>MCLK1,
    o=>iclk);
  bg: BUFG port map (
    i=>iclk,
    o=>clk);
  rs232c: u232c generic map (wtime=>x"1ADB")
  port map (
    clk=>clk,
    data=> send_data,
    go=>uart_go,
    busy=>uart_busy,
    tx=>rs_tx);
  receiver_0 : receiver2
  port map(
    clk => clk,
    rxd => buffed_rx,
    loaded => loaded,
    buf_ok => buf_ok,
    received => received);
  slddata_ram : SLDRAM
  port map(
    clk => clk,
    we => we,
    iadd => iadd,
    oadd => oadd,
    din => i_slddata,
    dout => o_slddata
    );

  rx_latch : process(clk)
  begin
    if rising_edge(clk) then
      buffed_rx<=RS_RX;
    end if;
  end process rx_latch;
  
  load_inst : process (clk)
  --  variable count2 : std_logic_vector (15 downto 0) := x"FFF0";
  begin
    if rising_edge(clk) then
        if buf_ok = '1' then
          i_slddata <= received;
          iadd <= iadrs_counter;
          we <= '1';
          iadrs_counter <= iadrs_counter + 1;
        else
          we <= '0';
        end if;
    end if;
  end process load_inst;
  
  recv_send_inst: process(clk)
  begin
    if rising_edge(clk) then
      case state is
      when "0000" =>
        uart_go <= '1';
        send_data <= x"aa";
        state <= state+1;
      when "0001" =>
        uart_go <= '0';
        if(loaded = '1') then
          state <= state+1;
        end if;
      when "0010" =>
        if(oadd < 50) and uart_busy = '0' and uart_go = '0' then
          send_data <= o_slddata;
          uart_go <= '1';
          oadd <= oadd+1;
        else
          uart_go <= '0';
        end if;
      when others =>
        state <= state;
      end case;
    end if;
  end process recv_send_inst;
end cntl;
