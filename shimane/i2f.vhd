library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity i2f is
  Port ( 
		clk: in std_logic;
		p2op: in std_logic_vector(31 downto 0);
		p3i2f: out std_logic_vector(31 downto 0)
	);
end i2f;

architecture i2f_arch of i2f is

begin

	i2f_P:process(clk)
		variable p2op2_i2ft:std_logic_vector(30 downto 0);
	begin
		if rising_edge(clk) then
			p3i2f(31)<=p2op(31);
			p2op2_i2ft:=(p2op(30 downto 0) xor (30 downto 0 => p2op(31))) + (p2op(31));
			if p2op2_i2ft(30)='1' then 
				p3i2f(30 downto 23)<="10011101";
				p3i2f(22 downto 0)<=p2op2_i2ft(29 downto 7);
			elsif p2op2_i2ft(30 downto 29)= "01" then 
				p3i2f(30 downto 23)<="10011100";
				p3i2f(22 downto 0)<=p2op2_i2ft(28 downto 6);
			elsif p2op2_i2ft(30 downto 28)= "001" then 
				p3i2f(30 downto 23)<="10011011";
				p3i2f(22 downto 0)<=p2op2_i2ft(27 downto 5);
			elsif p2op2_i2ft(30 downto 27)= "0001" then 
				p3i2f(30 downto 23)<="10011010";
				p3i2f(22 downto 0)<=p2op2_i2ft(26 downto 4);
			elsif p2op2_i2ft(30 downto 26)= "00001" then 
				p3i2f(30 downto 23)<="10011001";
				p3i2f(22 downto 0)<=p2op2_i2ft(25 downto 3);
			elsif p2op2_i2ft(30 downto 25)= "000001" then 
				p3i2f(30 downto 23)<="10011000";
				p3i2f(22 downto 0)<=p2op2_i2ft(24 downto 2);
			elsif p2op2_i2ft(30 downto 24)= "0000001" then 
				p3i2f(30 downto 23)<="10010111";
				p3i2f(22 downto 0)<=p2op2_i2ft(23 downto 1);
			elsif p2op2_i2ft(30 downto 23)= "00000001" then 
				p3i2f(30 downto 23)<="10010110";
				p3i2f(22 downto 0)<=p2op2_i2ft(22 downto 0);
			elsif p2op2_i2ft(30 downto 22)= "000000001" then 
				p3i2f(30 downto 23)<="10010101";
				p3i2f(0)<='0';
				p3i2f(22 downto 1)<=p2op2_i2ft(21 downto 0);
			elsif p2op2_i2ft(30 downto 21)= "0000000001" then 
				p3i2f(30 downto 23)<="10010100";
				p3i2f(1 downto 0)<=(others=>'0');
				p3i2f(22 downto 2)<=p2op2_i2ft(20 downto 0);
			elsif p2op2_i2ft(30 downto 20)= "00000000001" then 
				p3i2f(30 downto 23)<="10010011";
				p3i2f(2 downto 0)<=(others=>'0');
				p3i2f(22 downto 3)<=p2op2_i2ft(19 downto 0);
			elsif p2op2_i2ft(30 downto 19)= "000000000001" then 
				p3i2f(30 downto 23)<="10010010";
				p3i2f(3 downto 0)<=(others=>'0');
				p3i2f(22 downto 4)<=p2op2_i2ft(18 downto 0);
			elsif p2op2_i2ft(30 downto 18)= "0000000000001" then 
				p3i2f(30 downto 23)<="10010001";
				p3i2f(4 downto 0)<=(others=>'0');
				p3i2f(22 downto 5)<=p2op2_i2ft(17 downto 0);
			elsif p2op2_i2ft(30 downto 17)= "00000000000001" then 
				p3i2f(30 downto 23)<="10010000";
				p3i2f(5 downto 0)<=(others=>'0');
				p3i2f(22 downto 6)<=p2op2_i2ft(16 downto 0);
			elsif p2op2_i2ft(30 downto 16)= "000000000000001" then 
				p3i2f(30 downto 23)<="10001111";
				p3i2f(6 downto 0)<=(others=>'0');
				p3i2f(22 downto 7)<=p2op2_i2ft(15 downto 0);
			elsif p2op2_i2ft(30 downto 15)= "0000000000000001" then 
				p3i2f(30 downto 23)<="10001110";
				p3i2f(7 downto 0)<=(others=>'0');
				p3i2f(22 downto 8)<=p2op2_i2ft(14 downto 0);
			elsif p2op2_i2ft(30 downto 14)= "00000000000000001" then 
				p3i2f(30 downto 23)<="10001101";
				p3i2f(8 downto 0)<=(others=>'0');
				p3i2f(22 downto 9)<=p2op2_i2ft(13 downto 0);
			elsif p2op2_i2ft(30 downto 13)= "000000000000000001" then 
				p3i2f(30 downto 23)<="10001100";
				p3i2f(9 downto 0)<=(others=>'0');
				p3i2f(22 downto 10)<=p2op2_i2ft(12 downto 0);
			elsif p2op2_i2ft(30 downto 12)= "0000000000000000001" then 
				p3i2f(30 downto 23)<="10001011";
				p3i2f(10 downto 0)<=(others=>'0');
				p3i2f(22 downto 11)<=p2op2_i2ft(11 downto 0);
			elsif p2op2_i2ft(30 downto 11)= "00000000000000000001" then 
				p3i2f(30 downto 23)<="10001010";
				p3i2f(11 downto 0)<=(others=>'0');
				p3i2f(22 downto 12)<=p2op2_i2ft(10 downto 0);
			elsif p2op2_i2ft(30 downto 10)= "000000000000000000001" then 
				p3i2f(30 downto 23)<="10001001";
				p3i2f(12 downto 0)<=(others=>'0');
				p3i2f(22 downto 13)<=p2op2_i2ft(9 downto 0);
			elsif p2op2_i2ft(30 downto 9)= "0000000000000000000001" then 
				p3i2f(30 downto 23)<="10001000";
				p3i2f(13 downto 0)<=(others=>'0');
				p3i2f(22 downto 14)<=p2op2_i2ft(8 downto 0);
			elsif p2op2_i2ft(30 downto 8)= "00000000000000000000001" then 
				p3i2f(30 downto 23)<="10000111";
				p3i2f(14 downto 0)<=(others=>'0');
				p3i2f(22 downto 15)<=p2op2_i2ft(7 downto 0);
			elsif p2op2_i2ft(30 downto 7)= "000000000000000000000001" then 
				p3i2f(30 downto 23)<="10000110";
				p3i2f(15 downto 0)<=(others=>'0');
				p3i2f(22 downto 16)<=p2op2_i2ft(6 downto 0);
			elsif p2op2_i2ft(30 downto 6)= "0000000000000000000000001" then 
				p3i2f(30 downto 23)<="10000101";
				p3i2f(16 downto 0)<=(others=>'0');
				p3i2f(22 downto 17)<=p2op2_i2ft(5 downto 0);
			elsif p2op2_i2ft(30 downto 5)= "00000000000000000000000001" then 
				p3i2f(30 downto 23)<="10000100";
				p3i2f(17 downto 0)<=(others=>'0');
				p3i2f(22 downto 18)<=p2op2_i2ft(4 downto 0);
			elsif p2op2_i2ft(30 downto 4)= "000000000000000000000000001" then 
				p3i2f(30 downto 23)<="10000011";
				p3i2f(18 downto 0)<=(others=>'0');
				p3i2f(22 downto 19)<=p2op2_i2ft(3 downto 0);
			elsif p2op2_i2ft(30 downto 3)= "0000000000000000000000000001" then 
				p3i2f(30 downto 23)<="10000010";
				p3i2f(19 downto 0)<=(others=>'0');
				p3i2f(22 downto 20)<=p2op2_i2ft(2 downto 0);
			elsif p2op2_i2ft(30 downto 2)= "00000000000000000000000000001" then 
				p3i2f(30 downto 23)<="10000001";
				p3i2f(20 downto 0)<=(others=>'0');
				p3i2f(22 downto 21)<=p2op2_i2ft(1 downto 0);
			elsif p2op2_i2ft(30 downto 1)= "000000000000000000000000000001" then 
				p3i2f(30 downto 23)<="10000000";
				p3i2f(21 downto 0)<=(others=>'0');
				p3i2f(22)<=p2op2_i2ft(0);
			elsif p2op2_i2ft(30 downto 0)= "0000000000000000000000000000001" then 
				p3i2f(30 downto 23)<="01111111";
				p3i2f(22 downto 0)<=(others=>'0');
			else
				p3i2f(30 downto 0)<=(others=>'0');
			end if;
		end if;
	end process;

end i2f_arch;
