library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ledextd2 is
  Port (
    leddata   : in std_logic_vector(31 downto 0);
    leddotdata: in std_logic_vector(7 downto 0);
    outdata0 : out std_logic_vector(7 downto 0);
    outdata1 : out std_logic_vector(7 downto 0);
    outdata2 : out std_logic_vector(7 downto 0);
    outdata3 : out std_logic_vector(7 downto 0);
    outdata4 : out std_logic_vector(7 downto 0);
    outdata5 : out std_logic_vector(7 downto 0);
    outdata6 : out std_logic_vector(7 downto 0);
    outdata7 : out std_logic_vector(7 downto 0)
    );
end ledextd2;

architecture Behavioral of ledextd2 is
  component hex2led
    Port (
      h : in STD_LOGIC_VECTOR(3 downto 0);
      led : out STD_LOGIC_VECTOR(6 downto 0)
      );
  end component;
begin

  hex2led0 : hex2led port map (
    h =>  leddata(3 downto 0),
    led => outdata0(6 downto 0)
    );
  outdata0(7) <= leddotdata(0);
  
  hex2led1 : hex2led port map (
    h =>  leddata(7 downto 4),
    led => outdata1(6 downto 0)
    );
  outdata1(7) <= leddotdata(1);
  
  hex2led2 : hex2led port map (
    h =>  leddata(11 downto 8),
    led => outdata2(6 downto 0)
    );
  outdata2(7) <= leddotdata(2);
  
  hex2led3 : hex2led port map (
    h =>  leddata(15 downto 12),
    led => outdata3(6 downto 0)
    );
  outdata3(7) <= leddotdata(3);
  
  hex2led4 : hex2led port map (
    h =>  leddata(19 downto 16),
    led => outdata4(6 downto 0)
    );
  outdata4(7) <= leddotdata(4);
  
  hex2led5 : hex2led port map (
    h =>  leddata(23 downto 20),
    led => outdata5(6 downto 0)
    );
  outdata5(7) <= leddotdata(5);
  
  hex2led6 : hex2led port map (
    h =>  leddata(27 downto 24),
    led => outdata6(6 downto 0)
    );
  outdata6(7) <= leddotdata(6);
  
  hex2led7 : hex2led port map (
    h =>  leddata(31 downto 28),
    led => outdata7(6 downto 0)
    );
  outdata7(7) <= leddotdata(7);


end Behavioral;
