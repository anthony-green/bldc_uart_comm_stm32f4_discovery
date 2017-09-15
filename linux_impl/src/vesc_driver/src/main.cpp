#include "ros/ros.h"
#include "ros/console.h"
#include "vesc_usb.h"
#include "std_msgs/String.h"


void vescCommandCallback(const std_msgs::String::ConstPtr & msg)
{
  ROS_WARN_STREAM("Received vesc_cmd message: " << *msg);
}

// void vescFeedbackPublish(const )


int main(int argc, char** argv)
{
  ros::init(argc, argv, "driver_node");
  ros::NodeHandle nh_;

  // initialize the usb communication
  vesc::initComm();

  // setup ROS callbacks for writing to the VESC
  ros::Subscriber cmd_sub_ = nh_.subscribe("vesc_cmd", 1, vescCommandCallback);

  ROS_WARN("Listening for VESC commands...");
  while(ros::ok())
  {
    ros::Duration(1.0).sleep();
    ros::spinOnce();
  }

  return 0;
}