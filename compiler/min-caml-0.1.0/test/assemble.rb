require "shell"

fullname = ARGV[0]
program_name = fullname[0..fullname.length-4]
sh = Shell.cd "."

system "../min-caml " + program_name
system "cat " + "../../../lib/lib.s ../../../lib/io.s >> " + program_name + ".s"
system "cp " + program_name + ".s ../../../simulater/"
sh.cd "../../../simulater/"
print "###assembly###\n"
p sh.cat program_name + ".s"
print "###assembler###\n"
p sh.transact{system "java", "Assembler", program_name + ".s", program_name}
print "###simulater###\n"
system "rm outlog"
system "../../../simulater/guitocui/simulater o ../../../simulater/" + program_name
print "###output###\n"
system "cat outlog"
