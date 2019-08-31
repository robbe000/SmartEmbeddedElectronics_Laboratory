#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"

#include <string>
#include <time.h>
#include <sstream>
#include "driver/directions.h"

ros::Publisher velocity_publisher;

//State of the search loop
//0..2 = turn 90°;
//3 = Turn a random number of degrees;
//4 = drive a random distance in a straight line;
int initstate_algo;
int angle;

//Feedback from the detection algorithm
//0 = Didn't find the ball;
//1 = Found the ball, angle is given is this message;
//2 = Robot is in front of the ball;
int searchstate;

void directionsCallback(const driver::directions &msg) {
  //ROS_INFO("%s", "Ontvangen");
  if(msg.status >= 0 & msg.status <= 2) {
    searchstate = (int)msg.status;
    angle = (int)msg.direction;
  } else {
    ROS_INFO("%s", "Geen geldig bericht ontvangen!");
  }
}

void draai(float aantal) {
  geometry_msgs::Twist vel_msg;

  vel_msg.linear.x = 0;
  vel_msg.linear.y = 0;
  vel_msg.linear.z = 0;
  vel_msg.angular.z = aantal;

  velocity_publisher.publish(vel_msg);
}

void beweeg(float aantal) {
  geometry_msgs::Twist vel_msg;

  vel_msg.linear.x = aantal;
  vel_msg.linear.y = 0;
  vel_msg.linear.z = 0;
  vel_msg.angular.z = 0;

  velocity_publisher.publish(vel_msg);
}

int zoek(int initstate_zoek) {
  ROS_INFO("%s %d", "Initstate:", initstate_zoek);
  switch(initstate_zoek) {
    case 0:
      draai(2);
      break;
    case 1:
      draai(2);
      break;
    case 2:
      draai(2);
      break;
    case 3:
      draai(rand()%4+1.0);
      break;
    case 4:
      beweeg(rand()%3+1.0);
      break;
    case 5:
      return 0;
      break;
  }

  return initstate_zoek+1;
}

int main(int argc, char **argv)
{
  //Voor random functie
  srand(time(NULL));

  //init
  searchstate=0;
  initstate_algo=0;
  angle=0;
  int movementcounter=0;

  ros::init(argc, argv, "drive");

  ros::NodeHandle n;

  velocity_publisher = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);
  ros::Subscriber directions_sub = n.subscribe("directions", 1000, directionsCallback);
  ros::Rate loop_rate(1);

  int count = 0;
  while (ros::ok())
  {
    switch (searchstate) {
      case 0 :
        initstate_algo = zoek(initstate_algo);
        break;
      case 1:
        initstate_algo=0;
        if(movementcounter==2) {
          draai(angle/100);
          ROS_INFO("%s %f,(%d)", "Angle", angle/100.0, angle);
        } else if (movementcounter==4) {
          beweeg(1);
          movementcounter=0;
        }
        movementcounter++;
        ROS_INFO("%s %d", "Counter", movementcounter);

        break;
      case 2:
        while(true) {}
        break;
    }
    
    ros::spinOnce();

    loop_rate.sleep();
  }


  return 0;
}

