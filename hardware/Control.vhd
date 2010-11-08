library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Control is
  
  port (
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

end Control;

architecture Con of Control is
signal State : std_logic_vector(5 downto 0):=(others=>'1');
begin  -- Con
make_signal:process(State)
  begin
    case State is
      when "111111" => 
          ALUSrcA<='0';
          ALUSrcB<="01";
          PCSource<='0';
          Reg_write<='0';
          Reg_dist<='0';
          IR_Write<='0';
          MemtoReg<='0';
          MemWrite<='0';
          PCwrite<='0';
          PC_write_b<='0';
      when "000000"=>
          ALUSrcA<='0';
          ALUSrcB<="01";
          Reg_write<='0';
          Reg_dist<='0';
          IR_Write<='1';
          MemtoReg<='0';
          MemWrite<='0';
          PCwrite<='1';
      when "000001" =>
          ALUSrcA<='0';
          ALUSrcB<="11";
          PCwrite<='0';
          PCSource<='0';
          IR_Write<='0';
          PC_write_b<='0';
      when "000010" =>
        ALUSrcA<='1';
        ALUSrcB<="10";
      when "000011" => null;        
      when "000100" => 
          Reg_write<='1';
          Reg_dist<='0';
          MemtoReg<='1';
      when "010000" =>
        MemWrite<='1';
      when "010001"=>
        MemWrite<='0';
      when "010010"=>null;
      when "010011"=>null;
      when "010100"=>null;
      when "000110" =>        
          ALUSrcA<='1';
          ALUSrcB<="00";
      when "000111" =>
          Reg_write<='1';
          Reg_dist<='1';
          MemtoReg<='0';
      when "001000" =>
          ALUSrcA<='0';
          ALUSrcB<="10";
          PCSource<='0';
          PC_write_b<='1';
      when "001010"=>
        ALUSrcA<='1';
        ALUSrcB<="10";
      when "001011" =>
          Reg_write<='1';
          Reg_dist<='0';
          MemtoReg<='0';
      when "100001"=>
        ALUSrcA<='1';
        ALUSrcB<="10";
      when others => null;
    end case;
  end process make_signal;
  Statemachine: process (clk)
  begin  -- process Statemachine
    if (clk'event and clk = '1') then  -- rising clock edge
      case State is
        when "111111"=>State<="000000";
        when "000000" =>
          State<="000001";
        when "000001" => 
          case op is
            when "001110"|"001111" => State<="000010";  --LW/SW
            when "100001"|"100010"|"100011"|"100100"|"100101"|"100110"|"100111" =>State<="000110"; --R
            when "101001"|"101010"|"101011"|"101100"|"101101"|"101110"|"101111"|"110011"|"110010" => State<="001010";--R_imm
            when "001001"|"001011"|"001010"|"001100" => State<="001000";  --B
            when "010101"|"010110" => State<="001001";  --J
            when "010011"=>State<="100000";--Jr
            when others => State<="000000";
          end case;
        when "000010" =>                --LW/SW
          case op is
            when "001110"=> State<="011000";  --LW
            when "001111"=> State<="010000";  --SW
            when others => State<="000001";
          end case;
        when "100000"=>
          State<="100001";
        when "011000"=>
          State<="011001";
        when "011001"=>
          State<="011010";
        when "011010"=>
          State<="011011";
        when "011011"=>
          State<="011100";
        when "011100"=>
          state<="000000";
        when "000011" => 
          State<="000100";
        when "000100" => 
          State<="000000";
        when "010000"=>                 --SW
          State<="010001";
        when "010001"=>
          State<="010010";
        when "010011"=>
          State<="010100";
        when "010100"=>
          State<="000000";
        when "000110"=>
          State<="000111";
        when "000111"=>
          State<="000000";
        when "001000"=>                 --B
          State<="000000";
        when "001001"=>
          State<="000000";
        when "001010"=>
          State<="001011";
        when others => State<="000000";  
      end case;
    end if;
  end process Statemachine;
  

end Con;
