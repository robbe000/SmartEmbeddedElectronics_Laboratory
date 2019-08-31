//OpenCV includes
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

//Ros includes
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <cv_bridge/cv_bridge.h>
#include <sstream>
#include "driver/directions.h"

using namespace std;
using namespace cv;


int main(int argc, char **argv)
{
  ros::init(argc, argv, "detection");
  ros::Publisher directions_publisher;

  ros::NodeHandle n;

  directions_publisher = n.advertise<driver::directions>("directions", 1000);

  ros::Rate loop_rate(1);

  ROS_INFO("%s", "Running!");

  Mat image;
  Mat splitImage[3];
  Mat outputR, outputG, outputB, output;
  vector<vector<Point>> contours;
  int maximum;
  int status;
  int punt;
  String infoText;

  VideoCapture cap(0);
  if(!cap.isOpened()) {
    return -1;
  }

  ROS_INFO("%s", "Camera binnen!");

  while (ros::ok()) {
        cap >> image;
        ROS_INFO("%s", "Beeld oke!");

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
        if(contours.size() != 0) {
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
          punt = p.x - image.cols/2;
          punt = punt*(-1);

          cout << "Punt: " << punt << endl;
          circle(image, p, 3, Scalar(0, 255, 0), 3);

          float grote = contours[maximum].size();

          cout << "Grote van de blob:" << grote << endl;


          if(grote < 100) {
              infoText = "Niets gevonden!";
              cout << "Blob is te klein" << endl;
              status = 0;
          }else if(grote > 700) {
              infoText = "We zijn er!";
              cout << "We zijn er!" << endl;
              status=2;
              //return 300.0;
          } else {
            infoText = to_string(punt);
            status=1;
          }


        } else {
          infoText = "Geen blob gevonden!";
          status=0;
        }

        driver::directions msg_directions;
        msg_directions.direction = punt;
        msg_directions.status = status;
        directions_publisher.publish(msg_directions);

        //Info op het beeld weergeven
        putText(image, infoText, Point2f(10,30), FONT_HERSHEY_PLAIN, 2,  Scalar(0,0,255), 2 , 8 , false);

        imshow("Output", image);
        waitKey(100);
  }


  return 0;
}

