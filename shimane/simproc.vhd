library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity processor is
  port(CLK: in std_logic;
       RESET: in std_logic;
--       ANFANG: in std_logic;
       RS_RX: in std_logic;
       RS_TX: out std_logic
       );
  end processor;

architecture behav of processor is
  component IO_wrapper is
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
  end component IO_wrapper;


  component fetch is
    port(
      CLK: in std_logic;
      RESET: in std_logic;
      STALL: in std_logic;
      BUBBLE: in std_logic;
      TAKE_BRANCH: in std_logic;
      BRANCH_AD: in std_logic_vector(31 downto 0);
      INST : out std_logic_vector(31 downto 0);
      CUR_PC: out std_logic_vector(31 downto 0)
      );
  end component fetch;

  component decode is
    port(
      CLK: in std_logic;
      RESET: in std_logic;
      INST: in std_logic_vector(31 downto 0);
      CURPC_IN: in std_logic_vector(31 downto 0);
      REGWE_IN: in std_logic;
      DST_IN: in std_logic_vector(4 downto 0);
      REGD_IN: in std_logic_vector(31 downto 0);
      STALL: in std_logic;
      USE_SRC: out std_logic_vector(1 downto 0);  --to hazard cntl
      MEM_WE: out std_logic;
      REGWE_OUT: out std_logic;
      ISLW: out std_logic;
      BR_NOW: out std_logic;
      BR_TOHZ: out std_logic;
      BR_COND: out std_logic;
      BR_TYPE: out std_logic_vector(2 downto 0);
      ISJAL: out std_logic;
      ISJR: out std_logic;
      IMID16: out std_logic;
      JP_ADRS: out std_logic_vector(31 downto 0);
      CURPC_OUT: out std_logic_vector(31 downto 0);
      ALU_OP: out std_logic_vector(2 downto 0);
      RSEL1: out std_logic_vector(4 downto 0);
      RSEL2: out std_logic_vector(4 downto 0);
      RD1: out std_logic_vector(31 downto 0);
      RD2: out std_logic_vector(31 downto 0);
      IMMID: out std_logic_vector(31 downto 0);
      WF_EN: out std_logic;
      W_RESV: out std_logic_vector(31 downto 0);
      DST: out std_logic_vector(4 downto 0);
      RECV_REQ: out std_logic;
      RECV_GO: out std_logic;
      SEND_REQ: out std_logic;
      SEND_GO: out std_logic
      );
  end component decode;
  
  component hazard_cntl is
      port(USE_SRC: in std_logic_vector(1 downto 0);
       RSEL1: in std_logic_vector(4 downto 0);
       RSEL2: in std_logic_vector(4 downto 0);
       BR_COND: in std_logic;
       REG_WRESV: in std_logic_vector(31 downto 0);
       SEND_REQ: in std_logic;
       SEND_BUSY: in std_logic;
       RECV_REQ: in std_logic;
       RECV_WAIT: in std_logic;
       STALL: out std_logic;
       BUBBLE: out std_logic);
  end component hazard_cntl;
component exec is
  port(
    ALU_CODE: in std_logic_vector(2 downto 0);
    CUR_PC: in std_logic_vector(31 downto 0);
    JR_ADRS: in std_logic_vector(31 downto 0);
    ISJR: in std_logic;
    BR_COND: in std_logic;
    BRANCH_T: in std_logic_vector(2 downto 0);
    A: in std_logic_vector(31 downto 0);
    B: in std_logic_vector(31 downto 0);
    EX_WE_IN: in std_logic;
    REG_DST: in std_logic_vector(4 downto 0);
    OFFSET:in std_logic_vector(31 downto 0);
    CALC_DATA: out std_logic_vector(31 downto 0);
    BR_ADRS: out std_logic_vector(31 downto 0);
    TAKE_BR: out std_logic;
    EX_WE_OUT: out std_logic;
    REG_DST_OUT: out std_logic_vector(4 downto 0)
    );
  end component exec;

  component mux is
    port(
      SEL:in std_logic_vector(1 downto 0);
      A:in std_logic_vector(31 downto 0);
      B:in std_logic_vector(31 downto 0);
      C:in std_logic_vector(31 downto 0);
      D:in std_logic_vector(31 downto 0);
      DOUT:out std_logic_vector(31 downto 0)
    );
  end component mux;
    
  signal stop_issue: std_logic;  
  signal curpc_sig: std_logic_vector(31 downto 0);
  signal act_branch_ad: std_logic_vector(31 downto 0);
  signal ft_inst: std_logic_vector(31 downto 0);
  signal take_branch_ft: std_logic;

  signal ft_cur_pc:std_logic_vector(31 downto 0);
  signal dc_use_src:std_logic_vector(1 downto 0);
  signal regwe_in_dc:std_logic;
  signal dst_in_dc:std_logic_vector(4 downto 0);
  signal regd_in_dc:std_logic_vector(31 downto 0);
  signal use_src_dc: std_logic_vector(1 downto 0);
  signal dc_mem_we: std_logic;
  signal dc_regwe_out: std_logic;
  signal dc_islw: std_logic;
  signal dc_br_now: std_logic;
  signal dc_br_cond: std_logic;  
  signal dc_br_type: std_logic_vector(2 downto 0);
  signal dc_isjal: std_logic;
  signal dc_isjr: std_logic;
  signal dc_imid16: std_logic;
  signal dc_jp_adrs: std_logic_vector(31 downto 0);
  signal dc_curpc_out: std_logic_vector(31 downto 0);
  signal dc_alu_op: std_logic_vector(2 downto 0);  
  signal dc_rd1: std_logic_vector(31 downto 0);
  signal dc_rd2: std_logic_vector(31 downto 0);
  signal dc_imid: std_logic_vector(31 downto 0);
  signal dc_wf_en: std_logic;
  signal dc_wrsv: std_logic_vector(31 downto 0);
  signal dc_dst: std_logic_vector(4 downto 0);
  signal dc_rsel1:std_logic_vector(4 downto 0);
  signal dc_rsel2:std_logic_vector(4 downto 0);
  signal dc_br_tohz:std_logic;
  signal dc_recv_req:std_logic;
  signal dc_send_req:std_logic;
  signal dc_recv_go:std_logic;
  signal dc_send_go:std_logic:='0';

  signal recv_delay: std_logic;
  signal io_send_busy: std_logic;
  signal io_recv_wait: std_logic;
  signal data_frmio: std_logic_vector(7 downto 0);
  signal data_frmio32: std_logic_vector(31 downto 0);  

  signal data_a: std_logic_vector(31 downto 0);
  signal data_b: std_logic_vector(31 downto 0);
  signal selB_sig: std_logic_vector(1 downto 0);
  signal selA_sig: std_logic_vector(1 downto 0);

  signal exe_calcdata: std_logic_vector(31 downto 0);
  signal exe_take_br: std_logic;
  signal exe_br_adrs: std_logic_vector(31 downto 0);
  signal exe_we: std_logic;
--  signal adrs_offset: std_logic_vector(31 downto 0);
  
  signal dfrm_mem:std_logic_vector(31 downto 0);
  signal dfrm_exe:std_logic_vector(31 downto 0);
  signal immid_a: std_logic_vector(31 downto 0);
  signal immid_b: std_logic_vector(31 downto 0);

  signal hz_bubble:std_logic;
  signal hz_stall:std_logic;       

  signal send_data: std_logic_vector(7 downto 0);
  signal send_go_sig: std_logic;
  
begin
  stop_issue<= '1' when hz_stall='1' or hz_bubble='1' else '0';

  act_branch_ad <= dc_jp_adrs when dc_br_now='1' else
                   exe_br_adrs;

  take_branch_ft <= '1' when dc_br_now='1' or exe_take_br='1'  else
                    '0';

  process(CLK)
  begin
    if rising_edge(CLK) then
      recv_delay <= dc_recv_go;
    end if;
  end process;
  
--  send_go_sig<=dc_send_go or ANFANG;
--  send_data<= x"aa" when ANFANG='1' else dc_rd1(7 downto 0);
    
  iowrap:IO_wrapper port map(
    clk=>CLK,
    RESET=>RESET,
    RS_RX=>RS_RX,
    RS_TX=>RS_TX,
    out_go=>send_go_sig,
    in_go=>dc_recv_go,
    SD=>send_data,
    send_busy=>io_send_busy,
    recv_wait=>io_recv_wait,
    DOUT=>data_frmio
    );

  fetcher:fetch port map(
    CLK=>CLK,
    RESET=>RESET,
    STALL=>stop_issue,
    BUBBLE=>hz_bubble,
    TAKE_BRANCH=>take_branch_ft,
    BRANCH_AD=>act_branch_ad,
    INST=> ft_inst,
    CUR_PC=>ft_cur_pc
    );

  decoder:decode port map(
    CLK=>CLK,
    RESET=>RESET,
    INST=>ft_inst,
    CURPC_IN=>ft_cur_pc,
    REGWE_IN=>regwe_in_dc,
    REGD_IN=>regd_in_dc,
    STALL=>hz_stall,
    DST_IN=>dst_in_dc,
    USE_SRC=>dc_use_src,
    MEM_WE=> dc_mem_we,
    REGWE_OUT=>dc_regwe_out,
    ISLW=>dc_islw,
    BR_NOW=>dc_br_now,
    BR_TOHZ=>dc_br_tohz,
    BR_COND=>dc_br_cond,
    BR_TYPE=>dc_br_type,
    ISJAL=>dc_isjal,
    ISJR=>dc_isjr,
    IMID16=>dc_imid16,
    JP_ADRS=>dc_jp_adrs,
    CURPC_OUT=>dc_curpc_out,
    ALU_OP=>dc_alu_op,
    RSEL1=>dc_rsel1,
    RSEL2=>dc_rsel2,    
    RD1=>dc_rd1,
    RD2=>dc_rd2,
    IMMID=>dc_imid,
    WF_EN=>dc_wf_en,
    W_RESV=>dc_wrsv,
    DST=>dc_dst,
    RECV_REQ=>dc_recv_req,
    RECV_GO=>dc_recv_go,
    SEND_REQ=>dc_send_req,
    SEND_GO=>dc_send_go
    );

  
  hazard_cntler:hazard_cntl port map(
    USE_SRC=> dc_use_src,
    RSEL1=> dc_rsel1,
    RSEL2=> dc_rsel2,
    BR_COND=> dc_br_tohz,
    REG_WRESV=> dc_wrsv,
    SEND_REQ=>dc_send_req,
    SEND_BUSY=>io_send_busy,
    RECV_REQ=>dc_recv_req,
    RECV_WAIT=>io_recv_wait,
    STALL=> hz_stall,
    BUBBLE=> hz_bubble);

  exec_unit:exec port map(
    ALU_CODE=> dc_alu_op,
    CUR_PC=> dc_curpc_out,
    JR_ADRS=>dc_rd1,
    ISJR=>dc_isjr,
    BR_COND=> dc_br_cond,
    BRANCH_T=> dc_br_type,
    A=> data_a,
    B=> data_b,
    EX_WE_IN=>dc_regwe_out,
    REG_DST=> dc_dst,
    OFFSET=> dc_imid,
    CALC_DATA=> exe_calcdata,
    BR_ADRS=> exe_br_adrs,
    TAKE_BR=> exe_take_br,
    EX_WE_OUT=> regwe_in_dc,
    REG_DST_OUT=>dst_in_dc
    );

  selB_sig <= "0"&dc_imid16;
  selA_sig<="00";
  muxA:mux port map(
    SEL=>selA_sig,
    A=>dc_rd1,
    B=>immid_a,
    C=>dfrm_exe,
    D=>dfrm_mem,
    DOUT=>data_a
    );
  muxB:mux port map(
    SEL=>selB_sig,
    A=>dc_rd2, 
    B=>dc_imid,
    C=>dfrm_exe,
    D=>dfrm_mem,
    DOUT=>data_b
    );

  regd_in_dc<= exe_calcdata when recv_delay='0' else
               x"000000"&data_frmio;
end behav;
