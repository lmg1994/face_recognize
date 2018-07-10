#-------------------------------------------------
#
# Project created by QtCreator 2018-06-22T22:39:17
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = FaceRecognize
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += main.cpp\
        mainwindow.cpp \
    imgconvert.cpp \
    getcamera.cpp \
    dlibfunction.cpp

HEADERS  += mainwindow.h \
    imgconvert.h \
    getcamera.h \
    dlibfunction.h \
    Sort_method.h

FORMS    += mainwindow.ui


INCLUDEPATH += C:/Kinect/v2.0_1409/inc

INCLUDEPATH += C:\opencv3.1_contrib\install\include
INCLUDEPATH += C:\opencv3.1_contrib\install\include\opencv
INCLUDEPATH += C:\opencv3.1_contrib\install\include\opencv2
INCLUDEPATH += C:\libfacedetection-master\include
#LIBS += -LC:\opencv3.1_contrib\install\x64\vc14\bin\opencv_*.lib



INCLUDEPATH += $$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14
DEPENDPATH += $$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_aruco310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_bgsegm310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_calib3d310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_ccalib310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_core310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_datasets310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_dnn310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_dpm310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_face310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_features2d310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_flann310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_fuzzy310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_hdf310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_highgui310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_imgcodecs310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_imgproc310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_line_descriptor310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_ml310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_objdetect310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_optflow310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_photo310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_plot310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_reg310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_rgbd310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_saliency310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_shape310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_stereo310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_structured_light310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_superres310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_surface_matching310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_text310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_tracking310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_ts310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_video310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_videoio310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_videostab310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_xfeatures2d310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_ximgproc310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_xobjdetect310d

win32: LIBS += -L$$PWD/../../../../../../opencv3.1_contrib/install/x64/vc14/lib/ -lopencv_xphoto310d





win32: LIBS += -L$$PWD/../../../../../../Kinect/v2.0_1409/Lib/x64/ -lKinect20

INCLUDEPATH += $$PWD/../../../../../../Kinect/v2.0_1409/Lib/x64
DEPENDPATH += $$PWD/../../../../../../Kinect/v2.0_1409/Lib/x64



win32: LIBS += -L$$PWD/../../../../../../libfacedetection-master/lib/ -llibfacedetect

win32: LIBS += -L$$PWD/../../../../../../libfacedetection-master/lib/ -llibfacedetect-x64

INCLUDEPATH += $$PWD/../../../../../../libfacedetection-master/include
DEPENDPATH += $$PWD/../../../../../../libfacedetection-master/include



win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../../../dlib/lib/ -ldlib19.13
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../../../dlib/lib/ -ldlib19.13d

INCLUDEPATH += $$PWD/../../../../../../dlib/include
DEPENDPATH += $$PWD/../../../../../../dlib/include



win32: LIBS += -L$$PWD/../../../../../../libpng/lib/ -llibpng16

INCLUDEPATH += $$PWD/../../../../../../libpng/include
DEPENDPATH += $$PWD/../../../../../../libpng/include




win32: LIBS += -L$$PWD/'../../../../../../Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64/' -lcublas

win32: LIBS += -L$$PWD/'../../../../../../Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64/' -lcublas_device

win32: LIBS += -L$$PWD/'../../../../../../Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64/' -lcuda

win32: LIBS += -L$$PWD/'../../../../../../Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64/' -lcudadevrt

win32: LIBS += -L$$PWD/'../../../../../../Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64/' -lcudart

win32: LIBS += -L$$PWD/'../../../../../../Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64/' -lcudart_static

win32: LIBS += -L$$PWD/'../../../../../../Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64/' -lcudnn

win32: LIBS += -L$$PWD/'../../../../../../Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64/' -lcufft

win32: LIBS += -L$$PWD/'../../../../../../Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64/' -lcufftw

win32: LIBS += -L$$PWD/'../../../../../../Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64/' -lcurand

win32: LIBS += -L$$PWD/'../../../../../../Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64/' -lcusolver

win32: LIBS += -L$$PWD/'../../../../../../Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64/' -lcusparse

INCLUDEPATH += $$PWD/'../../../../../../Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64'
DEPENDPATH += $$PWD/'../../../../../../Program Files/NVIDIA GPU Computing Toolkit/CUDA/v9.0/lib/x64'
