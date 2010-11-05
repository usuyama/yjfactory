# -*- coding: utf-8 -*-
require "shell"
$stdout_sv = STDOUT.dup          # STDOUT を保存
STDERR.reopen("output/errlog", "w")
STDOUT.reopen("output/tmplog", "w")

def check(program_name)
  open("output/" + program_name + ".output") {|file|
    while l = file.gets
      if l.to_i != 1
        return false
      end
    end
  }
  return true
end

def display(str)
  STDOUT.reopen($stdout_sv)        # 元に戻す
  print str
  STDOUT.reopen("output/tmplog", "a")       # STDOUT を /tmp/foo にリダイレクト
end


ARGV.each do |fullname| 
  program_name = fullname[0..fullname.length-4]
  sh = Shell.cd "."
  display "### " + program_name + " => "
  unless system "../min-caml --noprint " + program_name
    display "compile error"
  else
    unless system "cat " + "../../../lib/libmin.s >> " + program_name + ".s"
      display "cat error"
    else
      system "cp " + program_name + ".s ../../../simulater/"
      sh.cd "../../../simulater/"
      unless (sh.transact{system "java", "Assembler", program_name + ".s", program_name})
        display "assemler error"
      else
        system "rm -f outlog"
        system "touch dummy"
        if system "../../../simulater/guitocui/simulator o ../../../simulater/" + program_name + " dummy"
          system "cp outlog output/" + program_name + ".output"
          if check program_name
            display "sucess!\n"
          else
            display "[XXX] fail..!\n"
          end
        else
          display "simulator error\n"
        end
      end
    end
  end
end
