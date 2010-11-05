require "shell"

fullname = ARGV[0]
program_name = fullname[0..fullname.length-4]
sh = Shell.cd "."

unless system "../min-caml --noprint " + program_name
  print "XXX compile failed\n"
else
  system "cat " + "../../../lib/libmin.s >> " + program_name + ".s"
  system "cp " + program_name + ".s ../../../simulater/"
  sh.cd "../../../simulater/"
  print "###assembly###\n"
  p sh.cat program_name + ".s"
  print "###assembler###\n"
  unless sh.transact{system "java", "Assembler", program_name + ".s", program_name}
    print "XXX assemle failed\n"
  else
    print "###simulater###\n"
    system "rm outlog"
    system "touch dummy"
    unless system "../../../simulater/guitocui/simulator o ../../../simulater/" + program_name + " dummy"
      print "XXX simulate failed\n"
    else
      print "###output###\n"
      system "cat outlog"
    end
  end
end
