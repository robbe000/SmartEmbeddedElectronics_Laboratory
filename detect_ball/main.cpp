#include <iostream>
#include <opencv2/opencv.hpp>
#include <string.h>

using namespace std;
using namespace cv;



int main(int argc, const char** argv) {
    Mat image;
    Mat splitImage[3];
    Mat outputR, outputG, outputB, output;
    vector<vector<Point>> contours;
    int maximum;

    VideoCapture cap(0);
    if(!cap.isOpened()) {
        return -1;
    }

    while(true) {
        cap >> image;

        //Draai de afbeelding om
        flip(image, image, 1);

        split(image, splitImage);

        threshold(splitImage[2], outputR, 150, 255, CV_THRESH_BINARY);

        threshold(splitImage[0], outputB, 100, 255, CV_THRESH_BINARY);

        threshold(splitImage[1], outputG, 100, 255, CV_THRESH_BINARY);

        //G en B inverteren
        bitwise_not(outputB, outputB);
        bitwise_not(outputG, outputG);

        bitwise_and(outputR, outputB, output);
        bitwise_and(output, outputG, output);

        findContours(output, contours, RETR_EXTERNAL, CHAIN_APPROX_SIMPLE);
        //Grootste bepalen
        maximum = 0;
        for(uint k=1;k<contours.size();k++) {
            if(contourArea(contours[k]) > contourArea(contours[maximum])) {
                maximum = k;
            }
        }

        //De grootste blob tekenen op de afbeelding
        drawContours(image, contours, maximum, Scalar(0,255,0), 3);

        //Een lijn door het midden van de afbeelding tekenen
        line(image, Point(image.cols/2, 0), Point(image.cols/2, image.rows), Scalar(0,255,0), 3);

        //Canter van de blob berekenen
        Moments m = moments(contours[maximum],true);
        Point p(m.m10/m.m00, m.m01/m.m00);

        cout << "Center: " << p << " w:" << image.cols << endl;

        int punt = p.x - image.cols/2;

        cout << "Punt: " << punt << endl;

        circle(image, p, 3, Scalar(0, 255, 0), 3);

        float grote = contours[maximum].size();

        cout << "Grote van de blob:" << grote << endl;

        if(grote < 200) {
            cout << "Blob is te klein" << endl;
            //return 200.0;
        }

        if(grote > 500) {
            cout << "We zijn er!" << endl;
            //return 300.0;
        }

        imshow("Output", image);
        waitKey(100);
    }

    return 0;
}
