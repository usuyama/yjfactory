signal latency: std_logic_vector(3 downto 0);

fpe_req= '1' when opcode= else '0';
latency <= "" when opcode= else

fp1clk<= '1' when fpr_we_sig='1' and opcode/=fsqrt and opcode/=fdiv else '0';
latency<= "1111" when opcode=fsqrt else -- 17clock
          "111" when opcode=fdiv else --11 clock
          "00000"
--         opcode=fadd or opcode= fsub or opcode=fmul or opcode=movi2f or opcode=floor or opcode=itof or opcode=movf or opcode=negf or opcode=absf or opcode=floor
fpu_busy_sig <= '1' when fpu_req='1' and count/=0 else '0';


process(clk)
  begin
  if rising_edge(clk) then
    if count=1 then
      fp_we<='1';
      conut<=0;
    elsif count/=0 then
      count <= count-1;
    end if;
  end if;
end process;

fpu_wait <= FPU_REQ='1' and count/=0;

    
