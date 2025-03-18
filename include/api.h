#ifndef API_H
#define API_H

#include <string>

void AddReceipt(const std::string& imagePath, int userId);
void AddIncome(int userId, double amount, const std::string& frequency);
std::string GetReport(int userId, const std::string& startDate, const std::string& endDate);
std::string GetExpenseReport(int userId, const std::string& startDate, const std::string& endDate);

#endif // API_H
