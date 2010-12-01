library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FSUB is
  port (A,B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0));
end FSUB;

architecture GATE of FSUB is
begin
p0 : process (A,B) is
variable NotB,G,L : std_logic_vector(31 downto 0);
variable GF,LF : std_logic_vector(48 downto 0);
variable R : std_logic_vector(22 downto 0);
variable F : std_logic_vector(73 downto 0);
variable Sign : std_logic;
variable E,P,SE : integer;
begin
  NotB := (not B(31)) & B(30 downto 0);
  if (conv_integer(B(30 downto 0)) > conv_integer(A(30 downto 0))) then
    G := NotB;
    L := A;
  else
    G := A;
    L := NotB;
  end if;
  E := conv_integer(G(30 downto 23) - L(30 downto 23));

  if (E > 24) then
    S <= G;
  else
	 GF := "01" & G(22 downto 0) & "000000000000000000000000";
	 LF := conv_std_logic_vector(0,49);
	 LF(47-E downto 24-E) := '1' & L(22 downto 0);

    F(73) := '0';
	 F(23 downto 0) := "000000000000000000000000";
	 Sign := G(31) xor L(31);
    if (Sign = '0') then
	   F(72 downto 24) := GF + LF;
    else
	   F(72 downto 24) := GF - LF;
    end if;

    P := 73;
	 SE := 73;
    for I in 24 to 72 loop
	   if (F(I) = '1') then
		  if (SE = 73) then
		    SE := I;
		  end if;
		  P := I;
		end if;
    end loop;

    F(72 downto 48) := F(P downto P-24);
    if (F(48) = '1' and ((P - SE > 24) or (F(49) = '1'))) then
	   F(73 downto 49) := F(73 downto 49) + "0000000000000000000000001";
    end if;
	 if (P = 73) then
	   S <= "00000000000000000000000000000000";
	 else
	   S(31) <= G(31);
      if (F(73) = '1') then
		  E := conv_integer(G(30 downto 23)) + P - 70;
		  R(22 downto 0) := F(72 downto 50);
		else
		  E := conv_integer(G(30 downto 23)) + P - 71;
		  R(22 downto 0) := F(71 downto 49);
		end if;
		if (E >= 255) then
		  S(30 downto 0) <= "1111111100000000000000000000000";
		elsif (E <= 0) then
		  S(30 downto 0) <= "0000000000000000000000000000000";
		else
		  S(30 downto 23) <= conv_std_logic_vector(E,8);
        S(22 downto 0) <= R(22 downto 0);
		end if;
    end if;
  end if;
end process p0;
end GATE;
