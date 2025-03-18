/*#include "report_dialog.h"
#include "ui_report_dialog.h"

ReportDialog::ReportDialog(QWidget *parent)
    : QDialog(parent), ui(new Ui::ReportDialog) {
    ui->setupUi(this);
}

ReportDialog::~ReportDialog() {
    delete ui;
}

QString ReportDialog::getStartDate() const {
    return ui->startDateEdit->date().toString("yyyy-MM-dd");
}

QString ReportDialog::getEndDate() const {
    return ui->endDateEdit->date().toString("yyyy-MM-dd");
}

void ReportDialog::on_generateButton_clicked() {
    accept();
}

void ReportDialog::on_cancelButton_clicked() {
    reject();
}
*/
