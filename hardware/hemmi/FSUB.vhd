library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FSUB is
  port (A,B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0));
end FSUB;

architecture GATE of FSUB is
component FEB_NORM is
  port (A : in std_logic_vector(24 downto 0);
        EIN : in integer;
        R : out std_logic_vector(22 downto 0);
        EOUT : out integer);
end component FEB_NORM;
signal G,L : std_logic_vector(31 downto 0);
signal F_1,F_2,GF,LF_1 : std_logic_vector(25 downto 0);
signal LF_2 : bit_vector(25 downto 0);
signal F_NORMALIZED,F_1_NORMALIZED,F_2_NORMALIZED,F_1_MINUS : std_logic_vector(22 downto 0);
signal DIFF_E : std_logic_vector(7 downto 0);
signal Sign : std_logic;
signal C,DIFFLAG : boolean;
signal E,E_NORMALIZED,E_1_NORMALIZED,E_2_NORMALIZED,E_1_MINUS : integer;
begin
  C <= B(30 downto 0) > A(30 downto 0);
  G <= B(31) & B(30 downto 0) when C else A;
  L <= A when C else B;
  Sign <= not (A(31) xor B(31));
  DIFF_E <= G(30 downto 23) - L(30 downto 23);
  DIFFLAG <= DIFF_E(7 downto 1) = "000000";
  E <= conv_integer(G(30 downto 23));

  GF <= "01" & G(22 downto 0) & '0';
  LF_1 <= "01"& L(22 downto 0) & '0' when (DIFF_E(0) = '0') else "001" & L(22 downto 0);
  F_1 <= GF + LF_1 when (Sign = '0') else
         GF - LF_1;
  F_1_NORMALIZED <= F_1(24 downto 2) when (F_1(25) = '1') else
                    F_1(23 downto 1) when (Sign = '0') else
                    F_1_MINUS;
  E_1_NORMALIZED <= E + 1 when (F_1(25) = '1') else
                    E_1_MINUS;

  LF_2 <= to_bitvector(("01" & L(22 downto 0) & '0')) srl conv_integer(DIFF_E);
  F_2 <= GF + to_stdlogicvector(LF_2) when (Sign = '0') else
         GF - to_stdlogicvector(LF_2);
  F_2_NORMALIZED <= F_2(24 downto 2) when (F_2(25) = '1') else
                    F_2(23 downto 1) when (F_2(24) = '1') else
                    F_2(22 downto 0);
  E_2_NORMALIZED <= E + 1 when (F_2(25) = '1') else
                    E     when (F_2(24) = '1') else
                    E - 1;
  F_NORMALIZED <= F_1_NORMALIZED when DIFFLAG else F_2_NORMALIZED;
  E_NORMALIZED <= E_1_NORMALIZED when DIFFLAG else E_2_NORMALIZED;
  S(31) <= G(31);
  S(30 downto 0) <= "0000000000000000000000000000000" when (E_NORMALIZED <= 0) else
                    "1111111100000000000000000000000" when (E_NORMALIZED >= 255) else
                     conv_std_logic_vector(E_NORMALIZED,8) & F_NORMALIZED;
MINUS_NORM: FEB_NORM port map (F_1(24 downto 0),E,F_1_MINUS,E_1_MINUS);
end GATE;
