library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FADD is
  port (A,B : in std_logic_vector(31 downto 0);
        S : out std_logic_vector(31 downto 0));
end FADD;

architecture GATE of FADD is
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
  G <= B when C else A;
  L <= A when C else B;
  Sign <= A(31) xor B(31);
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


--  normalize A * 2^EIN to R * 2^EOUT
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FEB_NORM is
  port (A : in std_logic_vector(24 downto 0);
        EIN : in integer;
        R : out std_logic_vector(22 downto 0);
        EOUT : out integer);
end FEB_NORM;

architecture GATE of FEB_NORM is
component PRIORITY_ENCODER is
  port (COUNT : in std_logic_vector(23 downto 0);
        P : out std_logic_vector(4 downto 0));
end component PRIORITY_ENCODER;
component TFB_LSHIFTER is
  port (A : in std_logic_vector(24 downto 0);
        COUNT : in std_logic_vector(4 downto 0);
        R : out std_logic_vector(24 downto 0));
end component TFB_LSHIFTER;
signal SHIFTED : std_logic_vector(24 downto 0);
signal P : std_logic_vector(4 downto 0);
begin
  R <= SHIFTED(23 downto 1);
  EOUT <= 0                    when ((P = 24) and (A(0) = '0')) else
          EIN - conv_integer(P);
PRIOR0: PRIORITY_ENCODER port map (A(24 downto 1),P);
SHIFT0: TFB_LSHIFTER port map (A,P,SHIFTED);
end GATE;

--  twenty-four-bit priority encoder
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity PRIORITY_ENCODER is
  port (COUNT : in std_logic_vector(23 downto 0);
        P : out std_logic_vector(4 downto 0));
end PRIORITY_ENCODER;

architecture GATE of PRIORITY_ENCODER is
signal A23,A22,A21,A20,A19,A18,A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,
       A2,A1,A0,A23_22,A21_20,A19_18,A17_16,A15_14,A13_12,A11_10,A9_8,A7_6,A5_4,A3_2,
       A1_0,A23_20,A19_16,A15_12,A11_8,A7_4,A3_0,A23_16,A15_8,A7_0,A23_8 : std_logic;
begin
  A23 <= COUNT(23);
  A22 <= COUNT(22);
  A21 <= COUNT(21);
  A20 <= COUNT(20);
  A19 <= COUNT(19);
  A18 <= COUNT(18);
  A17 <= COUNT(17);
  A16 <= COUNT(16);
  A15 <= COUNT(15);
  A14 <= COUNT(14);
  A13 <= COUNT(13);
  A12 <= COUNT(12);
  A11 <= COUNT(11);
  A10 <= COUNT(10);
  A9 <= COUNT(9);
  A8 <= COUNT(8);
  A7 <= COUNT(7);
  A6 <= COUNT(6);
  A5 <= COUNT(5);
  A4 <= COUNT(4);
  A3 <= COUNT(3);
  A2 <= COUNT(2);
  A1 <= COUNT(1);
  A0 <= COUNT(0);
  A23_22 <= A23 nor A22;
  A21_20 <= A21 nor A20;
  A19_18 <= A19 nor A18;
  A17_16 <= A17 nor A16;
  A15_14 <= A15 nor A14;
  A13_12 <= A13 nor A12;
  A11_10 <= A11 nor A10;
  A9_8 <= A9 nor A8;
  A7_6 <= A7 nor A6;
  A5_4 <= A5 nor A4;
  A3_2 <= A3 nor A2;
  A1_0 <= A1 nor A0;
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
  P(0) <= (not A23 and A22) or (A23_22 and not A21 and A20) or (A23_20 and not A19 and A18)
           or (A23_20 and A19_18 and not A17 and A16)
           or (A23_16 and not A15 and A14) or (A23_16 and A15_14 and not A13 and A12)
           or (A23_16 and A15_12 and not A11 and A10) or (A23_16 and A15_12 and A11_10 and not A9 and A8)
           or (A23_8 and not A7 and A6) or (A23_8 and A7_6 and not A5 and A4)
           or (A23_8 and A7_4 and not A3 and A2) or (A23_8 and A7_4 and A3_2 and not A1 and A0);
end GATE;


-- twenty-five-bit left-shifter
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity TFB_LSHIFTER is
  port (A : in std_logic_vector(24 downto 0);
        COUNT : in std_logic_vector(4 downto 0);
        R : out std_logic_vector(24 downto 0));
end entity TFB_LSHIFTER;

architecture GATE of TFB_LSHIFTER is
signal SHIFTED_0,SHIFTED_1,SHIFTED_2,SHIFTED_3 : std_logic_vector(24 downto 0);
begin
  SHIFTED_0 <= A(23 downto 0)         & '0'                when COUNT(0) = '1' else A;
  SHIFTED_1 <= SHIFTED_0(22 downto 0) & "00"               when COUNT(1) = '1' else SHIFTED_0;
  SHIFTED_2 <= SHIFTED_1(20 downto 0) & "0000"             when COUNT(2) = '1' else SHIFTED_1;
  SHIFTED_3 <= SHIFTED_2(16 downto 0) & "00000000"         when COUNT(3) = '1' else SHIFTED_2;
  R         <= SHIFTED_3(8 downto 0)  & "0000000000000000" when COUNT(4) = '1' else SHIFTED_3;
end GATE;
