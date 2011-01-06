library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity decode is
  port(CLK: in std_logic;
       RESET: in std_logic;
       INST: in std_logic_vector(31 downto 0);
       CURPC_IN: in std_logic_vector(31 downto 0);
       REGWE_IN: in std_logic;
       DST_IN: in std_logic_vector(4 downto 0);
       REGD_IN: in std_logic_vector(31 downto 0);
       D_FRMEM: in std_logic_vector(31 downto 0);
       FD_IN: in std_logic_vector(31 downto 0);
       STALL: in std_logic;
       USE_SRC: out std_logic_vector(1 downto 0);  --to hazard cntl
       USE_FP: out std_logic_vector(1 downto 0);  --to hazard cntl
       MEM_WE: out std_logic;
       INTORFLT: out std_logic;
       REGWE_OUT: out std_logic;
--       ISLW: out std_logic;
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
       ALU_OPSUB: out std_logic_vector(1 downto 0);
       FPU_OP: out std_logic_vector(3 downto 0);
       RSEL1: out std_logic_vector(4 downto 0);
       RSEL2: out std_logic_vector(4 downto 0);
       RD1: out std_logic_vector(31 downto 0);
       RD2: out std_logic_vector(31 downto 0);
       FRD1: out std_logic_vector(31 downto 0);
       FRD2: out std_logic_vector(31 downto 0);
       IMMID: out std_logic_vector(31 downto 0);
       WF_EN: out std_logic;
       W_RESV: out std_logic_vector(31 downto 0);
       FPW_RESV: out std_logic_vector(31 downto 0);
       DST: out std_logic_vector(4 downto 0);
       RECV_REQ: out std_logic;
       RECV_GO: out std_logic;
       SEND_REQ: out std_logic;
       SEND_GO: out std_logic;
       FP_BUSY: out std_logic;
       FP_GO: out std_logic
    );
  end decode;

architecture behav of decode is
component controller is
    port(OPCODE: in std_logic_vector(5 downto 0);
--       REG_WRESV: in std_logic_vector(31 downto 0);
--       CLK: in std_logic;
       USE_SRC:out std_logic_vector(1 downto 0);
       USE_FP:out std_logic_vector(1 downto 0);       
       USE_IMID16: out std_logic;
       REG_WE: out std_logic;
       FPR_WE: out std_logic;
       MEM_WE: out std_logic;
--       ISLW: out std_logic;
       BR_NOW: out std_logic;
       BR_COND: out std_logic;
       ISJR: out std_logic;
       ISJAL: out std_logic);
end component;
component regfile is
  port(CLK: in std_logic;
--       RESET: in std_logic;
       WE : in std_logic;
       WE_MEM: in std_logic;
       LOW: in std_logic;
       HIGH: in std_logic;
       ISJAL: in std_logic;
       DIN: in std_logic_vector(31 downto 0);
       D_FRMEM: in std_logic_vector(31 downto 0);
       RET_ADRS: in std_logic_vector(31 downto 0);
       WSEL : in std_logic_vector(4 downto 0);
       WSEL_M: in std_logic_vector(4 downto 0);
       WFLAG: in std_logic_vector(4 downto 0);
       RSEL1 : in std_logic_vector(4 downto 0);
       RSEL2 : in std_logic_vector(4 downto 0);
       WF_EN: in std_logic;
       W_RESV: out std_logic_vector(31 downto 0);
       RD1 : out std_logic_vector(31 downto 0);
       RD2 : out std_logic_vector(31 downto 0)
       );
end component;
component fpregs is
  port(CLK: in std_logic;
--       RESET: in std_logic;
       WE : in std_logic;
       WE_MEM: in std_logic;
       LOW: in std_logic;
       HIGH: in std_logic;
       DIN: in std_logic_vector(31 downto 0);
       D_FRMEM: in std_logic_vector(31 downto 0);
       WSEL: in std_logic_vector(4 downto 0);
       WSEL_M: in std_logic_vector(4 downto 0);
       WF_EN: in std_logic;
       WFLAG: in std_logic_vector(4 downto 0);
       RSEL1 : in std_logic_vector(4 downto 0);
       RSEL2 : in std_logic_vector(4 downto 0);
       W_RESV: out std_logic_vector(31 downto 0);
       RD1 : out std_logic_vector(31 downto 0);
       RD2 : out std_logic_vector(31 downto 0)
       );
end component;

signal alu_op_sig: std_logic_vector(2 downto 0):="000";
signal alu_opsub_sig: std_logic_vector(1 downto 0):="00";
signal reg_we_sig: std_logic:='0';
signal mem_we_sig: std_logic:='0';
signal isjal_sig: std_logic:='0';
signal isjal_del: std_logic:='0';
signal isjr_sig: std_logic:='0';
signal islw: std_logic:='0';
signal islf: std_logic:='0';
signal br_cond_sig: std_logic:='0';
signal br_type_sig: std_logic_vector(2 downto 0);
signal imid16_sig: std_logic;
signal pcplus1: std_logic_vector(31 downto 0);
signal pcplus1_del: std_logic_vector(31 downto 0);
signal rd1_sig: std_logic_vector(31 downto 0);
signal rd2_sig: std_logic_vector(31 downto 0);
signal immid_sig: std_logic_vector(31 downto 0);
signal dst_sig: std_logic_vector(4 downto 0);
signal lowi: std_logic:='0';
signal lowi_del: std_logic:='0';
signal highi: std_logic:='0';
signal highi_del: std_logic:='0';
signal lowf: std_logic:='0';
signal lowf_del: std_logic:='0';
signal highf: std_logic:='0';
signal highf_del: std_logic:='0';

signal iorf_sig: std_logic;

signal use_sorce: std_logic_vector(1 downto 0);
signal use_fpsorce: std_logic_vector(1 downto 0);
signal wf_en_sig: std_logic;
signal opcode: std_logic_vector(5 downto 0);

signal field1:std_logic_vector(4 downto 0);
signal field2:std_logic_vector(4 downto 0);
signal field3:std_logic_vector(4 downto 0);

signal send_req_sig: std_logic:='0';
signal recv_req_sig: std_logic:='0';

signal count: std_logic_vector(4 downto 0):="00000";
signal latency: std_logic_vector(4 downto 0):="00000";
signal fp_we: std_logic:='0';
signal fp_req: std_logic;
signal fp_dst: std_logic_vector(4 downto 0);
signal fpd1_sig:std_logic_vector(31 downto 0);
signal fpd2_sig:std_logic_vector(31 downto 0);
signal fpu_op_sig:std_logic_vector(3 downto 0);
signal dst_late: std_logic_vector(4 downto 0);
signal fpwe_dc: std_logic;
signal fp1clk: std_logic;
--signal fp_ready: std_logic;
signal fp_busy_sig: std_logic;
--signal fpr_we: std_logic;
signal fpwf_en_sig: std_logic;

signal lw_buf:std_logic:='0';
signal lw_buf2:std_logic:='0';
signal lw_buf3:std_logic:='0';
signal lf_buf:std_logic:='0';
signal lf_buf2:std_logic:='0';
signal lf_buf3:std_logic:='0';
signal wem_int:std_logic:='0';
signal wem_flt:std_logic:='0';

signal memdst_buf: std_logic_vector(4 downto 0);
signal memdst_buf2: std_logic_vector(4 downto 0);
signal memdst_buf3: std_logic_vector(4 downto 0);
signal memdst: std_logic_vector(4 downto 0);
--signal W_RESV_sig:std_logic_vector(31 downto 0);

constant sw: std_logic_vector(5 downto 0):= "001111";
constant lw: std_logic_vector(5 downto 0):= "001110";
constant lli: std_logic_vector(5 downto 0):="110011";
constant lhi: std_logic_vector(5 downto 0):="110010";
constant llif:std_logic_vector(5 downto 0):="000101";
constant lhif:std_logic_vector(5 downto 0):="000100";
constant sendc: std_logic_vector(5 downto 0):="110100";
constant recvc: std_logic_vector(5 downto 0):="110001";
constant movi2f: std_logic_vector(5 downto 0):="011111";
constant movf2i: std_logic_vector(5 downto 0):="010111";
constant fdiv: std_logic_vector(5 downto 0):="111011";
constant sqrt: std_logic_vector(5 downto 0):="111100";
constant itof: std_logic_vector(5 downto 0):="011000";
constant ftoi: std_logic_vector(5 downto 0):="011001";
constant lf: std_logic_vector(5 downto 0):="100100";
constant sf: std_logic_vector(5 downto 0):="101100";
constant shll:std_logic_vector(5 downto 0):="010010";
constant shra:std_logic_vector(5 downto 0):="010000";
constant negf:std_logic_vector(5 downto 0):="000110";
constant absf: std_logic_vector(5 downto 0):="111110";
constant floor: std_logic_vector(5 downto 0):="111101";

begin
 cont:controller port map(
   OPCODE=>opcode,
   USE_SRC=>use_sorce,
   USE_FP=>use_fpsorce,
   USE_IMID16=>imid16_sig,
   REG_WE=>reg_we_sig,
   FPR_WE=>fp_we,
   MEM_WE=>mem_we_sig,
   BR_NOW=>BR_NOW,
   BR_COND=>br_cond_sig,
   ISJR=>isjr_sig,
   ISJAL=>isjal_sig);
 
 registerfile:regfile port map(
   CLK=>CLK,
--   RESET=>RESET,
   WE=>REGWE_IN,
   WE_MEM=>wem_int,
   LOW=>lowi_del,
   HIGH=>highi_del,
   ISJAL=>isjal_del,
   DIN=>REGD_IN,
   D_FRMEM=>D_FRMEM,
   RET_ADRS=>pcplus1_del,
   WSEL=>DST_IN,
   WSEL_M=>memdst,
   WFLAG=>dst_sig,
   RSEL1=>field1,
   RSEL2=>field2,
   WF_EN=>wf_en_sig,
   W_RESV=>W_RESV,--to hazard cntl
   RD1=>rd1_sig,
   RD2=>rd2_sig
   );
-- W_RESV<= W_RESV_sig;
 fpfile:fpregs port map(
   CLK=>CLK,
--   RESET=>RESET,
   WE=>fpwe_dc,
   WE_MEM=>wem_flt,
   LOW=>lowf_del,
   HIGH=>highf_del,
   DIN=>FD_IN,
   D_FRMEM=>D_FRMEM,
   WSEL=>fp_dst,
   WSEL_M=>memdst,
   WFLAG=>dst_sig,
   RSEL1=>field1,
   RSEL2=>field2,
   WF_EN=>fpwf_en_sig,
   W_RESV=>FPW_RESV,--to hazard cntl
   RD1=>fpd1_sig,
   RD2=>fpd2_sig
   );
 
-- BR_COND<=br_cond_sig;
 JP_ADRS<="000000"&INST(25 downto 0);
 
 opcode <= INST(31 downto 26);
 field1 <= INST(25 downto 21);
 field2 <= INST(20 downto 16);
 field3 <= INST(15 downto 11);

 RSEL1<= field1;
 RSEL2<= field2;

 alu_op_sig <= "000" when opcode=lli or opcode=lhi else
               "100" when opcode=shra else
               "101" when opcode=shll else
               opcode(2 downto 0);

 alu_opsub_sig <= "01" when opcode=ftoi else
              "10" when opcode=movf2i else
              "00";

 
 USE_SRC<=use_sorce;
 USE_FP<=use_fpsorce;
--dst_sig はすぐさまw_flagにいれられる。
-- 後で変える(た)!!!!
 dst_sig<= field3 when (OPCODE(5 downto 3)="100" and OPCODE/=lf) or (OPCODE(5 downto 3)="111" and OPCODE/=sqrt and OPCODE/=absf and OPCODE/=floor) else
           "11111" when isjal_sig='1' else
           field2;
--           field2 when OPCODE(5 downto 3)="101"or islw_sig='1' or OPCODE=sqrt or OPCODE(5 downto 0)="011" or OPCODE=ftoi else
--           field2 when OPCODE=lli or OPCODE=lhi or OPCODE=recvc or OPCODE=llif or OPCODE=lhif or OPCODE=movf2i else
--           "00000";
   
 br_type_sig <= opcode(2 downto 0);

 -- I/O--
 send_req_sig<= '1' when OPCODE=sendc else '0';
 SEND_REQ<=send_req_sig;
 recv_req_sig<='1' when OPCODE=recvc else '0';
 RECV_REQ<=recv_req_sig;
 RECV_GO<='1' when (recv_req_sig='1' and STALL='0') else '0';
--I/O--
 
 pcplus1<= CURPC_IN+1;
 
 -- 次のクロックで
 wf_en_sig<= '1' when STALL='0' and ((reg_we_sig or islw) = '1') else '0';
 fpwf_en_sig<='1' when STALL='0' and ((fp_we='1' and fp_busy_sig='0') or islf='1') else '0';

 lowi <= '1' when opcode=lli else '0';
 lowf <= '1' when opcode=llif else '0';
 highi<= '1' when opcode=lhi else '0';
 highf<= '1' when opcode=lhif else '0';
 
 immid_sig<= x"0000"&INST(15 downto 0) when opcode=lli or opcode=lhi or opcode=llif or opcode=lhif else
             x"0000"&INST(15 downto 0) when INST(15)='0' else
             x"ffff"&INST(15 downto 0);

 BR_TOHZ<= br_cond_sig or isjr_sig;
-- execstageで必要なものは、stallが0なら次のクロックで渡される。
  process(CLK)
  begin
    if rising_edge(CLK) then
      RD1<=rd1_sig;
      RD2<=rd2_sig;
      IMMID<=immid_sig;
      DST<=dst_sig;
      CURPC_OUT<=CURPC_IN;
      pcplus1_del<=pcplus1;

      if fp_busy_sig = '0' then
        lowf_del<=lowf;
        highf_del<=highf;
      end if;
      if STALL='0' then
        ALU_OP <= alu_op_sig;
        ALU_OPSUB <= alu_opsub_sig;
        REGWE_OUT <= reg_we_sig;
        MEM_WE <= mem_we_sig;
        lowi_del <= lowi;
        highi_del <= highi;
--        ISLW<= islw_sig;
        BR_TYPE<=br_type_sig;
        BR_COND<=br_cond_sig;
        IMID16<=imid16_sig;
        ISJR<=isjr_sig;
        SEND_GO<=send_req_sig;
        isjal_del<=isjal_sig;
      else
        ALU_OP <= "000";
        ALU_OPSUB <= "00";
        REGWE_OUT <= '0';
        MEM_WE <= '0';
--        ISLW <= '0';
        IMID16<='0';
        BR_COND<='0';
--        BR_COND<='0';
        BR_TYPE<= "000";
        ISJR<='0';
        SEND_GO<='0';
        isjal_del<='0';
      end if;
    end if;
  end process;

 fp1clk<= '1' when fp_we='1' and opcode/=sqrt and opcode/=fdiv and opcode/=floor else '0';
-- latency<= "10010" when opcode=sqrt else -- 17clock
--           "01100" when opcode=fdiv else --11 clock
--           "00000";
 
 latency<= "10010" when opcode=sqrt else -- 17clock
           "10000" when opcode=fdiv else --11 clock
           "00001" when opcode=floor else
           "00000";

 fp_busy_sig<='1' when fp_we='1' and count/=0 else '0';

 process(clk)
 begin
   if rising_edge(clk) then
     FRD1<=fpd1_sig;
     FRD2<=fpd2_sig;
   end if;
 end process;

 fpu_op_sig<= "0"&OPCODE(2 downto 0) when OPCODE(5 downto 3)="111" else
              "0111" when OPCODE= llif or OPCODE=lhif else
              "1"&OPCODE(2 downto 0);

 FP_BUSY<=fp_busy_sig;
 process(clk)
 begin
   if rising_edge(clk) then
     -- 新たにfpregisterに書き込む命令を発行。
     if count=0 and fp_we='1' and STALL='0' then
       FPU_OP<=fpu_op_sig;
       if fp1clk='1' then
         fpwe_dc<='1';
         fp_dst<=dst_sig;
       else
         FP_GO<='1';
--         FP_BUSY<='1';
         fpwe_dc<='0';
         count <=latency;
         dst_late<=dst_sig;
       end if;
     --fpu命令を発行しない場合。conut=1ならweを立てる。
     --countは常に１ずつ減る。
     elsif count=1 then
       FP_GO<='0';
--       FP_BUSY<='0';
       fpwe_dc<='1';
       fp_dst<=dst_late;
       count<="00000";
     elsif count/=0 then
       FP_GO<='0';
       count<=count-1;
       fpwe_dc<='0';
     else
       FP_GO<='0';
       fpwe_dc<='0';
     end if;
   end if;
 end process;

 -- メモリ関係
 iorf_sig <= '1' when opcode=sw else '0';
 islw <= '1' when OPCODE=lw else '0';
 islf <= '1' when OPCODE=lf else '0';

 process(clk)
   begin
   if rising_edge(clk) then
     memdst_buf<= field2;
     memdst_buf2<=memdst_buf;
     memdst <= memdst_buf2;
--     memdst_buf3<=memdst_buf2;
--     memdst <= memdst_buf3;
     lw_buf2<=lw_buf;
     lf_buf2<=lf_buf;
--     lw_buf3<=lw_buf2;
--     lf_buf3<=lf_buf2;
     wem_int<=lw_buf2;
     wem_flt<=lf_buf2;
--     wem_int<=lw_buf3;
--     wem_flt<=lf_buf3;
     INTORFLT<=iorf_sig;
     if STALL='0' then
       lw_buf <= islw;
       lf_buf <= islf;
     else
       lw_buf <= '0';
       lf_buf <= '0';
     end if;
   end if;
 end process;
end behav;
