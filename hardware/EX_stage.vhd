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
signal op_a : std_logic_vector(31 downto 0);
signal op_b : std_logic_vector(31 downto 0);
component alu
  port (
    opcode : in  std_logic_vector(5 downto 0);
    op1    : in  std_logic_vector(31 downto 0);
    op2    : in  std_logic_vector(31 downto 0);
    ans    : out std_logic_vector(31 downto 0));
end component;
begin  -- ex

  alu_there : alu port map (
    opcode => ALU_ctrl,
    op1    => op_a,
    op2    => op_b,
    ans    => data_out);
  op_a<=data_a when Alu_src_a='1' else
         PC;
  op_b<=data_b when Alu_src_b="00" else
         "00000000000000000000000000000001" when  Alu_src_b="01" else
         data_imm when Alu_src_b="10" else
         data_j when Alu_src_b="11";
  PC_out<=PC+1;
end ex;

-------------------------------------------------------------------------------
-- --
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

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
  op1 + op2 when opcode="100001" else
  op1 + op2 when opcode="101001" else
  op1 - op2 when opcode="100010" else
  op1 - op2 when opcode="101010" else
  op1 * op2 when opcode="100011" else
  op1 * op2 when opcode="101011" else
--  op1 / op2 when opcode="100100" else
--  op1 / op2 when opcode="101100" else
  (others=>'0');
end alu_inside;
