#include <QApplication>
#include "mainwindow.h"

int main(int argc, char *argv[]) {
    QApplication a(argc, argv);

    //std::string imagePath = "/Users/adolgina/Desktop/recipe11.jpg";
    //std::string imagePath = "/Users/adolgina/Desktop/recipe12.jpg";

    MainWindow w;
    w.show();

    return a.exec();
}
