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
    PC_write_b: out std_logic;
    Reg_source:out std_logic);

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
          PCwrite<='1';
          MemWrite<='0';
          MemtoReg<='0';
          Reg_write<='0';
          Reg_dist<='0';
      when "111110"=>
          Reg_write<='0';
          Reg_dist<='0';
          IR_Write<='1';
          PCwrite<='0';
          MemtoReg<='0';
          MemWrite<='0';
          Reg_source<='0';
          PC_write_b<='0';
      when "000001" =>
          ALUSrcA<='0';
          ALUSrcB<="11";
          PCwrite<='0';
          PCSource<='0';
          IR_Write<='0';
          PC_write_b<='0';
          MemtoReg<='0';
          MemWrite<='0';
          
      when "000010" =>
        ALUSrcA<='1';
        ALUSrcB<="00";
        
      when "000011" =>
        ALUSrcA<='1';
        ALUSrcB<="10";
        
      when "000100" => 
        PCSource<='1';

      when "000101"=>
        PCSource<='1';
        Reg_source<='1';
        Reg_dist<='1';
        Reg_write<='1';

      when "000110"=>
        ALUSrcA<='1';
        ALUSrcB<="10";
          
      when "000111" =>
        ALUSrcA<='1';
        ALUSrcB<="10";
        
      when "001000"=>
        ALUSrcA<='1';
        ALUSrcB<="00";          

      when "001001"=>
        ALUSrcA<='1';
        ALUSrcB<="10";
        
      when "001010"=>
        ALUSrcA<='1';
        ALUSrcB<="00";
        
      when "001011"=>
        Reg_write<='1';
        Reg_source<='0';
        Reg_dist<='1';
        
      when "001100" =>        
        Reg_write<='1';
        Reg_source<='0';
        Reg_dist<='0';

      when "001101"=>
        PCSource<='1';

      when "001110"=>
        PCSource<='1';
        Reg_source<='1';
        Reg_dist<='1';
        Reg_write<='1';

      when "001111"=>
        PC_write_b<='1';
        PCSource<='0';

      when "010000"=>
        MemWrite<='1';
      when "100000"=>
        memwrite<='1';
      when "100001"=>
        memwrite<='0';
      when "010001"=>null;
      when "010010"=>null;
      when "010011"=>
        MemtoReg<='1';
        Reg_write<='1';
        Reg_dist<='0';
      when others => null;
    end case;
  end process make_signal;
  Statemachine: process (clk)
  begin  -- process Statemachine
    if (clk'event and clk = '1') then  -- rising clock edge
      case State is
        when "000000" =>
          State<="111110";
        when "111110"=>
          State<="000001";
        when "000001" => 
          case op is
            when "100001"|"100010"|"100011"|"100101"|"100110"|"100111" =>State<="000010";--R
            when "101001"|"101010"|"101011"|"101101"|"101110"|"101111"|"010000"|"010001"|"110010"|"110011" =>State<="000011";--Ri
            when "010101"|"010110" =>State<="000101";--jal
            when "010011" =>State<="000110";--jr
--            when "010110"=>State<="111101";   --jal
            when "010100" =>State<="000111";--jalr
            when "001001"|"001010"|"001011"|"001100"=>State<="001000";--b
            when "001111"=>State<="001001";--sw
            when "001110"=>State<="001010";  --lw
            when others=>State<="000000";
          end case;
        when "000010" => 
          State<="001011";
        when "000011"=>
          State<="001100";
        when "000100"=>
          State<="000000";
        when "000101"=>
          State<="000000";
        when "000110"=>
          State<="001101";
        when "000111"=>
          State<="001110";
        when "111101"=>
          state<="111100";
        when "111100"=>
          state<="000000";
        when "001000"=>
          state<="001111";
        when "001001" => 
          State<="010000";
        when "001010" =>
          state<="010100";
        when "010100"=>
          state<="010101";
        when "010101"=>
          state<="010110";
        when "010110"=>
          state<="010111";
        when "010111"=>
          State<="010011";
        when "001011"=>                 --SW
          State<="000000";
        when "001100"=>
          State<="000000";
        when "001101"=>
          State<="000000";
        when "001110"=>
          State<="000000";
        when "001111"=>
          State<="111110";
        when "010000"=>
          State<="100000";
        when "100000"=>
          state<="100001";
        when "100001"=>
          state<="100010";
        when "100010"=>
          state<="100011";
        when "100011"=>
          state<="100100";
        when "100100"=>
          state<="000000";
        when "010001"=>                 --B
          State<="010010";
        when "010010"=>
          State<="010011";
        when "010011"=>
          State<="000000";
        when "111111"=>
          State<="000000";
        when others => State<="000000";  
      end case;
    end if;
  end process Statemachine;
  

end Con;
