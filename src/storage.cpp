#include "storage.h"
#include <fstream>

using json = nlohmann::json;

Storage::Storage(const std::string& filename) : filename(filename) {
    loadFromFile();
}

void Storage::addExpense(int userId, const std::string& date, double amount, const std::vector<Item>& items) {
    json expenseJson = {
        {"date", date},
        {"amount", amount},
        {"items", json::array()}
    };

    for (const auto& item : items) {
        expenseJson["items"].push_back({{"name", item.name}, {"price", item.price}});
    }

    jsonData[std::to_string(userId)]["expenses"].push_back(expenseJson);
    saveToFile();
}

void Storage::addIncome(int userId, const std::string& startDate, double amount, const std::string& frequency) {
    jsonData[std::to_string(userId)]["incomes"].push_back({{"startDate", startDate}, {"amount", amount}, {"frequency", frequency}});
    saveToFile();
}

UserData Storage::getUserData(int userId) {
    UserData userData;
    userData.userId = userId;

    if (jsonData.contains(std::to_string(userId))) {
        for (const auto& item : jsonData[std::to_string(userId)]["expenses"]) {
            Expense expense;
            expense.date = item["date"];
            expense.amount = item["amount"];

            for (const auto& itemJson : item["items"]) {
                expense.items.push_back({itemJson["name"], itemJson["price"]});
            }

            userData.expenses.push_back(expense);
        }

        for (const auto& item : jsonData[std::to_string(userId)]["incomes"]) {
            userData.incomes.push_back({item["startDate"], item["amount"], item["frequency"]});
        }
    }

    return userData;
}

void Storage::saveToFile() {
    std::ofstream file(filename);
    if (file.is_open()) {
        file << jsonData.dump(4);
    }
}

void Storage::loadFromFile() {
    std::ifstream file(filename);
    if (file.is_open()) {
        file >> jsonData;
    }
}
