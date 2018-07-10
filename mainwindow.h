#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QTimer>
#include <QPushButton>
#include "getcamera.h"


namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:

    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

    void facerecognize();

private:

    Ui::MainWindow *ui;
    QTimer *timer;
    QPushButton *pushButton;

private slots:

    void ShowColorImg();
    void on_pushButton_clicked();
};

#endif // MAINWINDOW_H
