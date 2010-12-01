library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FULLADDER is
  port (A,B,X : in std_logic;
        S,C : out std_logic);
end FULLADDER;

architecture GATE of FULLADDER is
begin
  S <= (A xor B xor X) or (A and B and X);
  C <= (A and B) or (B and X) or (X and A);
end GATE;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity TFBMUL is
  port (A,B : in std_logic_vector(23 downto 0);
        R : out std_logic_vector(47 downto 0));
end TFBMUL;

architecture GATE of TFBMUL is
component FULLADDER is
  port (A,B,X : in std_logic;
        S,C : out std_logic);
end component FULLADDER;
signal P0,P1,P2 : std_logic_vector(25 downto 0);
signal P3,S0,C0 : std_logic_vector(26 downto 0);
signal P4,S1,C1 : std_logic_vector(27 downto 0);
signal P5,S2,C2 : std_logic_vector(28 downto 0);
signal P6,S3,C3 : std_logic_vector(29 downto 0);
signal P7,S4,C4 : std_logic_vector(30 downto 0);
signal P8,S5,C5 : std_logic_vector(31 downto 0);
signal P9,S6,C6 : std_logic_vector(32 downto 0);
signal P10,S7,C7 : std_logic_vector(33 downto 0);
signal P11,S8,C8 : std_logic_vector(34 downto 0);
signal P12,S9,C9 : std_logic_vector(35 downto 0);
signal P13,S10,C10 : std_logic_vector(36 downto 0);
signal P14,S11,C11 : std_logic_vector(37 downto 0);
signal P15,S12,C12 : std_logic_vector(38 downto 0);
signal P16,S13,C13 : std_logic_vector(39 downto 0);
signal P17,S14,C14 : std_logic_vector(40 downto 0);
signal P18,S15,C15 : std_logic_vector(41 downto 0);
signal P19,S16,C16 : std_logic_vector(42 downto 0);
signal P20,S17,C17 : std_logic_vector(43 downto 0);
signal P21,S18,C18 : std_logic_vector(44 downto 0);
signal P22,S19,C19 : std_logic_vector(45 downto 0);
signal P23,S20,C20 : std_logic_vector(46 downto 0);
signal S21,C21 : std_logic_vector(47 downto 0);
begin
  P0(25 downto 24) <= "00";
  P0(23 downto 0) <= A when (B(0) = '1') else "000000000000000000000000";
  P1(25) <= '0';
  P1(24 downto 1) <= A when (B(1) = '1') else "000000000000000000000000";
  P1(0) <= '0';
  P2(25 downto 2) <= A when (B(2) = '1') else "000000000000000000000000";
  P2(1 downto 0) <= "00";
  P3(26 downto 3) <= A when (B(3) = '1') else "000000000000000000000000";
  P3(2 downto 0) <= "000";
  P4(27 downto 4) <= A when (B(4) = '1') else "000000000000000000000000";
  P4(3 downto 0) <= "0000";
  P5(28 downto 5) <= A when (B(5) = '1') else "000000000000000000000000";
  P5(4 downto 0) <= "00000";
  P6(29 downto 6) <= A when (B(6) = '1') else "000000000000000000000000";
  P6(5 downto 0) <= "000000";
  P7(30 downto 7) <= A when (B(7) = '1') else "000000000000000000000000";
  P7(6 downto 0) <= "0000000";
  P8(31 downto 8) <= A when (B(8) = '1') else "000000000000000000000000";
  P8(7 downto 0) <= "00000000";
  P9(32 downto 9) <= A when (B(9) = '1') else "000000000000000000000000";
  P9(8 downto 0) <= "000000000";
  P10(33 downto 10) <= A when (B(10) = '1') else "000000000000000000000000";
  P10(9 downto 0) <= "0000000000";
  P11(34 downto 11) <= A when (B(11) = '1') else "000000000000000000000000";
  P11(10 downto 0) <= "00000000000";
  P12(35 downto 12) <= A when (B(12) = '1') else "000000000000000000000000";
  P12(11 downto 0) <= "000000000000";
  P13(36 downto 13) <= A when (B(13) = '1') else "000000000000000000000000";
  P13(12 downto 0) <= "0000000000000";
  P14(37 downto 14) <= A when (B(14) = '1') else "000000000000000000000000";
  P14(13 downto 0) <= "00000000000000";
  P15(38 downto 15) <= A when (B(15) = '1') else "000000000000000000000000";
  P15(14 downto 0) <= "000000000000000";
  P16(39 downto 16) <= A when (B(16) = '1') else "000000000000000000000000";
  P16(15 downto 0) <= "0000000000000000";
  P17(40 downto 17) <= A when (B(17) = '1') else "000000000000000000000000";
  P17(16 downto 0) <= "00000000000000000";
  P18(41 downto 18) <= A when (B(18) = '1') else "000000000000000000000000";
  P18(17 downto 0) <= "000000000000000000";
  P19(42 downto 19) <= A when (B(19) = '1') else "000000000000000000000000";
  P19(18 downto 0) <= "0000000000000000000";
  P20(43 downto 20) <= A when (B(20) = '1') else "000000000000000000000000";
  P20(19 downto 0) <= "00000000000000000000";
  P21(44 downto 21) <= A when (B(21) = '1') else "000000000000000000000000";
  P21(20 downto 0) <= "000000000000000000000";
  P22(45 downto 22) <= A when (B(22) = '1') else "000000000000000000000000";
  P22(21 downto 0) <= "0000000000000000000000";
  P23(46 downto 23) <= A when (B(23) = '1') else "000000000000000000000000";
  P23(22 downto 0) <= "00000000000000000000000";
  S0(26) <= '0';
  S1(27) <= '0';
  S2(28) <= '0';
  S3(29) <= '0';
  S4(30) <= '0';
  S5(31) <= '0';
  S6(32) <= '0';
  S7(33) <= '0';
  S8(34) <= '0';
  S9(35) <= '0';
  S10(36) <= '0';
  S11(37) <= '0';
  S12(38) <= '0';
  S13(39) <= '0';
  S14(40) <= '0';
  S15(41) <= '0';
  S16(42) <= '0';
  S17(43) <= '0';
  S18(44) <= '0';
  S19(45) <= '0';
  S20(46) <= '0';
  S21(47) <= '0';
  C0(0) <= '0';
  C1(0) <= '0';
  C2(0) <= '0';
  C3(0) <= '0';
  C4(0) <= '0';
  C5(0) <= '0';
  C6(0) <= '0';
  C7(0) <= '0';
  C8(0) <= '0';
  C9(0) <= '0';
  C10(0) <= '0';
  C11(0) <= '0';
  C12(0) <= '0';
  C13(0) <= '0';
  C14(0) <= '0';
  C15(0) <= '0';
  C16(0) <= '0';
  C17(0) <= '0';
  C18(0) <= '0';
  C19(0) <= '0';
  C20(0) <= '0';
  C21(0) <= '0';
  L0: for I in 0 to 25 generate
    FA0: FULLADDER port map (P0(I),P1(I),P2(I),S0(I),C0(I+1));
  end generate;
  L1: for I in 0 to 26 generate
    FA1: FULLADDER port map (P3(I),S0(I),C0(I),S1(I),C1(I+1));
  end generate;
  L2: for I in 0 to 27 generate
    FA2: FULLADDER port map (P4(I),S1(I),C1(I),S2(I),C2(I+1));
  end generate;
  L3: for I in 0 to 28 generate
    FA3: FULLADDER port map (P5(I),S2(I),C2(I),S3(I),C3(I+1));
  end generate;
  L4: for I in 0 to 29 generate
    FA4: FULLADDER port map (P6(I),S3(I),C3(I),S4(I),C4(I+1));
  end generate;
  L5: for I in 0 to 30 generate
    FA5: FULLADDER port map (P7(I),S4(I),C4(I),S5(I),C5(I+1));
  end generate;
  L6: for I in 0 to 31 generate
    FA6: FULLADDER port map (P8(I),S5(I),C5(I),S6(I),C6(I+1));
  end generate;
  L7: for I in 0 to 32 generate
    FA7: FULLADDER port map (P9(I),S6(I),C6(I),S7(I),C7(I+1));
  end generate;
  L8: for I in 0 to 33 generate
    FA8: FULLADDER port map (P10(I),S7(I),C7(I),S8(I),C8(I+1));
  end generate;
  L9: for I in 0 to 34 generate
    FA9: FULLADDER port map (P11(I),S8(I),C8(I),S9(I),C9(I+1));
  end generate;
  L10: for I in 0 to 35 generate
    FA10: FULLADDER port map (P12(I),S9(I),C9(I),S10(I),C10(I+1));
  end generate;
  L11: for I in 0 to 36 generate
    FA11: FULLADDER port map (P13(I),S10(I),C10(I),S11(I),C11(I+1));
  end generate;
  L12: for I in 0 to 37 generate
    FA12: FULLADDER port map (P14(I),S11(I),C11(I),S12(I),C12(I+1));
  end generate;
  L13: for I in 0 to 38 generate
    FA13: FULLADDER port map (P15(I),S12(I),C12(I),S13(I),C13(I+1));
  end generate;
  L14: for I in 0 to 39 generate
    FA14: FULLADDER port map (P16(I),S13(I),C13(I),S14(I),C14(I+1));
  end generate;
  L15: for I in 0 to 40 generate
    FA15: FULLADDER port map (P17(I),S14(I),C14(I),S15(I),C15(I+1));
  end generate;
  L16: for I in 0 to 41 generate
    FA16: FULLADDER port map (P18(I),S15(I),C15(I),S16(I),C16(I+1));
  end generate;
  L17: for I in 0 to 42 generate
    FA17: FULLADDER port map (P19(I),S16(I),C16(I),S17(I),C17(I+1));
  end generate;
  L18: for I in 0 to 43 generate
    FA18: FULLADDER port map (P20(I),S17(I),C17(I),S18(I),C18(I+1));
  end generate;
  L19: for I in 0 to 44 generate
    FA19: FULLADDER port map (P21(I),S18(I),C18(I),S19(I),C19(I+1));
  end generate;
  L20: for I in 0 to 45 generate
    FA20: FULLADDER port map (P22(I),S19(I),C19(I),S20(I),C20(I+1));
  end generate;
  L21: for I in 0 to 46 generate
    FA21: FULLADDER port map (P23(I),S20(I),C20(I),S21(I),C21(I+1));
  end generate;
  R <= S21 + C21;
end GATE;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FMUL is
  port (A,B : in std_logic_vector(31 downto 0);
        P : out std_logic_vector(31 downto 0));
end FMUL;

architecture GATE of FMUL is
component TFBMUL is
  port (A,B : in std_logic_vector(23 downto 0);
        R : out std_logic_vector(47 downto 0));
end component TFBMUL;
signal E1,E2 : integer;
signal F1,F2 : std_logic_vector(47 downto 0);
signal AF,BF : std_logic_vector(23 downto 0);
signal G : std_logic;
begin
  P(31) <= A(31) xor B(31);
  E1 <= conv_integer(A(30 downto 23)) + conv_integer(B(30 downto 23)) - 127;

  AF <= '1' & A(22 downto 0);
  BF <= '1' & B(22 downto 0);

  G <= F1(23) when (F1(47) = '1') else F1(22);

  F2(47 downto 23) <= F1(47 downto 23) + ("000000000000000000000000" & G);
  F2(22 downto 0) <= F1(22 downto 0);
  E2 <= E1 + 1 when (F2(47) = '1') else E1;
  P(30 downto 0) <= "1111111100000000000000000000000" when E2 > 254 else
                    "0000000000000000000000000000000" when E2 < 0 else
							conv_std_logic_vector(E2,8) & F2(46 downto 24) when F2(47) = '1' else
							conv_std_logic_vector(E2,8) & F2(45 downto 23);
MUL0: TFBMUL port map (AF,BF,F1);
end GATE;
