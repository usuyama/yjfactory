library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity f2i is
  Port ( 
		clk: in std_logic;
		p2op: in std_logic_vector(31 downto 0);
		p3f2i: out std_logic_vector(31 downto 0)
	);
end f2i;

architecture f2i_arch of f2i is

begin

	f2i_P:process(clk)
		variable p3f2i_tmp:std_logic_vector(31 downto 0);
		variable p3guard:std_logic;
	begin
		if rising_edge(clk) then
			if p2op(30 downto 23)>="10011110" then
				p3f2i_tmp(30 downto 0):=(others=>'1');
				p3guard:='0';
			elsif p2op(30)='0' then
				p3f2i_tmp(30 downto 2):=(others=>'0');
				if p2op(29 downto 23)="1111111" then
					p3f2i_tmp(0):='1';
					p3f2i_tmp(1):='0';
				else
					p3f2i_tmp(1 downto 0):=(others => '0');
				end if;

				if p2op(29 downto 23)="1111111" then
					p3guard:=p2op(22);
				elsif p2op(29 downto 23)="1111110" then
					p3guard:='1';
				else
					p3guard:='0';
				end if;
			else
				p3f2i_tmp(conv_integer(p2op(27 downto 23)+1)):='1';
				if (p2op(27 downto 23)/="11101") then
					p3f2i_tmp(30 downto conv_integer(p2op(27 downto 23)+2)):=(others=>'0');
				end if;
				if p2op(27 downto 23)>22 then
					p3f2i_tmp(conv_integer(p2op(27 downto 23)) downto conv_integer(p2op(27 downto 23)-22)):=p2op(22 downto 0);
					p3f2i_tmp(conv_integer(p2op(27 downto 23)-23) downto 0):=(others=>'0');
					p3guard:='0';
				elsif p2op(27 downto 23)=22 then
					p3f2i_tmp(22 downto 0):=p2op(22 downto 0);
					p3guard:='0';
				else
					p3f2i_tmp(conv_integer(p2op(27 downto 23)) downto 0):=p2op(22 downto conv_integer(22-p2op(27 downto 23)));
					p3guard:=p2op(conv_integer(21-p2op(27 downto 23)));
				end if;
			end if;

			--p3f2i(30 downto 0)<=p3f2i_tmp(30 downto 0)+p3guard;
			--(q3f2i(31) & (q3f2i(30 downto 0) xor (30 downto 0 => (q3f2i(31))))) + q3f2i(31);
			--p3f2i(31)<=p2op(31);
			--p3f2i(30 downto 0)<=((p3f2i_tmp(30 downto 0)+p3guard) xor (30 downto 0 => p2op(31)))+p2op(31);
			p3f2i<=(p2op(31) & ((p3f2i_tmp(30 downto 0)+p3guard) xor (30 downto 0 => (p2op(31))))) + p2op(31);
		end if;
	end process;

end f2i_arch;
