library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity fetch is
  port(CLK: in std_logic;
       RESET: in std_logic;
       STALL: in std_logic;
       BUBBLE: in std_logic;
       TAKE_BRANCH: in std_logic;
       BRANCH_AD: in std_logic_vector(31 downto 0);
       INST: out std_logic_vector(31 downto 0);
       CUR_PC: out std_logic_vector(31 downto 0)
       );
  end fetch;

architecture behav of fetch is
component instmem is
  port(CLK: in std_logic;
       BUBBLE: in std_logic;
       ADRS: in std_logic_vector(13 downto 0);
       DOUT:out std_logic_vector(31 downto 0)
       );
end component instmem;

signal instadrs: std_logic_vector(31 downto 0):= (others => '0');
signal currentpc: std_logic_vector(31 downto 0);
signal pc_plus1: std_logic_vector(31 downto 0);
signal to_instmem_adrs: std_logic_vector(13 downto 0);
signal instfrm_mem: std_logic_vector(31 downto 0);

begin
  inst_memory:instmem port map(
    CLK=>CLK,
    BUBBLE=>BUBBLE,
    ADRS=>to_instmem_adrs,
    DOUT=>instfrm_mem);
  
  to_instmem_adrs<=instadrs(13 downto 0);
  CUR_PC<=currentpc;
  INST<=instfrm_mem;
  
  process(CLK)
  begin
    if rising_edge(clk) then
      currentpc<=instadrs;
      pc_plus1<=instadrs+1;
    end if;
  end process;

  instadrs<= x"00000000" when RESET='1' else
             currentpc when STALL='1'else
             BRANCH_AD when TAKE_BRANCH='1' else
             pc_plus1;
end behav;
