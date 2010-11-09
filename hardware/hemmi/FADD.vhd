library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FADD is
  port (A,B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0));
end FADD;

architecture GATE of FADD is
begin
p0 : process (A,B) is
variable G,L : std_logic_vector(31 downto 0);
variable GF,LF,F : std_logic_vector(47 downto 0);
variable E,P : integer;
variable Z : std_logic;
begin
  if (conv_integer(B(30 downto 0)) > conv_integer(A(30 downto 0))) then
    G := B;
    L := A;
  else
    G := A;
    L := B;
  end if;
  E := conv_integer(G(30 downto 23) - L(30 downto 23));

  if (E > 23) then
    S <= G;
  else
    GF(46) := '1';
    GF(45 downto 23) := G(22 downto 0);
    GF(22 downto 0) := "00000000000000000000000";
    LF := conv_std_logic_vector(0,48);
    LF(46-E) := '1';
    LF(45-E downto 23-E) := L(22 downto 0);

    if ((G(31) xor L(31)) = '0') then
      F := GF + LF;
    else
      F := GF - LF;
    end if;

    Z := '0';
    for I in 47 downto 0 loop
      if ((F(I) = '1') and (Z = '0')) then
        P := I;
        Z := '1';
      end if;
    end loop;

    if (Z = '0') then
      S <= "00000000000000000000000000000000";
    else
      S(31) <= G(31);
      E := conv_integer(G(30 downto 23)) + P;
      if (E >= 301) then
        S(30 downto 0) <= "1111111100000000000000000000000";
      elsif (E <= 46 or P = 0) then
        S(30 downto 0) <= "0000000000000000000000000000000";
      else
        S(30 downto 23) <= conv_std_logic_vector(E-46,8);
        if (P > 22) then
          S(22 downto 0) <= F(P-1 downto P-23);
        else
          S(22 downto 23-P) <= F(P-1 downto 0);
          S(22-P downto 0) <= (others => '0');
        end if;
      end if;
    end if;
  end if;
end process p0;
end GATE;
