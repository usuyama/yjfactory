# -*- coding: utf-8 -*-
require "shell"

unless ARGV[0]
  print "usage: ruby assemble.rb program\n"
  exit
end
fullname = ARGV[0]
program_name = File::basename(fullname, '.ml')
without_ext = fullname[0..fullname.length-4]
# コピーして、ライブラリ関数をリンクする
system "cat " + "../../../lib/lib.ml " + without_ext + ".ml > " + without_ext + "_.ml"
without_ext = without_ext + "_"

sh = Shell.cd "."
unless ARGV[1] || (system "../min-caml --noprint " + without_ext)
  print "XXX compile failed\n"
else
  system "cat " + "../../../lib/libmin.s >> " + without_ext + ".s"
  system "cp " + without_ext + ".s ../../../simulater/"
  print "###assembly###\n"
  p sh.cat without_ext + ".s"
  sh.cd "../../../simulater/"
  print "###assembler###\n"
  unless sh.transact{system "java", "Assembler", program_name + "_.s", program_name}
    print "XXX assemle failed\n"
  else
    system "cp ../../../simulater/" + program_name + " " + without_ext
    print "###simulater###\n"
    system "rm -f outlog"
    unless system "../../../simulater/guitocui/simulator o ../../../simulater/" + program_name + " sld/contest.sld"
      print "XXX simulate failed\n"
    else
      print "###output###\n"
      system "cat outlog"
    end
  end
end
