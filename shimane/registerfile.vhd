library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity regfile is
  port(CLK: in std_logic;
       RESET: in std_logic;
       WE : in std_logic;
       WE_MEM: in std_logic;
       LOW: in std_logic;
       HIGH: in std_logic;
       ISJAL: in std_logic;
       DIN: in std_logic_vector(31 downto 0);
       RET_ADRS: in std_logic_vector(31 downto 0);
       WSEL: in std_logic_vector(4 downto 0);
       WSEL_M: in std_logic_vector(4 downto 0);
       WF_EN: in std_logic;
       WFLAG: in std_logic_vector(4 downto 0);
       RSEL1 : in std_logic_vector(4 downto 0);
       RSEL2 : in std_logic_vector(4 downto 0);
       W_RESV: out std_logic_vector(31 downto 0);
       RD1 : out std_logic_vector(31 downto 0);
       RD2 : out std_logic_vector(31 downto 0)
       );
end regfile;

architecture behav of regfile is
  
component reg32bit is
  port(CLK: in std_logic;
       RESET: in std_logic;
       WE: in std_logic;
       LOW: in std_logic;
       HIGH: in std_logic;
       DIN: in std_logic_vector (31 downto 0);
       DOUT: out std_logic_vector (31 downto 0)
       );
  end component;
signal m_en: std_logic_vector(31 downto 0);
signal en1,en2,en3,en4,en5,en6,en7,en8,en9,en10,en11,en12,en13,en14,en15,en16: std_logic;
signal en17,en18,en19,en20,en21,en22,en23,en24,en25,en26,en27,en28,en29,en30,en31: std_logic;
signal rout0,rout1,rout2,rout3,rout4,rout5,rout6,rout7,rout8,rout9,rout10,rout11,rout12,rout13,rout14,rout15,rout16: std_logic_vector(31 downto 0);
signal rout17,rout18,rout19,rout20,rout21,rout22,rout23,rout24,rout25,rout26,rout27,rout28,rout29,rout30,rout31: std_logic_vector(31 downto 0);
signal din31: std_logic_vector(31 downto 0) ;


begin
  rout0<=x"00000000";
  reg1: component reg32bit port map(CLK,RESET,en1,LOW,HIGH,DIN,rout1);
  reg2: component reg32bit port map(CLK,RESET,en2,LOW,HIGH,DIN,rout2);
  reg3: component reg32bit port map(CLK,RESET,en3,LOW,HIGH,DIN,rout3);
  reg4: component reg32bit port map(CLK,RESET,en4,LOW,HIGH,DIN,rout4);
  reg5: component reg32bit port map(CLK,RESET,en5,LOW,HIGH,DIN,rout5);
  reg6: component reg32bit port map(CLK,RESET,en6,LOW,HIGH,DIN,rout6);
  reg7: component reg32bit port map(CLK,RESET,en7,LOW,HIGH,DIN,rout7);
  reg8: component reg32bit port map(CLK,RESET,en8,LOW,HIGH,DIN,rout8);
  reg9: component reg32bit port map(CLK,RESET,en9,LOW,HIGH,DIN,rout9);
  reg10: component reg32bit port map(CLK,RESET,en10,LOW,HIGH,DIN,rout10);
  reg11: component reg32bit port map(CLK,RESET,en11,LOW,HIGH,DIN,rout11);
  reg12: component reg32bit port map(CLK,RESET,en12,LOW,HIGH,DIN,rout12);
  reg13: component reg32bit port map(CLK,RESET,en13,LOW,HIGH,DIN,rout13);
  reg14: component reg32bit port map(CLK,RESET,en14,LOW,HIGH,DIN,rout14);
  reg15: component reg32bit port map(CLK,RESET,en15,LOW,HIGH,DIN,rout15);
  reg16: component reg32bit port map(CLK,RESET,en16,LOW,HIGH,DIN,rout16);
  reg17: component reg32bit port map(CLK,RESET,en17,LOW,HIGH,DIN,rout17);
  reg18: component reg32bit port map(CLK,RESET,en18,LOW,HIGH,DIN,rout18);
  reg19: component reg32bit port map(CLK,RESET,en19,LOW,HIGH,DIN,rout19);
  reg20: component reg32bit port map(CLK,RESET,en20,LOW,HIGH,DIN,rout20);
  reg21: component reg32bit port map(CLK,RESET,en21,LOW,HIGH,DIN,rout21);
  reg22: component reg32bit port map(CLK,RESET,en22,LOW,HIGH,DIN,rout22);
  reg23: component reg32bit port map(CLK,RESET,en23,LOW,HIGH,DIN,rout23);
  reg24: component reg32bit port map(CLK,RESET,en24,LOW,HIGH,DIN,rout24);
  reg25: component reg32bit port map(CLK,RESET,en25,LOW,HIGH,DIN,rout25);
  reg26: component reg32bit port map(CLK,RESET,en26,LOW,HIGH,DIN,rout26);
  reg27: component reg32bit port map(CLK,RESET,en27,LOW,HIGH,DIN,rout27);
  reg28: component reg32bit port map(CLK,RESET,en28,LOW,HIGH,DIN,rout28);
  reg29: component reg32bit port map(CLK,RESET,en29,LOW,HIGH,DIN,rout29);
  reg30: component reg32bit port map(CLK,RESET,en30,LOW,HIGH,DIN,rout30);
  reg31: component reg32bit port map(CLK,RESET,en31,LOW,HIGH,din31,rout31);
  din31<= DIN when ISJAL='0' else RET_ADRS;

  en1<='1' when WSEL="00001" and WE='1' else '0';
  en2<='1' when WSEL="00010" and WE='1' else '0';
  en3<='1' when WSEL="00011" and WE='1' else '0';
  en4<='1' when WSEL="00100" and WE='1' else '0';
  en5<='1' when WSEL="00101" and WE='1' else '0';
  en6<='1' when WSEL="00110" and WE='1' else '0';
  en7<='1' when WSEL="00111" and WE='1' else '0';
  en8<='1' when WSEL="01000" and WE='1' else '0';
  en9<='1' when WSEL="01001" and WE='1' else '0';
  en10<='1' when WSEL="01010" and WE='1' else '0';
  en11<='1' when WSEL="01011" and WE='1' else '0';
  en12<='1' when WSEL="01100" and WE='1' else '0';
  en13<='1' when WSEL="01101" and WE='1' else '0';
  en14<='1' when WSEL="01110" and WE='1' else '0';
  en15<='1' when WSEL="01111" and WE='1' else '0';
  en16<='1' when WSEL="10000" and WE='1' else '0';
  en17<='1' when WSEL="10001" and WE='1' else '0';
  en18<='1' when WSEL="10010" and WE='1' else '0';
  en19<='1' when WSEL="10011" and WE='1' else '0';
  en20<='1' when WSEL="10100" and WE='1' else '0';
  en21<='1' when WSEL="10101" and WE='1' else '0';
  en22<='1' when WSEL="10110" and WE='1' else '0';
  en23<='1' when WSEL="10111" and WE='1' else '0';
  en24<='1' when WSEL="11000" and WE='1' else '0';
  en25<='1' when WSEL="11001" and WE='1' else '0';
  en26<='1' when WSEL="11010" and WE='1' else '0';
  en27<='1' when WSEL="11011" and WE='1' else '0';
  en28<='1' when WSEL="11100" and WE='1' else '0';
  en29<='1' when WSEL="11101" and WE='1' else '0';
  en30<='1' when WSEL="11110" and WE='1' else '0';
  en31<='1' when WSEL="11111" and WE='1' else '0';

  m_en <= (conv_integer(WSEL_M)=>'1' others=> '0');
--  m_en1<='1' when WSEL_M="00001" and WE_MEM='1' else '0';
--  m_en2<='1' when WSEL_M="00010" and WE_MEM='1' else '0';
--  m_en3<='1' when WSEL_M="00011" and WE_MEM='1' else '0';
--  m_en4<='1' when WSEL_M="00100" and WE_MEM='1' else '0';
--  m_en5<='1' when WSEL_M="00101" and WE_MEM='1' else '0';
--  m_en6<='1' when WSEL_M="00110" and WE_MEM='1' else '0';
--  m_en7<='1' when WSEL_M="00111" and WE_MEM='1' else '0';
--  m_en8<='1' when WSEL_M="01000" and WE_MEM='1' else '0';
--  m_en9<='1' when WSEL_M="01001" and WE_MEM='1' else '0';
--  m_en10<='1' when WSEL_M="01010" and WE_MEM='1' else '0';
--  m_en11<='1' when WSEL_M="01011" and WE_MEM='1' else '0';
--  m_en12<='1' when WSEL_M="01100" and WE_MEM='1' else '0';
--  m_en13<='1' when WSEL_M="01101" and WE_MEM='1' else '0';
--  m_en14<='1' when WSEL_M="01110" and WE_MEM='1' else '0';
--  m_en15<='1' when WSEL_M="01111" and WE_MEM='1' else '0';
--  m_en16<='1' when WSEL_M="10000" and WE_MEM='1' else '0';
--  m_en17<='1' when WSEL_M="10001" and WE_MEM='1' else '0';
--  m_en18<='1' when WSEL_M="10010" and WE_MEM='1' else '0';
--  m_en19<='1' when WSEL_M="10011" and WE_MEM='1' else '0';
--  m_en20<='1' when WSEL_M="10100" and WE_MEM='1' else '0';
--  m_en21<='1' when WSEL_M="10101" and WE_MEM='1' else '0';
--  m_en22<='1' when WSEL_M="10110" and WE_MEM='1' else '0';
--  m_en23<='1' when WSEL_M="10111" and WE_MEM='1' else '0';
--  m_en24<='1' when WSEL_M="11000" and WE_MEM='1' else '0';
--  m_en25<='1' when WSEL_M="11001" and WE_MEM='1' else '0';
--  m_en26<='1' when WSEL_M="11010" and WE_MEM='1' else '0';
--  m_en27<='1' when WSEL_M="11011" and WE_MEM='1' else '0';
--  m_en28<='1' when WSEL_M="11100" and WE_MEM='1' else '0';
--  m_en29<='1' when WSEL_M="11101" and WE_MEM='1' else '0';
--  m_en30<='1' when WSEL_M="11110" and WE_MEM='1' else '0';
--  m_en31<='1' when WSEL_M="11111" and WE_MEM='1' else '0';

  

  RD1 <=
    rout0 when RSEL1=0 else
    rout1 when RSEL1=1 else
    rout2 when RSEL1=2 else
    rout3 when RSEL1=3 else
    rout4 when RSEL1=4 else
    rout5 when RSEL1=5 else
    rout6 when RSEL1=6 else
    rout7 when RSEL1=7 else
    rout8 when RSEL1=8 else
    rout9 when RSEL1=9 else
    rout10 when RSEL1=10 else
    rout11 when RSEL1=11 else
    rout12 when RSEL1=12 else
    rout13 when RSEL1=13 else
    rout14 when RSEL1=14 else
    rout15 when RSEL1=15 else
    rout16 when RSEL1=16 else
    rout17 when RSEL1=17 else
    rout18 when RSEL1=18 else
    rout19 when RSEL1=19 else
    rout20 when RSEL1=20 else
    rout21 when RSEL1=21 else
    rout22 when RSEL1=22 else
    rout23 when RSEL1=23 else
    rout24 when RSEL1=24 else
    rout25 when RSEL1=25 else
    rout26 when RSEL1=26 else
    rout27 when RSEL1=27 else
    rout28 when RSEL1=28 else
    rout29 when RSEL1=29 else
    rout30 when RSEL1=30 else
    rout31 when RSEL1=31 else
    rout0;

  RD2 <=
    rout0 when RSEL2=0 else
    rout1 when RSEL2=1 else
    rout2 when RSEL2=2 else
    rout3 when RSEL2=3 else
    rout4 when RSEL2=4 else
    rout5 when RSEL2=5 else
    rout6 when RSEL2=6 else
    rout7 when RSEL2=7 else
    rout8 when RSEL2=8 else
    rout9 when RSEL2=9 else
    rout10 when RSEL2=10 else
    rout11 when RSEL2=11 else
    rout12 when RSEL2=12 else
    rout13 when RSEL2=13 else
    rout14 when RSEL2=14 else
    rout15 when RSEL2=15 else
    rout16 when RSEL2=16 else
    rout17 when RSEL2=17 else
    rout18 when RSEL2=18 else
    rout19 when RSEL2=19 else
    rout20 when RSEL2=20 else
    rout21 when RSEL2=21 else
    rout22 when RSEL2=22 else
    rout23 when RSEL2=23 else
    rout24 when RSEL2=24 else
    rout25 when RSEL2=25 else
    rout26 when RSEL2=26 else
    rout27 when RSEL2=27 else
    rout28 when RSEL2=28 else
    rout29 when RSEL2=29 else
    rout30 when RSEL2=30 else
    rout31 when RSEL2=31 else
    rout0;

  process(CLK)
  begin
    if rising_edge(clk) then
      if RESET='1' then W_RESV <= x"00000000"; end if;
      if WE='1' then W_RESV(conv_integer(WSEL)) <= '0'; end if;
      if WE_MEM='1' then W_RESV(conv_integer(WSEL_M)) <= '0'; end if;
      if WF_EN='1' then W_RESV(conv_integer(WFLAG))<= '1'; end if;
    end if;
  end process;
end behav;
