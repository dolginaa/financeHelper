#include "upload_receipt_dialog.h"
#include "ui_upload_receipt_dialog.h"
#include "api.h"

#include <QFileDialog>
#include <QMessageBox>

UploadReceiptDialog::UploadReceiptDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::UploadReceiptDialog) {
    ui->setupUi(this);
}

UploadReceiptDialog::~UploadReceiptDialog() {
    delete ui;
}

QString UploadReceiptDialog::getSelectedFilePath() const {
    return selectedFilePath;
}

void UploadReceiptDialog::setSelectedFilePath(const QString &path) {
    selectedFilePath = path;
}

void UploadReceiptDialog::on_selectFileButton_clicked() {
    QString filePath = QFileDialog::getOpenFileName(this, "Выбрать чек", "", "Изображения (*.png *.jpg *.jpeg)");
    if (!filePath.isEmpty()) {
        setSelectedFilePath(filePath);  // Используем сеттер
        ui->fileLabel->setText(getSelectedFilePath());  // Используем геттер
    }
}

void UploadReceiptDialog::on_uploadButton_clicked() {
    if (selectedFilePath.isEmpty()) {
        QMessageBox::warning(this, "Ошибка", "Выберите файл перед загрузкой.");
        return;
    }

    AddReceipt(selectedFilePath.toStdString(), 1);
    QMessageBox::information(this, "Успех", "Чек успешно загружен.");
    close();
}
