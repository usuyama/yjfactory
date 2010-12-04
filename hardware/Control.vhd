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
    Reg_source:out std_logic;
    FPU_ready:out std_logic;
    RG_f: out std_logic_vector(2 downto 0)
    );

end Control;

architecture Con of Control is
signal State : std_logic_vector(6 downto 0):=(others=>'1');
begin  -- Con
make_signal:process(State)
  begin
    case State is
      when "1111111" =>
        RG_f<="000";
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
      when "0011111"=>
        RG_f<="000";
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
        FPU_ready<='0';
      when "0000000"=>
        RG_f<="000";
          PCwrite<='1';
          MemWrite<='0';
          MemtoReg<='0';
          Reg_write<='0';
          Reg_dist<='0';
          FPU_ready<='0';
      when "1000000"=>
        RG_f<="000";
          Reg_write<='0';
          Reg_dist<='0';
          IR_Write<='1';
          PCwrite<='0';
          MemtoReg<='0';
          MemWrite<='0';
          Reg_source<='0';
          PC_write_b<='0';
          FPU_ready<='0';
      when "0000001" =>
          ALUSrcA<='0';
          ALUSrcB<="11";
          PCwrite<='0';
          PCSource<='0';
          IR_Write<='0';
          PC_write_b<='0';
          MemtoReg<='0';
          MemWrite<='0';

      when "0000010" =>
        ALUSrcA<='1';
        ALUSrcB<="00";

      when "0000011" =>
        ALUSrcA<='1';
        ALUSrcB<="10";

      when "0000101"=>
        PCSource<='0';
      when "0000100"=>
        PCSource<='0';
        Reg_source<='1';
        Reg_dist<='1';
        Reg_write<='1';

      when "0000110"=>
        ALUSrcA<='1';
        ALUSrcB<="10";

      when "0000111" =>
        ALUSrcA<='1';
        ALUSrcB<="10";

      when "0001000"=>
        ALUSrcA<='1';
        ALUSrcB<="00";

      when "0001001"=>
        ALUSrcA<='1';
        ALUSrcB<="10";

      when "0001010"=>
        ALUSrcA<='1';
        ALUSrcB<="00";

      when "0001011"=>
        Reg_write<='1';
        Reg_source<='0';
        Reg_dist<='1';


      when "0001100" =>
        Reg_write<='1';
        Reg_source<='0';
        Reg_dist<='0';

      when "0001101"=>
--        PCSource<='1';

      when "0001110"=>
        PCSource<='1';
        Reg_source<='1';
        Reg_dist<='1';
        Reg_write<='1';

      when "0001111"=>
        PC_write_b<='1';
        PCSource<='0';

      when "0010000"=>
        MemWrite<='1';
      when "0011000"=>
        memwrite<='1';
      when "0011001"=>
        memwrite<='0';
      when "0010001"=>null;
      when "0010010"=>null;
      when "0010011"=>
        MemtoReg<='1';
        Reg_write<='1';
        Reg_dist<='0';
      when "0100000"=>
        RG_f<="111";
        ALUSrcA<='1';
        ALUSrcB<="00";
      when "0100001"=>
        Reg_write<='1';
        Reg_source<='0';
        Reg_dist<='1';
      when "0100010"=>
        RG_f<="111";
        ALUSrcA<='1';
        ALUSrcB<="00";
        FPU_ready<='1';
      when "0100011"=>
        FPU_ready<='0';
      when "0110100"=>
        RG_f<="111";
        ALUSrcA<='1';
        ALUSrcB<="00";
        FPU_ready<='1';
      when "0110101"=>
        FPU_ready<='0';
      when "1000001"=>
        RG_f<="100";
        ALUSrcA<='1';
        ALUSrcB<="00";
      when "1000010"=>
        Reg_write<='1';
        Reg_source<='0';
        Reg_dist<='1';
      when "1000011"=>
        RG_f<="010";
        ALUSrcA<='1';
        ALUSrcB<="00";
      when "1000100"=>
        Reg_write<='1';
        Reg_source<='0';
        Reg_dist<='1';
      when "1000101"=>
        RG_f<="111";
        ALUSrcA<='1';
        ALUSrcB<="00";
      when "1000110"=>
        PC_write_b<='1';
        PCSource<='0';

      when others => null;
    end case;
  end process make_signal;
  Statemachine: process (clk)
  begin  -- process Statemachine
    if (clk'event and clk = '1') then  -- rising clock edge
      case State is
        when "0000000" =>
          State<="1000000";
        when "1000000"=>
          State<="0000001";
        when "0000001" =>
          case op is
            when "100001"|"100010"|"100011"|"100101"|"100110"|"100111" =>State<="0000010";--R
            when "101001"|"101010"|"101011"|"101101"|"101110"|"101111"|"010010"|"110010"|"110011" =>State<="0000011";--Ri
            when "010101" =>State<="0000101";--j
            when "010110"=>state<="000100";--jal
            when "010011" =>State<="0000110";--jr
--            when "010110"=>State<="0111101";   --jal
            when "010100" =>State<="0000111";--jalr
            when "001001"|"001010"|"001011"|"001100"=>State<="0001000";--b
            when "001111"=>State<="0001001";--sw
            when "001110"=>State<="0001010";  --lw
            when "111111"=>state<="0011111";  --halt
            when "111000"|"111001"|"111010"|"000100"|"000101"|"000011"|"000110"|"111101"|"111110"=>state<="0100000";   --f R
            when "111100"=>state<="0100010";  --f sqrt
            when "111011"=>state<="0110100";  --fdiv
            when "010111"|"011001"=>state<="1000001";  --ftoi,movf2i
            when "011000"=>State<="1000011";  --itof
            when "001000"=>state<="1000101";
            when others=>State<="0000000";
          end case;
        when "0000010" =>
          State<="0001011";
        when "0000011"=>
          State<="0001100";
        when "0000100"=>
          State<="0000000";
        when "0000101"=>
          State<="0000000";
        when "0000110"=>
          State<="0001101";
        when "0000111"=>
          State<="0001110";
--        when "0111101"=>
--          state<="0111100";
--        when "0111100"=>
--          state<="0000000";
        when "0001000"=>
          state<="0001111";
        when "0001001" =>
          State<="0010000";
        when "0001010" =>
          state<="0010100";
        when "0010100"=>
          state<="0010101";
        when "0010101"=>
          state<="0010110";
        when "0010110"=>
          state<="0010111";
        when "0010111"=>
          State<="0010011";
        when "0001011"=>                 --SW
          State<="0000000";
        when "0001100"=>
          State<="0000000";
        when "0001101"=>
          State<="0000000";
        when "0001110"=>
          State<="0000000";
        when "0001111"=>
      State<="0000000";
--          state<="0111110";
        when "0010000"=>
          State<="0011000";
        when "0011000"=>
          state<="0011001";
        when "0011001"=>
          state<="0011010";
        when "0011010"=>
          state<="0011011";
        when "0011011"=>
          state<="0011100";
        when "0010011"=>
          State<="0000000";
        when "0100000"=>                --f R
          state<="0100001";
        when "0100001"=>
          state<="0000000";
        when "0100010"=>                --fsqrt start
          state<="0100011";
        when "0100011"=>
          state<="0100100";
        when "0100100"=>
          state<="0100101";
        when "0100101"=>
          state<="0100110";
        when "0100110"=>
          state<="0100111";
        when "0100111"=>
          state<="0101000";
        when "0101000"=>
          state<="0101001";
        when "0101001"=>
          state<="0101010";
        when "0101010"=>
          state<="0101011";
        when "0101011"=>
          state<="0101100";
        when "0101100"=>
          state<="0101101";
        when "0101101"=>
          state<="0101110";
        when "0101110"=>
          state<="0101111";
        when "0101111"=>
          state<="0110000";
        when "0110000"=>
          state<="0110001";
        when "0110001"=>
          state<="0110010";
        when "0110010"=>
          state<="0110011";
        when "0110011"=>
          state<="0000000";

        when "0110100"=>                --f div
          state<="0110101";
        when "0110101"=>
          state<="0110110";
        when "0110110"=>
          state<="0110111";
        when "0110111"=>
          state<="0111000";
        when "0111000"=>
          state<="0111001";
        when "0111001"=>
          state<="0111010";
        when "0111010"=>
          state<="0111011";
        when "0111011"=>
          state<="0111100";
        when "0111100"=>
          state<="0111101";
        when "0111101"=>
          state<="0111110";
        when "0111110"=>
          state<="0111111";

        when "1000001"=>                --ftoi movf2i
          state<="1000010";
        when "1000010"=>
          state<="0000000";

        when "1000011"=>                --itof
          state<="1000100";
        when "1000100"=>
          state<="0000000";

        when "1000101"=>                --bgtf
          state<="1000110";
        when "1000110"=>
          state<="0000000";
          
        when "1111111"=>                --start
          state<="0000000";
        when "0111111"=>                --reset
          State<="0000000";
        when "0011111"=>                --halt
          state<="0011111";
        when others => State<="0000000";
        --when "0100100"=>
        --  state<="0000000";
        --When "0010001"=>                 --B
        --  State<="0010010";
        --when "0010010"=>
        --  State<="0010011";
      end case;
    end if;
  end process Statemachine;

end Con;
