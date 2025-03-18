#include "mainwindow.h"
#include "ui_mainwindow.h"

#include "add_income_dialog.h"
#include "report_dialog.h"
#include "expense_report_dialog.h"
#include "upload_receipt_dialog.h"

#include <QMessageBox>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow) {
    ui->setupUi(this);
}

MainWindow::~MainWindow() {
    delete ui;
}

void MainWindow::on_addIncomeButton_clicked() {
    AddIncomeDialog dialog(this);
    dialog.exec();
}

void MainWindow::on_generateReportButton_clicked() {
    ReportDialog dialog(this);
    dialog.exec();
}

void MainWindow::on_uploadReceiptButton_clicked() {
    UploadReceiptDialog dialog(this);
    dialog.exec();
}

void MainWindow::on_generateExpenseReportButton_clicked() {
    ExpenseReportDialog dialog(this);
    dialog.exec();
}
