#ifndef ADD_INCOME_DIALOG_H
#define ADD_INCOME_DIALOG_H

#include <QDialog>

namespace Ui {
class AddIncomeDialog;
}

class AddIncomeDialog : public QDialog {
    Q_OBJECT

public:
    explicit AddIncomeDialog(QWidget *parent = nullptr);
    ~AddIncomeDialog();

private slots:
    void on_addButton_clicked();
    void on_cancelButton_clicked();

private:
    Ui::AddIncomeDialog *ui;
};

#endif // ADD_INCOME_DIALOG_H
