library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity IO_test is
  port(MCLK1: in std_logic;
       RS_RX: in std_logic;
       RS_TX: out std_logic
       );
end IO_test;

architecture test of IO_test is
  
  signal clk,iclk:std_logic;
  signal read_pos: std_logic_vector(7 downto 0):=(others=>'0');
  signal send_data: std_logic_vector(7 downto 0);
  signal dout: std_logic_vector(7 downto 0);
  signal send_busy: std_logic;
  signal recv_pos: std_logic_vector(7 downto 0):=(others=>'0');
  signal uart_go: std_logic:='0';

  signal get_data: std_logic_vector(7 downto 0);
  signal state: std_logic_vector(1 downto 0):="00";
  constant INIT: std_logic_vector(1 downto 0):="00";
--  constant RECEIVE_REQ: std_logic_vector(1 downto 0):="01";
--  constant DELAY_WAIT: std_logic_vector(1 downto 0):="10";
--  constant SEND_STATE: std_logic_vector(1 downto 0):="11";
  
  component IO_MODULE
    port( CLK: in std_logic;
          RS_RX : in std_logic;
          SD: in std_logic_vector (7 downto 0);
          READ_POS: in std_logic_vector (7 downto 0);
          GO: in std_logic;
          RS_TX : out std_logic;
          DOUT : out std_logic_vector (7 downto 0);  --received data
          RECV_POS: out std_logic_vector (7 downto 0);  -- receive 
          SEND_BUSY: out std_logic
          );
    end component;
  
begin
  ib: IBUFG port map (
    i=>MCLK1,
    o=>iclk);
  bg: BUFG port map (
    i=>iclk,
    o=>clk);

  IO_MOD:IO_MODULE port map(
    CLK=>clk,
    RS_RX=>RS_RX,
    SD=>send_data,
    READ_POS=>read_pos,
    GO=>uart_go,
    RS_TX=>RS_TX,
    DOUT=>dout,
    RECV_POS=>recv_pos,
    SEND_BUSY=>send_busy
    );

  process(clk)
  begin
    if rising_edge(clk) then
      case state is
        when "00"=>
          uart_go <= '1';
          send_data<=x"aa";
          state<="01";
        when "01" =>
          uart_go<='0';
          if(conv_integer(recv_pos)>conv_integer(read_pos)) then
            read_pos<=read_pos+1;
            state<="10";
          end if;
        when "10" =>
            send_data <= dout;
            if SEND_BUSY='0' and uart_go='0' then
              uart_go<='1';
              state<="01";
            else
              uart_go<='0';
            end if;

        when "11" =>
          if SEND_BUSY='0' and uart_go='0' then
            send_data <= get_data;
            uart_go<='1';
            state<="01";
          end if;
        when others => state <= "10";
      end case;
    end if;
  end process;
end test;
