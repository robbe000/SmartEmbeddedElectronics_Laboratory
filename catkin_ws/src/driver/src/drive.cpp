#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"

#include <time.h>
#include <sstream>

ros::Publisher velocity_publisher;

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

int zoek(int initstate) {
  ROS_INFO("%s %d", "Initstate:", initstate);
  switch(initstate) {
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

  return initstate+1;
}

int main(int argc, char **argv)
{
  //Status van de zoeklus
  //0..2 = draai 90° verder om te zoeken;
  //3 = In rondom richting draaien°;
  //4 = Een random lengte bewegen;
  int initstate = 0;

  //Voor random functie
  srand(time(NULL));

  ros::init(argc, argv, "drive");

  ros::NodeHandle n;

  velocity_publisher = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);

  ros::Rate loop_rate(1);

  int count = 0;
  while (ros::ok())
  {
    initstate = zoek(initstate);
    
    ros::spinOnce();

    loop_rate.sleep();
  }


  return 0;
}

