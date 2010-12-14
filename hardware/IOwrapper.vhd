library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity IO_wrapper is
  port (
    clk      : in  std_logic;
    RESET:in std_logic;
    RS_RX  : in  std_logic;
    RS_TX  : out std_logic;
    out_go: in std_logic;
    in_go:in std_logic;
    SD : in std_logic_vector(7 downto 0);
    send_busy : out std_logic;
    recv_wait: out std_logic;
    DOUT:out std_logic_vector(7 downto 0)
    );

end IO_wrapper;
architecture wrapper of IO_wrapper is
  component IO_MODULE
    port( CLK: in std_logic;
          RESET: in std_logic;
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
  signal read_pos : std_logic_vector(7 downto 0) := (others=>'0');
  signal recv_pos : std_logic_vector(7 downto 0) := (others=>'0');
--  signal flt_wait : std_logic := '0';
  signal memout: std_logic_vector(7 downto 0);
  signal count: std_logic_vector(1 downto 0);
  
begin  -- wrapper
  IO_MOD:IO_MODULE port map(
    CLK=>clk,
    RESET=>RESET,
    RS_RX=>RS_RX,
    SD=>SD,
    READ_POS=>read_pos,
    GO=>out_go,
    RS_TX=>RS_TX,
    DOUT=>memout,
    RECV_POS=>recv_pos,
    SEND_BUSY=>send_busy
    );

  -- block ram に サーバからのデータはたまっている
  DOUT<=memout;

  recv_wait<='0' when (conv_integer(recv_pos)>conv_integer(read_pos)) else
                '1';
--  flt_wait<='0' when (conv_integer(recv_pos)>conv_integer(read_pos)+3) else '1';
  
  --for recvf
  -- flt_wait ='0' の時しか、recvf_goが起たない事を想定。
  -- recvf_go を入れてから、5clock後に、doutに欲しいデータが出てくるはず。
--  process(clk)
--  begin
--  if rising_edge(clk) then
--    -- 1st clock
--    if recvf_go='1' then
--      read_pos<=read_pos+1;
--      float_receiving<='1';
--      count<="11";
--    end if;
--    if float_receiving='1' then
--      -- 5th clock
--      if count="00" then
--        float_receiving<='0';
--        FLT_OUT<=buf(23 downto 0)&memout;
--      -- 2nd,3rd,4th clock
--      else
--        read_pos<=read_pos+1;
--        buf<=buf(23 downto 0)&memout;
--        count<=count-1;
--      end if;
--    end if;
--  end if;
--  end process;
     
  process (clk)
  begin  -- process
    if rising_edge(clk) then
      if in_go='1' then
          read_pos<=read_pos+1;
--pos は次にほしいもの。今ほしいものは回す前のposにある。だから手順としてはwb->pos回す->次命令
      end if;
    end if;
  end process;
end wrapper;
