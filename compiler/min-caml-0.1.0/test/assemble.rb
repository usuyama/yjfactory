require "shell"

fullname = ARGV[0]
program_name = File::basename(fullname, '.ml')
sh = Shell.cd "."
without_ext = fullname[0..fullname.length-4]
unless system "../min-caml --noprint " + without_ext
  print "XXX compile failed\n"
else
  system "cat " + "../../../lib/libmin.s >> " + without_ext + ".s"
  system "cp " + without_ext + ".s ../../../simulater/"
  print "###assembly###\n"
  p sh.cat without_ext + ".s"
  sh.cd "../../../simulater/"
  print "###assembler###\n"
  unless sh.transact{system "java", "Assembler", program_name + ".s", program_name}
    print "XXX assemle failed\n"
  else
    print "###simulater###\n"
    system "rm outlog"
    unless system "../../../simulater/guitocui/simulator o ../../../simulater/" + program_name + " sld/base.sld"
      print "XXX simulate failed\n"
    else
      print "###output###\n"
      system "cat outlog"
    end
  end
end
