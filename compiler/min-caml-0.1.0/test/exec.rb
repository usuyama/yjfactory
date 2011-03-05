# -*- coding: utf-8 -*-
require "shell"

unless ARGV[0]
  print "usage: ruby assemble.rb program\n"
  exit
end
unless File.exists? ARGV[0]
  raise "file not found : " + ARGV[0]
end

fullname = ARGV[0]
program_name = File::basename(fullname, '.ml')
without_ext = fullname[0..fullname.length-4]

#init
system "rm -f " + without_ext + "_.ml"
system "rm -f " + without_ext + "_.s"
system "rm -f " + without_ext + ".s"
system "rm -f " + without_ext

# コピーして、ライブラリ関数をリンクする
system "cat " + "../../../lib/lib.ml " + without_ext + ".ml > " + without_ext + "_.ml"
sh = Shell.cd "."
unless ARGV[1]
  system "../min-caml --noprint -inline 30 " + without_ext + "_"
  system "cat " + without_ext + "_.s ../../../lib/libmin.s > " + without_ext + ".s"
end
raise "compile failed" unless File.exists? (without_ext + "_.s")

system "rm -f " + without_ext + "_.ml"
system "rm -f " + without_ext + "_.s"
system "cp " + without_ext + ".s ../../../simulater/"
print "###assembly###\n"
p sh.cat without_ext + ".s"
sh.cd "../../../simulater/"
print "###assembler###\n"
sh.transact { sh.system("java", "Assembler", program_name + ".s", program_name) | sh.cat > STDOUT }
raise "assemble failed" unless File.exists? ("../../../simulater/" + program_name)
#    system "cp ../../../simulater/" + program_name + " " + without_ext
print "###simulater###\n"
system "rm -f outlog.ppm"
system "../../../simulater/newsim/simulator o ../../../simulater/" + program_name + " sld/contest.sld"
print "###output###\n"
system "cat outlog.ppm"
