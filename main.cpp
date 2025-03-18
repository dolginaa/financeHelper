#include <QApplication>
#include "add_income_dialog.h"
#include "report_dialog.h"
#include "upload_receipt_dialog.h"
#include "mainwindow.h"

int main(int argc, char *argv[]) {
    QApplication a(argc, argv);

    //std::string imagePath = "/Users/adolgina/Desktop/recipe11.jpg";
    //std::string imagePath = "/Users/adolgina/Desktop/recipe12.jpg";

    MainWindow w;
    w.show();

    /*AddIncomeDialog incomeDialog;
    incomeDialog.exec();

    ReportDialog reportDialog;
    reportDialog.exec();

    UploadReceiptDialog receiptDialog;
    receiptDialog.exec();*/

    return a.exec();
}
