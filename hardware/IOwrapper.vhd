library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity IO_wrapper is
  
  port (
    clk      : in  std_logic;
    RS_RX  : in  std_logic;
    RX_TX  : out std_logic;
    io_busy : out std_logic;
    out_go: in std_logic;
    in_go:in std_logic
    SD : in std_logic_vector(7 downto 0);
    DOUT:out std_logic_vector(7 downto 0)
    );

end IO_wrapper;
architecture wrapper of IO_wrapper is
  component IO_MODULE
    port( CLK: in std_logic;
          RS_RX : in std_logic;
          SD: in std_logic_vector (7 downto 0);
          READ_POS: in std_logic_vector (7 downto 0);
          GO: in std_logic;
          RS_TX : out std_logic;
          DOUT : out std_logic_vector (7 downto 0);  --received data
          RECV_POS: out std_logic_vector (7 downto 0);  -- receive 
          SEND_BUSY: out std_logic;
          );
    end component;
  signal read_pos : std_logic_vector(7 downto 0) := (others=>'0');
  signal recv_pos : std_logic_vector(7 downto 0) := (others=>'0');
  signal state : std_logic_vector(1 downto 0):=(others=>'0');
  signal recv_wait : std_logic := '0';
  signal send_busy : std_logic;
begin  -- wrapper
  IO_MOD:IO_MODULE port map(
    CLK=>clk,
    RS_RX=>RS_RX,
    SD=>SD,
    READ_POS=>read_pos,
    GO=>out_go,
    RS_TX=>RS_TX_i,
    DOUT=>dout,
    RECV_POS=>recv_pos,
    SEND_BUSY=>send_busy
    );
  process (clk)
    io_busy<=send_busy or recv_wait;
  begin  -- process
    if (clk'event and clk='1') then
      if in_go='1' then
        if (conv_integer(RECV_POS)>conv_integer(READ_POS)) then
          read_pos<=read_pos+1;
          recv_wait='0';
          else
            recv_wait='1';
        end if;
      end if;
    end if;
  end process;

end wrapper;
