/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 6.8.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QPushButton *addIncomeButton;
    QPushButton *generateReportButton;
    QPushButton *uploadReceiptButton;
    QPushButton *generateExpenseReportButton;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName("MainWindow");
        MainWindow->resize(617, 299);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName("centralwidget");
        addIncomeButton = new QPushButton(centralwidget);
        addIncomeButton->setObjectName("addIncomeButton");
        addIncomeButton->setGeometry(QRect(49, 90, 131, 41));
        generateReportButton = new QPushButton(centralwidget);
        generateReportButton->setObjectName("generateReportButton");
        generateReportButton->setGeometry(QRect(190, 70, 221, 41));
        uploadReceiptButton = new QPushButton(centralwidget);
        uploadReceiptButton->setObjectName("uploadReceiptButton");
        uploadReceiptButton->setGeometry(QRect(420, 90, 131, 41));
        generateExpenseReportButton = new QPushButton(centralwidget);
        generateExpenseReportButton->setObjectName("generateExpenseReportButton");
        generateExpenseReportButton->setGeometry(QRect(190, 110, 221, 41));
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName("menubar");
        menubar->setGeometry(QRect(0, 0, 617, 24));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName("statusbar");
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
        addIncomeButton->setText(QCoreApplication::translate("MainWindow", "\320\224\320\276\320\261\320\260\320\262\320\270\321\202\321\214 \320\264\320\276\321\205\320\276\320\264", nullptr));
        generateReportButton->setText(QCoreApplication::translate("MainWindow", "\320\241\320\263\320\265\320\275\320\265\321\200\320\270\321\200\320\276\320\262\320\260\321\202\321\214 \320\276\321\202\321\207\321\221\321\202 \320\276 \320\261\320\260\320\273\320\260\320\275\321\201\320\265", nullptr));
        uploadReceiptButton->setText(QCoreApplication::translate("MainWindow", "\320\227\320\260\320\263\321\200\321\203\320\267\320\270\321\202\321\214 \321\207\320\265\320\272", nullptr));
        generateExpenseReportButton->setText(QCoreApplication::translate("MainWindow", "\320\241\320\263\320\265\320\275\320\265\321\200\320\270\321\200\320\276\320\262\320\260\321\202\321\214 \320\276\321\202\321\207\321\221\321\202 \320\276 \321\202\321\200\320\260\321\202\320\260\321\205", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
