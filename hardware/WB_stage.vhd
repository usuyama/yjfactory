library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity WB_stage is
  
  port (
    MemtoReg : in  std_logic;
    Mem_data : in  std_logic_vector(31 downto 0);
    ALU_data : in  std_logic_vector(31 downto 0);
    RegDst   : in  std_logic;
    rt       : in  std_logic_vector(4 downto 0);
    rd       : in  std_logic_vector(4 downto 0);
    r_out    : out std_logic_vector(4 downto 0);
    data_out : out std_logic_vector(4 downto 0));

end WB_stage;

architecture WB of WB_stage is

begin  -- WB

  

end WB;
