library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Allover is
  
  port (
    MCLK1 : in std_logic;
  ZD: inout std_logic_vector(31 downto 0);
  ZDP: inout std_logic_vector(3 downto 0);
  ZA:out std_logic_vector(19 downto 0);
  XE1 : out std_logic;
  E2A: out std_logic;
  XE3 : out std_logic;
  XZBE : out std_logic_vector(3 downto 0);
  XGA : out std_logic;
  XWA : out std_logic;
  XZCKE : out std_logic;
  ZCLKMA : out std_logic_vector(1 downto 0);
  ADVA : out std_logic;
  XFT : out std_logic;
  XLBO : out std_logic;
  ZZA : out std_logic
);

end Allover;

architecture a_l_l of Allover is
component Control
  port(
    clk       : in  std_logic;
    op        : in  std_logic_vector(5 downto 0);
    PCSource  : out std_logic;
    ALUSrcB   : out std_logic_vector(1 downto 0);
    ALUSrcA   : out std_logic;
    Reg_write : out std_logic;
    Reg_dist  : out std_logic;
    IR_Write  : out std_logic;
    MemtoReg  : out std_logic;
    MemWrite  : out std_logic;
    PCwrite   : out std_logic;
    PC_write_b: out std_logic);
end component;

component IF_stage
  port(
    PC_Write:in std_logic;
    PC_write_b: in std_logic;
    ALU_b_out: in std_logic;
    PC_source:in std_logic;
    ALU_out:in std_logic_vector(31 downto 0);
    ALU_PC: in std_logic_vector(31 downto 0);
    PC_out : out std_logic_vector(31 downto 0));
end component;

component DC_stage
  port (
    Instruciton : in  std_logic_vector(31 downto 0);
    opcode      : out std_logic_vector(5 downto 0);
    op_a        : out std_logic_vector(4 downto 0);
    op_b        : out std_logic_vector(4 downto 0);
    op_c        : out std_logic_vector(4 downto 0);
    op_imm      : out std_logic_vector(31 downto 0);
    op_j        : out std_logic_vector(31 downto 0));
end component;

component EX_stage
  port(
    ALU_ctrl  : in  std_logic_vector(5 downto 0);
    Alu_src_b : in  std_logic_vector(1 downto 0);
    Alu_src_a : in  std_logic;
    PC        : in  std_logic_vector(31 downto 0);
    data_a    : in  std_logic_vector(31 downto 0);
    data_b    : in  std_logic_vector(31 downto 0);
    data_imm  : in  std_logic_vector(31 downto 0);
    data_j    : in  std_logic_vector(31 downto 0);
    data_out  : out std_logic_vector(31 downto 0);
    PC_out    : out std_logic_vector(31 downto 0);
    Alu_Br_out: out std_logic);
end component;

component MA_stage
  port (
    mem_write : in std_logic;
    mem_addr  : in  std_logic_vector(31 downto 0);
    data_in   : in  std_logic_vector(31 downto 0);
--    mem_read  : in  std_logic;
    data_out  : out std_logic_vector(31 downto 0);
    mem_WE    : out std_logic;
    mem_Data  : inout std_logic_vector(31 downto 0);
    mem_Address : out std_logic_vector(31 downto 0));
end component;

component WB_stage
  
  port (
    MemtoReg : in  std_logic;
    Mem_data : in  std_logic_vector(31 downto 0);
    ALU_data : in  std_logic_vector(31 downto 0);
    RegDst   : in  std_logic;
    rt       : in  std_logic_vector(4 downto 0);
    rd       : in  std_logic_vector(4 downto 0);
    r_out    : out std_logic_vector(4 downto 0);
    data_out : out std_logic_vector(31 downto 0));
end component;

component Rgstr
  port (
    clk:in std_logic;
    we :in std_logic;
    out_a : in std_logic_vector(4 downto 0);
    dpra : in std_logic_vector(4 downto 0);
    di  :in std_logic_vector(31 downto 0);
    in_a : in std_logic_vector(4 downto 0);
    spo : out std_logic_vector(31 downto 0);
    dpo : out std_logic_vector(31 downto 0));
end component;

component IR
  port (
    clk:in std_logic;
    in_instruction  : in  std_logic_vector(31 downto 0);
    we              : in  std_logic;
    out_instruciton : out std_logic_vector(31 downto 0));
end component;

component PROM
  port (
    clka : in std_logic;
--    wea : in std_logic_vector(0 downto 0);
    addra : in std_logic_vector(31 downto 0);
--    dina : in std_logic_vector(31 downto 0);
    douta : out std_logic_vector(31 downto 0));
end component;

component PC

  port (
    clk    : in  std_logic;
    in_PC  : in  std_logic_vector(31 downto 0);
    out_PC : out std_logic_vector(31 downto 0);
        ALU_b_out: in std_logic;
    PC_Write : in std_logic;
    PC_write_b: in std_logic
);
end component;

component Driver
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
end component;

signal iclk,mclk : std_logic;
signal IR_out : std_logic_vector(31 downto 0);
signal PC_source,ALUSrcA,Reg_write,Reg_dist,IR_Write,MemtoReg,MemWrite,PCwrite,PC_write_b,Alu_Br_out : std_logic;
signal ALUSrcB : std_logic_vector(1 downto 0);
signal ALUout,ALU_PC,PC_out,IR_in,op_imm,op_j,data_a,data_b,data_a_a,data_b_a,data_out,Mem_Data,w_r_data,PC_PR: std_logic_vector(31 downto 0);
signal data_o : std_logic_vector(31 downto 0):=(others=>'0');
signal p_we : std_logic_vector(0 downto 0) := "0";
signal p_in : std_logic_vector(31 downto 0) := (others=>'0');
signal PROM_out : std_logic_vector(31 downto 0);
signal op_r_a,op_r_b,op_r_c,w_r_addr  : std_logic_vector(4 downto 0);
signal opcode : std_logic_vector(5 downto 0);
signal Mem_We_out : std_logic;
signal Mem_Addr_out,Mem_data_out : std_logic_vector(31 downto 0);
signal dev_null_a : std_logic_vector(3 downto 0);
begin  -- all
mclk<=MCLK1;
--  ib: IBUFG port map (
--    i=>MCLK1,
--    o=>iclk);
--  bg: BUFG port map (
--    i=>iclk,
--    o=>mclk);
Ctrl: Control port map (
  clk => mclk,
  op => opcode,
  PCSource => PC_source,
  ALUSrcB=>ALUSrcB,
  ALUSrcA=>ALUSrcA,
  Reg_write=>Reg_write,
  Reg_dist=>Reg_dist,
  IR_Write=>IR_Write,
  MemtoReg=>MemtoReg,
  MemWrite=>MemWrite,
  PCwrite=>PCwrite,
  PC_write_b=>PC_write_b);
I_F:IF_stage port map (
    PC_Write => PCwrite,
    PC_write_b => PC_write_b,
    ALU_b_out => Alu_Br_out,
    PC_source => PC_Source,
    ALU_out=>data_o,
    ALU_PC=>ALU_PC,
    PC_out=>PC_out);
  DC:DC_stage port map(
Instruciton=>IR_out,                  --
opcode=>opcode,
op_a=>op_r_a,
op_b=>op_r_b,
op_c=>op_r_c,
op_imm=>op_imm,
op_j=>op_j
    );
EX:EX_stage port map (
    ALU_ctrl => IR_out(31 downto 26),
    Alu_src_b => ALUSrcB,
    Alu_src_a => ALUSrcA,
    PC => PC_PR,
    data_a=>data_a,
    data_b=>data_b,
    data_imm=>op_imm,
    data_j=>op_j,
    data_out=>data_o,
    PC_out=>ALU_PC,
    Alu_Br_out=>Alu_Br_out);
  MA:MA_stage port map(
mem_write=>MemWrite,
mem_addr=>data_out,
data_in=>data_a,
--mem_read=>
data_out=>Mem_Data,
mem_WE=>Mem_We_out,
mem_data=>Mem_data_out,
mem_Address=>Mem_Addr_out
);

  WB : WB_stage port map (
    MemtoReg =>MemtoReg,                --in
    Mem_data=>Mem_Data,                 --in
    ALU_data=>data_out,                 --in
    RegDst=>Reg_dist,                   --in
    rt=>op_r_b,                         --in
    rd=>op_r_c,                         --in
    r_out=>w_r_addr,                    --out
    data_out=>w_r_data                  --out
    );
  RG:Rgstr port map(
    clk=>mclk,
    we=>Reg_write,
    out_a=>op_r_a,
    dpra=>op_r_b,
    di=>w_r_data,
    in_a=>w_r_addr,
    spo=>data_a,
    dpo=>data_b
);

  I_R : IR port map (
    clk=>mclk,
    in_instruction  =>  PROM_out,
    we              =>  IR_Write,
    out_instruciton =>  IR_out);
  PR:PROM port map (
    clka => mclk,
--    wea => p_we,
    addra => PC_PR,
--    dina => p_in,
    douta => PROM_out);
PrC : PC port map (
  clk    => mclk,
  in_PC  => PC_out,
  out_PC => PC_PR,
  ALU_b_out => Alu_Br_out,
  PC_Write =>PCwrite,
  PC_write_b=>PC_write_b
);

Dr:Driver port map(
  clk=>mclk,
  data=>ZD,
  parity=>ZDP,
  address=>ZA,
  in_addr=>data_o(19 downto 0),
  in_data=>data_a,
  out_data=>Mem_Data,
  in_par=>(others=>'0'),
  out_par=>dev_null_a,
  SXE1=>XE1,
  SE2 =>E2A,
  SXE3 =>XE3,
  SXZBE =>XZBE,
  SXGA =>XGA,
  SXWA =>XWA,
  SXZCKE=>XZCKE,
  SZCLKMA =>ZCLKMA,
  SADVA=>ADVA,
  SXFT =>XFT,
  SXLBO =>XLBO,
  Mode_Read =>MemWrite,
  SZZA =>ZZA);

process (mclk)
begin  -- process
  if (mclk'event and mclk='1') then
--    data_a_a<=data_a;
--    data_b_a<=data_b;
    data_out<=data_o;
  end if;
end process;
end a_l_l;


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity PC is
  
  port (
    clk    : in  std_logic;
    in_PC  : in  std_logic_vector(31 downto 0);
    out_PC : out std_logic_vector(31 downto 0);
    ALU_b_out: in std_logic;
    PC_Write : in std_logic;
    PC_write_b: in std_logic);

end PC;
architecture Programcounter of PC is
signal Pr : std_logic_vector(31 downto 0):=(others=>'0');
signal We1,We2 : std_logic;
begin  -- Programcounter
out_PC<=Pr;

  We1<= (PC_write_b and ALU_b_out);
  We2<=(PC_Write or We1);
--Pr<=in_PC when We2='1';
process(clk)
  begin
   if (clk'event and clk='1') then
     if (We2='1') then
    Pr<=in_PC;
     end if;
  end if;
end process;
  

end Programcounter;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity IR is
  
  port (
    clk : in std_logic;
    in_instruction : in  std_logic_vector(31 downto 0);
    we             : in  std_logic;
    out_instruciton: out std_logic_vector(31 downto 0));

end IR;

architecture InstructionRegister of IR is
signal instruction : std_logic_vector(31 downto 0);
begin  -- InstructionRegister
out_instruciton<=instruction;
  process (clk)
  begin  -- process
    if (clk'event and clk='1') then
      case we is
        when '1' => instruction<=in_instruction;
        when others => null;
      end case;
     end if;
  end process;

end InstructionRegister;
