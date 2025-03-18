#include "add_income_dialog.h"
#include "ui_add_income_dialog.h"
#include "api.h"

#include <QMessageBox>

AddIncomeDialog::AddIncomeDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::AddIncomeDialog) {
    ui->setupUi(this);
    ui->incomeFrequency->addItem("daily");
    ui->incomeFrequency->addItem("monthly");
    ui->incomeFrequency->addItem("yearly");

}

AddIncomeDialog::~AddIncomeDialog() {
    delete ui;
}

void AddIncomeDialog::on_addButton_clicked() {
    double amount = ui->incomeAmount->text().toDouble();
    QString frequency = ui->incomeFrequency->currentText();

    if (amount <= 0) {
        QMessageBox::warning(this, "Ошибка", "Введите корректную сумму дохода.");
        return;
    }

    AddIncome(1, amount, frequency.toStdString());  // userId = 1 (замени на реальный)
    QMessageBox::information(this, "Успех", "Доход успешно добавлен.");
    close();
}

void AddIncomeDialog::on_cancelButton_clicked() {
    close();
}
