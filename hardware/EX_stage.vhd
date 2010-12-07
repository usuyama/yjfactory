library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity EX_stage is
  
  port (
    ALU_ctrl  : in  std_logic_vector(5 downto 0);
    Alu_src_b : in  std_logic_vector(1 downto 0);
    Alu_src_a : in  std_logic;
    PC        : in  std_logic_vector(31 downto 0);
    data_a    : in  std_logic_vector(31 downto 0);
    data_b    : in  std_logic_vector(31 downto 0);
    data_imm  : in  std_logic_vector(31 downto 0);
    data_j    : in  std_logic_vector(31 downto 0);
    data_out  : out std_logic_vector(31 downto 0);
    PC_out    : out std_logic_vector(31 downto 0);
    Alu_Br_out: out std_logic;
    clk: in std_logic;
    ready: in std_logic);

end EX_stage;
architecture ex of EX_stage is
signal op_a : std_logic_vector(31 downto 0):=(others=>'0');
signal op_b : std_logic_vector(31 downto 0):=(others=>'0');
signal ready_r : std_logic;
component alu
  port (
    opcode : in  std_logic_vector(5 downto 0);
    op1    : in  std_logic_vector(31 downto 0);
    op2    : in  std_logic_vector(31 downto 0);
    ans    : out std_logic_vector(31 downto 0));
end component;
component comper
  port (
    opcode : in  std_logic_vector(5 downto 0);
    op1    : in  std_logic_vector(31 downto 0);
    op2    : in  std_logic_vector(31 downto 0);
    ans    : out std_logic);
end component;
component fpu_all

 port (
    opcode : in  std_logic_vector(5 downto 0);
    op1    : in  std_logic_vector(31 downto 0);
    op2    : in  std_logic_vector(31 downto 0);
    ans    : out std_logic_vector(31 downto 0);
    ready: in std_logic;
    clk : in std_logic);
end component;
  signal data_o : std_logic_vector(31 downto 0):=(others=>'0');
  signal FPU_o : std_logic_vector(31 downto 0):=(others=>'0');
signal alu_Br : std_logic:='0';
signal lli_o : std_logic_vector(31 downto 0);
signal lhi_o : std_logic_vector(31 downto 0);
begin  -- ex
ready_r<=ready;
  alu_there : alu port map (
    opcode => ALU_ctrl,
    op1    => op_a,
    op2    => op_b,
    ans    => data_o);
  cmp_there : comper port map (
    opcode => ALU_ctrl,
    op1    => data_a,
    op2    => data_b,
    ans    => Alu_Br);
 fpu_shell : fpu_all port map (
   opcode => ALU_ctrl,
   op1    => data_a,
   op2    => data_b,
   ans    => FPU_o,
   ready=>ready_r,
   clk=>clk);

lli_o<="0000000000000000"&data_imm(15 downto 0);

lhi_o<=data_imm(15 downto 0) & data_b(15 downto 0);

  op_a<=data_a when Alu_src_a='1' else
         PC;
  op_b<=data_a+data_imm when ALU_ctrl="001110" else
         data_b+data_imm when ALU_ctrl="001111" else
         data_b when Alu_src_b="00" else
         "00000000000000000000000000000001" when  Alu_src_b="01" else
         data_imm when Alu_src_b="10" else
         data_j when Alu_src_b="11";
  
  PC_out<=data_imm+PC when ((ALU_ctrl="001001"and Alu_Br='1')  or (ALU_ctrl="001010" and Alu_Br='1')  or (ALU_ctrl="001011"and Alu_Br='1')  or( ALU_ctrl= "001100"and Alu_Br='1') or (ALU_ctrl="001000" and Alu_Br='1'))
           else data_j when (ALU_ctrl="010101" or ALU_ctrl="010110" )
           else op_a when (ALU_ctrl="010011" or ALU_ctrl="010100")
           else PC+1;
  data_out<= FPU_o when (ALU_ctrl="111000" or ALU_ctrl="111001" or ALU_ctrl="111010" or ALU_ctrl="111011" or ALU_ctrl="111100" or ALU_ctrl="000011" or ALU_ctrl="000110" or ALU_ctrl="011000" or ALU_ctrl="011001" or ALU_ctrl="111101" or ALU_ctrl="111110")
             else lhi_o when (ALU_ctrl="110010" or ALU_ctrl="000100") 
             else lli_o when (ALU_ctrl="110011" or ALU_ctrl="000101") 
             else data_o;
  Alu_Br_out<=Alu_Br;
end ex;

-------------------------------------------------------------------------------
-- --
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity ALU is
  
  port (
    opcode : in  std_logic_vector(5 downto 0);
    op1    : in  std_logic_vector(31 downto 0);
    op2    : in  std_logic_vector(31 downto 0);
    ans    : out std_logic_vector(31 downto 0));

end ALU;
architecture alu_inside of ALU is
component l_shifter
  port (
    a : in  std_logic_vector(31 downto 0);
    n : in  std_logic_vector(31 downto 0);
    o : out std_logic_vector(31 downto 0));
end component;
component r_shifter
  port (
    a : in  std_logic_vector(31 downto 0);
    n : in  std_logic_vector(31 downto 0);
    o : out std_logic_vector(31 downto 0));
end component;
signal l_o : std_logic_vector(31 downto 0);
signal r_o : std_logic_vector(31 downto 0);
signal mul_o : std_logic_vector(63 downto 0);
begin  -- EX
asl : l_shifter port map (
  a => op1,
  n => op2,
  o => l_o);
asr : r_shifter port map (
  a => op1,
  n => op2,
  o => r_o);
mul_o<=op1*op2;
ans<=
  op1 - op2 when (opcode="100010" or opcode="101010")else
  mul_o(31 downto 0) when (opcode="100011" or opcode="101011")else
  op1 + op2 when (opcode="100001" or opcode="101001" )else
  op2 when (opcode="110011" or opcode="010011"  or opcode="010100" or opcode="010110") else
  op2  when (opcode="110010" or opcode="001110" or opcode="001111") else
  (op1 xor op2) when (opcode="100111" or opcode="101111")else
  r_o when opcode="010000" else
  l_o when opcode="010010" else
--  conv_integer(op1) sra conv_unsigned(op2) when opcode="010000" else
--  conv_integer(op1) sla conv_unsigned(op2) when opcode="010010" else
--  op1 + op2;
    op1;
end alu_inside;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity comper is
  
  port (
    opcode : in  std_logic_vector(5 downto 0);
    op1    : in  std_logic_vector(31 downto 0);
    op2    : in  std_logic_vector(31 downto 0);
    ans    : out std_logic);

end comper;

architecture cmp of comper is

begin  -- cmp

  ans<='1' when ((opcode="001001" and op1 = op2)or(opcode="001010" and op1 /= op2) or (opcode="001011" and op1 >= op2) or (opcode="001100" and op1 > op2) or (opcode="001000" and op1>op2))
        else '0';

end cmp;
-------------------------------------------------------------------------------
-- --
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity fpu_all is
  
  port (
    opcode : in  std_logic_vector(5 downto 0);
    op1    : in  std_logic_vector(31 downto 0);
    op2    : in  std_logic_vector(31 downto 0);
    ans    : out std_logic_vector(31 downto 0);
    ready:in std_logic;
    clk: in std_logic);

end fpu_all;

architecture fpua of fpu_all is
signal op_a : std_logic_vector(31 downto 0);
signal op_b : std_logic_vector(31 downto 0);
signal ans_a : std_logic_vector(31 downto 0);
signal ans_m : std_logic_vector(31 downto 0);
signal ans_d : std_logic_vector(31 downto 0);
signal ans_s : std_logic_vector(31 downto 0);
signal ans_q : std_logic_vector(31 downto 0);
signal ans_n : std_logic_vector(31 downto 0);
signal ans_abs : std_logic_vector(31 downto 0);
signal ans_ftoi : std_logic_vector(31 downto 0);
signal ans_itof : std_logic_vector(31 downto 0);
signal ans_floor : std_logic_vector(31 downto 0);
component FMUL
  port (
    A, B : in  std_logic_vector(31 downto 0);
    P    : out std_logic_vector(31 downto 0));
end component;
component FADD
 port (
   A, B : in  std_logic_vector(31 downto 0);
   S    : out std_logic_vector(31 downto 0));
end component;
component FDIV
  port (
    MCLK1, ready : in  std_logic;
    A, B         : in  std_logic_vector(31 downto 0);
    R            : out std_logic_vector(31 downto 0));
end component;
component FSUB
  port (
   A, B : in  std_logic_vector(31 downto 0);
   S    : out std_logic_vector(31 downto 0));
   
end component;
component FSQRT
  port (
    MCLK1,ready: in std_logic;
    A: in std_logic_vector(31 downto 0);
    R:out std_logic_vector(31 downto 0));
end component;

component FTOI
    port(
    i : in std_logic_vector(31 downto 0);  --input integer
    o : out std_logic_vector(31 downto 0)
    );
end component;
component ITOF
    port(
    i_int : in std_logic_vector(31 downto 0);  --input integer
    o_fl : out std_logic_vector(31 downto 0)
    );
end component;
component FLOOR
  port (
    i : in  std_logic_vector(31 downto 0);
    o : out std_logic_vector(31 downto 0));
end component;

begin  -- fpua
  op_a<=op1;
  op_b<=op2;
FMUL1 : FMUL port map (
  A => op_a,
  B => op_b,
  P => ans_m);
FADD1 : FADD port map (
    A => op_a,
    B => op_b,
    S => ans_a);
FDIV1 : FDIV port map (
  MCLK1 => clk,
  ready => ready,
  A     => op_a,
  B     => op_b,
  R     => ans_d);
  FSUB1:FSUB port map(
    A => op_a,
    B => op_b,
    S => ans_s
);
FSQRT1 : FSQRT port map (
  MCLK1 => clk,
  ready => ready,
  A     => op_a,
  R     => ans_q);
  ITOF1 : ITOF port map (
    i_int => op_a,
    o_fl  => ans_itof);
  FTOI1 : FTOI port map (
      i => op_a,
      o => ans_ftoi);
  FLOOR1 : FLOOR port map (
    i => op_a,
    o => ans_floor);

  ans_n(30 downto 0)<=op_a(30 downto 0);
  ans_n(31)<='1' when op_a(31)='0' else
             '0';

  ans_abs(30 downto 0)<=op_a(30 downto 0);
  ans_abs(31)<='0';
  
ans<=ans_a when opcode="111000" else
  ans_m when opcode="111010" else
  ans_d when opcode="111011" else
  ans_s when opcode="111001" else
  ans_q when opcode="111100" else
  ans_abs when opcode="111110" else
  ans_n when opcode="000110" else
  ans_itof when opcode="011000" else
  ans_ftoi when opcode="011001" else
  ans_floor when opcode="111101" else
  op_a;
end fpua;
