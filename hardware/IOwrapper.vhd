library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity IO_wrapper is
  
  port (
    clk      : in  std_logic;
    RS_RX  : in  std_logic;
    RX_TX  : out std_logic;
    send_busy : out std_logic;
    recv_wait: out std_logic;
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

    recv_wait<='0' when (conv_integer(recv_pos)>conv_integer(read_pos)) else
                '1';
  process (clk)
  begin  -- process
    if (clk'event and clk='1') then
      if in_go='1' then
        if recv_wait='0' then
          read_pos<=read_pos+1;
--pos は次にほしいもの。今ほしいものは回す前のposにある。だから手順としてはwb->pos回す->次命令
        end if;
      end if;
    end if;
  end process;

end wrapper;
