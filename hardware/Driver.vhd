library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Driver is
  Port( clk: in  STD_LOGIC;
        data : inout std_logic_vector(31 downto 0);
        parity : inout std_logic_vector(3 downto 0);
        address: out std_logic_vector(19 downto 0);
        in_addr: in std_logic_vector(19 downto 0);
        in_data : in std_logic_vector(31 downto 0);
        out_data: out std_logic_vector(31 downto 0);
        in_par: in std_logic_vector(3 downto 0);
	out_par: out std_logic_vector(3 downto 0);
	RAM_ready: out std_logic;
        SXE1 : out STD_LOGIC;
        SE2 : out STD_LOGIC;
        SXE3 : out STD_LOGIC;
        SXZBE : out std_logic_vector(3 downto 0);
        SXGA : out std_logic;
        SXWA : out std_logic;
        SXZCKE: out std_logic;
        SZCLKMA : out std_logic_vector(1 downto 0);
        SADVA : out std_logic;
        SXFT : out std_logic;
        SXLBO : out std_logic;
        Mode_Read : in std_logic;
        SZZA : out std_logic);
end Driver;

architecture Dr of Driver is
signal SXWA_sig:std_logic:='0';
signal buff:std_logic_vector(31 downto 0);
signal buff2:std_logic_vector(31 downto 0);
signal par_buff: std_logic_vector(3 downto 0);

begin  -- Dr
  SZCLKMA(1)<=clk;
  SZCLKMA(0)<=clk;
  SXZCKE<='0';
  SXE1<='0';
  SE2<='1';
  SXE3<='0';
  SXZBE<="0000";
  SXGA<='0';
  SXFT<='1';
  SXLBO<='1';
  SZZA<='0';
  SADVA<='0';
  address<=in_addr;
  SXWA<=Mode_read;
  out_data<=data;
  out_par<=parity;
    controller:process(clk)
     begin
       if rising_edge(clk) then
         if Mode_Read='1' then
             data<=(others=>'Z');
             parity<=(others=>'Z');
         else
           data<=buff;
           buff<=in_data;
--				data<=in_data;	--pattern1
									--pattern1.
           par_buff<=in_par;
           parity<=par_buff;
--           out_data<=(others=>'Z');
--           out_par<=(others=>'Z');
         end if;
       end if;
     end process;
end Dr;
