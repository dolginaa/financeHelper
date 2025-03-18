#include "image_processing.h"
#include <iostream>

cv::Mat preprocessImage(const cv::Mat &inputImage) {
    cv::Mat grayImage, blurredImage, binaryImage, closed;

    // градации серого
    cv::cvtColor(inputImage, grayImage, cv::COLOR_BGR2GRAY);

    // Удаление шумов
    cv::GaussianBlur(grayImage, blurredImage, cv::Size(5, 5), 0);

    // Бинаризация
    //cv::threshold(blurredImage, binaryImage, 0, 255, cv::THRESH_BINARY + cv::THRESH_OTSU);
    cv::adaptiveThreshold(blurredImage, binaryImage, 255, cv::ADAPTIVE_THRESH_GAUSSIAN_C, cv::THRESH_BINARY, 11, 2);
    cv::imshow("10. Gray gradation", binaryImage);

    //cv::Mat kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(2, 3));
    //cv::morphologyEx(edged, closed, cv::MORPH_CLOSE, kernel, cv::Point(-1, -1), 0);

    //cv::Mat kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(2, 2));
    //cv::morphologyEx(binaryImage, closed, cv::MORPH_OPEN, kernel, cv::Point(-1, -1), 0);

    return binaryImage;
}

cv::Mat removeShadows(const cv::Mat &grayImage) {
    cv::Mat dilated, background, diff, normalized;

    // для получения фона
    cv::dilate(grayImage, dilated, cv::Mat(), cv::Point(-1, -1), 7);

    // Размытие фона
    cv::medianBlur(dilated, background, 21);

    // Вычитание фона из исходного изображения
    cv::absdiff(grayImage, background, diff);

    // Нормализация
    cv::normalize(diff, normalized, 0, 255, cv::NORM_MINMAX);

    cv::equalizeHist(normalized, normalized);
    cv::imshow("11. Gray gradation", normalized);

    return normalized;
}

cv::Mat correctPerspective(const cv::Mat &inputImage) {
    cv::Mat gray, blurred, edged, closed;

    // Градации серого
    cv::cvtColor(inputImage, gray, cv::COLOR_BGR2GRAY);
    cv::imshow("1. Gray gradation", gray);

    // Увеличение контраста CLAHE
    cv::Ptr<cv::CLAHE> clahe = cv::createCLAHE(2.0);
    clahe->apply(gray, gray);
    cv::imshow("2. CLAHE", gray);

    // Размытие для удаления шума
    cv::GaussianBlur(gray, blurred, cv::Size(7, 5), 0);
    cv::imshow("3. Blur", blurred);

    // Определение контуров
    cv::Canny(blurred, edged, 50, 150);
    cv::imshow("4. Canny", edged);

    // Морфологическое замыкание
    cv::Mat kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(2, 3));
    cv::morphologyEx(edged, closed, cv::MORPH_CLOSE, kernel, cv::Point(-1, -1), 0);
    cv::dilate(edged, closed, kernel);
    cv::imshow("5. Morphology", closed);

    // Поиск контуров
    std::vector<std::vector<cv::Point>> contours;
    cv::findContours(closed, contours, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_SIMPLE);

    if (contours.empty()) {
        std::cerr << "Не удалось найти контуры!" << std::endl;
        return inputImage;
    }

    // Отображение всех найденных контуров
    cv::Mat contourImage = inputImage.clone();
    cv::drawContours(contourImage, contours, -1, cv::Scalar(0, 255, 0), 2);
    cv::imshow("6. All contours", contourImage);

    // Фильтрация по площади контура
    std::vector<cv::Point> bestApprox;
    double maxArea = 0;
    const double minArea = 5000;

    cv::Mat contourDebugImage = inputImage.clone();

    // Цикл для дебага
    /*for (size_t i = 0; i < contours.size(); i++) {
        double peri = cv::arcLength(contours[i], true);
        std::vector<cv::Point> approx;
        double epsilon = 0.03 * peri;

        cv::approxPolyDP(contours[i], approx, epsilon, true);

        while (approx.size() > 4 && epsilon < 0.1 * peri) {
            epsilon *= 1.5;
            cv::approxPolyDP(contours[i], approx, epsilon, true);
        }

        double area = cv::contourArea(approx);

        cv::Scalar color(rand() % 256, rand() % 256, rand() % 256);

        std::cout << "Контур " << i << ": площадь = " << area
                  << ", вершины = " << approx.size()
                  << ", цвет (BGR) = (" << color[0] << ", " << color[1] << ", " << color[2] << ")"
                  << std::endl;

        cv::drawContours(contourDebugImage, contours, i, color, 2);
    }
    cv::imshow("Контуры", contourDebugImage);*/

    for (const auto &contour : contours) {
        double peri = cv::arcLength(contour, true);
        std::vector<cv::Point> approx;
        double epsilon = 0.03 * peri;

        // Чем больше третий параметр, тем сильнее упрощается контур
        cv::approxPolyDP(contour, approx, epsilon, true);

        while (approx.size() > 4 && epsilon < 0.1 * peri) {
            epsilon *= 1.5;
            cv::approxPolyDP(contour, approx, epsilon, true);
        }

        double area = cv::contourArea(approx);

        if (area > 5000 && approx.size() >= 4 && approx.size() <= 7 && area > maxArea) {
            bestApprox = approx;
            maxArea = area;
        }
    }

    if (bestApprox.empty()) {
        std::cerr << "Не удалось найти чек!" << std::endl;
        return inputImage;
    }

    // Отображение найденного четырехугольника
    cv::Mat approxImage = inputImage.clone();
    for (const auto &point : bestApprox) {
        cv::circle(approxImage, point, 5, cv::Scalar(0, 0, 255), -1);
    }
    cv::imshow("7. Found recipe", approxImage);

    // Сортировка точек
    std::sort(bestApprox.begin(), bestApprox.end(), [](const cv::Point &a, const cv::Point &b) {
        return a.y < b.y || (a.y == b.y && a.x < b.x);
    });

    cv::Point2f topLeft = bestApprox[0];
    cv::Point2f topRight = bestApprox[1];

    cv::Point2f bottomLeft = bestApprox[2];
    cv::Point2f bottomRight = bestApprox[3];

    if (topRight.x < topLeft.x) std::swap(topLeft, topRight);
    if (bottomRight.x < bottomLeft.x) std::swap(bottomLeft, bottomRight);

    cv::Point2f src[4] = { topLeft, topRight, bottomRight, bottomLeft };
    float width = cv::norm(bestApprox[1] - bestApprox[0]);
    float height = cv::norm(bestApprox[2] - bestApprox[1]);
    cv::Point2f dst[4] = { {0, 0}, {width - 1, 0}, {width - 1, height - 1}, {0, height - 1} };

    cv::Mat transformMatrix = cv::getPerspectiveTransform(src, dst);
    cv::Mat warped;

    cv::Size newSize((int)width, (int)height);

    cv::warpPerspective(inputImage, warped, transformMatrix, newSize);


    cv::imshow("8. Corrected recipe", warped);

    return warped;
}
