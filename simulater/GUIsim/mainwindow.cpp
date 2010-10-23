#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QtCore/QFile>
#include <iostream>
#include <QString>



MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    ui->tableWidget->setShowGrid(true);
            std::cout << "hogehoge\n";

    for(int i=0;i<32;i++){
        items[i] =QTableWidgetItem(QString::number(0));
        ui->tableWidget->setItem(i,0,&items[i]);
        }
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::changeStep(){
    if(ui->stepExe->isChecked())
        sim.set_runall(false);
    else
        sim.set_runall(true);
}

void specifySteps(){


}

void MainWindow::loadProgram(){
    std::cout<<"loadProgramm called" << std::endl;
    QString program = (ui->lineEdit->text());
    if(par.parse(sim.inst_mem, (program.toStdString()).c_str()) == -1){
        sim.ready = false;
        ui->messageBuff->insertPlainText("cannot open ");
        ui->messageBuff->insertPlainText(program);
        return;
    }
    sim.ready = true;
    sim.setPC(0);
 }


void MainWindow::runSimulation(){
 int steps=1;
 bool ok;
    if(!sim.ready){
        ui->messageBuff->insertPlainText("please load programm\n");
        return;
    }
    if(ui->stepExe->isChecked()){
        steps=(ui->steps->text()).toInt(&ok,10);
        if(!ok){
            ui->messageBuff->insertPlainText("step count is invalid\n");
            return;
        }
    }

    sim.doInst(steps);
    for(int i=0;i<32;i++){
        items[i].setData(Qt::EditRole, QString::number(sim.regs[i]));
        //items[i]=QTableWidgetItem(QString::number(sim.regs[i]));
        //ui->tableWidget->setItem(i,0,&items[i]);
}
}
