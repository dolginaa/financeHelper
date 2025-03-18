#include "report_dialog.h"
#include "ui_report_dialog.h"
#include "api.h"

#include <QMessageBox>
#include <QFileDialog>
#include <QTextStream>

ReportDialog::ReportDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::ReportDialog) {
    ui->setupUi(this);
}

ReportDialog::~ReportDialog() {
    delete ui;
}

void ReportDialog::on_generateButton_clicked() {
    QString startDate = ui->startDateEdit->date().toString("yyyy-MM-dd");
    QString endDate = ui->endDateEdit->date().toString("yyyy-MM-dd");

    QString report = QString::fromStdString(GetReport(1, startDate.toStdString(), endDate.toStdString()));
    ui->reportTextEdit->setText(report);
}

void ReportDialog::on_exportButton_clicked() {
    QString fileName = QFileDialog::getSaveFileName(this, "Сохранить отчет", "", "CSV файлы (*.csv)");
    if (fileName.isEmpty()) return;

    QFile file(fileName);
    if (file.open(QIODevice::WriteOnly)) {
        QTextStream stream(&file);
        stream << ui->reportTextEdit->toPlainText();
        file.close();
        QMessageBox::information(this, "Успех", "Отчет сохранен.");
    } else {
        QMessageBox::warning(this, "Ошибка", "Не удалось сохранить файл.");
    }
}
