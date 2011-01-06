library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FADD is
  port (A,B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0));
end FADD;

architecture GATE of FADD is
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
  G <= B when Com else A;
  L <= A when Com else B;
  Sign <= A(31) xor B(31);
  DIFF_E <= G(30 downto 23) - L(30 downto 23);
  DIFFLAG <= (DIFF_E(7 downto 1) = "0000000") and (Sign = '1');

  LF_1 <= '1' & L(22 downto 0) & '0' when (DIFF_E(0) = '0') else "01" & L(22 downto 0);
  F_1 <= ('1' & G(22 downto 0) & '0') - LF_1;
  E_1_NORMALIZED <= "00000000" when (A - B = "10000000000000000000000000000000") else
                    G(30 downto 23) - ("000" & P);

  LF_2 <= to_bitvector(("01" & L(22 downto 0) & '0')) srl conv_integer(DIFF_E);
  F_2 <= ("01" & G(22 downto 0) & '0') + to_stdlogicvector(LF_2) when (Sign = '0') else
         ("01" & G(22 downto 0) & '0') - to_stdlogicvector(LF_2);
  F_2_NORMALIZED <= F_2(24 downto 2) when (F_2(25) = '1') else
                    F_2(23 downto 1) when (F_2(24) = '1') else
                    F_2(22 downto 0);
  E_2_NORMALIZED <= G(30 downto 23) + "00000001" when (F_2(25) = '1') else
                    G(30 downto 23)              when (F_2(24) = '1') else
                    G(30 downto 23) - "00000001";

  S(31) <= G(31);
  S(30 downto 0) <= G(30 downto 0) when L(30 downto 0) = (otheres=>'0')  --0の場合。added by usuyama
                    E_1_NORMALIZED & F_1_NORMALIZED when DIFFLAG else
                    E_2_NORMALIZED & F_2_NORMALIZED;
PRIOR0: TFB_PRIORITY_ENCODER port map (F_1(24 downto 1),P);
SHIFT0: TFB_LSHIFTER port map (F_1,P,F_1_NORMALIZED);
end GATE;

--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--  twenty-four-bit priority encoder
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity TFB_PRIORITY_ENCODER is
  port (COUNT : in std_logic_vector(23 downto 0);
        P : out std_logic_vector(4 downto 0));
end TFB_PRIORITY_ENCODER;

architecture GATE of TFB_PRIORITY_ENCODER is
signal A23_22,A21_20,A19_18,A17_16,A15_14,A13_12,A11_10,A9_8,A7_6,A5_4,A3_2,
       A1_0,A23_20,A19_16,A15_12,A11_8,A7_4,A3_0,A23_16,A15_8,A7_0,A23_8 : std_logic;
begin
  A23_22 <= COUNT(23) nor COUNT(22);
  A21_20 <= COUNT(21) nor COUNT(20);
  A19_18 <= COUNT(19) nor COUNT(18);
  A17_16 <= COUNT(17) nor COUNT(16);
  A15_14 <= COUNT(15) nor COUNT(14);
  A13_12 <= COUNT(13) nor COUNT(12);
  A11_10 <= COUNT(11) nor COUNT(10);
  A9_8 <= COUNT(9) nor COUNT(8);
  A7_6 <= COUNT(7) nor COUNT(6);
  A5_4 <= COUNT(5) nor COUNT(4);
  A3_2 <= COUNT(3) nor COUNT(2);
  A1_0 <= COUNT(1) nor COUNT(0);
  A23_20 <= A23_22 and A21_20;
  A19_16 <= A19_18 and A17_16;
  A15_12 <= A15_14 and A13_12;
  A11_8 <= A11_10 and A9_8;
  A7_4 <= A7_6 and A5_4;
  A3_0 <= A3_2 and A1_0;
  A23_16 <= A23_20 and A19_16;
  A15_8 <= A15_12 and A11_8;
  A7_0 <= A7_4 and A3_0;
  A23_8 <= A23_16 and A15_8;
  P(4) <= A23_8;
  P(3) <= (not A23_8 and A23_16) or (A23_8 and A7_0);
  P(2) <= (not A23_16 and A23_20) or (A23_16 and not A15_8 and A15_12)
           or (A23_8 and not A7_0 and A7_4);
  P(1) <= (not A23_20 and A23_22) or (A23_20 and not A19_16 and A19_18)
           or (A23_16 and not A15_12 and A15_14) or (A23_16 and A15_12 and not A11_8 and A11_10)
           or (A23_8 and not A7_4 and A7_6) or (A23_8 and A7_4 and not A3_0 and A3_2);
  P(0) <= (not COUNT(23) and COUNT(22)) or (A23_22 and not COUNT(21) and COUNT(20)) or (A23_20 and not COUNT(19) and COUNT(18))
           or (A23_20 and A19_18 and not COUNT(17) and COUNT(16)) or (A23_16 and not COUNT(15) and COUNT(14))
           or (A23_16 and A15_14 and not COUNT(13) and COUNT(12)) or (A23_16 and A15_12 and not COUNT(11) and COUNT(10))
           or (A23_16 and A15_12 and A11_10 and not COUNT(9) and COUNT(8)) or (A23_8 and not COUNT(7) and COUNT(6))
           or (A23_8 and A7_6 and not COUNT(5) and COUNT(4)) or (A23_8 and A7_4 and not COUNT(3) and COUNT(2))
           or (A23_8 and A7_4 and A3_2 and not COUNT(1) and COUNT(0));
end GATE;

--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
-- twenty-five-bit left-shifter
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity TFB_LSHIFTER is
  port (A : in std_logic_vector(24 downto 0);
        COUNT : in std_logic_vector(4 downto 0);
        R : out std_logic_vector(22 downto 0));
end entity TFB_LSHIFTER;

architecture GATE of TFB_LSHIFTER is
signal SHIFTED_1,SHIFTED_2,SHIFTED_3,SHIFTED_4 : std_logic_vector(24 downto 0);
begin
  SHIFTED_4 <= A(8 downto 0) & "0000000000000000"  when COUNT(4) = '1' else A;
  SHIFTED_3 <= SHIFTED_4(16 downto 0) & "00000000" when COUNT(3) = '1' else SHIFTED_4;
  SHIFTED_2 <= SHIFTED_3(20 downto 0) & "0000"     when COUNT(2) = '1' else SHIFTED_3;
  SHIFTED_1 <= SHIFTED_2(22 downto 0) & "00"       when COUNT(1) = '1' else SHIFTED_2;
  R         <= SHIFTED_1(22 downto 0)              when COUNT(0) = '1' else SHIFTED_1(23 downto 1);
end GATE;
