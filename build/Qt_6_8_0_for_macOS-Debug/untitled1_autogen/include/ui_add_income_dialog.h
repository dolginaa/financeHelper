/********************************************************************************
** Form generated from reading UI file 'add_income_dialog.ui'
**
** Created by: Qt User Interface Compiler version 6.8.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ADD_INCOME_DIALOG_H
#define UI_ADD_INCOME_DIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAbstractButton>
#include <QtWidgets/QApplication>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>

QT_BEGIN_NAMESPACE

class Ui_AddIncomeDialog
{
public:
    QDialogButtonBox *buttonBox;
    QLabel *label;
    QLineEdit *incomeAmount;
    QLabel *label_2;
    QComboBox *incomeFrequency;
    QPushButton *addButton;
    QPushButton *cancelButton;

    void setupUi(QDialog *AddIncomeDialog)
    {
        if (AddIncomeDialog->objectName().isEmpty())
            AddIncomeDialog->setObjectName("AddIncomeDialog");
        AddIncomeDialog->resize(400, 300);
        buttonBox = new QDialogButtonBox(AddIncomeDialog);
        buttonBox->setObjectName("buttonBox");
        buttonBox->setGeometry(QRect(30, 240, 341, 32));
        buttonBox->setOrientation(Qt::Orientation::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::StandardButton::Cancel|QDialogButtonBox::StandardButton::Ok);
        label = new QLabel(AddIncomeDialog);
        label->setObjectName("label");
        label->setGeometry(QRect(20, 30, 111, 20));
        incomeAmount = new QLineEdit(AddIncomeDialog);
        incomeAmount->setObjectName("incomeAmount");
        incomeAmount->setGeometry(QRect(20, 60, 113, 21));
        label_2 = new QLabel(AddIncomeDialog);
        label_2->setObjectName("label_2");
        label_2->setGeometry(QRect(190, 30, 101, 20));
        incomeFrequency = new QComboBox(AddIncomeDialog);
        incomeFrequency->setObjectName("incomeFrequency");
        incomeFrequency->setGeometry(QRect(190, 60, 103, 32));
        addButton = new QPushButton(AddIncomeDialog);
        addButton->setObjectName("addButton");
        addButton->setGeometry(QRect(100, 110, 100, 32));
        cancelButton = new QPushButton(AddIncomeDialog);
        cancelButton->setObjectName("cancelButton");
        cancelButton->setGeometry(QRect(40, 240, 100, 32));

        retranslateUi(AddIncomeDialog);
        QObject::connect(buttonBox, &QDialogButtonBox::accepted, AddIncomeDialog, qOverload<>(&QDialog::accept));
        QObject::connect(buttonBox, &QDialogButtonBox::rejected, AddIncomeDialog, qOverload<>(&QDialog::reject));

        QMetaObject::connectSlotsByName(AddIncomeDialog);
    } // setupUi

    void retranslateUi(QDialog *AddIncomeDialog)
    {
        AddIncomeDialog->setWindowTitle(QCoreApplication::translate("AddIncomeDialog", "Add Income", nullptr));
        label->setText(QCoreApplication::translate("AddIncomeDialog", "\320\241\321\203\320\274\320\274\320\260 \320\264\320\276\321\205\320\276\320\264\320\260", nullptr));
        incomeAmount->setInputMask(QCoreApplication::translate("AddIncomeDialog", "99999;_", nullptr));
        label_2->setText(QCoreApplication::translate("AddIncomeDialog", "\320\247\320\260\321\201\321\202\320\276\321\202\320\260 \320\264\320\276\321\205\320\276\320\264\320\260", nullptr));
        addButton->setText(QCoreApplication::translate("AddIncomeDialog", "\320\224\320\276\320\261\320\260\320\262\320\270\321\202\321\214", nullptr));
        cancelButton->setText(QCoreApplication::translate("AddIncomeDialog", "\320\227\320\260\320\272\321\200\321\213\321\202\321\214", nullptr));
    } // retranslateUi

};

namespace Ui {
    class AddIncomeDialog: public Ui_AddIncomeDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ADD_INCOME_DIALOG_H
