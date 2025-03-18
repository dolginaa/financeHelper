#ifndef EXPENSE_REPORT_DIALOG_H
#define EXPENSE_REPORT_DIALOG_H

#include <QDialog>
#include "ui_expense_report_dialog.h"

namespace Ui {
class ExpenseReportDialog;
}

class ExpenseReportDialog : public QDialog {
    Q_OBJECT

public:
    explicit ExpenseReportDialog(QWidget *parent = nullptr);
    ~ExpenseReportDialog();

private slots:
    void on_generateButtonForExpenses_clicked();
    void on_exportButtonForExpenses_clicked();

private:
    Ui::ExpenseReportDialog *ui;
};

#endif // EXPENSE_REPORT_DIALOG_H
