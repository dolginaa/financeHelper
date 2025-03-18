#ifndef STORAGE_H
#define STORAGE_H

#include <string>
#include <vector>
#include <nlohmann/json.hpp>

struct Item {
    std::string name;
    double price;
};

struct Expense {
    std::string date;
    double amount;
    std::vector<Item> items;
};

struct Income {
    std::string startDate;
    double amount;
    std::string frequency;
};

struct UserData {
    int userId;
    std::vector<Expense> expenses;
    std::vector<Income> incomes;
};

class Storage {
public:
    Storage(const std::string& filename);

    void addExpense(int userId, const std::string& date, double amount, const std::vector<Item>& items);
    void addIncome(int userId, const std::string& startDate, double amount, const std::string& frequency);
    UserData getUserData(int userId);

    void saveToFile();
    void loadFromFile();

private:
    std::string filename;
    nlohmann::json jsonData;
};

#endif // STORAGE_H
