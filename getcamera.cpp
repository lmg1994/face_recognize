#include "getcamera.h"
#include <QDebug>
#include <facedetect-dll.h>
#include <direct.h>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/core/utility.hpp>
#include <opencv2/core/ocl.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/features2d.hpp>
#include <opencv2/calib3d.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/flann.hpp>
#include <opencv2/xfeatures2d.hpp>
#include <opencv2/ml.hpp>
#include <opencv2/face.hpp>
#include <opencv2/face/facerec.hpp>
#include <opencv2/objdetect.hpp>

using namespace cv;
using namespace std;


GetCamera *GetCamera::instance = NULL;
string filename = "./cap.jpg";

GetCamera *GetCamera::Instance()
{
    if(instance == NULL){
        instance = new GetCamera;
    }
    return instance;
}

void GetCamera::Init()
{
    capture = new cv::VideoCapture(0);
}


void GetCamera::Facedetection()
{
    cv::Mat faceImg = colorImg;
    int x = 0;
    int y = 0;
    int w = 0;
    int h = 0;
    int neighbors = 0;
    int angle = 0;
    vector<double> predicted_confidence_vector;
    vector<cv::Rect> detectRect;
    cv::Mat faceGrayImg;
    //resize(faceImg,faceImg,Size(720,480));
    cv::cvtColor(faceImg, faceGrayImg, cv::COLOR_BGR2GRAY);
    int doLandmark = 0;
    unsigned char *pBuffer = (unsigned char *)malloc(DETECT_BUFFER_SIZE);
    int *pResults;

    pResults = facedetect_multiview(pBuffer, (unsigned char*)(faceGrayImg.ptr(0)), faceGrayImg.cols, faceGrayImg.rows, (int)faceGrayImg.step,
                                        1.2f, 2, 48, 0, doLandmark);
    for (int i = 0; i < (pResults ? *pResults : 0); i++)
    {
        short * p = ((short*)(pResults + 1)) + 142 * i;
        x = p[0];
        y = p[1];
        w = p[2];
        h = p[3];
        neighbors = p[4];
        angle = p[5];
        rectangle(faceImg, cv::Rect(x, y, w, h), cv::Scalar(0, 255, 0), 2);
        detectRect.push_back(cv::Rect(x, y, w, h));
        if(0 <= x && 0 <= w && x + w <= faceImg.cols && 0 <= y && 0 <= h && y + h <= faceImg.rows)
        {
            faceonlyImg = faceImg(Rect(x, y, w, h));
            imwrite(filename, faceonlyImg);
        }
    }
    pResults = NULL;
    free(pBuffer);
    cv::waitKey(1);
}


void GetCamera::getFrame()
{
    capture->read(colorImg);
    Facedetection();
    QImage result = cvMat2QImage(colorImg);
}

