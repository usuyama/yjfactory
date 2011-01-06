library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity exec is
  port(CLK: in std_logic;
       ALU_CODE: in std_logic_vector(2 downto 0);
       ALU_CODESUB: in std_logic_vector(1 downto 0);
       FPU_CODE: in std_logic_vector(3 downto 0);
       CUR_PC: in std_logic_vector(31 downto 0);
       JR_ADRS: in std_logic_vector(31 downto 0);
       ISJR: in std_logic;
       BR_COND: in std_logic;
       BRANCH_T: in std_logic_vector(2 downto 0);
       FP_GO: in std_logic;
       A: in std_logic_vector(31 downto 0);
       B: in std_logic_vector(31 downto 0);
       FA: in std_logic_vector(31 downto 0);
       FB: in std_logic_vector(31 downto 0);
       EX_WE_IN: in std_logic;
       REG_DST: in std_logic_vector(4 downto 0);
       OFFSET:in std_logic_vector(31 downto 0);
       CALC_DATA: out std_logic_vector(31 downto 0);
       CALC_FPD: out std_logic_vector(31 downto 0);
       BR_ADRS: out std_logic_vector(31 downto 0);
       MEM_ADRS: out std_logic_vector(19 downto 0);
       TAKE_BR: out std_logic;
       EX_WE_OUT: out std_logic;
       REG_DST_OUT: out std_logic_vector(4 downto 0)
       );
  end exec;

architecture behav of exec is
component alu is
  port(ALU_OP: in std_logic_vector(2 downto 0);
       SRC1: in std_logic_vector(31 downto 0);
       SRC2: in std_logic_vector(31 downto 0);
       CALC: out std_logic_vector(31 downto 0)
       );
end component;
component FADD is
  port (A,B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0));
end component;
component FMUL is
  port (A,B : in std_logic_vector(31 downto 0);
        P : out std_logic_vector(31 downto 0));
end component;
component cgdiv is
  port(
       A,B : in std_logic_vector(31 downto 0);
       clk:in std_logic;
       result : out std_logic_vector(31 downto 0));
end component;
component FTOI is
  port(
    i : in std_logic_vector(31 downto 0);  --input integer
    o : out std_logic_vector(31 downto 0)
    );
  end component;
component ITOF is
  port(
    i_int : in std_logic_vector(31 downto 0);  --input integer
    o_fl : out std_logic_vector(31 downto 0)
    );
  end component;
component FLOOR is
  port(
    i : in std_logic_vector(31 downto 0);  --input integer
    o : out std_logic_vector(31 downto 0)
    );
  end component;
component FSQRT is
  port(MCLK1,ready : in std_logic;
       A : in std_logic_vector(31 downto 0);
       R : out std_logic_vector(31 downto 0));
  end component;

constant bgt_t: std_logic_vector(2 downto 0):="100";
constant bge_t: std_logic_vector(2 downto 0):="011";
constant beq_t: std_logic_vector(2 downto 0):="001";
constant bneq_t: std_logic_vector(2 downto 0):="010";
constant bgtf_t: std_logic_vector(2 downto 0):="000";

signal gt: std_logic;
signal gtf: std_logic;
signal is_equal: std_logic;
signal dif_sign: std_logic;
signal dif_sign_f: std_logic;

signal addsub_f: std_logic_vector(31 downto 0);
signal fadd_ret: std_logic_vector(31 downto 0);
signal fmul_ret: std_logic_vector(31 downto 0);
signal fdiv_ret: std_logic_vector(31 downto 0);
signal ftoi_ret: std_logic_vector(31 downto 0);
signal sqrt_ret:std_logic_vector(31 downto 0);
signal floor_ret:std_logic_vector(31 downto 0);
signal itof_ret:std_logic_vector(31 downto 0);  

signal frm_alu: std_logic_vector(31 downto 0);

signal calc_fpd1: std_logic_vector(31 downto 0);
signal calc_fpd2: std_logic_vector(31 downto 0);
  
begin
  MEM_ADRS<= A(19 downto 0)+B(19 downto 0);
  alu0: alu port map
  (ALU_OP => ALU_CODE,
   SRC1 => A,
   SRC2 => B,
   CALC => frm_alu);
  FADDER:FADD port map
    (A=>FA,
     B=>addsub_f,
     S=>fadd_ret);
  FMULER:FMUL port map
    (A=>FA,
     B=>FB,
     P=>fmul_ret);
  FDIVER:cgdiv port map(
    a=>FA,
    b=>FB,
    clk=>CLK,
    result=>fdiv_ret);
  FTOIER:FTOI port map(
    i =>FA,
    o =>ftoi_ret
    );
  ITOFER:ITOF port map(
    i_int =>A,
    o_fl =>itof_ret
    );
  FLRER:FLOOR port map(
    i =>FA,
    o =>floor_ret
    );
  SQRTER:FSQRT port map(
    MCLK1=>CLK,
    ready=>FP_GO,
    A=>FA,
    R=>sqrt_ret
    );
  
  -- 整数レジスタ達に渡す値の選択。
  CALC_DATA<= ftoi_ret when ALU_CODESUB="01" else
              FA when ALU_CODESUB="10" else
              frm_alu;
  
  addsub_f(30 downto 0)<= FB(30 downto 0);
  addsub_f(31)<= not FB(31) when FPU_CODE="001" else FB(31);

  CALC_FPD <= calc_fpd1 when FPU_CODE(3)='0' else calc_fpd2;
  
  calc_fpd1<= fadd_ret when FPU_CODE(2 downto 0)="000" or FPU_CODE="001" else
              fmul_ret when FPU_CODE(2 downto 0)="010" else
              fdiv_ret when FPU_CODE(2 downto 0)="011" else
              sqrt_ret when FPU_CODE(2 downto 0)="100" else
              floor_ret when FPU_CODE(2 downto 0)="101" else
              "0"&FA(30 downto 0) when FPU_CODE(2 downto 0)="110" else
              FB;                       --llif,lhif
  
  calc_fpd2<= A when FPU_CODE(2 downto 0)="111" else  --movi2f
              FA when FPU_CODE(2 downto 0)="011" else  --movf
              itof_ret when FPU_CODE(2 downto 0)="000" else
              (not FA(31))&FA(30 downto 0);
             

  REG_DST_OUT<=REG_DST;
  EX_WE_OUT<=EX_WE_IN;
  BR_ADRS <= JR_ADRS when ISJR='1' else CUR_PC+OFFSET;
  is_equal <= '1' when A=B else '0';

  dif_sign <= A(31) xor B(31);
  -- 符号が違うなら、SRC2が負ならば、SRC1の方が大きい。  
  gt <= B(31) when dif_sign='1' else
        '1' when A > B else
        '0';

  dif_sign_f <= FA(31) xor FB(31);
  gtf <= FB(31) when dif_sign_f='1' else
         '1' when FA > FB else
         '0';
      
  process(is_equal,gt,gtf,BRANCH_T,ISJR,BR_COND)
  begin
    if BR_COND='1' then
      case BRANCH_T is
        when bgt_t => TAKE_BR <= gt;
        when bge_t => TAKE_BR <= (gt or is_equal);
        when beq_t => TAKE_BR <= is_equal;
        when bneq_t => TAKE_BR <= not is_equal;
        when bgtf_t => TAKE_BR <= gtf;
        when others => TAKE_BR <= '0';
      end case;
    elsif ISJR='1' then
      TAKE_BR<='1';
    else      
      TAKE_BR<='0';
    end if;
  end process;

end behav;
