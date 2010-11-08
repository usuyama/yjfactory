#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "parser.h"
#include "inst_info.h"
#include "hogehoge.h"

using namespace std;

int main(int argc, char* argv[]){
  if(argc < 3){
    cout << "enter input machine code and sldfile\n";
    return 0;
  }

  parser par;

  if(argc==4){
    hogehoge sim(argv[3]);
    if(strcmp(argv[1],"o")==0){
      if(par.parse(sim.inst_mem, argv[2]) == -1)
	exit(1);
      sim.doInst(0);
    }
  }

  else{
    int c = 1;
    string option;
    hogehoge sim(argv[2]);

    if(par.parse(sim.inst_mem, argv[1]) == -1)
      exit(1);
    while(1){
      cout << "simulator option: ";
      cin >> option;

   if(option=="e"){
      if(!sim.get_runall()){
	sim.doInst(c);
      }
      else
	sim.doInst(0);
    }
    else if(option == "step"){
      if(sim.get_runall()){
	sim.set_runall(false);
	cout << "do X step :";
	cin >> c;
      }
      else
	sim.set_runall(true);
    }/*
    else if(option == "break"){
      int b;
      cout << "break point :";
      cin >> b;
      //	sim.setbp(b);
      }*/
    else if(option == "r"){
      sim.print_regs();
      sim.getPC();
      sim.print_maxsp();
    }
    else if(option == "f"){
      sim.print_fpr();
    }
    else if(option == "m"){
      int n;
      cout << "enter address: ";
      cin >> n;
      sim.print_mem(n);
    }
    else if(option == "exit"){
      exit(0);
    }
    else{
      cout << "usage\n" 
	   << "run: run program to the next break point\n"
	   << "exit: exit\n"
	   << "step: change step mode\n"
	   << "r: print register\n"
	   << "m: print memory\n";
    }
    }
}

  return 0;
}
    
    


