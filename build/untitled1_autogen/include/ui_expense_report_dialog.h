/********************************************************************************
** Form generated from reading UI file 'expense_report_dialog.ui'
**
** Created by: Qt User Interface Compiler version 6.8.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_EXPENSE_REPORT_DIALOG_H
#define UI_EXPENSE_REPORT_DIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAbstractButton>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDateEdit>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTextEdit>

QT_BEGIN_NAMESPACE

class Ui_ExportReportDialog
{
public:
    QDialogButtonBox *buttonBox;
    QLabel *label;
    QLabel *label_2;
    QPushButton *exportButtonForExpenses;
    QPushButton *generateButtonForExpenses;
    QDateEdit *startDateEditForExpenses;
    QDateEdit *endDateEditForExpenses;
    QLabel *label_3;
    QTextEdit *reportTextEditForExpenses;

    void setupUi(QDialog *ExportReportDialog)
    {
        if (ExportReportDialog->objectName().isEmpty())
            ExportReportDialog->setObjectName("ExportReportDialog");
        ExportReportDialog->resize(400, 300);
        buttonBox = new QDialogButtonBox(ExportReportDialog);
        buttonBox->setObjectName("buttonBox");
        buttonBox->setGeometry(QRect(30, 240, 341, 32));
        buttonBox->setOrientation(Qt::Orientation::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::StandardButton::Cancel|QDialogButtonBox::StandardButton::Ok);
        label = new QLabel(ExportReportDialog);
        label->setObjectName("label");
        label->setGeometry(QRect(100, 20, 121, 16));
        label_2 = new QLabel(ExportReportDialog);
        label_2->setObjectName("label_2");
        label_2->setGeometry(QRect(20, 160, 261, 20));
        exportButtonForExpenses = new QPushButton(ExportReportDialog);
        exportButtonForExpenses->setObjectName("exportButtonForExpenses");
        exportButtonForExpenses->setGeometry(QRect(10, 220, 171, 32));
        generateButtonForExpenses = new QPushButton(ExportReportDialog);
        generateButtonForExpenses->setObjectName("generateButtonForExpenses");
        generateButtonForExpenses->setGeometry(QRect(30, 80, 151, 32));
        startDateEditForExpenses = new QDateEdit(ExportReportDialog);
        startDateEditForExpenses->setObjectName("startDateEditForExpenses");
        startDateEditForExpenses->setGeometry(QRect(20, 50, 110, 22));
        endDateEditForExpenses = new QDateEdit(ExportReportDialog);
        endDateEditForExpenses->setObjectName("endDateEditForExpenses");
        endDateEditForExpenses->setGeometry(QRect(150, 50, 110, 22));
        label_3 = new QLabel(ExportReportDialog);
        label_3->setObjectName("label_3");
        label_3->setGeometry(QRect(140, 50, 58, 16));
        reportTextEditForExpenses = new QTextEdit(ExportReportDialog);
        reportTextEditForExpenses->setObjectName("reportTextEditForExpenses");
        reportTextEditForExpenses->setGeometry(QRect(10, 190, 251, 21));

        retranslateUi(ExportReportDialog);
        QObject::connect(buttonBox, &QDialogButtonBox::accepted, ExportReportDialog, qOverload<>(&QDialog::accept));
        QObject::connect(buttonBox, &QDialogButtonBox::rejected, ExportReportDialog, qOverload<>(&QDialog::reject));

        QMetaObject::connectSlotsByName(ExportReportDialog);
    } // setupUi

    void retranslateUi(QDialog *ExportReportDialog)
    {
        ExportReportDialog->setWindowTitle(QCoreApplication::translate("ExportReportDialog", "Dialog", nullptr));
        label->setText(QCoreApplication::translate("ExportReportDialog", "\320\222\321\213\320\261\320\265\321\200\320\270\321\202\320\265 \320\277\320\265\321\200\320\270\320\276\320\264", nullptr));
        label_2->setText(QCoreApplication::translate("ExportReportDialog", "\320\236\321\202\321\207\321\221\321\202 \320\261\321\203\320\264\320\265\321\202 \321\201\321\204\320\276\321\200\320\274\320\270\321\200\320\276\320\262\320\260\320\275 \320\277\320\276 \320\277\321\203\321\202\320\270:", nullptr));
        exportButtonForExpenses->setText(QCoreApplication::translate("ExportReportDialog", "\320\255\320\272\321\201\320\277\320\276\321\200\321\202\320\270\321\200\320\276\320\262\320\260\321\202\321\214 \320\262 CSV", nullptr));
        generateButtonForExpenses->setText(QCoreApplication::translate("ExportReportDialog", "\320\241\321\204\320\276\321\200\320\274\320\270\321\200\320\276\320\262\320\260\321\202\321\214 \320\276\321\202\321\207\321\221\321\202", nullptr));
        label_3->setText(QCoreApplication::translate("ExportReportDialog", "-", nullptr));
    } // retranslateUi

};

namespace Ui {
    class ExportReportDialog: public Ui_ExportReportDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_EXPENSE_REPORT_DIALOG_H
