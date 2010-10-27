-------------------------------------------------------------------------------
-- ファイル分けはまた後日。
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- OUTER PACK --
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity CPU1 is
  
  port (
    MCLK1 : in std_logic);

end CPU1;
architecture cpu of CPU1 is
signal IF_DC_IF_instruction : std_logic_vector(31 downto 0);
signal IF_DC_DC_instruction : std_logic_vector(31 downto 0);
signal IF_DC_IF_pc : std_logic_vector(31 downto 0);
signal IF_DC_DC_pc : std_logic_vector(31 downto 0);

signal DC_EX_DC_opcode : std_logic_vector(31 downto 0);
signal DC_EX_EX_opcode : std_logic_vector(31 downto 0);
signal DC_EX_DC_op1 : std_logic_vector(31 downto 0);
signal DC_EX_EX_op1 : std_logic_vector(31 downto 0);
signal DC_EX_DC_op2 : std_logic_vector(31 downto 0);
signal DC_EX_EX_op2 : std_logic_vector(31 downto 0);
signal DC_EX_DC_RegDst : std_logic_vector(4 downto 0);
signal DC_EX_EX_RegDst : std_logic_vector(4 downto 0);
signal DC_EX_DC_pc : std_logic_vector(31 downto 0);
signal DC_EX_EX_pc : std_logic_vector(31 downto 0);
signal DC_EX_DC_op_imm : std_logic_vector(31 downto 0);
signal DC_EX_EX_op_imm : std_logic_vector(31 downto 0);

signal EX_ME_EX_memaddr : std_logic_vector(31 downto 0);
signal EX_ME_ME_memaddr : std_logic_vector(31 downto 0);
signal EX_ME_EX_data : std_logic_vector(31 downto 0);
signal EX_ME_ME_data : std_logic_vector(31 downto 0);
signal EX_ME_EX_pc : std_logic_vector(31 downto 0);
signal EX_ME_ME_pc : std_logic_vector(31 downto 0);

signal ME_WB_ME_alu_data : std_logic_vector(31 downto 0);
signal ME_WB_WB_alu_data : std_logic_vector(31 downto 0);
signal ME_WB_ME_mem_data : std_logic_vector(31 downto 0);
signal ME_WB_WB_mem_data : std_logic_vector(31 downto 0);
signal ME_WB_ME_Regaddr : std_logic_vector(4 downto 0);
signal ME_WB_WB_Regaddr : std_logic_vector(4 downto 0);

component PCselecter
  port (
    PC_burst    : in  std_logic_vector(31 downto 0);
    PC_jump     : in  std_logic_vector(31 downto 0);
    PC_select_j : in  std_logic;
    PC_out      : out std_logic_vector(31 downto 0));
end component;
component Decoder
  port (
    instruction_in : in  std_logic_vector(31 downto 0);
    op1_out        : out std_logic_vector(31 downto 0);
    op2_out        : out std_logic_vector(31 downto 0);
    Reg_dst        : out std_logic_vector(4 downto 0);
    opcode : out std_logic_vector(5 downto 0);
    op_imm : out std_logic_vector(31 downto 0));
end component;
component ALU
  port (
    opcode : in  std_logic_vector(31 downto 0);
    op1    : in  std_logic_vector(31 downto 0);
    op2    : in  std_logic_vector(31 downto 0);
    ans    : out std_logic_vector(31 downto 0);
end component;
component MA
  port (
    memaddr_in   : in  std_logic_vector(31 downto 0);
    memaddr_out  : out std_logic_vector(31 downto 0);
    mem_data_in  : in  std_logic_vector(31 downto 0);
    mem_data_out : out std_logic_vector(31 downto 0));
end component;
component WB
  port (
    in_alu_data : in  std_logic_vector(31 downto 0);
    in_mem_data : in  std_logic_vector(31 downto 0);
    out_data    : out std_logic_vector(31 downto 0);
    mem_to_reg  : in  std_logic);
end component;
begin  -- cpu

  PipelineRegister: process (clk)
  begin  -- process PipelineRegister
    if (clk'event and clk='1') then
      IF_DC_DC_instruction<=IF_DC_IF_instruction;
      IF_DC_DC_pc<=IF_DC_IF_pc;
      DC_EX_EX_opcode<=DC_EX_DC_opcode;
      DC_EX_EX_RegDst<=DC_EX_DC_RegDst;
      DC_EX_EX_op1<=DC_EX_DC_op1;
      DC_EX_EX_op2<=DC_EX_DC_op2;
      DC_EX_EX_RegDst<=DC_EX_DC_RegDst;
      DC_EX_EX_pc<=DC_EX_DC_pc;
      DC_EX_EX_op_imm<=DC_EX_DC_op_imm;
      EX_ME_ME_memaddr<=EX_ME_EX_memaddr;
      EX_ME_ME_data<=EX_ME_EX_data;
      EX_ME_ME_pc<=EX_ME_EX_pc;
      ME_WB_WB_alu_data<=ME_WB_ME_alu_data;
      ME_WB_WB_mem_data<=ME_WB_ME_mem_data;
      ME_WB_WB_Regaddr<=ME_WB_ME_Regaddr;
                      
    end if;
  end process PipelineRegister;
  

end cpu;

-------------------------------------------------------------------------------
-- Control --
-------------------------------------------------------------------------------
entity controller is
  
end controller;

architecture Ctrl of controller is

begin  -- Ctrl

  

end Ctrl;


-------------------------------------------------------------------------------
-- Instruction Register--
-------------------------------------------------------------------------------
entity IR is
  
  port (
    IR_we           : in  std_logic;
    instruction_in  : in  std_logic_vector(31 downto 0);
    instruction_out : out std_logic_vector(31 downto 0));

end IR;
architecture InstReg of IR is
signal instruction : std_logic_vector(31 downto 0);
begin  -- InstReg
instruciton_out<=instruciton;
Inst: process(clk)
begin  -- process Inst
  if (clk'event and clk='1' and IR_we='1') then
    instruction<=instruction_in;
  end if;
end process Inst;
end InstReg;

-------------------------------------------------------------------------------
-- IF Stage --
-------------------------------------------------------------------------------

entity PCselecter is
  
  port (
    PC_burst : in std_logic_vector(31 downto 0);
    PC_jump: in std_logic_vector(31 downto 0);
    PC_select_j : in std_logic;
    PC_out : out std_logic_vector(31 downto 0));

end PCselecter;
architecture PCSel of PCselecter is

begin  -- PCSel

  PC_out<=
    PC_jump when PC_select_j="1" else
    PC_burst;

end PCSel;

-------------------------------------------------------------------------------
--DC Stage --
-------------------------------------------------------------------------------
entity Decoder is
  
  port (
    instruction_in : in std_logic_vector(31 downto 0);
    op1_out: out std_logic_vector(4 downto 0);
    op2_out: out std_logic_vector(4 downto 0);
    Reg_dst : out std_logic_vector(4 downto 0);
    opcode: out std_logic_vector(5 downto 0);
    op_imm:out std_logic_vector(31 downto 0));
    
end Decoder;
architecture Dec of Decoder is
  signal op1_addr : std_logic_vector(4 downto 0);
  signal op2_addr : std_logic_vector(4 downto 0);
begin  -- Dec

  opcode<=instruction_in(31 downto 26);
  op1_addr<=instruction_in(25 downto 21);
  op2_addr<=instruction_in(20 downto 16);
  op_imm<=instruction_in(15 downto 0);
  Reg_dst<=
    "11111" when instruction_in="010100" or "010110" or "010100" else
    instruction_in(20 downto 16) when instruction_in(29)='1'else
    instruction_in(15 downto 11);
    

end Dec;
-------------------------------------------------------------------------------
-- EX Stage--
-------------------------------------------------------------------------------

entity ALU is
  
  port (
    opcode : in  std_logic_vector(5 downto 0);
    op1    : in  std_logic_vector(31 downto 0);
    op2    : in  std_logic_vector(31 downto 0);
    ans    : out std_logic_vector(31 downto 0));

end ALU;
architecture EX of ALU is

begin  -- EX

ans<=
  op1 + op2 when opcode="100001" else
  op1 + op2 when opcode="101001" else
  op1 - op2 when opcode="100010" else
  op1 - op2 when opcode="101010" else
  op1 * op2 when opcode="100011" else
  op1 * op2 when opcode="101011" else
  op1 / op2 when opcode="100100" else
  op1 / op2 when opcode="101100" else
  others=>'0';
end EX;
-------------------------------------------------------------------------------
-- MA Stage--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;

entity MA is
  
  port (
    memaddr_in    : in  std_logic_vector(31 downto 0);
    memaddr_out : out std_logic_vector(31 downto 0);
    mem_data_in : in std_logic_vector(31 downto 0);
    mem_data_out : out std_logic_vector(31 downto 0));

end MA;
architecture Memcon of MA is

begin  -- Memcon

  

end Memcon;
-------------------------------------------------------------------------------
-- WB Stage--
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;

entity WB is
  
  port (
    in_alu_data    : in  std_logic_vector(31 downto 0);
    in_mem_data : in std_logic_vector(31 downto 0);
    out_data   : out std_logic_vector(31 downto 0);
    mem_to_reg    : in  std_logic);

end WB;

architecture WriteBack of WB is

begin  -- WriteBack

  out_data<=in_alu_data when mem_to_reg='0' else
             in_mem_data;

end WriteBack;
-------------------------------------------------------------------------------
-- Register --
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity Reg is
  port (clk : in std_logic;
        we    : in std_logic;
        out_a  : in std_logic_vector(4 downto 0);
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
 
