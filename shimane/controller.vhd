library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity controller is
  port(OPCODE: in std_logic_vector(5 downto 0);
       USE_SRC: out std_logic_vector (1 downto 0);  -- 11=>両方 01=>src1だけ 00=>ソースオペランド無
       USE_FP: out std_logic_vector(1 downto 0);
       USE_IMID16: out std_logic;
       REG_WE: out std_logic;
       FPR_WE: out std_logic;
       MEM_WE: out std_logic;
--       ISLW: out std_logic;
       BR_NOW: out std_logic;
       BR_COND: out std_logic;
       ISJR: out std_logic;
       ISJAL: out std_logic);
  end controller;

architecture behav of controller is

constant lli: std_logic_vector(5 downto 0):= "110011";
constant lhi: std_logic_vector(5 downto 0):= "110010";
constant jal: std_logic_vector(5 downto 0):= "010110";
constant jalr: std_logic_vector(5 downto 0):= "010100";
constant jr: std_logic_vector(5 downto 0):="010011";
constant j: std_logic_vector(5 downto 0):= "010101";
constant sw: std_logic_vector(5 downto 0):= "001111";
constant lw: std_logic_vector(5 downto 0):= "001110";
constant sendc: std_logic_vector(5 downto 0):="110100";
constant recvc: std_logic_vector(5 downto 0):="110001";
constant movi2f: std_logic_vector(5 downto 0):="011111";
constant movf2i: std_logic_vector(5 downto 0):="010111";
constant fdiv: std_logic_vector(5 downto 0):="111011";
constant sqrt: std_logic_vector(5 downto 0):="111100";
constant itof: std_logic_vector(5 downto 0):="011000";
constant ftoi: std_logic_vector(5 downto 0):="011001";
constant lf: std_logic_vector(5 downto 0):="100100";
constant sf: std_logic_vector(5 downto 0):="101100";
constant negf: std_logic_vector(5 downto 0):="000110";
constant absf: std_logic_vector(5 downto 0):="111110";
constant movf: std_logic_vector(5 downto 0):="000011";
constant floor: std_logic_vector(5 downto 0):="111101";
constant llif:std_logic_vector(5 downto 0):="000101";
constant lhif:std_logic_vector(5 downto 0):="000100";
constant shll:std_logic_vector(5 downto 0):="010010";
constant shra:std_logic_vector(5 downto 0):="010000";
constant bgtf:std_logic_vector(5 downto 0):="001000";

signal tmp: std_logic_vector(2 downto 0);
begin
  
  tmp <= OPCODE(5 downto 3);
  -- rs rt 両方必要な演算系100 lw,sw,条件分岐001
  -- rsと即値101  
  USE_SRC <= "11" when tmp="100" or tmp="001" or OPCODE=sw else
             "01" when (tmp="101" and opcode/=sf) or OPCODE=jr or OPCODE=jalr or OPCODE=sendc or OPCODE=movi2f or
             OPCODE=itof or OPCODE=lf or OPCODE=shll or OPCODE=shra or OPCODE=lw else
             "10" when OPCODE=sf else
             "00";
  
  USE_FP <= "01" when OPCODE=movf2i or OPCODE=ftoi or OPCODE=movf or OPCODE=negf or OPCODE=absf or OPCODE=floor or
            OPCODE=sqrt or opcode=sf else
            "11" when tmp="111" or OPCODE=bgtf else            
            "00";

  -- 16bit即値をaluで使うか? addiなどと、lw,sw,条件分岐,lli,lhi
  USE_IMID16 <= '1' when (tmp="101" and OPCODE/=sf) or OPCODE=lw or OPCODE=lf or
                OPCODE=lli or OPCODE=lhi or OPCODE=llif or OPCODE=lhif or OPCODE=shra or OPCODE=shll else '0';

  -- jalかどうか
  ISJAL <= '1' when OPCODE=jal or OPCODE=jalr else '0';

  --無条件分岐かどうか
  BR_NOW <= '1' when OPCODE=jal or OPCODE=j else '0';
  -- 条件分岐命令か?
  BR_COND <= '1' when tmp="001" and OPCODE/=lw and OPCODE/=sw else '0';

  -- レジスタ分岐か?
  ISJR <= '1' when OPCODE=jr or OPCODE=jalr else '0';
  
  -- レジスタに書き込むか? 整数演算系とlli,lhi,jal,jalr
  -- lw 書き込みを行うが、islwで対応。decode.vhd で処理。
  REG_WE <= '1' when (OPCODE(5 downto 4)="10" and OPCODE/=sf and OPCODE/=lf) or
            OPCODE=lli or OPCODE=lhi or OPCODE=recvc or OPCODE=jal or OPCODE=jalr or
            OPCODE=ftoi or OPCODE=movf2i or OPCODE=shra or OPCODE=shll else '0';
  FPR_WE<= '1' when OPCODE(5 downto 3)="111" or OPCODE=llif or OPCODE=lhif or OPCODE=movi2f
           or OPCODE=movf or OPCODE=itof or OPCODE=negf else '0';

  -- メモリ系
--  ISLW<= '1' when OPCODE=lw else '0';
  MEM_WE<= '1' when OPCODE=sw or OPCODE=sf else '0';

end behav;
