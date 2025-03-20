/*#include <QWidget>
#include <QLineEdit>
#include <QPushButton>
#include <QTest>
#include "ui/add_income_dialog.h"

class TestAddIncomeDialog : public QObject {
    Q_OBJECT

private slots:
    void testAddButton();
    void testCancelButton();
};

void TestAddIncomeDialog::testAddButton() {
    AddIncomeDialog dialog;
    QPushButton *addButton = dialog.findChild<QPushButton *>("addButton");
    QVERIFY(addButton);

    QLineEdit *amountEdit = dialog.findChild<QLineEdit *>("amountEdit");
    QVERIFY(amountEdit);
    QTest::keyClicks(amountEdit, "5000");
    QCOMPARE(amountEdit->text(), QString("5000"));

    QTest::mouseClick(addButton, Qt::LeftButton);

    QVERIFY(dialog.result() == QDialog::Accepted);
}

void TestAddIncomeDialog::testCancelButton() {
    AddIncomeDialog dialog;
    QPushButton *cancelButton = dialog.findChild<QPushButton *>("cancelButton");
    QVERIFY(cancelButton);

    QTest::mouseClick(cancelButton, Qt::LeftButton);

    QVERIFY(dialog.result() == QDialog::Rejected);
}

QTEST_MAIN(TestAddIncomeDialog)
#include "test_add_income_dialog.moc"
*/
