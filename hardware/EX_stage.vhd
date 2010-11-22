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
    Alu_Br_out: out std_logic);

end EX_stage;
architecture ex of EX_stage is
signal op_a : std_logic_vector(31 downto 0):=(others=>'0');
signal op_b : std_logic_vector(31 downto 0):=(others=>'0');
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
signal data_o : std_logic_vector(31 downto 0):=(others=>'0');
signal alu_Br : std_logic:='0';
begin  -- ex

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
  op_a<=data_a when Alu_src_a='1' else
         PC;
  op_b<=data_b when Alu_src_b="00" else
         "00000000000000000000000000000001" when  Alu_src_b="01" else
         data_imm when Alu_src_b="10" else
         data_j when Alu_src_b="11";
  
  PC_out<=data_imm+PC when ((ALU_ctrl="001001"and Alu_Br='1')  or (ALU_ctrl="001010" and Alu_Br='1')  or (ALU_ctrl="001011"and Alu_Br='1')  or( ALU_ctrl= "001100"and Alu_Br='1'))
           else data_j when (ALU_ctrl="010011" or ALU_ctrl="010100" or ALU_ctrl="010101" or ALU_ctrl="010110" )
           else PC+1;
  data_out<= data_o;
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

begin  -- EX

ans<=
  op1 - op2 when (opcode="100010" or opcode="101010")else
  op1 * op2 when (opcode="100011" or opcode="101011")else
  op1 + op2 when (opcode="100001" or opcode="101001" or opcode="001110")else
  op2 when (opcode="110011" or opcode="010011"  or opcode="010100" or opcode="010110") else
  op2  when (opcode="110010") else
  op1 - op2;
--  op1 / op2 when opcode="100100" else
--  op1 / op2 when opcode="101100" else
--  (others=>'0');
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

  ans<='1' when ((opcode="001001" and op1 = op2)or(opcode="001010" and op1 /= op2) or (opcode="001011" and op1 >= op2) or (opcode="001100" and op1 > op2))
        else '0';

end cmp;
