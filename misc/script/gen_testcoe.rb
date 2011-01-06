# -*- coding: utf-8 -*-
#"11001000000111100000000000000000",     --0

$header = <<'EOS'
memory_initialization_radix=2;
memory_initialization_vector=
EOS

def write_with_binary_only(binary_file, output_file)
  output = $header
  binary_current_count = 1
  f = open(binary_file)
  binary = f.read
  f.close
  binary_linecount = binary.count("\n")

  binary_stream = open(binary_file)

  binary.each_line do |l|
    l.delete! "\n"
    output << l
    if binary_linecount != binary_current_count #最終行以外
      output << ",\n"
    end
    binary_current_count += 1
  end
  output << ";\n"
  out_stream = File.open(output_file, "w")
  out_stream.write(output)
  out_stream.close
end

if ARGV[1].nil?
  puts "ruby gen_testcoe.rb binary output"
end
binary = ARGV[0]
output = ARGV[1]

write_with_binary_only binary, output
