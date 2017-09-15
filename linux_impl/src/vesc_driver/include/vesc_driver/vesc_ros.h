/**
 * Separate the ROS parts of the VESC interface from the rest of the program.
 */
#include "vesc_driver/platform_flags.h"
#include "vesc_driver/Feedback.h"
#include "vesc_driver/datatypes.h"
#include "vesc_driver/Command.h"
#include "ros/ros.h"

namespace vesc
{

/**
 * Wrapper around ROS stuff, mostly just to make it easier to use this driver on
 * both the M4 and Linux.
 */
#define FEEDBACK_BUF_SIZE 16

void processFeedback(mc_values *);

/**
 * Return true if there are unpublished feedback messages in our buffer.
 */
bool feedbackMessagesPending();

class RosHandler
{
public:
  RosHandler(const char* feedback_topic, const char* command_topic, ros::NodeHandle *nh);

  void commandCallback(const vesc_driver::Command::ConstPtr &msg);
  void publishFeedback();

private:
  ros::Publisher feedback_pub_;

#if PLATFORM_IS_LINUX
  ros::Subscriber command_sub_;
#else
  ros::Subscriber<vesc_driver::Command, RosHandler> command_sub_;
#endif
};

} // vesc