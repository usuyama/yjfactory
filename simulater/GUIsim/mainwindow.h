#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "hogehoge.h"
#include "parser.h"
#include <QTableWidgetItem>

namespace Ui {
    class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

public slots:
    void loadProgram();
    void runSimulation();
    //void changeStep();

private:
    Ui::MainWindow *ui;
    QTableWidgetItem items[32] ;
    //hogehoge   sim;
    parser par;
};

#endif // MAINWINDOW_H
