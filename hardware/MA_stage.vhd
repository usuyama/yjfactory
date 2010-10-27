library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity MA_stage is
  
  port (
    mem_write : in  std_logic;
    mem_addr  : in  std_logic_vector(31 downto 0);
    data_in   : in  std_logic_vector(31 downto 0);
    mem_read  : in  std_logic;
    data_out  : out std_logic_vector(31 downto 0);
    mem_WE    : out std_logic;
    mem_Data  : inout std_logic_vector(31 downto 0);
    mem_Address : out std_logic_vector(31 downto 0));

end MA_stage;

architecture MA of MA_stage is

begin  -- MA

  mem_Data<=data_in when mem_write='1' else
             (others=>'Z');
  data_out<=mem_Data;
  mem_WE<=mem_write;
  mem_Address<=mem_addr;


end MA;
