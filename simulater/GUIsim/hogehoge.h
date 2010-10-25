#ifndef HOGEHOGE_H
#define HOGEHOGE_H

#include <QFrame>
#include "inst_info.h"


#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "parser.h"
#include "inst_info.h"

#define MEMSIZE 10000
#define INSTSIZE 10000
#define MSCOPE 10

namespace Ui {
    class hogehoge;
}

class hogehoge : public QFrame
{
    Q_OBJECT

public:
    explicit hogehoge(QWidget *parent = 0);
    ~hogehoge();

private:
    Ui::hogehoge *ui;

    private:
    int pc;
    //int steps;
    bool runall;

    void print_mem(int address);
    void print_regs();
    void print_regs(int index);

public:
    int regs[32];
    float fpr[32];
    inst_info inst_mem[INSTSIZE];
    int data_mem[MEMSIZE];
    bool ready;

    hogehoge();
    void setPC(int address);
    int get_regcont(int index);
    bool get_runall();
    void set_runall(bool flag);
    //void set_steps();
    //void get_steps();
    void doInst(int steps);
};

#endif // HOGEHOGE_H
