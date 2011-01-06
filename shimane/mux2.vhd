library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity mux2 is
  port(
    SEL:in std_logic;
    A:in std_logic_vector(31 downto 0);
    B:in std_logic_vector(31 downto 0);
    DOUT:out std_logic_vector(31 downto 0)
    );
  end mux2;
architecture behav of mux2 is
begin
    DOUT<=
    A when SEL="00" else
    B when SEL="01" else
    C when SEL="10" else
    D;
end behav;
  
