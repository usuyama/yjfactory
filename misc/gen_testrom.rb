# -*- coding: utf-8 -*-
#"11001000000111100000000000000000",     --0

$header = <<'EOS'
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity PROM is

  port (
    clka  : in  std_logic;
--    wea   : in  std_logic_vector(0 downto 0);
    addra : in  std_logic_vector(31 downto 0);
--    dina  : in  std_logic_vector(31 downto 0);
    douta : out std_logic_vector(31 downto 0));

end PROM;

architecture R_rom of PROM is
type rom_type is array (0 to 34) of std_logic_vector(31 downto 0);
constant rom : rom_type:=(

EOS

$footer = <<'EOS'

);

signal shortened : std_logic_vector(5 downto 0):=(others=>'0');
begin  -- R_rom
  shortened<=addra(5 downto 0);
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
  assembly.each_line do |l|
    if /^[^:]*:/ =~ l
      output << "\t-- " +  l
    else
      binary_currentline = binary_stream.readline.delete! "\n"
      output << '"' + binary_currentline + '"'
      if assembly_linecount != assembly_current_count #最終行以外
        output << ","
      end
      output << "\t-- " + binary_current_count.to_s(16) + ": " + l
      binary_current_count += 1
    end
    assembly_current_count += 1
  end
  output << $footer
  out_stream = File.open(output_file, "w")
  out_stream.write(output)
  out_stream.close
end

def write_with_binary_only(binary_file, output_file)
  output = $header
  binary_current_count = 1
  f = open(binary_file)
  binary = f.read
  f.close
  binary_linecount = binary.count("\n")
  binary.each_line do |l|
    l.delete! "\n"
    output << '"' + l + '"'
    if binary_linecount != binary_current_count #最終行以外
      output << ","
    end
    output << "\t-- " + binary_current_count.to_s(16) + "\n"
    binary_current_count += 1
  end
  output << $footer
  out_stream = File.open(output_file, "w")
  out_stream.write(output)
  out_stream.close
end

binary = ARGV[0]
output = ARGV[1]
assembly = ARGV[2]

unless ARGV[0]
  print "usage: ruby gen_testrom.rb binary_file output_file [assembly_file]"
  exit
end

if assembly
  write_with_assembly assembly, binary, output
else
  write_with_binary_only binary, output
end
