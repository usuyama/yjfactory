if ARGV[1].nil?
  puts "ruby del_lable.rb in.s out.s"
end
ass_file = ARGV[0]
f = open(ass_file)
ass = f.read
f.close
output = ""
ass.each_line do |l|
  unless /^[^:]*:/ =~ l
    output << l
  end
end
out_stream = File.open(ARGV[1], "w")
out_stream.write(output)
out_stream.close

