/********************************************************************************
** Form generated from reading ui file 'mainwindow.ui'
**
** Created: Mon Nov 1 12:18:38 2010
**      by: Qt User Interface Compiler version 4.5.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QCheckBox>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QLineEdit>
#include <QtGui/QMainWindow>
#include <QtGui/QMenuBar>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QSplitter>
#include <QtGui/QStatusBar>
#include <QtGui/QTableWidget>
#include <QtGui/QTextEdit>
#include <QtGui/QToolBar>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>
#include "hogehoge.h"

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QVBoxLayout *verticalLayout_3;
    QSplitter *splitter;
    QWidget *layoutWidget;
    QHBoxLayout *horizontalLayout_6;
    QVBoxLayout *verticalLayout_2;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QLineEdit *lineEdit;
    QPushButton *loadButton;
    QHBoxLayout *horizontalLayout_4;
    QHBoxLayout *horizontalLayout_2;
    QCheckBox *stepExe;
    QLineEdit *steps;
    QPushButton *runButton;
    hogehoge *frame;
    QHBoxLayout *horizontalLayout_3;
    QSpacerItem *horizontalSpacer;
    QTableWidget *tableWidget;
    QTableWidget *tableWidget_2;
    QSpacerItem *horizontalSpacer_2;
    QWidget *layoutWidget1;
    QHBoxLayout *horizontalLayout_5;
    QLabel *label;
    QTextEdit *messageBuff;
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(1242, 810);
        QSizePolicy sizePolicy(QSizePolicy::MinimumExpanding, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(MainWindow->sizePolicy().hasHeightForWidth());
        MainWindow->setSizePolicy(sizePolicy);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QString::fromUtf8("centralWidget"));
        verticalLayout_3 = new QVBoxLayout(centralWidget);
        verticalLayout_3->setSpacing(6);
        verticalLayout_3->setMargin(11);
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        splitter = new QSplitter(centralWidget);
        splitter->setObjectName(QString::fromUtf8("splitter"));
        splitter->setOrientation(Qt::Vertical);
        layoutWidget = new QWidget(splitter);
        layoutWidget->setObjectName(QString::fromUtf8("layoutWidget"));
        horizontalLayout_6 = new QHBoxLayout(layoutWidget);
        horizontalLayout_6->setSpacing(6);
        horizontalLayout_6->setMargin(11);
        horizontalLayout_6->setObjectName(QString::fromUtf8("horizontalLayout_6"));
        horizontalLayout_6->setContentsMargins(0, 0, 0, 0);
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setSpacing(6);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setSpacing(6);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(6);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        lineEdit = new QLineEdit(layoutWidget);
        lineEdit->setObjectName(QString::fromUtf8("lineEdit"));

        horizontalLayout->addWidget(lineEdit);

        loadButton = new QPushButton(layoutWidget);
        loadButton->setObjectName(QString::fromUtf8("loadButton"));

        horizontalLayout->addWidget(loadButton);


        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setSpacing(6);
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setSpacing(6);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        stepExe = new QCheckBox(layoutWidget);
        stepExe->setObjectName(QString::fromUtf8("stepExe"));

        horizontalLayout_2->addWidget(stepExe);

        steps = new QLineEdit(layoutWidget);
        steps->setObjectName(QString::fromUtf8("steps"));
        steps->setMaximumSize(QSize(129, 28));

        horizontalLayout_2->addWidget(steps);


        horizontalLayout_4->addLayout(horizontalLayout_2);

        runButton = new QPushButton(layoutWidget);
        runButton->setObjectName(QString::fromUtf8("runButton"));
        runButton->setIconSize(QSize(16, 16));

        horizontalLayout_4->addWidget(runButton);


        verticalLayout->addLayout(horizontalLayout_4);

        verticalLayout->setStretch(0, 1);
        verticalLayout->setStretch(1, 1);

        verticalLayout_2->addLayout(verticalLayout);

        frame = new hogehoge(layoutWidget);
        frame->setObjectName(QString::fromUtf8("frame"));
        QSizePolicy sizePolicy1(QSizePolicy::MinimumExpanding, QSizePolicy::MinimumExpanding);
        sizePolicy1.setHorizontalStretch(1);
        sizePolicy1.setVerticalStretch(20);
        sizePolicy1.setHeightForWidth(frame->sizePolicy().hasHeightForWidth());
        frame->setSizePolicy(sizePolicy1);
        frame->setFrameShape(QFrame::StyledPanel);
        frame->setFrameShadow(QFrame::Raised);

        verticalLayout_2->addWidget(frame);


        horizontalLayout_6->addLayout(verticalLayout_2);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setSpacing(6);
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        horizontalSpacer = new QSpacerItem(158, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer);

        tableWidget = new QTableWidget(layoutWidget);
        if (tableWidget->columnCount() < 1)
            tableWidget->setColumnCount(1);
        QTableWidgetItem *__qtablewidgetitem = new QTableWidgetItem();
        tableWidget->setHorizontalHeaderItem(0, __qtablewidgetitem);
        if (tableWidget->rowCount() < 32)
            tableWidget->setRowCount(32);
        QTableWidgetItem *__qtablewidgetitem1 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(0, __qtablewidgetitem1);
        QTableWidgetItem *__qtablewidgetitem2 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(1, __qtablewidgetitem2);
        QTableWidgetItem *__qtablewidgetitem3 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(2, __qtablewidgetitem3);
        QTableWidgetItem *__qtablewidgetitem4 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(3, __qtablewidgetitem4);
        QTableWidgetItem *__qtablewidgetitem5 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(4, __qtablewidgetitem5);
        QTableWidgetItem *__qtablewidgetitem6 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(5, __qtablewidgetitem6);
        QTableWidgetItem *__qtablewidgetitem7 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(6, __qtablewidgetitem7);
        QTableWidgetItem *__qtablewidgetitem8 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(7, __qtablewidgetitem8);
        QTableWidgetItem *__qtablewidgetitem9 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(8, __qtablewidgetitem9);
        QTableWidgetItem *__qtablewidgetitem10 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(9, __qtablewidgetitem10);
        QTableWidgetItem *__qtablewidgetitem11 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(10, __qtablewidgetitem11);
        QTableWidgetItem *__qtablewidgetitem12 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(11, __qtablewidgetitem12);
        QTableWidgetItem *__qtablewidgetitem13 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(12, __qtablewidgetitem13);
        QTableWidgetItem *__qtablewidgetitem14 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(13, __qtablewidgetitem14);
        QTableWidgetItem *__qtablewidgetitem15 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(14, __qtablewidgetitem15);
        QTableWidgetItem *__qtablewidgetitem16 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(15, __qtablewidgetitem16);
        QTableWidgetItem *__qtablewidgetitem17 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(16, __qtablewidgetitem17);
        QTableWidgetItem *__qtablewidgetitem18 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(17, __qtablewidgetitem18);
        QTableWidgetItem *__qtablewidgetitem19 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(18, __qtablewidgetitem19);
        QTableWidgetItem *__qtablewidgetitem20 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(19, __qtablewidgetitem20);
        QTableWidgetItem *__qtablewidgetitem21 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(20, __qtablewidgetitem21);
        QTableWidgetItem *__qtablewidgetitem22 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(21, __qtablewidgetitem22);
        QTableWidgetItem *__qtablewidgetitem23 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(22, __qtablewidgetitem23);
        QTableWidgetItem *__qtablewidgetitem24 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(23, __qtablewidgetitem24);
        QTableWidgetItem *__qtablewidgetitem25 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(24, __qtablewidgetitem25);
        QTableWidgetItem *__qtablewidgetitem26 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(25, __qtablewidgetitem26);
        QTableWidgetItem *__qtablewidgetitem27 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(26, __qtablewidgetitem27);
        QTableWidgetItem *__qtablewidgetitem28 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(27, __qtablewidgetitem28);
        QTableWidgetItem *__qtablewidgetitem29 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(28, __qtablewidgetitem29);
        QTableWidgetItem *__qtablewidgetitem30 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(29, __qtablewidgetitem30);
        QTableWidgetItem *__qtablewidgetitem31 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(30, __qtablewidgetitem31);
        QTableWidgetItem *__qtablewidgetitem32 = new QTableWidgetItem();
        tableWidget->setVerticalHeaderItem(31, __qtablewidgetitem32);
        tableWidget->setObjectName(QString::fromUtf8("tableWidget"));
        QSizePolicy sizePolicy2(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy2.setHorizontalStretch(1);
        sizePolicy2.setVerticalStretch(1);
        sizePolicy2.setHeightForWidth(tableWidget->sizePolicy().hasHeightForWidth());
        tableWidget->setSizePolicy(sizePolicy2);
        tableWidget->setAutoScrollMargin(32);
        tableWidget->setRowCount(32);
        tableWidget->setColumnCount(1);
        tableWidget->horizontalHeader()->setDefaultSectionSize(120);
        tableWidget->verticalHeader()->setDefaultSectionSize(20);
        tableWidget->verticalHeader()->setMinimumSectionSize(18);

        horizontalLayout_3->addWidget(tableWidget);

        tableWidget_2 = new QTableWidget(layoutWidget);
        if (tableWidget_2->columnCount() < 1)
            tableWidget_2->setColumnCount(1);
        QTableWidgetItem *__qtablewidgetitem33 = new QTableWidgetItem();
        tableWidget_2->setHorizontalHeaderItem(0, __qtablewidgetitem33);
        if (tableWidget_2->rowCount() < 32)
            tableWidget_2->setRowCount(32);
        QTableWidgetItem *__qtablewidgetitem34 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(0, __qtablewidgetitem34);
        QTableWidgetItem *__qtablewidgetitem35 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(1, __qtablewidgetitem35);
        QTableWidgetItem *__qtablewidgetitem36 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(2, __qtablewidgetitem36);
        QTableWidgetItem *__qtablewidgetitem37 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(3, __qtablewidgetitem37);
        QTableWidgetItem *__qtablewidgetitem38 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(4, __qtablewidgetitem38);
        QTableWidgetItem *__qtablewidgetitem39 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(5, __qtablewidgetitem39);
        QTableWidgetItem *__qtablewidgetitem40 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(6, __qtablewidgetitem40);
        QTableWidgetItem *__qtablewidgetitem41 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(7, __qtablewidgetitem41);
        QTableWidgetItem *__qtablewidgetitem42 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(8, __qtablewidgetitem42);
        QTableWidgetItem *__qtablewidgetitem43 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(9, __qtablewidgetitem43);
        QTableWidgetItem *__qtablewidgetitem44 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(10, __qtablewidgetitem44);
        QTableWidgetItem *__qtablewidgetitem45 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(11, __qtablewidgetitem45);
        QTableWidgetItem *__qtablewidgetitem46 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(12, __qtablewidgetitem46);
        QTableWidgetItem *__qtablewidgetitem47 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(13, __qtablewidgetitem47);
        QTableWidgetItem *__qtablewidgetitem48 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(14, __qtablewidgetitem48);
        QTableWidgetItem *__qtablewidgetitem49 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(15, __qtablewidgetitem49);
        QTableWidgetItem *__qtablewidgetitem50 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(16, __qtablewidgetitem50);
        QTableWidgetItem *__qtablewidgetitem51 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(17, __qtablewidgetitem51);
        QTableWidgetItem *__qtablewidgetitem52 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(18, __qtablewidgetitem52);
        QTableWidgetItem *__qtablewidgetitem53 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(19, __qtablewidgetitem53);
        QTableWidgetItem *__qtablewidgetitem54 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(20, __qtablewidgetitem54);
        QTableWidgetItem *__qtablewidgetitem55 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(21, __qtablewidgetitem55);
        QTableWidgetItem *__qtablewidgetitem56 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(22, __qtablewidgetitem56);
        QTableWidgetItem *__qtablewidgetitem57 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(23, __qtablewidgetitem57);
        QTableWidgetItem *__qtablewidgetitem58 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(24, __qtablewidgetitem58);
        QTableWidgetItem *__qtablewidgetitem59 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(25, __qtablewidgetitem59);
        QTableWidgetItem *__qtablewidgetitem60 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(26, __qtablewidgetitem60);
        QTableWidgetItem *__qtablewidgetitem61 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(27, __qtablewidgetitem61);
        QTableWidgetItem *__qtablewidgetitem62 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(28, __qtablewidgetitem62);
        QTableWidgetItem *__qtablewidgetitem63 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(29, __qtablewidgetitem63);
        QTableWidgetItem *__qtablewidgetitem64 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(30, __qtablewidgetitem64);
        QTableWidgetItem *__qtablewidgetitem65 = new QTableWidgetItem();
        tableWidget_2->setVerticalHeaderItem(31, __qtablewidgetitem65);
        tableWidget_2->setObjectName(QString::fromUtf8("tableWidget_2"));
        sizePolicy2.setHeightForWidth(tableWidget_2->sizePolicy().hasHeightForWidth());
        tableWidget_2->setSizePolicy(sizePolicy2);
        tableWidget_2->setAutoScrollMargin(32);
        tableWidget_2->setRowCount(32);
        tableWidget_2->setColumnCount(1);
        tableWidget_2->horizontalHeader()->setDefaultSectionSize(120);
        tableWidget_2->verticalHeader()->setDefaultSectionSize(20);
        tableWidget_2->verticalHeader()->setMinimumSectionSize(18);

        horizontalLayout_3->addWidget(tableWidget_2);

        horizontalSpacer_2 = new QSpacerItem(208, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer_2);

        horizontalLayout_3->setStretch(0, 1);
        horizontalLayout_3->setStretch(1, 2);
        horizontalLayout_3->setStretch(2, 2);
        horizontalLayout_3->setStretch(3, 1);

        horizontalLayout_6->addLayout(horizontalLayout_3);

        horizontalLayout_6->setStretch(0, 1);
        horizontalLayout_6->setStretch(1, 3);
        splitter->addWidget(layoutWidget);
        layoutWidget1 = new QWidget(splitter);
        layoutWidget1->setObjectName(QString::fromUtf8("layoutWidget1"));
        horizontalLayout_5 = new QHBoxLayout(layoutWidget1);
        horizontalLayout_5->setSpacing(6);
        horizontalLayout_5->setMargin(11);
        horizontalLayout_5->setObjectName(QString::fromUtf8("horizontalLayout_5"));
        horizontalLayout_5->setContentsMargins(0, 0, 0, 0);
        label = new QLabel(layoutWidget1);
        label->setObjectName(QString::fromUtf8("label"));

        horizontalLayout_5->addWidget(label);

        messageBuff = new QTextEdit(layoutWidget1);
        messageBuff->setObjectName(QString::fromUtf8("messageBuff"));
        QSizePolicy sizePolicy3(QSizePolicy::Expanding, QSizePolicy::Preferred);
        sizePolicy3.setHorizontalStretch(0);
        sizePolicy3.setVerticalStretch(0);
        sizePolicy3.setHeightForWidth(messageBuff->sizePolicy().hasHeightForWidth());
        messageBuff->setSizePolicy(sizePolicy3);

        horizontalLayout_5->addWidget(messageBuff);

        splitter->addWidget(layoutWidget1);

        verticalLayout_3->addWidget(splitter);

        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QString::fromUtf8("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 1242, 26));
        MainWindow->setMenuBar(menuBar);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QString::fromUtf8("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QString::fromUtf8("statusBar"));
        MainWindow->setStatusBar(statusBar);

        retranslateUi(MainWindow);
        QObject::connect(runButton, SIGNAL(clicked()), MainWindow, SLOT(runSimulation()));
        QObject::connect(loadButton, SIGNAL(clicked()), MainWindow, SLOT(loadProgram()));

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", 0, QApplication::UnicodeUTF8));
        loadButton->setText(QApplication::translate("MainWindow", "load", 0, QApplication::UnicodeUTF8));
        stepExe->setText(QApplication::translate("MainWindow", "step exe", 0, QApplication::UnicodeUTF8));
        steps->setInputMask(QString());
        runButton->setText(QApplication::translate("MainWindow", "run", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem = tableWidget->horizontalHeaderItem(0);
        ___qtablewidgetitem->setText(QApplication::translate("MainWindow", "contents", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem1 = tableWidget->verticalHeaderItem(0);
        ___qtablewidgetitem1->setText(QApplication::translate("MainWindow", "r0", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem2 = tableWidget->verticalHeaderItem(1);
        ___qtablewidgetitem2->setText(QApplication::translate("MainWindow", "r1", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem3 = tableWidget->verticalHeaderItem(2);
        ___qtablewidgetitem3->setText(QApplication::translate("MainWindow", "r2", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem4 = tableWidget->verticalHeaderItem(3);
        ___qtablewidgetitem4->setText(QApplication::translate("MainWindow", "r3", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem5 = tableWidget->verticalHeaderItem(4);
        ___qtablewidgetitem5->setText(QApplication::translate("MainWindow", "r4", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem6 = tableWidget->verticalHeaderItem(5);
        ___qtablewidgetitem6->setText(QApplication::translate("MainWindow", "r5", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem7 = tableWidget->verticalHeaderItem(6);
        ___qtablewidgetitem7->setText(QApplication::translate("MainWindow", "r6", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem8 = tableWidget->verticalHeaderItem(7);
        ___qtablewidgetitem8->setText(QApplication::translate("MainWindow", "r7", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem9 = tableWidget->verticalHeaderItem(8);
        ___qtablewidgetitem9->setText(QApplication::translate("MainWindow", "r8", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem10 = tableWidget->verticalHeaderItem(9);
        ___qtablewidgetitem10->setText(QApplication::translate("MainWindow", "r9", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem11 = tableWidget->verticalHeaderItem(10);
        ___qtablewidgetitem11->setText(QApplication::translate("MainWindow", "r10", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem12 = tableWidget->verticalHeaderItem(11);
        ___qtablewidgetitem12->setText(QApplication::translate("MainWindow", "r11", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem13 = tableWidget->verticalHeaderItem(12);
        ___qtablewidgetitem13->setText(QApplication::translate("MainWindow", "r12", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem14 = tableWidget->verticalHeaderItem(13);
        ___qtablewidgetitem14->setText(QApplication::translate("MainWindow", "r13", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem15 = tableWidget->verticalHeaderItem(14);
        ___qtablewidgetitem15->setText(QApplication::translate("MainWindow", "r14", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem16 = tableWidget->verticalHeaderItem(15);
        ___qtablewidgetitem16->setText(QApplication::translate("MainWindow", "r15", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem17 = tableWidget->verticalHeaderItem(16);
        ___qtablewidgetitem17->setText(QApplication::translate("MainWindow", "r16", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem18 = tableWidget->verticalHeaderItem(17);
        ___qtablewidgetitem18->setText(QApplication::translate("MainWindow", "r17", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem19 = tableWidget->verticalHeaderItem(18);
        ___qtablewidgetitem19->setText(QApplication::translate("MainWindow", "r18", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem20 = tableWidget->verticalHeaderItem(19);
        ___qtablewidgetitem20->setText(QApplication::translate("MainWindow", "r19", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem21 = tableWidget->verticalHeaderItem(20);
        ___qtablewidgetitem21->setText(QApplication::translate("MainWindow", "r20", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem22 = tableWidget->verticalHeaderItem(21);
        ___qtablewidgetitem22->setText(QApplication::translate("MainWindow", "r21", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem23 = tableWidget->verticalHeaderItem(22);
        ___qtablewidgetitem23->setText(QApplication::translate("MainWindow", "r22", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem24 = tableWidget->verticalHeaderItem(23);
        ___qtablewidgetitem24->setText(QApplication::translate("MainWindow", "r23", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem25 = tableWidget->verticalHeaderItem(24);
        ___qtablewidgetitem25->setText(QApplication::translate("MainWindow", "r24", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem26 = tableWidget->verticalHeaderItem(25);
        ___qtablewidgetitem26->setText(QApplication::translate("MainWindow", "r25", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem27 = tableWidget->verticalHeaderItem(26);
        ___qtablewidgetitem27->setText(QApplication::translate("MainWindow", "r26", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem28 = tableWidget->verticalHeaderItem(27);
        ___qtablewidgetitem28->setText(QApplication::translate("MainWindow", "r27", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem29 = tableWidget->verticalHeaderItem(28);
        ___qtablewidgetitem29->setText(QApplication::translate("MainWindow", "r28", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem30 = tableWidget->verticalHeaderItem(29);
        ___qtablewidgetitem30->setText(QApplication::translate("MainWindow", "r29", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem31 = tableWidget->verticalHeaderItem(30);
        ___qtablewidgetitem31->setText(QApplication::translate("MainWindow", "r30", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem32 = tableWidget->verticalHeaderItem(31);
        ___qtablewidgetitem32->setText(QApplication::translate("MainWindow", "r31", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem33 = tableWidget_2->horizontalHeaderItem(0);
        ___qtablewidgetitem33->setText(QApplication::translate("MainWindow", "contents", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem34 = tableWidget_2->verticalHeaderItem(0);
        ___qtablewidgetitem34->setText(QApplication::translate("MainWindow", "f0", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem35 = tableWidget_2->verticalHeaderItem(1);
        ___qtablewidgetitem35->setText(QApplication::translate("MainWindow", "f1", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem36 = tableWidget_2->verticalHeaderItem(2);
        ___qtablewidgetitem36->setText(QApplication::translate("MainWindow", "f2", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem37 = tableWidget_2->verticalHeaderItem(3);
        ___qtablewidgetitem37->setText(QApplication::translate("MainWindow", "f3", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem38 = tableWidget_2->verticalHeaderItem(4);
        ___qtablewidgetitem38->setText(QApplication::translate("MainWindow", "f4", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem39 = tableWidget_2->verticalHeaderItem(5);
        ___qtablewidgetitem39->setText(QApplication::translate("MainWindow", "f5", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem40 = tableWidget_2->verticalHeaderItem(6);
        ___qtablewidgetitem40->setText(QApplication::translate("MainWindow", "f6", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem41 = tableWidget_2->verticalHeaderItem(7);
        ___qtablewidgetitem41->setText(QApplication::translate("MainWindow", "f7", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem42 = tableWidget_2->verticalHeaderItem(8);
        ___qtablewidgetitem42->setText(QApplication::translate("MainWindow", "f8", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem43 = tableWidget_2->verticalHeaderItem(9);
        ___qtablewidgetitem43->setText(QApplication::translate("MainWindow", "f9", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem44 = tableWidget_2->verticalHeaderItem(10);
        ___qtablewidgetitem44->setText(QApplication::translate("MainWindow", "r10", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem45 = tableWidget_2->verticalHeaderItem(11);
        ___qtablewidgetitem45->setText(QApplication::translate("MainWindow", "r11", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem46 = tableWidget_2->verticalHeaderItem(12);
        ___qtablewidgetitem46->setText(QApplication::translate("MainWindow", "r12", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem47 = tableWidget_2->verticalHeaderItem(13);
        ___qtablewidgetitem47->setText(QApplication::translate("MainWindow", "r13", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem48 = tableWidget_2->verticalHeaderItem(14);
        ___qtablewidgetitem48->setText(QApplication::translate("MainWindow", "r14", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem49 = tableWidget_2->verticalHeaderItem(15);
        ___qtablewidgetitem49->setText(QApplication::translate("MainWindow", "r15", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem50 = tableWidget_2->verticalHeaderItem(16);
        ___qtablewidgetitem50->setText(QApplication::translate("MainWindow", "r16", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem51 = tableWidget_2->verticalHeaderItem(17);
        ___qtablewidgetitem51->setText(QApplication::translate("MainWindow", "r17", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem52 = tableWidget_2->verticalHeaderItem(18);
        ___qtablewidgetitem52->setText(QApplication::translate("MainWindow", "r18", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem53 = tableWidget_2->verticalHeaderItem(19);
        ___qtablewidgetitem53->setText(QApplication::translate("MainWindow", "r19", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem54 = tableWidget_2->verticalHeaderItem(20);
        ___qtablewidgetitem54->setText(QApplication::translate("MainWindow", "r20", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem55 = tableWidget_2->verticalHeaderItem(21);
        ___qtablewidgetitem55->setText(QApplication::translate("MainWindow", "r21", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem56 = tableWidget_2->verticalHeaderItem(22);
        ___qtablewidgetitem56->setText(QApplication::translate("MainWindow", "r22", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem57 = tableWidget_2->verticalHeaderItem(23);
        ___qtablewidgetitem57->setText(QApplication::translate("MainWindow", "r23", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem58 = tableWidget_2->verticalHeaderItem(24);
        ___qtablewidgetitem58->setText(QApplication::translate("MainWindow", "r24", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem59 = tableWidget_2->verticalHeaderItem(25);
        ___qtablewidgetitem59->setText(QApplication::translate("MainWindow", "r25", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem60 = tableWidget_2->verticalHeaderItem(26);
        ___qtablewidgetitem60->setText(QApplication::translate("MainWindow", "r26", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem61 = tableWidget_2->verticalHeaderItem(27);
        ___qtablewidgetitem61->setText(QApplication::translate("MainWindow", "r27", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem62 = tableWidget_2->verticalHeaderItem(28);
        ___qtablewidgetitem62->setText(QApplication::translate("MainWindow", "r28", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem63 = tableWidget_2->verticalHeaderItem(29);
        ___qtablewidgetitem63->setText(QApplication::translate("MainWindow", "r29", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem64 = tableWidget_2->verticalHeaderItem(30);
        ___qtablewidgetitem64->setText(QApplication::translate("MainWindow", "r30", 0, QApplication::UnicodeUTF8));
        QTableWidgetItem *___qtablewidgetitem65 = tableWidget_2->verticalHeaderItem(31);
        ___qtablewidgetitem65->setText(QApplication::translate("MainWindow", "r31", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("MainWindow", "message", 0, QApplication::UnicodeUTF8));
        Q_UNUSED(MainWindow);
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
