#ifndef UPLOAD_RECEIPT_DIALOG_H
#define UPLOAD_RECEIPT_DIALOG_H

#include <QDialog>

namespace Ui {
class UploadReceiptDialog;
}

class UploadReceiptDialog : public QDialog {
    Q_OBJECT

public:
    QString getSelectedFilePath() const;
    void setSelectedFilePath(const QString &path);

    explicit UploadReceiptDialog(QWidget *parent = nullptr);
    ~UploadReceiptDialog();

private slots:
    void on_selectFileButton_clicked();
    void on_uploadButton_clicked();

private:
    Ui::UploadReceiptDialog *ui;
    QString selectedFilePath;
};

#endif // UPLOAD_RECEIPT_DIALOG_H
