#ifndef IMAGE_PROCESSING_H
#define IMAGE_PROCESSING_H

#include <opencv2/opencv.hpp>

// Функции обработки изображений
cv::Mat preprocessImage(const cv::Mat &inputImage);
cv::Mat removeShadows(const cv::Mat &grayImage);
cv::Mat correctPerspective(const cv::Mat &inputImage);

#endif // IMAGE_PROCESSING_H
