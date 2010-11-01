/********************************************************************************
** Form generated from reading ui file 'hogehoge.ui'
**
** Created: Mon Nov 1 12:18:38 2010
**      by: Qt User Interface Compiler version 4.5.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
********************************************************************************/

#ifndef UI_HOGEHOGE_H
#define UI_HOGEHOGE_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QFrame>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QPlainTextEdit>

QT_BEGIN_NAMESPACE

class Ui_hogehoge
{
public:
    QHBoxLayout *horizontalLayout;
    QPlainTextEdit *instruction;

    void setupUi(QFrame *hogehoge)
    {
        if (hogehoge->objectName().isEmpty())
            hogehoge->setObjectName(QString::fromUtf8("hogehoge"));
        hogehoge->resize(146, 134);
        hogehoge->setFrameShape(QFrame::StyledPanel);
        hogehoge->setFrameShadow(QFrame::Raised);
        horizontalLayout = new QHBoxLayout(hogehoge);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        instruction = new QPlainTextEdit(hogehoge);
        instruction->setObjectName(QString::fromUtf8("instruction"));

        horizontalLayout->addWidget(instruction);


        retranslateUi(hogehoge);

        QMetaObject::connectSlotsByName(hogehoge);
    } // setupUi

    void retranslateUi(QFrame *hogehoge)
    {
        hogehoge->setWindowTitle(QApplication::translate("hogehoge", "Frame", 0, QApplication::UnicodeUTF8));
        Q_UNUSED(hogehoge);
    } // retranslateUi

};

namespace Ui {
    class hogehoge: public Ui_hogehoge {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_HOGEHOGE_H
