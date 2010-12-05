library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity WB_stage is
  
  port (
    MemtoReg : in  std_logic;
    Mem_data : in  std_logic_vector(31 downto 0);
    ALU_data : in  std_logic_vector(31 downto 0);
    io_data_i:in std_logic_vector(7 downto 0);
    RegDst   : in  std_logic;
    rt       : in  std_logic_vector(5 downto 0);
    rd       : in  std_logic_vector(5 downto 0);
    r_out    : out std_logic_vector(5 downto 0);
    data_out : out std_logic_vector(31 downto 0);
    Reg_source: in std_logic;
    PC_in:in std_logic_vector(31 downto 0);
    reg_io:in std_logic
    );

end WB_stage;

architecture WB of WB_stage is
signal io_data_o : std_logic_vector(31 downto 0) := (others=>'0');
begin  -- WB
io_data_o<="000000000000000000000000"&io_data_i(7 downto 0);
  data_out<=Mem_data when MemtoReg='1' else
             io_data_o when reg_io='1' else
             PC_in+1 when Reg_source='1' else
             ALU_data;
  r_out<=rt when RegDst ='0' else
          "011111" when Reg_source='1' else
          rd;

end WB;
