library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FSQRT is
  port(clk,ready : in std_logic;
       A : in std_logic_vector(31 downto 0);
       R : out std_logic_vector(31 downto 0));
end entity FSQRT;

architecture STRUCTURE of FSQRT is
component FADD is
  port (A,B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0));
end component FADD;
component FMUL is
  port (A,B : in std_logic_vector(31 downto 0);
        P : out std_logic_vector(31 downto 0));
end component FMUL;
signal rt,irt,irt2,irt3,irt4,irt5,NA : std_logic_vector(31 downto 0);
begin
p0 : process(clk) is
begin
  if (rising_edge(clk)) then
    if (ready = '1') then
      NA(31) <= not A(31);
      NA(30 downto 23) <= A(30 downto 23) - "00000001";
      NA(22 downto 0) <= A(22 downto 0);
      irt(31) <= A(31);
      case A(30 downto 23) is
        when "00000000" => irt(30 downto 23) <= "00000000";
        when "11111111" => irt(30 downto 23) <= "11111111";
        when others => irt(30 downto 23) <= "10111110" - ('0' & A(30 downto 24));
      end case;
      if (A(23) = '1') then
        irt(22) <= '0';
      else
        irt(22) <= '1';
      end if;
      irt(21 downto 0) <= "0000000000000000000000";
	else
      irt <= irt5;
    end if;
  end if;
end process p0;
MUL0 : FMUL port map (irt,irt,irt2);
MUL1 : FMUL port map (NA,irt2,irt3);
ADD0 : FADD port map (irt3,"00111111110000000000000000000000",irt4);
MUL2 : FMUL port map (irt4,irt,irt5);
MUL3 : FMUL port map (irt5,A,R);
end STRUCTURE;
