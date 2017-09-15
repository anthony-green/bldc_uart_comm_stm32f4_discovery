#include "ros/ros.h"
#include "datatypes.h"
#include "bldc_interface.h"
#include "packet.h"
#include "crc.h"


int main(int argc, char** argv)
{
  ros::init(argc, argv, "~");
  return 0;
}