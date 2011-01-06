library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity hazard_cntl is
  port(USE_SRC: in std_logic_vector(1 downto 0);
       USE_FP: in std_logic_vector(1 downto 0);
       RSEL1: in std_logic_vector(4 downto 0);
       RSEL2: in std_logic_vector(4 downto 0);
--       FRSEL1:in std_logic_vector(4 downto 0);
--       FRSEL2:in std_logic_vector(4 downto 0);
       BR_COND: in std_logic;
       REG_WRESV: in std_logic_vector(31 downto 0);
       FREG_WRESV: in std_logic_vector(31 downto 0);
       SEND_REQ: in std_logic;
       SEND_BUSY: in std_logic;
       RECV_REQ: in std_logic;
       RECV_WAIT: in std_logic;
       STALL: out std_logic;
       BUBBLE: out std_logic);
  end hazard_cntl;

architecture RTL of hazard_cntl is
  
signal src1_reg: std_logic;
signal src2_reg: std_logic;
signal src_regok: std_logic;
signal fpr_ok:std_logic;
signal fp1_ok:std_logic;
signal fp2_ok:std_logic;

signal io_wait: std_logic;

begin
  -- 今はフォワーディングを考えていない。
  -- ソースが用意できないか、ブランチ判定中はストール。
  STALL <= (not src_regok) or (not fpr_ok) or io_wait;
           
  -- ソースがレジスタに用意されていれば1,なければ0
  src_regok <= src1_reg and src2_reg;
  src1_reg <= '0' when USE_SRC(0)='1' and REG_WRESV(conv_integer(RSEL1))='1' else '1';
  src2_reg <= '0' when USE_SRC(1)='1' and REG_WRESV(conv_integer(RSEL2))='1' else '1';

  fpr_ok <= fp1_ok and fp2_ok;
  fp1_ok <= '0' when USE_FP(0)='1' and FREG_WRESV(conv_integer(RSEL1))='1' else '1';
  fp2_ok <= '0' when USE_FP(1)='1' and FREG_WRESV(conv_integer(RSEL2))='1' else '1';

  io_wait<='1' when (SEND_REQ and SEND_BUSY)='1' or (RECV_REQ and RECV_WAIT)='1' else '0';
  
  -- src_regok は、src_dataok にあとで変わるべき。
  -- branch命令がexecに入るときに、bubbleを一つ入れる。
  BUBBLE <= '1' when BR_COND='1' and src_regok='1' and fpr_ok='1' else '0';
  
end RTL;
