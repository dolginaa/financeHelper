#include "text_recognition.h"
#include <iostream>
#include <QApplication>
#include <QPdfWriter>
#include <QPainter>
#include <tesseract/baseapi.h>
#include <opencv2/opencv.hpp>
#include <string>
#include <leptonica/allheaders.h>
#include <locale>
#include <regex>

std::string recognizeText(const cv::Mat &processedImage) {
    tesseract::TessBaseAPI tess;

    // Попытается правильно сегментировать текст по колонкам абзацам и тд
    tess.SetPageSegMode(tesseract::PSM_SINGLE_BLOCK);
    tess.SetVariable("tessedit_char_whitelist", "АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ0123456789");

    if (tess.Init(NULL, "rus", tesseract::OEM_LSTM_ONLY) != 0) {
        std::cerr << "Ошибка: не удалось инициализировать Tesseract!" << std::endl;
        return "";
    }

    tess.SetImage(processedImage.data, processedImage.cols, processedImage.rows, 1, processedImage.step);

    std::string recognizedText = tess.GetUTF8Text();

    return recognizedText;
}

// Функция перевода в нижний регистр
std::wstring toLowerW(const std::wstring& str) {
    std::locale loc("ru_RU.UTF-8");
    std::wstring lowerStr = str;

    std::transform(lowerStr.begin(), lowerStr.end(), lowerStr.begin(),
                   [&loc](wchar_t c) { return std::tolower(c, loc); });

    return lowerStr;
}

std::wstring utf8ToWstring(const std::string& str) {
    std::mbstate_t state = std::mbstate_t();
    const char* src = str.data();
    size_t len = std::mbsrtowcs(nullptr, &src, 0, &state);
    if (len == static_cast<size_t>(-1)) {
        throw std::runtime_error("Ошибка при конвертации в wstring");
    }
    std::wstring wstr(len, L'\0');
    std::mbsrtowcs(&wstr[0], &src, len, &state);
    return wstr;
}

std::string wstringToUtf8(const std::wstring& wstr) {
    std::mbstate_t state = std::mbstate_t();
    const wchar_t* src = wstr.data();
    size_t len = std::wcsrtombs(nullptr, &src, 0, &state);
    if (len == static_cast<size_t>(-1)) {
        throw std::runtime_error("Ошибка при конвертации в string");
    }
    std::string str(len, '\0');
    std::wcsrtombs(&str[0], &src, len, &state);
    return str;
}

std::string toLowerUtf8(const std::string& str) {
    return wstringToUtf8(toLowerW(utf8ToWstring(str)));
}

// Функция для вычисления похожести подстроки
double similarityScore(const std::string& textSegment, const std::string& target) {
    int matchCount = 0;
    for (char targetChar : target) {
        if (textSegment.find(targetChar) != std::string::npos) {
            matchCount++;
        }
    }
    return static_cast<double>(matchCount) / target.size();
}

// Функция находит подстроку, похожую на заданный шаблон
std::string findSimilarPhrase(const std::string& text, const std::string& query) {
    std::string lowerText = toLowerUtf8(text);
    std::string lowerQuery = toLowerUtf8(query);

    size_t found = lowerText.find(lowerQuery);
    if (found != std::string::npos) {
        return text.substr(found, query.length());
    }
    return "";
}

// Функция находит сумму после найденной фразы
std::string findAmountAfterPhrase(const std::string& text, const std::string& phrase) {
    std::regex amountPattern(R"(=?\s*(\d{1,5}(?:[\.,]\d{1,2})?))");
    std::string lowerText = toLowerUtf8(text);

    size_t phrasePos = lowerText.find(toLowerUtf8(phrase));
    if (phrasePos == std::string::npos) return "";

    std::string afterPhrase = text.substr(phrasePos + phrase.length());
    std::smatch match;
    if (std::regex_search(afterPhrase, match, amountPattern)) {
        return match[1];
    }
    return "";
}
