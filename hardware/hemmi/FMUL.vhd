library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FMUL is
  port (A,B : in std_logic_vector(31 downto 0);
        P : out std_logic_vector(31 downto 0));
end FMUL;

architecture GATE of FMUL is
begin
p0 : process(A,B) is
variable E : integer;
variable F : std_logic_vector(47 downto 0);
variable AF,BF : std_logic_vector(23 downto 0);
variable G : std_logic;
begin
  P(31) <= A(31) xor B(31);
  E := conv_integer(A(30 downto 23)) + conv_integer(B(30 downto 23)) - 127;

  AF := '1' & A(22 downto 0);
  BF := '1' & B(22 downto 0);
  F := "000000000000000000000000000000000000000000000000";
  for I in 0 to 23 loop
    if (BF(I) = '1') then
      F(I+24 downto I) := F(I+24 downto I) + ('0' & AF);
    end if;
  end loop;

  if (F(47) = '1') then
	 G := F(23);
  else
	 G := F(22);
  end if;

  if (G = '1') then
    F(47 downto 23) := F(47 downto 23) + "000000000000000000000001";
  end if;
  if (F(47) = '1') then
    E := E + 1;
  end if;
  if (E > 254) then    -- overflow
    P(30 downto 0) <= "1111111100000000000000000000000";
  elsif (E < 0) then -- underflow
    P(30 downto 0) <= "0000000000000000000000000000000";
  else
    P(30 downto 23) <= conv_std_logic_vector(E, 8);
    if (F(47) = '1') then
	   P(22 downto 0) <= F(46 downto 24);
    else
	   P(22 downto 0) <= F(45 downto 23);
    end if;
  end if;
end process p0;
end GATE;
