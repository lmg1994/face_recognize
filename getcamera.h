#ifndef GETCAMERA_H
#define GETCAMERA_H
#define DETECT_BUFFER_SIZE 0x20000

#include <QObject>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/core.hpp>
#include <QTimer>
#include <QPixmap>
#include "imgconvert.h"


class GetCamera : public QObject
{
    Q_OBJECT
public:
    void Init();
    ~GetCamera(){
        if(instance != NULL){
            delete instance;
        }
        capture->release();
    }
    void Facedetection();
    static GetCamera *Instance();
    cv::Mat colorImg;
    cv::Mat faceonlyImg;

private:
    static GetCamera *instance;
    cv::VideoCapture *capture;
    IplImage *frame;

public slots:
    void getFrame();
};

#endif // GETCAMERA_H
