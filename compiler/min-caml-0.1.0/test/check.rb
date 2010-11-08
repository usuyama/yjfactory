# -*- coding: utf-8 -*-
require "shell"
$stdout_sv = STDOUT.dup          # STDOUT を保存
STDERR.reopen("output/errlog", "w")
STDOUT.reopen("output/tmplog", "w")

def check(program_name)
  open("output/" + program_name + ".output") { |file|
    while l = file.gets
      l.each_byte do |c|
        unless c = '1'[0] then
          return false
        end
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

Dir::glob("testcodes/*.ml").each do |fullname|
  program_name = File::basename(fullname, '.ml')
  without_ext = fullname[0..fullname.length-4]

  sh = Shell.cd "."
  display "### " + program_name + " => "
  unless system "../min-caml --noprint " + without_ext
    display "compile error\n"
  else
    unless system "cat " + "../../../lib/libmin.s >> " + without_ext + ".s"
      display "cat error"
    else
      system "cp " + without_ext + ".s ../../../simulater/"
      system "mv " + without_ext + ".s asm/"
      sh.cd "../../../simulater/"
      unless (sh.transact{system "java", "Assembler", program_name + ".s", program_name})
        display "assemler error\n"
      else
        system "rm -f outlog"
        if system "../../../simulater/guitocui/simulator o ../../../simulater/" + program_name + " sld/base.sld"
          system "mv outlog output/" + program_name + ".output"
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
