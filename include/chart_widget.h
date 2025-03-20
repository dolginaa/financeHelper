#ifndef CHART_WIDGET_H
#define CHART_WIDGET_H

#include <QWidget>
#include <QtCharts/QChartView>
#include <QtCharts/QPieSeries>
#include <QtCharts/QPieSlice>
#include "storage.h"  // Подключаем UserData

class ExpenseChart : public QWidget {
    Q_OBJECT
public:
    explicit ExpenseChart(const UserData &userData, QWidget *parent = nullptr);
};

#endif // CHART_WIDGET_H
