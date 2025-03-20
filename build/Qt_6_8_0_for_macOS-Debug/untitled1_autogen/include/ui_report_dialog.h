/********************************************************************************
** Form generated from reading UI file 'report_dialog.ui'
**
** Created by: Qt User Interface Compiler version 6.8.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_REPORT_DIALOG_H
#define UI_REPORT_DIALOG_H

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

class Ui_ReportDialog
{
public:
    QDialogButtonBox *buttonBox;
    QLabel *label;
    QDateEdit *startDateEdit;
    QDateEdit *endDateEdit;
    QPushButton *generateButton;
    QTextEdit *reportTextEdit;
    QPushButton *exportButton;
    QLabel *label_2;
    QLabel *label_3;

    void setupUi(QDialog *ReportDialog)
    {
        if (ReportDialog->objectName().isEmpty())
            ReportDialog->setObjectName("ReportDialog");
        ReportDialog->resize(400, 300);
        buttonBox = new QDialogButtonBox(ReportDialog);
        buttonBox->setObjectName("buttonBox");
        buttonBox->setGeometry(QRect(30, 240, 341, 32));
        buttonBox->setOrientation(Qt::Orientation::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::StandardButton::Cancel|QDialogButtonBox::StandardButton::Ok);
        label = new QLabel(ReportDialog);
        label->setObjectName("label");
        label->setGeometry(QRect(90, 20, 121, 16));
        startDateEdit = new QDateEdit(ReportDialog);
        startDateEdit->setObjectName("startDateEdit");
        startDateEdit->setGeometry(QRect(20, 50, 110, 22));
        endDateEdit = new QDateEdit(ReportDialog);
        endDateEdit->setObjectName("endDateEdit");
        endDateEdit->setGeometry(QRect(160, 50, 110, 22));
        generateButton = new QPushButton(ReportDialog);
        generateButton->setObjectName("generateButton");
        generateButton->setGeometry(QRect(30, 80, 151, 32));
        reportTextEdit = new QTextEdit(ReportDialog);
        reportTextEdit->setObjectName("reportTextEdit");
        reportTextEdit->setGeometry(QRect(30, 200, 251, 21));
        exportButton = new QPushButton(ReportDialog);
        exportButton->setObjectName("exportButton");
        exportButton->setGeometry(QRect(30, 220, 161, 32));
        label_2 = new QLabel(ReportDialog);
        label_2->setObjectName("label_2");
        label_2->setGeometry(QRect(140, 50, 16, 16));
        label_3 = new QLabel(ReportDialog);
        label_3->setObjectName("label_3");
        label_3->setGeometry(QRect(30, 170, 231, 16));

        retranslateUi(ReportDialog);
        QObject::connect(buttonBox, &QDialogButtonBox::accepted, ReportDialog, qOverload<>(&QDialog::accept));
        QObject::connect(buttonBox, &QDialogButtonBox::rejected, ReportDialog, qOverload<>(&QDialog::reject));

        QMetaObject::connectSlotsByName(ReportDialog);
    } // setupUi

    void retranslateUi(QDialog *ReportDialog)
    {
        ReportDialog->setWindowTitle(QCoreApplication::translate("ReportDialog", "Get Report", nullptr));
        label->setText(QCoreApplication::translate("ReportDialog", "\320\222\321\213\320\261\320\265\321\200\320\270\321\202\320\265 \320\277\320\265\321\200\320\270\320\276\320\264", nullptr));
        generateButton->setText(QCoreApplication::translate("ReportDialog", "\320\241\321\204\320\276\321\200\320\274\320\270\321\200\320\276\320\262\320\260\321\202\321\214 \320\276\321\202\321\207\321\221\321\202", nullptr));
        exportButton->setText(QCoreApplication::translate("ReportDialog", "\320\255\320\272\321\201\320\277\320\276\321\200\321\202\320\270\321\200\320\276\320\262\320\260\321\202\321\214 \320\262 CSV", nullptr));
        label_2->setText(QCoreApplication::translate("ReportDialog", "-", nullptr));
        label_3->setText(QCoreApplication::translate("ReportDialog", "\320\236\321\202\321\207\321\221\321\202 \320\261\321\203\320\264\320\265\321\202 \321\201\321\204\320\276\321\200\320\274\320\270\321\200\320\276\320\262\320\260\320\275 \320\277\320\276 \320\277\321\203\321\202\320\270:", nullptr));
    } // retranslateUi

};

namespace Ui {
    class ReportDialog: public Ui_ReportDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_REPORT_DIALOG_H
