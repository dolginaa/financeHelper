#include <gtest/gtest.h>
#include <poppler/cpp/poppler-document.h>
#include <poppler/cpp/poppler-page.h>
#include <poppler/cpp/poppler-page-renderer.h>
#include <opencv2/opencv.hpp>
#include <filesystem>
#include <iostream>

namespace fs = std::filesystem;

std::string generatedPDF;
std::string expectedPDF;

cv::Mat extractImageFromPDF(const std::string& pdfPath) {
    std::unique_ptr<poppler::document> doc(poppler::document::load_from_file(pdfPath));
    if (!doc || doc->is_encrypted()) {
        throw std::runtime_error("Ошибка загрузки PDF: " + pdfPath);
    }

    std::unique_ptr<poppler::page> page(doc->create_page(0));
    if (!page) {
        throw std::runtime_error("Ошибка извлечения страницы из PDF: " + pdfPath);
    }

    poppler::page_renderer renderer;
    poppler::image pdfImage = renderer.render_page(page.get());

    if (pdfImage.width() == 0 || pdfImage.height() == 0) {
        throw std::runtime_error("Ошибка рендеринга PDF в изображение: " + pdfPath);
    }

    cv::Mat img;
    if (pdfImage.format() == poppler::image::format_rgb24) {
        img = cv::Mat(cv::Size(pdfImage.width(), pdfImage.height()), CV_8UC3, (void*)pdfImage.data(), cv::Mat::AUTO_STEP);
        cv::cvtColor(img, img, cv::COLOR_RGB2GRAY);
    } else if (pdfImage.format() == poppler::image::format_argb32) {
        img = cv::Mat(cv::Size(pdfImage.width(), pdfImage.height()), CV_8UC4, (void*)pdfImage.data(), cv::Mat::AUTO_STEP);
        cv::cvtColor(img, img, cv::COLOR_RGBA2GRAY);
    } else {
        throw std::runtime_error("Неподдерживаемый формат изображения PDF: " + pdfPath);
    }

    return img.clone();
}

double computeSSIM(const cv::Mat& img1, const cv::Mat& img2) {
    cv::Mat img1Float, img2Float;
    img1.convertTo(img1Float, CV_64F);
    img2.convertTo(img2Float, CV_64F);

    cv::Mat mean1, mean2, stddev1, stddev2;
    cv::meanStdDev(img1Float, mean1, stddev1);
    cv::meanStdDev(img2Float, mean2, stddev2);

    cv::Mat covar;
    cv::Mat img1Mean = img1Float - mean1.at<double>(0,0);
    cv::Mat img2Mean = img2Float - mean2.at<double>(0,0);
    cv::multiply(img1Mean, img2Mean, covar);
    double covarMean = cv::mean(covar)[0];

    double c1 = 6.5025, c2 = 58.5225;
    double ssim = (2 * mean1.at<double>(0,0) * mean2.at<double>(0,0) + c1) *
                  (2 * covarMean + c2) /
                  ((mean1.at<double>(0,0) * mean1.at<double>(0,0) + mean2.at<double>(0,0) * mean2.at<double>(0,0) + c1) *
                   (stddev1.at<double>(0,0) * stddev1.at<double>(0,0) + stddev2.at<double>(0,0) * stddev2.at<double>(0,0) + c2));

    return ssim;
}

TEST(PDFTest, CompareGeneratedWithReference) {
    ASSERT_TRUE(fs::exists(generatedPDF)) << "Сгенерированный PDF отсутствует!";
    ASSERT_TRUE(fs::exists(expectedPDF)) << "Эталонный PDF отсутствует!";

    cv::Mat img1 = extractImageFromPDF(generatedPDF);
    cv::Mat img2 = extractImageFromPDF(expectedPDF);

    ASSERT_FALSE(img1.empty()) << "Ошибка извлечения изображения из " << generatedPDF;
    ASSERT_FALSE(img2.empty()) << "Ошибка извлечения изображения из " << expectedPDF;

    double ssim = computeSSIM(img1, img2);
    std::cout << "SSIM: " << ssim << std::endl;

    ASSERT_GT(ssim, 0.5) << "Графики отличаются!";
}

// Функция main для обработки аргументов командной строки
int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);

    if (argc < 3) {
        std::cerr << "Использование: " << argv[0] << " <generatedPDF> <expectedPDF>" << std::endl;
        return 1;
    }

    generatedPDF = argv[1];
    expectedPDF = argv[2];

    return RUN_ALL_TESTS();
}
