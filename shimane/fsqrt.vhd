library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

library work;
use work.fsqrt_table.all;

entity FLOAT_SQRT is
  port (A : in std_logic_vector(31 downto 0);
        clk : in std_logic;
        OUTPUT : out std_logic_vector(31 downto 0));
end FLOAT_SQRT;

architecture FLOAT_SQRT_ARCHTECT of FLOAT_SQRT is
  signal z : std_logic_vector(22 downto 0);
  signal s1,s2 : std_logic;
  signal e,e2 : std_logic_vector(7 downto 0);
  signal a1 : std_logic_vector(22 downto 0);
--  signal w : std_logic_vector(24 downto 0);
  signal y : std_logic_vector(25 downto 0);
  signal sm1,sm2 : std_logic;
  signal xtmphl : std_logic_vector(47 downto 0);
  signal xtmpm : std_logic_vector(23 downto 0);
begin

P :process (clk)
  variable w1 : std_logic_vector(34 downto 0);
  variable w : std_logic_vector(24 downto 0);
  variable etmp : std_logic_vector(9 downto 0);
  variable ftmp : std_logic_vector(51 downto 0);
  variable ytmp : std_logic_vector(47 downto 0);
--  variable xtmp : std_logic_vector(47 downto 0);
  variable z2 : std_logic_vector(47 downto 0);
begin
  if rising_edge(clk) then
--0
    z <= table(conv_integer(A(23 downto 13)));
    a1 <= a(22 downto 0);

    s1 <= A(31);

    if A(22 downto 0)<6 and A(23)='1' then
      sm1 <= '1';
    else
      sm1 <= '0';
    end if;

    if A(23)='0' then
      e <= ("0"&A(30 downto 24)) + "00111111";
    else
      e <= ("0"&A(30 downto 24)) + "01000000";
    end if;

--1
    ytmp := ('1'&a1)*('1'&z);
--    z2 := ('1'&z) * ('1'&z);
--    xtmp := ytmp(47 downto 24)*('1'&z);
    xtmphl(47 downto 24) <= ytmp(47 downto 36)*('1'&z(22 downto 12));
    xtmphl(23 downto 0) <= ytmp(35 downto 24)*z(11 downto 0);
    xtmpm <= ytmp(47 downto 36)*z(11 downto 0)+ytmp(35 downto 24)*('1'&z);
--    w <= (not xtmp(46 downto 22));
    y <= ytmp(47 downto 22);

    s2 <= s1;
    e2 <= e;
    sm2 <= sm1;

--2
    w1 := xtmphl(46 downto 12)+xtmpm;
	 w := not w1(33 downto 9);
    if w(24)='1' then
      ftmp := y*("10"&w(23 downto 0));
    else
      ftmp := y*("100"&w(23 downto 1));
    end if;

    OUTPUT(31) <= '0';
    if s2='1' then
      OUTPUT(30 downto 0)<=(others=>'0');
    else
      OUTPUT(30 downto 23) <= e2(7 downto 0);
      if sm2='1' then
        OUTPUT(22 downto 0)<=(others=>'0');
      else
        if ftmp(51)='1' then
          OUTPUT(22 downto 0)<=ftmp(50 downto 28);
        else
          if ftmp(50)='1' then
            OUTPUT(22 downto 0)<=ftmp(49 downto 27);
          else
            OUTPUT(22 downto 0)<=ftmp(48 downto 26);
          end if;
        end if;
      end if;
    end if;
  end if;
end process;


end FLOAT_SQRT_ARCHTECT;

