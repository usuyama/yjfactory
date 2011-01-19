library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;

entity alu is
    port(ALU_OP: in std_logic_vector(2 downto 0);
         SRC1: in std_logic_vector(31 downto 0);
         SRC2: in std_logic_vector(31 downto 0);
         CALC: out std_logic_vector(31 downto 0)
         );
  end alu;

architecture behav of alu is
component l_shifter is
  port(
    a : in std_logic_vector(31 downto 0);
    n:in std_logic_vector(31 downto 0);
    o: out std_logic_vector(31 downto 0)
    );
end component;
component r_shifter is
    port(
    a : in std_logic_vector(31 downto 0);
    n:in std_logic_vector(31 downto 0);
    o: out std_logic_vector(31 downto 0)
    );
end component;


signal tmp: std_logic_vector(63 downto 0);
signal sra_ret:std_logic_vector(31 downto 0);
signal sll_ret:std_logic_vector(31 downto 0);
constant add_op: std_logic_vector (2 downto 0):= "001";
constant sub_op: std_logic_vector (2 downto 0):= "010";
constant mul_op: std_logic_vector (2 downto 0):= "011";
constant xor_op: std_logic_vector (2 downto 0):= "111";
constant shra_op:std_logic_vector (2 downto 0):= "100";
constant shll_op: std_logic_vector(2 downto 0):= "101";
-- 000 はlli lhi用 そのままsrc2を返す。

begin
  lshifter:l_shifter port map(
    a=>SRC1,
    n=>SRC2,
    o=>sll_ret
    );
  rshifter:r_shifter port map(
    a=>SRC1,
    n=>SRC2,
    o=>sra_ret
    );

  tmp  <=SRC1*SRC2;
  CALC <= SRC1+SRC2 when ALU_OP=add_op else
          SRC1-SRC2 when ALU_OP=sub_op else
          tmp(31 downto 0) when ALU_OP=mul_op else
          SRC1 xor SRC2 when ALU_OP=xor_op else
          sll_ret when ALU_OP=shll_op else
          sra_ret when ALU_OP=shra_op else
          SRC2;
end behav;
