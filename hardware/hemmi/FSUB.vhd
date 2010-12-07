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
  port (A : in std_logic_vector(47 downto 0);
        EIN : in integer;
        R : out std_logic_vector(47 downto 0);
        EOUT : out integer);
end component FEB_NORM;
signal G,L : std_logic_vector(31 downto 0);
signal GF : std_logic_vector(24 downto 0);
signal LF : std_logic_vector(48 downto 0);
signal LF_bitvector : bit_vector(48 downto 0);
signal F1 : std_logic_vector(48 downto 0);
signal F_PLUS,F_MINUS : std_logic_vector(47 downto 0);
signal F2,F3 : std_logic_vector(24 downto 0);
signal F4 : std_logic_vector(22 downto 0);
signal Sign : std_logic;
signal C : boolean;
signal E1,E_PLUS,E_MINUS,E2,E4 : integer;
begin
  C <= B(30 downto 0) > A(30 downto 0);
  G <= (not B(31)) & B(30 downto 0) when C else A;
  L <= A when C else (not B(31)) & B(30 downto 0);
  Sign <= not (A(31) xor B(31));

  GF <= "01" & G(22 downto 0);
  LF <= "01" & L(22 downto 0) & "000000000000000000000000";
  LF_bitvector <= to_bitvector(LF) srl conv_integer(G(30 downto 23) - L(30 downto 23));
  F1(48 downto 24) <= GF + to_stdlogicvector(LF_bitvector)(48 downto 24) when (Sign = '0') else
                      GF - to_stdlogicvector(LF_bitvector)(48 downto 24);
  F1(23 downto 0) <= to_stdlogicvector(LF_bitvector)(23 downto 0);
  E1 <= conv_integer(G(30 downto 23));

  F_PLUS <= F1(48 downto 1) when (F1(48) = '1') else F1(47 downto 0);
  E_PLUS <= E1 + 1          when (F1(48) = '1') else E1;
  F2 <= F_PLUS(47 downto 23) when (Sign = '0') else F_MINUS(47 downto 23);
  E2 <= E_PLUS               when (Sign = '0') else E_MINUS;
  F3 <= ('0' & F2(24 downto 1)) + ("000000000000000000000000" & F2(0));
  F4 <= F3(23 downto 1) when (F3(24) = '1') else F3(22 downto 0);
  E4 <= E2 + 1 when (F3(24) = '1') else E2;

  S(31) <= G(31);
  S(30 downto 0) <= "0000000000000000000000000000000" when (E4 <= 0) else
                    "1111111100000000000000000000000" when (E4 >= 255) else
                     conv_std_logic_vector(E4,8) & F4;
NORM: FEB_NORM port map (F1(47 downto 0),E1,F_MINUS,E_MINUS);
end GATE;


--  normalize A * 2^EIN to R * 2^EOUT
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FEB_NORM is
  port (A : in std_logic_vector(47 downto 0);
        EIN : in integer;
        R : out std_logic_vector(47 downto 0);
        EOUT : out integer);
end FEB_NORM;

architecture GATE of FEB_NORM is
component EPRIOR is
  port (COUNT : in std_logic_vector(7 downto 0);
        P : out std_logic_vector(3 downto 0));
end component EPRIOR;
component SPRIOR is
  port (COUNT : in std_logic_vector(15 downto 0);
        P : out std_logic_vector(4 downto 0));
end component SPRIOR;
signal SHIFTED_1,SHIFTED_2 : bit_vector(47 downto 0);
signal P1 : std_logic_vector(3 downto 0);
signal P2 : std_logic_vector(4 downto 0);
signal E : integer;
begin
  SHIFTED_1 <= to_bitvector(A) sll conv_integer(P1);
  SHIFTED_2 <= SHIFTED_1 sll conv_integer(P2) when (P1(3) = '1') else SHIFTED_1;
  R <= to_stdlogicvector(SHIFTED_2);

  E <= EIN - conv_integer(P1);
  EOUT <= 0                    when ((P1(3) = '1') and (P2(4) = '1') and (A(23) = '0')) else
          E - conv_integer(P2) when (P1(3) = '1') else
          E;
PRIOR0: EPRIOR port map (A(47 downto 40),P1);
PRIOR1: SPRIOR port map (A(39 downto 24),P2);
end GATE;


--  eight-bit priority encoder
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity EPRIOR is
  port (COUNT : in std_logic_vector(7 downto 0);
        P : out std_logic_vector(3 downto 0));
end EPRIOR;

architecture GATE of EPRIOR is
signal Z7,Z6,Z5,Z4,Z3,Z2,Z1,Z0,Z7_6,Z5_4,Z3_2,Z1_0,Z7_4,Z3_0,Z7_0 : std_logic;
begin
  Z7 <= COUNT(7);
  Z6 <= COUNT(6);
  Z5 <= COUNT(5);
  Z4 <= COUNT(4);
  Z3 <= COUNT(3);
  Z2 <= COUNT(2);
  Z1 <= COUNT(1);
  Z0 <= COUNT(0);
  Z7_6 <= Z7 nor Z6;
  Z5_4 <= Z5 nor Z4;
  Z3_2 <= Z3 nor Z2;
  Z1_0 <= Z1 nor Z0;
  Z7_4 <= Z7_6 and Z5_4;
  Z3_0 <= Z3_2 and Z1_0;
  Z7_0 <= Z7_4 and Z3_0;
  P(3) <= Z7_0;
  P(2) <= not Z7_0 and Z7_4;
  P(1) <= (not Z7_4 and Z7_6) or (Z7_4 and (not Z3_0 and Z3_2));
  P(0) <= (not Z7 and Z6) or (Z7_6 and (not Z5 and Z4))
       or (Z7_4 and ((not Z3 and Z2) or (Z3_2 and (not Z1 and Z0))));
end GATE;

--  sixteen-bit priority encoder
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity SPRIOR is
  port (COUNT : in std_logic_vector(15 downto 0);
        P : out std_logic_vector(4 downto 0));
end SPRIOR;

architecture GATE of SPRIOR is
signal Z15,Z14,Z13,Z12,Z11,Z10,Z9,Z8,Z7,Z6,Z5,Z4,Z3,Z2,Z1,Z0,
       Z15_14,Z13_12,Z11_10,Z9_8,Z7_6,Z5_4,Z3_2,Z1_0,Z15_12,Z11_8,Z7_4,Z3_0,Z15_8,Z7_0,Z15_0 : std_logic;
begin
  Z15 <= COUNT(15);
  Z14 <= COUNT(14);
  Z13 <= COUNT(13);
  Z12 <= COUNT(12);
  Z11 <= COUNT(11);
  Z10 <= COUNT(10);
  Z9 <= COUNT(9);
  Z8 <= COUNT(8);
  Z7 <= COUNT(7);
  Z6 <= COUNT(6);
  Z5 <= COUNT(5);
  Z4 <= COUNT(4);
  Z3 <= COUNT(3);
  Z2 <= COUNT(2);
  Z1 <= COUNT(1);
  Z0 <= COUNT(0);
  Z15_14 <= Z15 nor Z14;
  Z13_12 <= Z13 nor Z12;
  Z11_10 <= Z11 nor Z10;
  Z9_8 <= Z9 nor Z8;
  Z7_6 <= Z7 nor Z6;
  Z5_4 <= Z5 nor Z4;
  Z3_2 <= Z3 nor Z2;
  Z1_0 <= Z1 nor Z0;
  Z15_12 <= Z15_14 and Z13_12;
  Z11_8 <= Z11_10 and Z9_8;
  Z7_4 <= Z7_6 and Z5_4;
  Z3_0 <= Z3_2 and Z1_0;
  Z15_8 <= Z15_12 and Z11_8;
  Z7_0 <= Z7_4 and Z3_0;
  Z15_0 <= Z15_8 and Z7_0;
  P(4) <= Z15_0;
  P(3) <= not Z15_0 and Z15_8;
  P(2) <= (not Z15_8 and Z15_12) or (Z15_8 and (not Z7_0 and Z7_4));
  P(1) <= (not Z15_12 and Z15_14) or (Z15_12 and (not Z11_8 and Z11_10))
           or (Z15_8 and ((not Z7_4 and Z7_6) or (Z7_4 and (not Z3_0 and Z3_2))));
  P(0) <= (not Z15 and Z14) or (Z15_14 and (not Z13 and Z12))
          or (Z15_12 and ((not Z11 and Z10) or (Z11_10 and (not Z9 and Z8))))
          or (Z15_8 and ((not Z7 and Z6) or (Z7_6 and (not Z5 and Z4))
			     or (Z7_4 and ((not Z3 and Z2) or (Z3_2 and ((not Z1 and Z0)))))));
end GATE;
