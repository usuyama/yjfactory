library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity DC_stage is
  
  port (
    Instruciton : in  std_logic_vector(31 downto 0);
    opcode      : out std_logic_vector(5 downto 0);
    op_a        : out std_logic_vector(4 downto 0);
    op_b        : out std_logic_vector(4 downto 0);
    op_c        : out std_logic_vector(4 downto 0);
    op_imm      : out std_logic_vector(31 downto 0);
    op_j        : out std_logic_vector(31 downto 0));
end DC_stage;

architecture Decoder of DC_stage is

begin  -- Decoder

  opcode<=Instruciton(31 downto 26);
  op_a<=Instruciton(25 downto 21);
  op_b<=Instruciton(20 downto 16);
  op_c<=Instruciton(15 downto 11);
  op_imm(15 downto 0)<=Instruciton(15 downto 0);
  op_imm(31 downto 16)<=(others=>'1') when Instruciton(15)='1' else (others=>'0');
  op_j(25 downto 0)<=Instruciton(25 downto 0);
  op_j(31 downto 26)<=(others=>'0');
end Decoder;
