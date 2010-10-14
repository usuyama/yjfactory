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
variable AF : std_logic_vector(23 downto 0);
variable BF : std_logic_vector(23 downto 0);
variable H : integer;
variable R : std_logic;
begin
  P(31) <= A(31) xor B(31);
  E := conv_integer(A(30 downto 23) + B(30 downto 23));

  if (A(30 downto 23) = "00000000") then
    AF := '0' & A(22 downto 0);
  else
    AF := '1' & A(22 downto 0);
  end if;
  if (B(30 downto 23) = "00000000") then
    BF := '0' & B(22 downto 0);
  else
    BF := '1' & B(22 downto 0);
  end if;
  F := "000000000000000000000000000000000000000000000000";
  for I in 0 to 23 loop
    if (BF(I) = '1') then
      F(I+24 downto I) := F(I+24 downto I) + ('0' & AF);
    end if;
  end loop;

  R := '0';
  if (F(47) = '1') then
    E := E + 1;
    H := 46;
	 for I in 23 downto 0 loop
      R := R or F(I);
	 end loop;
  elsif (F(46) = '1') then
	 H := 45;
	 for I in 22 downto 0 loop
	   R := R or F(I);
    end loop;
  else
    H := 45;
    E := 0;
  end if;

  if (F(H-22) = '1' and R = '1') then
    if (F(H downto H-21) = "111111111111111111111") then
	   E := E + 1;
		H := 46;
    end if;
	 F(H downto H-22) := F(H downto H-22) + "0000000000000000000001";
  end if;

  if (E > 381) then    -- overflow
    P(30 downto 0) <= "1111111100000000000000000000000";
  elsif (E < 127) then -- underflow
    P(30 downto 0) <= "0000000000000000000000000000000";
  else
    P(30 downto 23) <= conv_std_logic_vector(E - 127, 8);
    P(22 downto 0) <= F(H downto H-22);
  end if;
end process p0;
end GATE;
