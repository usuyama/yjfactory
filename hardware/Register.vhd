library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Rgstr is
  
  port (
    clk:in std_logic;
    we :in std_logic;
    out_a : in std_logic_vector(4 downto 0);
    dpra : in std_logic_vector(4 downto 0);
    di  :in std_logic_vector(31 downto 0);
    in_a : in std_logic_vector(4 downto 0);
    spo : out std_logic_vector(31 downto 0);
    dpo : out std_logic_vector(31 downto 0));
end Register;
 architecture Reg of Rgstr is
type ram_type is array (31 downto 0) of std_logic_vector(31 downto 0);
 signal RAM : ram_type := (others=>(others=>'0'));
 signal a : std_logic_vector(4 downto 0);
 begin  -- Reg

   
  a<=out_a when we='0'
                  else in_a;
  process (clk)
  begin
    if (clk'event and clk = '1') then
      if (we = '1') then
        if (a="00000") then
          NULL;
          else
          RAM(conv_integer(a)) <= di;
        end if;

      end if;
    end if;
  end process;
  spo <= RAM(conv_integer(a));
  dpo <= RAM(conv_integer(dpra));

 end Reg;
