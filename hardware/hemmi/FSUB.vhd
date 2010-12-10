library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FSUB is
  port (A,B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0));
end FSUB;

architecture GATE of FSUB is
component TFB_PRIORITY_ENCODER is
  port (COUNT : in std_logic_vector(23 downto 0);
        P : out std_logic_vector(4 downto 0));
end component TFB_PRIORITY_ENCODER;
component TFB_LSHIFTER is
  port (A : in std_logic_vector(24 downto 0);
        COUNT : in std_logic_vector(4 downto 0);
        R : out std_logic_vector(22 downto 0));
end component TFB_LSHIFTER;
signal G,L : std_logic_vector(31 downto 0);
signal F_1,LF_1 : std_logic_vector(24 downto 0);
signal F_2 : std_logic_vector(25 downto 0);
signal LF_2 : bit_vector(25 downto 0);
signal F_1_NORMALIZED,F_2_NORMALIZED : std_logic_vector(22 downto 0);
signal DIFF_E,E_1_NORMALIZED,E_2_NORMALIZED : std_logic_vector(7 downto 0);
signal P : std_logic_vector(4 downto 0);
signal Sign : std_logic;
signal Com,DIFFLAG : boolean;
begin
  Com <= B(30 downto 0) > A(30 downto 0);
  G <= (not B(31) & B(30 downto 0)) when Com else A;
  L <= A when Com else B;
  Sign <= A(31) xor B(31);
  DIFF_E <= G(30 downto 23) - L(30 downto 23);
  DIFFLAG <= (DIFF_E(7 downto 1) = "0000000") and (Sign = '0');

  LF_1 <= '1' & L(22 downto 0) & '0' when (DIFF_E(0) = '0') else "01" & L(22 downto 0);
  F_1 <= ('1' & G(22 downto 0) & '0') - LF_1;
  E_1_NORMALIZED <= G(30 downto 23) - ("000" & P);

  LF_2 <= to_bitvector(("01" & L(22 downto 0) & '0')) srl conv_integer(DIFF_E);
  F_2 <= ("01" & G(22 downto 0) & '0') + to_stdlogicvector(LF_2) when (Sign = '1') else
         ("01" & G(22 downto 0) & '0') - to_stdlogicvector(LF_2);
  F_2_NORMALIZED <= F_2(24 downto 2) when (F_2(25) = '1') else
                    F_2(23 downto 1) when (F_2(24) = '1') else
                    F_2(22 downto 0);
  E_2_NORMALIZED <= G(30 downto 23) + "00000001" when (F_2(25) = '1') else
                    G(30 downto 23)              when (F_2(24) = '1') else
                    G(30 downto 23) - "00000001";

  S(31) <= G(31);
  S(30 downto 0) <= E_1_NORMALIZED & F_1_NORMALIZED when DIFFLAG else
                     E_2_NORMALIZED & F_2_NORMALIZED;
PRIOR0: TFB_PRIORITY_ENCODER port map (F_1(24 downto 1),P);
SHIFT0: TFB_LSHIFTER port map (F_1,P,F_1_NORMALIZED);
end GATE;

