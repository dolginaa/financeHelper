#ifndef TEXT_RECOGNITION_H
#define TEXT_RECOGNITION_H

#include <string>
#include <tesseract/baseapi.h>
#include <leptonica/allheaders.h>
#include <opencv2/opencv.hpp>

// Распознавание текста
std::string recognizeText(const cv::Mat &processedImage);

std::wstring toLowerW(const std::wstring& str);

std::wstring utf8ToWstring(const std::string& str);

std::string wstringToUtf8(const std::wstring& wstr);

std::string toLowerUtf8(const std::string& str);

double similarityScore(const std::string& textSegment, const std::string& target);

std::string findSimilarPhrase(const std::string& text, const std::string& query);

std::string findAmountAfterPhrase(const std::string& text, const std::string& phrase);

#endif // TEXT_RECOGNITION_H
