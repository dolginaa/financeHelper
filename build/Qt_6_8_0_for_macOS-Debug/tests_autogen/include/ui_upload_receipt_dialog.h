/********************************************************************************
** Form generated from reading UI file 'upload_receipt_dialog.ui'
**
** Created by: Qt User Interface Compiler version 6.8.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_UPLOAD_RECEIPT_DIALOG_H
#define UI_UPLOAD_RECEIPT_DIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAbstractButton>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>

QT_BEGIN_NAMESPACE

class Ui_UploadReceiptDialog
{
public:
    QDialogButtonBox *buttonBox;
    QLabel *label;
    QPushButton *selectFileButton;
    QLabel *fileLabel;
    QPushButton *uploadButton;
    QPushButton *cancelButton;

    void setupUi(QDialog *UploadReceiptDialog)
    {
        if (UploadReceiptDialog->objectName().isEmpty())
            UploadReceiptDialog->setObjectName("UploadReceiptDialog");
        UploadReceiptDialog->resize(400, 300);
        buttonBox = new QDialogButtonBox(UploadReceiptDialog);
        buttonBox->setObjectName("buttonBox");
        buttonBox->setGeometry(QRect(30, 240, 341, 32));
        buttonBox->setOrientation(Qt::Orientation::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::StandardButton::Cancel|QDialogButtonBox::StandardButton::Ok);
        label = new QLabel(UploadReceiptDialog);
        label->setObjectName("label");
        label->setGeometry(QRect(10, 40, 181, 16));
        selectFileButton = new QPushButton(UploadReceiptDialog);
        selectFileButton->setObjectName("selectFileButton");
        selectFileButton->setGeometry(QRect(30, 70, 100, 32));
        fileLabel = new QLabel(UploadReceiptDialog);
        fileLabel->setObjectName("fileLabel");
        fileLabel->setGeometry(QRect(200, 40, 181, 20));
        uploadButton = new QPushButton(UploadReceiptDialog);
        uploadButton->setObjectName("uploadButton");
        uploadButton->setGeometry(QRect(200, 70, 100, 32));
        cancelButton = new QPushButton(UploadReceiptDialog);
        cancelButton->setObjectName("cancelButton");
        cancelButton->setGeometry(QRect(120, 140, 100, 32));

        retranslateUi(UploadReceiptDialog);
        QObject::connect(buttonBox, &QDialogButtonBox::accepted, UploadReceiptDialog, qOverload<>(&QDialog::accept));
        QObject::connect(buttonBox, &QDialogButtonBox::rejected, UploadReceiptDialog, qOverload<>(&QDialog::reject));

        QMetaObject::connectSlotsByName(UploadReceiptDialog);
    } // setupUi

    void retranslateUi(QDialog *UploadReceiptDialog)
    {
        UploadReceiptDialog->setWindowTitle(QCoreApplication::translate("UploadReceiptDialog", "Upload Receipt", nullptr));
        label->setText(QCoreApplication::translate("UploadReceiptDialog", "\320\222\321\213\320\261\320\265\321\200\320\270\321\202\320\265 \321\207\320\265\320\272 \320\264\320\273\321\217 \320\267\320\260\320\263\321\200\321\203\320\267\320\272\320\270", nullptr));
        selectFileButton->setText(QCoreApplication::translate("UploadReceiptDialog", "\320\222\321\213\320\261\321\200\320\260\321\202\321\214 \321\204\320\260\320\271\320\273", nullptr));
        fileLabel->setText(QCoreApplication::translate("UploadReceiptDialog", "\320\222\321\213\320\261\321\200\320\260\320\275\320\275\321\213\320\271 \321\204\320\260\320\271\320\273", nullptr));
        uploadButton->setText(QCoreApplication::translate("UploadReceiptDialog", "\320\227\320\260\320\263\321\200\321\203\320\267\320\270\321\202\321\214", nullptr));
        cancelButton->setText(QCoreApplication::translate("UploadReceiptDialog", "\320\236\321\202\320\274\320\265\320\275\320\260", nullptr));
    } // retranslateUi

};

namespace Ui {
    class UploadReceiptDialog: public Ui_UploadReceiptDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_UPLOAD_RECEIPT_DIALOG_H
