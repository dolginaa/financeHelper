#include "include/mainwindow.h"
#include <QApplication>
#include <QPdfWriter>
#include <QPainter>
#include <tesseract/baseapi.h>
#include <opencv2/opencv.hpp>
#include <iostream>
#include <string>
#include <leptonica/allheaders.h>
#include "api.h"


int main(int argc, char *argv[]) {
    QApplication a(argc, argv);
    std::string imagePath = "/Users/adolgina/Desktop/recipe11.jpg";
    //std::string imagePath = "/Users/adolgina/Desktop/recipe12.jpg";

    //AddReceipt(imagePath, 1);
    //AddIncome(1, 1000, "daily");

    std::string res = GetReport(1, "2025-03-10", "2025-03-19");

    std::cout << "Тестовый вывод\n" << std::endl;

    return a.exec();
}

