library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU1 is
  
  port (
    MCLK1 : in  std_logic;
    RS_TX : out std_logic;
            outdata0 : out std_logic_vector(7 downto 0);
        outdata1 : out std_logic_vector(7 downto 0);
        outdata2 : out std_logic_vector(7 downto 0);
        outdata3 : out std_logic_vector(7 downto 0);
        outdata4 : out std_logic_vector(7 downto 0);
        outdata5 : out std_logic_vector(7 downto 0);
        outdata6 : out std_logic_vector(7 downto 0);
        outdata7 : out std_logic_vector(7 downto 0));

--    ZD: inout std_logic_vector(31 downto 0);
--    ZDP: inout std_logic_vector(3 downto 0);
--    ZA:out std_logic_vector(19 downto 0);
--    XE1 : out std_logic;
--    E2A: out std_logic;
--    XE3 : out std_logic;
--    XZBE : out std_logic_vector(3 downto 0);
--    XGA : out std_logic;
--    XWA : out std_logic;
--    XZCKE : out std_logic;
--    ZCLKMA : out std_logic_vector(1 downto 0);
--    ADVA : out std_logic;
--    XFT : out std_logic;
--    XLBO : out std_logic;
--    ZZA : out std_logic

end CPU1;
architecture Allover of CPU1 is
signal Prom_we:std_logic_vector(0 downto 0):="0";
signal PC : std_logic_vector(4 downto 0):=("11111");
signal iclk,G_clk : std_logic;

signal IF_DC_inst:std_logic_vector(31 downto 0);
signal IF_DC_go : std_logic;
signal IF_DC_PCnow : std_logic_vector(15 downto 0);

signal DC_EX_opcode:std_logic_vector(5 downto 0);
signal DC_EX_op1,DC_EX_op2:std_logic_vector(31 downto 0);
signal DC_EX_PCaddr : std_logic_vector(31 downto 0);
signal DC_EX_br_offset : std_logic_vector(15 downto 0);
signal DC_EX_PCnow : std_logic_vector(15 downto 0);
signal DC_EX_go : std_logic;
signal DC_EX_Memstate : std_logic_vector(1 downto 0);
signal DC_EX_outRGaddr : std_logic_vector(4 downto 0);
signal DC_RG_addr_a : std_logic_vector(4 downto 0);  --addr_aはwの時のアドレスも含む
signal DC_RG_addr_b : std_logic_vector(4 downto 0);  --addr_aはwの時のアドレスも含む
signal DC_RG_data_a : std_logic_vector(31 downto 0);
signal DC_RG_data_b : std_logic_vector(31 downto 0);

signal EX_MA_go : std_logic;
signal EX_MA_mem_addr:std_logic_vector(31 downto 0);
signal EX_MA_data : std_logic_vector(31 downto 0);
signal EX_MA_Memstate : std_logic_vector(1 downto 0);
signal EX_MA_RGaddr : std_logic_vector(4 downto 0);
signal EX_PC_PCnext : std_logic_vector(15 downto 0);
signal EX_PC_choice : std_logic;

signal MA_WB_go : std_logic;
signal MA_WB_RGaddr : std_logic_vector(4 downto 0);
signal MA_WB_RGdata : std_logic_vector(31 downto 0);
--signal WB_PC_PCval : std_logic_vector(31 downto 0);

signal WB_RG_addr : std_logic_vector(4 downto 0);
signal WB_RG_data : std_logic_vector(31 downto 0);
signal RG_we : std_logic;
signal WB_IF_go : std_logic := '1';

      signal leddata : std_logic_vector(31 downto 0);
  signal leddotdata : std_logic_vector(7 downto 0);
component PROM
	port (
	clka: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(4 downto 0);
	dina: IN std_logic_VECTOR(31 downto 0);
	douta: OUT std_logic_VECTOR(31 downto 0));
end component;

component Memcon
  port (
    clk       : in    std_logic;
    go        : in std_logic;
    done      : out std_logic;
    RGaddr    : out std_logic_vector(4 downto 0);
    in_RGaddr : in std_logic_vector(4 downto 0);
    data      : inout std_logic_vector(31 downto 0);
    in_data   : inout std_logic_vector(31 downto 0));
--    parity    : inout std_logic_vector(3 downto 0);  -- 
--    in_parity : inout std_logic_vector(3 downto 0);
--    address   : out   std_logic_vector(19 downto 0);
--    in_addr   : in    std_logic_vector(19 downto 0);
--    SXE1      : out   std_logic;
--    SE2       : out   std_logic;
 --   SXE3 : out std_logic;
 --  SXZBE : out std_logic_vector(3 downto 0);
--    SXGA : out std_logic;
--    SXWA : out std_logic;
--    SXZCKE: out std_logic;
--    SZCLKMA : out std_logic_vector(1 downto 0);
--    SADVA : out std_logic;
--    SXFT : out std_logic;
--    SXLBO : out std_logic;
 --   Mode_Read : in std_logic;
  --  SZZA : out std_logic;
  --  ready:out std_logic);
end component;
  component ledextd2 is
    port(
      leddata : in std_logic_vector(31 downto 0);
      leddotdata : in std_logic_vector(7 downto 0);
      outdata0 : out std_logic_vector(7 downto 0);
      outdata1 : out std_logic_vector(7 downto 0);
      outdata2 : out std_logic_vector(7 downto 0);
      outdata3 : out std_logic_vector(7 downto 0);
      outdata4 : out std_logic_vector(7 downto 0);
      outdata5 : out std_logic_vector(7 downto 0);
      outdata6 : out std_logic_vector(7 downto 0);
      outdata7 : out std_logic_vector(7 downto 0)); 
  end component;

component alu
  port (
    clk     : in  std_logic;
    op1     : in  std_logic_vector(31 downto 0);
    op2     : in  std_logic_vector(31 downto 0);
    PCnow   : in std_logic_vector(15 downto 0);
    opcode  : in  std_logic_vector(5 downto 0);
    br_offset:in std_logic_vector(15 downto 0);
    mem_state_in:in std_logic_vector(1 downto 0);
    in_RG_addr:in std_logic_vector(4 downto 0);
    go      : in std_logic;
    ans     : out std_logic_vector(31 downto 0);
    out_RG_addr : out std_logic_vector(4 downto 0);
--    mem_addr: out std_logic_vector(31 downto 0);
    mem_state_out:out std_logic_vector(1 downto 0);
    PC_next : out std_logic_vector(15 downto 0);
    done    : out std_logic);
end component;
component decoder
  port (
    clk:in std_logic;
    go:in std_logic;
    instruction : in  std_logic_vector(31 downto 0);
    daa:in std_logic_vector(31 downto 0);
    dab:in std_logic_vector(31 downto 0);
    PC_now_in:in std_logic_vector(15 downto 0);
    opcode      : out std_logic_vector(5 downto 0);
    op1         : out std_logic_vector(31 downto 0);
    op2         : out std_logic_vector(31 downto 0);
    ans_addr:out std_logic_vector(4 downto 0);
    reg_addr_a:out std_logic_vector(4 downto 0);
    reg_addr_b:out std_logic_vector(4 downto 0);
    br_offset:out std_logic_vector(15 downto 0);
    PC_now_out:out std_logic_vector(15 downto 0);
    Mem_state:out std_logic_vector(1 downto 0);
    done:out std_logic);
end component;
component Reg
  port (
    clk : in std_logic;
    we    : in std_logic;
    in_a     : in std_logic_vector(4 downto 0);
    out_a    : in std_logic_vector(4 downto 0);
    dpra : in std_logic_vector(4 downto 0);
    di    : in std_logic_vector(31 downto 0);
    spo : out std_logic_vector(31 downto 0);
    dpo : out std_logic_vector(31 downto 0));
end component;
component WriteBack
    port (clk : in std_logic;
        addr    : in std_logic_vector(4 downto 0);
        in_data : in std_logic_vector(31 downto 0);
        go      : in std_logic;
        we    : out std_logic;
        out_addr : out std_logic_vector(4 downto 0);
        out_data : out std_logic_vector(31 downto 0);
        done    : out std_logic
        );
end component;
component InstructionFetch
      port (clk : in std_logic;
        go      : in std_logic;
        done    : out std_logic
        );
end component;
begin  -- Allover
--    ib: IBUFG port map (
--    i=>MCLK1,
--    o=>iclk);
--  bg: BUFG port map (
--    i=>iclk,
--    o=>G_clk);
  
PRAM:PROM port map(
clka=>G_clk,
wea=>Prom_we,
addra=>PC,
dina=>(others=>'0'),
douta=>IF_DC_inst);

dec:decoder port map (
  clk=>G_clk,
  go=>IF_DC_go,
  instruction=>IF_DC_inst,
  daa=>DC_RG_data_a,
  dab=>DC_RG_data_b,
  PC_now_in=>IF_DC_PCnow,
  opcode=>DC_EX_opcode,
  op1=>DC_EX_op1,
  op2=>DC_EX_op2,
  ans_addr=>DC_EX_outRGaddr,
  reg_addr_a=>DC_RG_addr_a,
  reg_addr_b=>DC_RG_addr_b,
  br_offset=>DC_EX_br_offset,
  PC_now_out=>DC_EX_PCnow,
  Mem_state=>DC_EX_Memstate,
  done=>DC_EX_go);
  
R : Reg port map (
  clk  => G_clk,
  we   => RG_we,
  in_a    => DC_RG_addr_a,
  out_a =>WB_RG_addr,
  dpra => DC_RG_addr_b,
  di   => WB_RG_data,
  spo  => DC_RG_data_a,
  dpo  => DC_RG_data_b);
W_B:WriteBack port map (
  clk => G_clk,
  addr=>MA_WB_RGaddr,
  in_data=>MA_WB_RGdata,
  go=>MA_WB_go,
  we=>RG_we,
  out_addr=>WB_RG_addr,
  out_data=>WB_RG_data,
  done=>WB_IF_go);
  
I_F : InstructionFetch port map (
  clk => G_clk,
  go=>WB_IF_go,
  done=>IF_DC_go
  );

alunit:alu port map(
    clk=>G_clk,
    op1=>DC_EX_op1,
    op2=>DC_EX_op2,
    PCnow=>DC_EX_PCnow,
    opcode=>DC_EX_opcode,
    br_offset=>DC_EX_br_offset,
    mem_state_in=>DC_EX_Memstate,
    in_RG_addr=>DC_EX_outRGaddr,
    go=>DC_EX_go,
    ans=>EX_MA_data,
    out_RG_addr=>EX_MA_RGaddr,
--    mem_addr=>EX_MA_mem_addr,
    mem_state_out=>EX_MA_Memstate,
    PC_next=>EX_PC_PCnext,
    done=>EX_MA_go);
Memory:Memcon port map(
    clk=>G_clk,
    go=>EX_MA_go,
    done=>MA_WB_go,
    in_RGaddr=>EX_MA_RGaddr,
    RGaddr=>MA_WB_RGaddr,
    data=>EX_MA_data,
    in_data=>MA_WB_RGdata
--    parity
--    in_parity
--    address
--    in_addr
--    SXE1
--    SE2
--    SXE3
--    SXZBE
--    SXGA
--    SXWA
--    SXZCKE
--    SZCLKMA
--    SADVA
--    SXFT
--    SXLBO
--    Mode_Read
--    SZZA
--    ready
);


  led : ledextd2 port map(leddata, leddotdata, outdata0, outdata1, outdata2,
                          outdata3, outdata4, outdata5, outdata6, outdata7);
  leddata(31 downto 0) <= DC_RG_data_a;

end Allover;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity decoder is
  
  port (
    instruction :in std_logic_vector(31 downto 0);
    opcode:out std_logic_vector(5 downto 0);
    op1: out std_logic_vector(31 downto 0);
    op2: out std_logic_vector(31 downto 0);
    ans_addr:out std_logic_vector(4 downto 0);
    reg_addr_a:out std_logic_vector(4 downto 0);
    reg_addr_b:out std_logic_vector(4 downto 0);
    daa:in std_logic_vector(31 downto 0);
    dab:in std_logic_vector(31 downto 0);
    br_offset:out std_logic_vector(15 downto 0);
    go:in std_logic;
    clk:in std_logic;
    done:out std_logic;
    Mem_state:out std_logic_vector(1 downto 0);
    PC_now_out: out std_logic_vector(15 downto 0);
    PC_now_in: in std_logic_vector(15 downto 0));
end decoder;
architecture dec of decoder is

begin  -- dec
  opcode<=instruction(31 downto 26);
  process(clk)
    begin
      PC_now_out<=PC_now_in;
      if (clk'event and clk='1') then
        if (go='1') then
        case instruction(31 downto 26) is
          when  "100001"=> reg_addr_a<=instruction(25 downto 21);reg_addr_b<=instruction(20 downto 16);ans_addr<=instruction(15 downto 11);op1<=daa;op2<=dab;br_offset<=(others=>'0');
        when  "100010"=> reg_addr_a<=instruction(25 downto 21);reg_addr_b<=instruction(20 downto 16);ans_addr<=instruction(15 downto 11);op1<=daa;op2<=dab;br_offset<=(others=>'0');
        when  "100011"=> reg_addr_a<=instruction(25 downto 21);reg_addr_b<=instruction(20 downto 16);ans_addr<=instruction(15 downto 11);op1<=daa;op2<=dab;br_offset<=(others=>'0');
        when  "100100"=> reg_addr_a<=instruction(25 downto 21);reg_addr_b<=instruction(20 downto 16);ans_addr<=instruction(15 downto 11);op1<=daa;op2<=dab;br_offset<=(others=>'0');
        when  "101001"=> reg_addr_a<=instruction(25 downto 21);ans_addr<=instruction(20 downto 16);op1<=daa;op2(15 downto 0)<=instruction(15 downto 0);br_offset<=(others=>'0');
        when  "101010"=> reg_addr_a<=instruction(25 downto 21);ans_addr<=instruction(20 downto 16);op1<=daa;op2(15 downto 0)<=instruction(15 downto 0);br_offset<=(others=>'0');
        when  "101011"=> reg_addr_a<=instruction(25 downto 21);ans_addr<=instruction(20 downto 16);op1<=daa;op2(15 downto 0)<=instruction(15 downto 0);br_offset<=(others=>'0');
        when  "101100"=> reg_addr_a<=instruction(25 downto 21);ans_addr<=instruction(20 downto 16);op1<=daa;op2(15 downto 0)<=instruction(15 downto 0);br_offset<=(others=>'0');
  --四則演算
        when  "001001"=>reg_addr_a<=instruction(25 downto 21);reg_addr_b<=instruction(20 downto 16);op1<=daa;op2<=dab;ans_addr<=(others=>'0');br_offset<=instruction(15 downto 0);
        when  "001010"=>reg_addr_a<=instruction(25 downto 21);reg_addr_b<=instruction(20 downto 16);op1<=daa;op2<=dab;ans_addr<=(others=>'0');br_offset<=instruction(15 downto 0);
        when  "001011"=>reg_addr_a<=instruction(25 downto 21);reg_addr_b<=instruction(20 downto 16);op1<=daa;op2<=dab;ans_addr<=(others=>'0');br_offset<=instruction(15 downto 0);
        when  "001100"=>reg_addr_a<=instruction(25 downto 21);reg_addr_b<=instruction(20 downto 16);op1<=daa;op2<=dab;ans_addr<=(others=>'0');br_offset<=instruction(15 downto 0);
  --branchシリーズ
        when  "010011"=>reg_addr_a<=instruction(25 downto 21);op1<=daa;ans_addr<=(others=>'0');
        when  "010100"=>reg_addr_a<=instruction(25 downto 21);op1<=daa;ans_addr<="11111";
        when  "010101"=>op1(25 downto 0)<=instruction(25 downto 0);ans_addr<=(others=>'0');
        when  "010110"=>op1(25 downto 0)<=instruction(25 downto 0);ans_addr<="11111";
  --jumpシリーズ
        when  others =>op1<=(others=>'0');op2<=(others=>'0');ans_addr<=(others=>'0');
      end case;
        done<='1';
        else
        done<='0';
    end if;
  end if;
  end process;
end dec;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity alu is
  
  port (
    clk     : in  std_logic;
    op1     : in  std_logic_vector(31 downto 0);
    op2     : in  std_logic_vector(31 downto 0);
    ans     : out std_logic_vector(31 downto 0);
    opcode : in  std_logic_vector(5 downto 0);
    PC_next  : out std_logic_vector(15 downto 0);
    PCnow:in std_logic_vector(15 downto 0);
    br_offset:in std_logic_vector(15 downto 0);
    mem_state_in:in std_logic_vector(1 downto 0);
    in_RG_addr:in std_logic_vector(4 downto 0);
    mem_state_out:out std_logic_vector(1 downto 0);
    out_RG_addr : out std_logic_vector(4 downto 0);
    go:in std_logic;
    done:out std_logic);

end alu;

architecture arith_logic_unit of alu is
--signal operand1 : std_logic_vector(31 downto 0);
--signal operand2 : std_logic_vector(31 downto 0);
--signal cnt : std_logic_vector(5 downto 0);
  signal offset : std_logic_vector(31 downto 0);
begin  -- arith_logic_unit
--  offset(15 downto 0)<=br_offset;
--  offset()
process(clk)
  begin
    if (clk'event and clk='1') then
      if (go='1') then
      case opcode is
        when "100001" => ans<=op1+op2;PC_next<=PCnow+1;
        when "101001" => ans<=op1+op2;PC_next<=PCnow+1;            
        when "100010" =>ans<=op1-op2;PC_next<=PCnow+1;
        when "101010" =>ans<=op1-op2;PC_next<=PCnow+1;
        when "100011"=>ans<=conv_std_logic_vector((conv_integer(op1)*conv_integer(op2)),32);PC_next<=PCnow+1;
        when "101011"=>ans<=conv_std_logic_vector((conv_integer(op1)*conv_integer(op2)),32);PC_next<=PCnow+1;
--        when "100100"=>ans<=op1/op2;pc_con<=PC+1;
--        when "101100"=>ans<=op1/op2;pc_con<=PC+1;
        when "001001"=>PC_next<=PCnow+br_offset;  --符号拡張必要か？
        when "010100"=>PC_next<=PCnow+br_offset;ans<=PCnow+1;
        when "010101"=>PC_next(15 downto 0)<=op1(15 downto 0);
        when "010110"=>PC_next(15 downto 0)<=op1(15 downto 0);ans<=PCnow+1;
        when others => ans<=(others=>'0');
      end case;
      out_RG_addr<=in_RG_addr;
      mem_state_out<=mem_state_in;
      done<='1';
      else
      done<='0';
      end if;
    end if;
  end process;
end arith_logic_unit;


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity WriteBack is
  port (clk : in std_logic;
        addr    : in std_logic_vector(4 downto 0);
        in_data : in std_logic_vector(31 downto 0);
        go      : in std_logic;
        we    : out std_logic;
        out_addr : out std_logic_vector(4 downto 0);
        out_data : out std_logic_vector(31 downto 0);
        done    : out std_logic
        );
end WriteBack;
architecture WB of WriteBack is

begin
  out_data<=in_data;
  out_addr<=addr;
 process (clk)
begin  -- process 
  if (clk'event and clk='1') then
    if go='1' then
      we<='1';
      done<='1';
      else
        we<='0';
        done<='0';
    end if;
  end if;
end process;
 end WB;



library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity Reg is
  port (clk : in std_logic;
        we    : in std_logic;
        out_a     : in std_logic_vector(4 downto 0);
        dpra : in std_logic_vector(4 downto 0);
        di    : in std_logic_vector(31 downto 0);
        in_a : in std_logic_vector(4 downto 0); 
        spo : out std_logic_vector(31 downto 0);
        dpo : out std_logic_vector(31 downto 0));
end Reg;
architecture reg of Reg is
  type ram_type is array (31 downto 0)
    of std_logic_vector (31 downto 0);
  signal RAM : ram_type:=(others=>(others=>'0'));
  signal a : std_logic_vector(4 downto 0);
begin
  a<=out_a when we='1'
                  else in_a;
  process (clk)
  begin
    if (clk'event and clk = '1') then
      if (we = '1') then
        if (a="00000") then
          NULL;
          else
          RAM(conv_integer(a)) <= di;
        end if;

      end if;
    end if;
  end process;
  spo <= RAM(conv_integer(a));
  dpo <= RAM(conv_integer(dpra));
 end reg;
 
 
 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_unsigned.all;
  
entity InstructionFetch is
  port (clk : in std_logic;
        go      : in std_logic;
        done    : out std_logic
        );
end InstructionFetch;
architecture I_F of InstructionFetch is

begin
 process (clk)
begin  -- process 
  if (clk'event and clk='1') then
    if go='1' then
      done<='1';
      else
        done<='0';
    end if;
  end if;
end process;
 end I_F;
 
 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_unsigned.all;
entity  Memcon is
  port (
    clk       : in    std_logic;
    go        : in std_logic;
    done      : out std_logic;
    RGaddr    : out std_logic_vector(4 downto 0);
    in_RGaddr : in std_logic_vector(4 downto 0);
    data      : inout std_logic_vector(31 downto 0);
    in_data   : inout std_logic_vector(31 downto 0)
--    parity    : inout std_logic_vector(3 downto 0);  -- 
--   in_parity : inout std_logic_vector(3 downto 0);
--    address   : out   std_logic_vector(19 downto 0);
--    in_addr   : in    std_logic_vector(19 downto 0);
--    SXE1      : out   std_logic;
--    SE2       : out   std_logic;
--    SXE3 : out std_logic;
--    SXZBE : out std_logic_vector(3 downto 0);
--    SXGA : out std_logic;
--    SXWA : out std_logic;
---    SXZCKE: out std_logic;
 --   SZCLKMA : out std_logic_vector(1 downto 0);
--    SADVA : out std_logic;
--    SXFT : out std_logic;
--    SXLBO : out std_logic;
--    Mode_Read : in std_logic;
--    SZZA : out std_logic;
--    ready:out std_logic
    );
end Memcon; 
architecture MC of Memcon is

begin  -- MC
RGaddr<=in_RGaddr;
in_data<=data;

 process (clk)
begin  -- process 
  if (clk'event and clk='1') then
    if go='1' then
      done<='1';
      else
        done<='0';
    end if;
  end if;
end process;

end MC;
