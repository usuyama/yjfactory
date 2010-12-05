def count_instruct(assembly)
  h = Hash.new
  open(assembly) { |file|
    while l = file.gets
      unless /^[^:]*:/ =~ l
        ope = l.scan(/\t(\S+).*/)[0][0]
        if h.has_key? ope
          h[ope] += 1
        else
          h[ope] = 1
        end
      end
    end
  }
  h.to_a.sort{|a, b|
    (b[1] <=> a[1]) * 2 + (a[0] <=> b[0])
  }
end

assembly = ARGV[0]

unless ARGV[0]
  print "usage: ruby count_inst.rb assembly"
  exit
end

list = count_instruct(assembly)
list.each do |i|
  printf "%s\t: %d\n", i[0], i[1]
end

