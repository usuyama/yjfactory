# -*- coding: utf-8 -*-
#"11001000000111100000000000000000",     --0
require "shell"

$header = <<'EOS'
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity PROM is

  port (
    clka  : in  std_logic;
--    wea   : in  std_logic_vector(0 downto 0);
    addra : in  std_logic_vector(6 downto 0);
--    dina  : in  std_logic_vector(31 downto 0);
    douta : out std_logic_vector(31 downto 0));

end PROM;

architecture R_rom of PROM is

EOS

$footer = <<'EOS'

);

signal shortened : std_logic_vector(6 downto 0):=(others=>'0');
begin  -- R_rom
  shortened<=addra(6 downto 0);
    douta<=rom(conv_integer(shortened));
end R_rom;
EOS


def write_with_assembly(assembly_file, binary_file, output_file)
  output = $header
  assembly_current_count = 1
  binary_current_count = 1
  f = open(assembly_file)
  assembly = f.read
  f.close
  binary_stream = open(binary_file)
  assembly_linecount = assembly.count("\n")
  output << "type rom_type is array (0 to "
  output << (binary_stream.read.count("\n") - 1).to_s
  output << ") of std_logic_vector(31 downto 0);\n  constant rom : rom_type:=(\n"
  binary_stream.close
  binary_stream = open(binary_file)

  assembly.each_line do |l|
    if /^[^:]*:/ =~ l
      output << "\t-- " +  l
    else
      binary_currentline = binary_stream.readline.delete! "\n"
      output << '"' + binary_currentline + '"'
      if assembly_linecount != assembly_current_count-1 #最終行以外
        output << ","
      end
      output << "\t-- " + (binary_current_count - 1).to_s + ": " + l
      binary_current_count += 1
    end
    assembly_current_count += 1
  end
  output << $footer
  out_stream = File.open(output_file, "w")
  out_stream.write(output)
  out_stream.close
end

#start
output = ARGV[1]
assembly = ARGV[0]
program_name = File::basename(assembly, '.s')

sh = Shell.cd "."
sh.cd "../../../simulater/"
system "cp " + assembly + " ../../../simulater/"
sh.system("java", "Assembler", program_name + ".s", program_name) | sh.cat > STDOUT
system "cp ../../../simulater/" + program_name + " ."
binary = program_name

unless ARGV[0]
  print "usage: ruby gen_testrom_from_assembly.rb assembly_file output"
  exit
end

write_with_assembly assembly, binary, output
