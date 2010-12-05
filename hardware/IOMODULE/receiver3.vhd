library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_arith.all;

entity receiver3 is
  Port ( clk  : in  STD_LOGIC;
         rxd   : in STD_LOGIC;
         buf_ok : out std_logic := '0';
         received : out  STD_LOGIC_VECTOR (7 downto 0));
end receiver3;

architecture behav of receiver3 is
  signal countdown: integer := 0;
  signal recvbuf: std_logic_vector(7 downto 0) := (others=>'1');
  signal state: std_logic_vector(3 downto 0) := "1110";
  constant waittime: integer := 6875;
  constant conftime: integer := 3437;
  signal read_count: integer := 0;

begin
  statemachine: process(clk)
  begin
    if rising_edge(clk) then
      case state is
        when "1110" =>                  -- catch start bit;
          if rxd = '0' then
            countdown <= conftime;
            state <= state+1;
          end if;
        when "1111" =>                  -- confirm start bit;
          if countdown = 0 then
            if rxd = '0' then
              countdown <= waittime;
              state <= state+1;
            else
              state <= "1110";          -- return to wait_state if start bit was noise;
            end if;
          else
            countdown <= countdown-1;
          end if;
        when "0000"|"0001"|"0010"|"0011"|"0100"|"0101"|"0110"|"0111" =>
          if countdown = 0 then
            recvbuf(conv_integer(state)) <= rxd;
            countdown <= waittime;
            state <= state+1;
          else
            countdown <= countdown-1;
          end if;
        when "1000" =>
          buf_ok <= '1';
          received <= recvbuf;
          countdown <= waittime;
          read_count <= read_count+1;
          state <= state+1;
        when "1001" =>
          buf_ok <= '0';
          if countdown = 0 then
            state <= state+1;
          else
            countdown <= countdown-1;
          end if;
          ---------------------------------------------------------------------
        when others =>
          state <= "1110";
          ---------------------------------------------------------------------
      end case;
    end if;
  end process statemachine;
end behav;
