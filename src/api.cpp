#include <iostream>
#include <vector>
#include <chrono>
#include <iomanip>
#include <sstream>
#include <ctime>
#include <string>
#include <regex>
#include <locale>
#include <map>
#include <cstdlib>

// OpenCV
#include <opencv2/opencv.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>

// Qt
#include <QPdfWriter>
#include <QPainter>
#include <QFileDialog>
#include <QPageSize>
#include <QtCharts/QLineSeries>
#include <QtCharts/QDateTimeAxis>
#include <QtCharts/QValueAxis>

// Собственные классы (предположительно)
#include "Storage.h"
#include "text_recognition.h"
//#include "matplotlibcpp.h"
#include "image_processing.h"
#include "chart_widget.h"

// Функция получения текущей даты в формате YYYY-MM-DD
std::string getCurrentDate() {
    auto now = std::chrono::system_clock::now();
    std::time_t now_c = std::chrono::system_clock::to_time_t(now);
    std::tm* now_tm = std::localtime(&now_c);
    std::ostringstream oss;
    oss << std::put_time(now_tm, "%Y-%m-%d");
    return oss.str();
}

std::string currentDate = getCurrentDate();
// Функция для конвертации UTF-8 → UTF-16 (wstring)
std::wstring utf8_to_wstring(const std::string& str) {
    std::wstring wstr(str.size(), L'\0');
    std::mbstowcs(&wstr[0], str.c_str(), str.size());
    return wstr;
}

// Функция для конвертации UTF-16 → UTF-8 (string)
std::string wstring_to_utf8(const std::wstring& wstr) {
    std::string str(wstr.size() * 4, '\0'); // Максимальный размер UTF-8 символа = 4 байта
    std::wcstombs(&str[0], wstr.c_str(), str.size());
    return str.c_str(); // Обрезаем лишние нулевые байты
}

const std::vector<std::string> queries = {"итого к оплате", "итого", "итог", "к оплате"};

std::string extractProductName(const std::vector<std::string>& lines, size_t index) {
    std::wregex nameRegex(L"([A-Za-zА-Яа-яЁё]+\\d*[\\w!@#\\$%\\^&\\*\\(\\)_\\+\\-=\\[\\]\\{\\};:'\",.<>?/]*\\s?){1,3}");
    std::wstring result;

    if (index < lines.size()) {
        std::wstring line = utf8_to_wstring(lines[index]);
        std::wsmatch match;
        auto it = std::wsregex_iterator(line.begin(), line.end(), nameRegex);
        auto end = std::wsregex_iterator();
        for (; it != end; ++it) {
            result += it->str() + L" ";
        }
    }

    if (result.empty() && index > 0) {
        std::wstring line = utf8_to_wstring(lines[index - 1]);
        auto it = std::wsregex_iterator(line.begin(), line.end(), nameRegex);
        auto end = std::wsregex_iterator();
        for (; it != end; ++it) {
            result += it->str() + L" ";
        }
    }

    if (!result.empty()) {
        result.pop_back();
        return wstring_to_utf8(result);
    }

    return "Неизвестный товар";
}

std::vector<std::pair<std::string, double>> extractItems(const std::string& text) {
    std::vector<std::pair<std::string, double>> items;
    std::istringstream stream(text);
    std::vector<std::string> lines;
    std::string line;

    while (std::getline(stream, line)) {
        lines.push_back(line);
    }

    std::regex priceRegex(R"(=\s*(\d+[.,]?\d*)\s*(?:₽|руб|RUB)?)");

    for (size_t i = 0; i < lines.size(); i++) {
        std::smatch match;
        if (std::regex_search(lines[i], match, priceRegex)) {
            double price = std::stod(match[1].str());
            std::string productName = extractProductName(lines, i);

            bool fountResSum = false;

            for (const auto& query : queries) {
                std::string foundPhrase = findSimilarPhrase(lines[i], query);
                if (!foundPhrase.empty()) {
                    fountResSum = true;
                }
            }

            if (!fountResSum) items.emplace_back(productName, price);
        }
    }

    return items;
}

std::chrono::system_clock::time_point parseDate(const std::string& dateStr) {
    std::tm tm = {};
    std::istringstream ss(dateStr);
    ss >> std::get_time(&tm, "%Y-%m-%d");
    return std::chrono::system_clock::from_time_t(std::mktime(&tm));
}

// Функция для вычисления разницы в днях между двумя датами
int daysBetween(const std::chrono::system_clock::time_point& start, const std::chrono::system_clock::time_point& end) {
    return std::chrono::duration_cast<std::chrono::hours>(end - start).count() / 24;
}

// Функция для вычисления разницы в месяцах между двумя датами
int monthsBetween(const std::tm& start, const std::tm& end) {
    return (end.tm_year - start.tm_year) * 12 + (end.tm_mon - start.tm_mon);
}

// Функция для вычисления разницы в годах между двумя датами
int yearsBetween(const std::tm& start, const std::tm& end) {
    return end.tm_year - start.tm_year;
}

// Вспомогательная функция для преобразования time_point в std::tm
std::tm toTm(std::chrono::system_clock::time_point tp) {
    std::time_t tt = std::chrono::system_clock::to_time_t(tp);
    std::tm tm{};
    localtime_r(&tt, &tm); // Для Linux/macOS
    return tm;
}

void AddReceipt(const std::string& imagePath, int userId) {
    cv::Mat inputImage = cv::imread(imagePath);

    if (inputImage.empty()) {
        std::cerr << "Ошибка: не удалось загрузить изображение!" << std::endl;
        return;
    }

    cv::Mat alignedImage = correctPerspective(inputImage);
    cv::Mat processedImage = preprocessImage(alignedImage);
    cv::Mat shadowFreeImage = removeShadows(processedImage);

    std::string extractedText = recognizeText(shadowFreeImage);
    std::cout << "Распознанный текст:\n" << extractedText << "\n";

    double amount = 0;

    for (const auto& query : queries) {
        std::string foundPhrase = findSimilarPhrase(extractedText, query);
        if (!foundPhrase.empty()) {
            std::string amountStr = findAmountAfterPhrase(extractedText, foundPhrase);
            if (!amountStr.empty()) {
                amount = std::stod(amountStr);
                break;
            }
        }
    }

    std::vector<std::pair<std::string, double>> rawItems = extractItems(extractedText);
    std::vector<Item> items;

    for (const auto& rawItem : rawItems) {
        items.push_back({rawItem.first, rawItem.second});
        std::cout << "Найден товар: " << rawItem.first << " - " << rawItem.second << " руб.\n";
    }

    if (amount > 0) {
        Storage storage("data.json");

        // Получаем текущую дату
        std::time_t t = std::time(nullptr);
        std::tm* now = std::localtime(&t);
        char dateBuffer[11];
        std::strftime(dateBuffer, sizeof(dateBuffer), "%Y-%m-%d", now);
        std::string currentDate = dateBuffer;

        storage.addExpense(userId, currentDate, amount, items);
        std::cout << "Чек сохранен: сумма " << amount << " руб.\n";
    } else {
        std::cout << "Не удалось найти сумму в чеке.\n";
    }
}

void AddIncome(int userId, double amount, const std::string& frequency) {
    if (frequency != "daily" & frequency != "monthly" & frequency != "yearly") {
        std::cerr << "Ошибка: неверно указана частота!" << std::endl;
    }

    Storage storage("data.json");
    storage.addIncome(userId, currentDate, amount, frequency);
}

std::string GetExpenseReport(int userId, const std::string &startDate = "", const std::string &endDate = "") {
    // Определяем временные точки начала и конца периода
    std::chrono::system_clock::time_point startTp, endTp;

    // Текущая дата
    auto now = std::chrono::system_clock::now();

    if (!startDate.empty() && !endDate.empty()) {
        startTp = parseDate(startDate);
        endTp = parseDate(endDate);
        if (endTp < startTp) {
            std::cerr << "Ошибка: неверный формат даты!" << std::endl;
            return "";
        }
    } else if (!startDate.empty()) {
        startTp = parseDate(startDate);
        endTp = now;
    } else if (!endDate.empty()) {
        startTp = parseDate("1990-01-01");
        endTp = parseDate(endDate);
    } else {
        startTp = parseDate("1990-01-01");
        endTp = now;
    }

    Storage storage("data.json");
    UserData userData = storage.getUserData(userId);

    if (userData.expenses.empty()) {
        std::cerr << "Ошибка: у пользователя нет расходов!" << std::endl;
        return "";
    }

    // Фильтрация расходов по диапазону дат
    std::vector<Expense> filteredExpenses;
    for (const auto& expense : userData.expenses) {
        auto expenseDate = parseDate(expense.date);
        if (expenseDate >= startTp && expenseDate <= endTp) {
            filteredExpenses.push_back(expense);
        }
    }

    if (filteredExpenses.empty()) {
        std::cerr << "Нет расходов в указанном диапазоне дат!" << std::endl;
        return "";
    }

    // Создаем новый объект UserData с отфильтрованными расходами
    UserData filteredUserData = userData;
    filteredUserData.expenses = std::move(filteredExpenses);

    ExpenseChart chartWidget(filteredUserData);
    chartWidget.resize(1200, 900);

    QString fileName = QFileDialog::getSaveFileName(nullptr, "Сохранить PDF", "", "PDF Files (*.pdf)");
    if (fileName.isEmpty()) return "";

    QPdfWriter writer(fileName);
    writer.setResolution(300);
    writer.setPageSize(QPageSize(QSize(1000, 800)));

    QPainter painter(&writer);
    painter.fillRect(writer.pageLayout().fullRectPixels(writer.resolution()), Qt::white);

    double scaleX = writer.width() / double(chartWidget.width());
    double scaleY = writer.height() / double(chartWidget.height());
    double scale = std::min(scaleX, scaleY) * 1.5;
    painter.scale(scale, scale);

    chartWidget.render(&painter);
    painter.end();

    std::cout << "PDF сохранен: " << fileName.toStdString() << std::endl;
    return fileName.toStdString();
}

std::string GetReport(int userId, const std::string &startDate = "", const std::string &endDate = currentDate) {
    // Определяем даты
    std::chrono::system_clock::time_point startTp, endTp;

    if (startDate.empty()) {
        startTp = parseDate("1990-01-01");
    } else {
        startTp = parseDate(startDate);
    }

    if (endDate.empty()) {
        endTp = parseDate(getCurrentDate());
    } else {
        endTp = parseDate(endDate);
    }

    if (endTp < startTp) {
        std::cerr << "Ошибка: неверный диапазон дат!" << std::endl;
        return "";
    }

    // Загружаем данные пользователя
    Storage storage("data.json");
    UserData userData = storage.getUserData(userId);

    if (userData.expenses.empty() && userData.incomes.empty()) {
        std::cerr << "Ошибка: нет данных для отчета!" << std::endl;
        return "";
    }

    // Фильтруем расходы и доходы по диапазону дат
    std::map<std::chrono::system_clock::time_point, double> balanceHistory;
    double balance = 0;

    for (const auto& expense : userData.expenses) {
        auto date = parseDate(expense.date);
        if (date >= startTp && date <= endTp) {
            balance = -expense.amount;
            balanceHistory[date] = balance;
        }
    }

    for (const auto& income : userData.incomes) {
        auto date = parseDate(income.startDate);
        if (date >= startTp && date <= endTp) {
            for (auto curTp = date; curTp <= endTp; curTp += std::chrono::hours(24)) {
                balance = balanceHistory[curTp - std::chrono::hours(24)]+balanceHistory[curTp];
                std::cout << "balanceHistory = " << balanceHistory[curTp - std::chrono::hours(24)] << "+" << balanceHistory[curTp];
                int multiplier = 0;

                if (income.frequency == "daily") {
                    int daysDiff = daysBetween(date, curTp);
                    if (daysDiff > 0) multiplier = 1;
                } else if (income.frequency == "monthly") {
                    std::tm dateTm = toTm(date);
                    std::tm curDateTm = toTm(curTp);
                    std::tm prevDateTm = curDateTm;
                    prevDateTm.tm_mday -= 1;

                    int monthsCur = monthsBetween(dateTm, curDateTm);
                    int monthsPrev = monthsBetween(dateTm, prevDateTm);

                    if (monthsCur != monthsPrev) multiplier = 1;
                } else if (income.frequency == "yearly") {
                    std::tm dateTm = toTm(date);
                    std::tm curDateTm = toTm(curTp);
                    std::tm prevDateTm = curDateTm;
                    prevDateTm.tm_mday -= 1;

                    int yearsCur = yearsBetween(dateTm, curDateTm);
                    int yearsPrev = yearsBetween(dateTm, prevDateTm);

                    if (yearsCur != yearsPrev) multiplier = 1;
                }

                balance += income.amount * multiplier;
                balanceHistory[curTp] = balance;
            }
        }
    }

    // Заполняем баланс на каждый день, учитывая баланс за прошлый день
    std::map<std::chrono::system_clock::time_point, double> dailyBalance;

    for (auto tp = startTp; tp <= endTp; tp += std::chrono::hours(24)) {
        dailyBalance[tp] += balanceHistory[tp];
    }

    // Создание графика
    QChartView chartView;
    QChart *chart = new QChart();
    chart->setTitle("Баланс пользователя");
    QLineSeries *balanceSeries = new QLineSeries();
    balanceSeries->setName("Баланс");

    for (const auto& [date, value] : dailyBalance) {
        auto timeT = std::chrono::system_clock::to_time_t(date);
        QDateTime qDateTime = QDateTime::fromSecsSinceEpoch(timeT);
        balanceSeries->append(qDateTime.toMSecsSinceEpoch(), value);
    }

    chart->addSeries(balanceSeries);
    QDateTimeAxis *axisX = new QDateTimeAxis();
    axisX->setFormat("yyyy-MM-dd");
    axisX->setTitleText("Дата");
    axisX->setTickCount(7);
    axisX->setLabelsAngle(-30);
    chart->addAxis(axisX, Qt::AlignBottom);
    balanceSeries->attachAxis(axisX);

    QValueAxis *axisY = new QValueAxis();
    axisY->setTitleText("Баланс");
    chart->addAxis(axisY, Qt::AlignLeft);
    balanceSeries->attachAxis(axisY);

    chartView.setChart(chart);
    chartView.resize(1200, 900);

    // Запрос пути для сохранения PDF
    QString fileName = QFileDialog::getSaveFileName(nullptr, "Сохранить PDF", "", "PDF Files (*.pdf)");
    if (fileName.isEmpty()) return "";

    // Сохранение графика в PDF
    QPdfWriter writer(fileName);
    writer.setPageSize(QPageSize(QPageSize::A4));
    writer.setResolution(300);

    QPainter painter(&writer);
    painter.setRenderHint(QPainter::Antialiasing);
    chartView.render(&painter);
    painter.end();

    std::cout << "График сохранен в " << fileName.toStdString() << std::endl;
    return fileName.toStdString();
}

/*std::string GetReport(int userId, const std::string &startDate = "", const std::string &endDate = currentDate) {
    // Определяем даты
    std::chrono::system_clock::time_point startTp, endTp;

    if (startDate.empty()) {
        startTp = parseDate("1990-01-01");
    } else {
        startTp = parseDate(startDate);
    }

    if (endDate.empty()) {
        endTp = parseDate(getCurrentDate());
    } else {
        endTp = parseDate(endDate);
    }

    if (endTp < startTp) {
        std::cerr << "Ошибка: неверный диапазон дат!" << std::endl;
        return "";
    }

    // Загружаем данные пользователя
    Storage storage("data.json");
    UserData userData = storage.getUserData(userId);

    if (userData.expenses.empty() && userData.incomes.empty()) {
        std::cerr << "Ошибка: нет данных для отчета!" << std::endl;
        return "";
    }

    // Фильтруем расходы и доходы по диапазону дат
    std::map<std::chrono::system_clock::time_point, double> balanceHistory;
    double balance = 0;

    for (const auto& expense : userData.expenses) {
        auto date = parseDate(expense.date);
        if (date >= startTp && date <= endTp) {
            balance = -expense.amount;
            balanceHistory[date] = balance;
        }
    }

    for (const auto& income : userData.incomes) {
        auto date = parseDate(income.startDate);
        if (date >= startTp && date <= endTp) {
            for (auto curTp = date; curTp <= endTp; curTp += std::chrono::hours(24)) {
                balance = balanceHistory[curTp - std::chrono::hours(24)]+balanceHistory[curTp];
                std::cout << "balanceHistory = " << balanceHistory[curTp - std::chrono::hours(24)] << "+" << balanceHistory[curTp];
                int multiplier = 0;

                if (income.frequency == "daily") {
                    int daysDiff = daysBetween(date, curTp);
                    if (daysDiff > 0) multiplier = 1;
                } else if (income.frequency == "monthly") {
                    std::tm dateTm = toTm(date);
                    std::tm curDateTm = toTm(curTp);
                    std::tm prevDateTm = curDateTm;
                    prevDateTm.tm_mday -= 1;

                    int monthsCur = monthsBetween(dateTm, curDateTm);
                    int monthsPrev = monthsBetween(dateTm, prevDateTm);

                    if (monthsCur != monthsPrev) multiplier = 1;
                } else if (income.frequency == "yearly") {
                    std::tm dateTm = toTm(date);
                    std::tm curDateTm = toTm(curTp);
                    std::tm prevDateTm = curDateTm;
                    prevDateTm.tm_mday -= 1;

                    int yearsCur = yearsBetween(dateTm, curDateTm);
                    int yearsPrev = yearsBetween(dateTm, prevDateTm);

                    if (yearsCur != yearsPrev) multiplier = 1;
                }

                balance += income.amount * multiplier;
                balanceHistory[curTp] = balance;
            }
        }
    }

    // Заполняем баланс на каждый день, учитывая баланс за прошлый день
    std::map<std::chrono::system_clock::time_point, double> dailyBalance;

    for (auto tp = startTp; tp <= endTp; tp += std::chrono::hours(24)) {
        dailyBalance[tp] += balanceHistory[tp];
    }

    QChartView chartView;
    QChart *chart = new QChart();
    chart->setTitle("Баланс пользователя");

    // Создаем линию для баланса
    QLineSeries *balanceSeries = new QLineSeries();
    balanceSeries->setName("Баланс");

    for (const auto& [date, value] : dailyBalance) {
        auto timeT = std::chrono::system_clock::to_time_t(date);
        QDateTime qDateTime = QDateTime::fromSecsSinceEpoch(timeT);
        balanceSeries->append(qDateTime.toMSecsSinceEpoch(), value);
    }

    chart->addSeries(balanceSeries);

    // Настройка оси X (даты)
    QDateTimeAxis *axisX = new QDateTimeAxis();
    axisX->setFormat("yyyy-MM-dd");
    axisX->setTitleText("Дата");
    axisX->setTickCount(7);
    axisX->setLabelsAngle(-30);
    chart->addAxis(axisX, Qt::AlignBottom);
    balanceSeries->attachAxis(axisX);

    // Настройка оси Y (баланс)
    QValueAxis *axisY = new QValueAxis();
    axisY->setTitleText("Баланс");
    chart->addAxis(axisY, Qt::AlignLeft);
    balanceSeries->attachAxis(axisY);

    chartView.setChart(chart);
    chartView.resize(1200, 900);

    // Сохранение графика в изображение
    QPixmap pixmap(chartView.size());
    pixmap.fill(Qt::white);

    QPainter painter(&pixmap);
    chartView.render(&painter);
    painter.end();

    QString filePath = "chart.png";
    pixmap.save(filePath);

    std::cout << "График сохранен в " << filePath.toStdString() << std::endl;
    return filePath.toStdString();
}
*/
