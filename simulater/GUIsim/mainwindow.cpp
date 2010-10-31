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
            //std::cout << "hogehoge\n";
            ui->tableWidget->setWindowFlags(Qt::SubWindow);
            ui->tableWidget_2->setWindowFlags(Qt::SubWindow);
            ui->tableWidget->show();
            ui->tableWidget_2->show();

    for(int i=0;i<32;i++){
        items[i] = QTableWidgetItem(QString::number(0));
        fp_items[i] = QTableWidgetItem(QString::number(0.01));
        ui->tableWidget->setItem(i,0,&items[i]);
        ui->tableWidget_2->setItem(i,0,&fp_items[i]);
        }
}

MainWindow::~MainWindow()
{
    delete ui;
}


/*
void MainWindow::changeStep(){
    if(ui->stepExe->isChecked())
        ui->frame->set_runall(false);
    else
        ui->frame->set_runall(true);
}

void specifySteps(){


}
*/

void MainWindow::loadProgram(){
    //std::cout<<"loadProgramm called" << std::endl;
    QString program = (ui->lineEdit->text());
    if(par.parse(ui->frame->inst_mem, (program.toStdString()).c_str()) == -1){
        ui->frame->ready = false;
        ui->messageBuff->insertPlainText("cannot open ");
        ui->messageBuff->insertPlainText(program);
        return;
    }
    for(int i=0;i<32;i++){
        items[i].setData(Qt::EditRole, QString::number(ui->frame->regs[i]));
        //std::cout<< (ui->frame->fpr) << std::endl;
        fp_items[i].setData(Qt::EditRole, QString::number(ui->frame->fpr[i]));
    }
    ui->frame->ready = true;
    ui->frame->setPC(0);
 }


void MainWindow::runSimulation(){
 int steps=1;
 bool ok;
    if(!ui->frame->ready){
        ui->messageBuff->insertPlainText("please load programm\n");
        return;
    }
    if(ui->stepExe->isChecked()){
        steps=(ui->steps->text()).toInt(&ok,10);
        if(!ok){
            ui->messageBuff->insertPlainText("step count is invalid\n");
            return;
        }
        ui->frame->set_runall(false);
    }
    else
        ui->frame->set_runall(true);

    ui->frame->doInst(steps);
    for(int i=0;i<32;i++){
         items[i].setData(Qt::EditRole, QString::number(ui->frame->regs[i]));
         fp_items[i].setData(Qt::EditRole, QString::number(ui->frame->fpr[i]));
        //items[i]=QTableWidgetItem(QString::number(sim.regs[i]));
        //ui->tableWidget->setItem(i,0,&items[i]);
}
}

