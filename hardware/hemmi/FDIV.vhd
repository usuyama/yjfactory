library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FDIV is
  port(clk,ready : in std_logic;
       A,B : in std_logic_vector(31 downto 0);
       R : out std_logic_vector(31 downto 0));
end entity FDIV;

architecture STRUCTURE of FDIV is
component FADD is
  port (A,B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0));
end component FADD;
component FMUL is
  port (A,B : in std_logic_vector(31 downto 0);
        P : out std_logic_vector(31 downto 0));
end component FMUL;
signal inv0,inv1,inv2,inv3,NB : std_logic_vector(31 downto 0);
begin
p0 : process(clk) is
begin
  if (rising_edge(clk)) then
    if (ready = '1') then
      NB(31) <= not B(31);
      NB(30 downto 0) <= B(30 downto 0);
      inv0(31) <= B(31);
      case B(30 downto 23) is
	    when "00000000" => inv0(30 downto 23) <= "11111111";
	    when "11111111" => inv0(30 downto 23) <= "00000000";
        when others => inv0(30 downto 23) <= "11111110" - B(30 downto 23);
      end case;
      inv0(22 downto 0) <= B(22 downto 0);
    else
	  inv0 <= inv3;
    end if;
  end if;
end process p0;
MUL0 : FMUL port map (NB,inv0,inv1);
ADD0 : FADD port map (inv1,"01000000000000000000000000000000",inv2);
MUL1 : FMUL port map (inv2,inv0,inv3);
MUL2 : FMUL port map (inv3,A,R);
end STRUCTURE;
