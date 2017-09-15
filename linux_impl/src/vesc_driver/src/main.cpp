#include "ros/ros.h"
#include "ros/console.h"
#include "vesc_driver/vesc_usb.h"
#include "std_msgs/String.h"

#include "vesc_driver/vesc_ros.h"


int main(int argc, char** argv)
{
  ros::init(argc, argv, "driver_node");
  ros::NodeHandle nh;

  vesc::RosHandler ros_handler("thing1", "thing2", &nh);

  // initialize vesc communication
  vesc::initComm(vesc::processFeedback);

  ROS_WARN("Listening for VESC commands...");
  while(ros::ok())
  {
    if (vesc::feedbackMessagesPending())
      ros_handler.publishFeedback();
    ros::spinOnce();
  }

  return 0;
}