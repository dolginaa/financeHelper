#ifndef REPORT_DIALOG_H
#define REPORT_DIALOG_H

#include <QDialog>

namespace Ui {
class ReportDialog;
}

class ReportDialog : public QDialog {
    Q_OBJECT

public:
    explicit ReportDialog(QWidget *parent = nullptr);
    ~ReportDialog();

private slots:
    void on_generateButton_clicked();
    void on_exportButton_clicked();

private:
    Ui::ReportDialog *ui;
};

#endif // REPORT_DIALOG_H
