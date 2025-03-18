#include "chart_widget.h"
#include <QVBoxLayout>
#include <QFont>

ExpenseChart::ExpenseChart(const UserData &userData, QWidget *parent) : QWidget(parent) {
    std::map<std::string, double> expenseMap;
    double totalAmount = 0.0;

    for (const auto &expense : userData.expenses) {
        for (const auto &item : expense.items) {
            expenseMap[item.name] += item.price;
            totalAmount += item.price;
        }
    }

    // Создание круговой диаграммы
    QPieSeries *series = new QPieSeries();
    QFont labelFont;
    labelFont.setPointSize(8);

    for (const auto &[name, amount] : expenseMap) {
        double percentage = (amount / totalAmount) * 100.0;
        QString label = QString::fromStdString(name) + QString(" (%1%)").arg(percentage, 0, 'f', 1);
        QPieSlice *slice = series->append(label, amount);
        slice->setLabelVisible(percentage >= 5.0);
        slice->setLabelPosition(QPieSlice::LabelOutside);
        slice->setLabelFont(labelFont);
    }

    series->setPieSize(0.6);

    QFont textFont;
    textFont.setPointSize(12);

    // Создание графика
    QChart *chart = new QChart();
    chart->addSeries(series);
    chart->setTitle("Анализ трат");
    chart->legend()->setAlignment(Qt::AlignRight);
    chart->legend()->setFont(textFont);
    chart->setBackgroundBrush(Qt::white);
    chart->setPlotAreaBackgroundVisible(false);

    QFont titleFont;
    titleFont.setPointSize(20);
    titleFont.setBold(true);
    chart->setTitleFont(titleFont);

    QChartView *chartView = new QChartView(chart);
    chartView->setRenderHint(QPainter::Antialiasing);
    chartView->setFont(textFont);
    chartView->setFrameShape(QFrame::NoFrame);
    chartView->setBackgroundBrush(Qt::white);
    chartView->setFixedSize(800, 600);
    chartView->setAlignment(Qt::AlignLeft);
    chartView->viewport()->setAutoFillBackground(true);

    // Размещение на форме
    QVBoxLayout *layout = new QVBoxLayout(this);
    layout->addWidget(chartView);
    layout->setContentsMargins(0, 0, 0, 0);
    layout->setSpacing(0);
    this->setLayout(layout);
    this->setStyleSheet("background: transparent; border: none;");
}
