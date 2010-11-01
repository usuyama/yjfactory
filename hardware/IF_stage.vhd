library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity IF_stage is
  
  port (
    PC_Write:in std_logic;
    PC_write_b: in std_logic;
    ALU_b_out: in std_logic;
    PC_source:in std_logic;
    ALU_out:in std_logic_vector(31 downto 0);
    ALU_PC: in std_logic_vector(31 downto 0);
    PC_out : out std_logic_vector(31 downto 0)
    );
end IF_stage;

architecture i_f of IF_stage is
signal PC : std_logic_vector(31 downto 0):=(others=>'0');
signal We1,We2 : std_logic := '0';
begin  -- IF
  
  PC_out<=PC;
    PC<=ALU_PC when PC_source= '0'  else
           ALU_out when PC_source='1' else
       PC;
           
end I_F;
