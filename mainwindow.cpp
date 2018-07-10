#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "dlibfunction.h"
#include "Sort_method.h"
#include "string.h"
#include <QMessageBox>



using namespace dlib;
using namespace std;
using namespace cv;

Dlibfunction face_recognize(256);

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    face_recognize.loadDbFace();
    timer = new QTimer(this);
    timer->start(33);

    pushButton = new QPushButton();
    GetCamera::Instance()->Init();

    connect(timer,SIGNAL(timeout()),this,SLOT(ShowColorImg()),Qt::DirectConnection);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::facerecognize()
{
    matrix<rgb_pixel> face_cap;
    //save the capture in the project directory
    load_image(face_cap, ".\\cap.jpg");

    //Display the raw image on the screen
    image_window win1(face_cap);

    frontal_face_detector detector = get_frontal_face_detector();
    std::vector<matrix<rgb_pixel>> vect_faces;

    for (auto face : detector(face_cap))
    {
        auto shape = face_recognize.sp(face_cap, face);
        matrix<rgb_pixel> face_chip;
        extract_image_chip(face_cap, get_face_chip_details(shape, 150, 0.25), face_chip);
        vect_faces.push_back(std::move(face_chip));//尾部加入数据?
        win1.add_overlay(face);
    }

    if (vect_faces.size() != 1)
    {
        QString message = QString("Capture face error! face number %1").arg(vect_faces.size());
        QMessageBox::about(NULL, "Yep!", message);
        //cout <<"Capture face error! face number "<< vect_faces.size()  << endl;
        return;
    }

    //Use DNN and get the capture face's feature with 128D vector
    std::vector<matrix<float, 0, 1>> face_cap_desc = face_recognize.net(vect_faces);
    //Browse the face feature from the database, and find the match one
    std::pair<double,std::string> candidate_face;
    std::vector<double> len_vec;

    std::vector<std::pair<double, std::string>> candi_face_vec;
    candi_face_vec.reserve(256);

    for (size_t i = 0; i < face_recognize.face_desc_vec.size(); ++i)
    {
        auto len = length(face_cap_desc[0] - face_recognize.face_desc_vec[i].face_feature);
        if (len < 0.45)
        {
            len_vec.push_back(len);
            candidate_face.first = len;
            candidate_face.second = face_recognize.face_desc_vec[i].name.c_str();
            candi_face_vec.push_back(candidate_face);

    #ifdef _FACE_RECOGNIZE_DEBUG
                char buffer[256] = {0};
                sprintf_s(buffer, "Candidate face %s Euclid length %f",
                    face_recognize.face_desc_vec[i].name.c_str(),len);
    #endif
        }
        else
        {
            cout << "This face from database is not match the capture face, continue!" << endl;
        }
    }

    //Find the most similar face
    if (len_vec.size() != 0)
    {
        shellSort(len_vec);

        int i(0);
        for (i = 0; i != len_vec.size(); i++)
        {
            if (len_vec[0] == candi_face_vec[i].first)
                break;
        }

        char buffer[256] = { 0 };
        //sprintf_s(buffer, "The face is %s -- Euclid length %f",candi_face_vec[i].second.c_str(), candi_face_vec[i].first);
        QString message = QString("The face is %1 -- Euclid length %2").arg(candi_face_vec[i].second.c_str(),candi_face_vec[i].first);
        QMessageBox::about(NULL, "Yep!", message);
        return;
    }
}

void MainWindow::ShowColorImg()
{
    GetCamera::Instance()->getFrame();
    if(!GetCamera::Instance()->colorImg.empty()){
    QImage qimage;
    qimage = cvMat2QImage(GetCamera::Instance()->colorImg);
    ui->label->setPixmap(QPixmap::fromImage(qimage));
    }
}




void MainWindow::on_pushButton_clicked()
{
    facerecognize();
}
