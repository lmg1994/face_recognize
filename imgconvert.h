#ifndef IMAGECONVERTE_H
#define IMAGECONVERTE_H

#include <QImage>
#include <QDebug>
#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>



QImage cvMat2QImage(const cv::Mat &mat);

cv::Mat QImage2cvMat(QImage image);

#endif // IMAGECONVERTE_H
