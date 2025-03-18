/*#include "upload_receipt_dialog.h"
#include "ui_upload_receipt_dialog.h"
#include <QFileDialog>

UploadReceiptDialog::UploadReceiptDialog(QWidget *parent)
    : QDialog(parent), ui(new Ui::UploadReceiptDialog) {
    ui->setupUi(this);
}

UploadReceiptDialog::~UploadReceiptDialog() {
    delete ui;
}

QString UploadReceiptDialog::getFilePath() const {
    return ui->filePathEdit->text();
}

void UploadReceiptDialog::on_browseButton_clicked() {
    QString filePath = QFileDialog::getOpenFileName(this, "Выберите изображение чека", "", "Изображения (*.png *.jpg *.jpeg)");
    if (!filePath.isEmpty()) {
        ui->filePathEdit->setText(filePath);
    }
}

void UploadReceiptDialog::on_uploadButton_clicked() {
    accept();
}

void UploadReceiptDialog::on_cancelButton_clicked() {
    reject();
}
*/
