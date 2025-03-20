#include "expense_report_dialog.h"
#include "ui_expense_report_dialog.h"
#include "api.h"

#include <QMessageBox>
#include <QFileDialog>
#include <QTextStream>

ExpenseReportDialog::ExpenseReportDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::ExpenseReportDialog) {
    ui->setupUi(this);
}

ExpenseReportDialog::~ExpenseReportDialog() {
    delete ui;
}

void ExpenseReportDialog::on_generateButtonForExpenses_clicked() {
    QString startDate = ui->startDateEditForExpenses->date().toString("yyyy-MM-dd");
    QString endDate = ui->endDateEditForExpenses->date().toString("yyyy-MM-dd");

    QString report = QString::fromStdString(GetExpenseReport(1, startDate.toStdString(), endDate.toStdString()));
    ui->reportTextEditForExpenses->setText(report);
}

void ExpenseReportDialog::on_exportButtonForExpenses_clicked() {
    QString fileName = QFileDialog::getSaveFileName(this, "Сохранить отчет", "", "CSV файлы (*.csv)");
    if (fileName.isEmpty()) return;

    QFile file(fileName);
    if (file.open(QIODevice::WriteOnly)) {
        QTextStream stream(&file);
        stream << ui->reportTextEditForExpenses->toPlainText();
        file.close();
        QMessageBox::information(this, "Успех", "Отчет сохранен.");
    } else {
        QMessageBox::warning(this, "Ошибка", "Не удалось сохранить файл.");
    }
}
