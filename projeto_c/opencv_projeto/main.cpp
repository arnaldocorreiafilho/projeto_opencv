#include <QCoreApplication>
#include <opencv2/highgui.hpp>
#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <iostream>

using namespace cv;
using namespace std;

int main()
{
    Mat image;
    image = imread("/home/arnaldo/opencv_projeto/lena.png");   // Read the file

    if(!image.data)
    {
        cout << "nenhuma imagem!";
    }
    else
    {
        cout << "imagem carregada!";
    }

    cv::namedWindow("Teste imagem");
    cv::imshow("Teste imagem", image);
    cv::waitKey(0);
    return 0;
}
