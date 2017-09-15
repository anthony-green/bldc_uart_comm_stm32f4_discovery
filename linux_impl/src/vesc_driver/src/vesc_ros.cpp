#include "vesc_driver/vesc_ros.h"
#include "vesc_driver/vesc_usb.h"
#include "ros/ros.h"

namespace vesc
{

// M4 ROS requires this :(
#if !(PLATFORM_IS_LINUX)
static const vesc_driver::Feedback init_feedback_msg;
static const vesc_driver::Command  init_command_msg;
#endif

static vesc_driver::Feedback msgs_to_publish[FEEDBACK_BUF_SIZE];
static volatile int fbBufWriteIndex = 0;
static volatile int fbBufReadIndex = 0;

RosHandler::RosHandler(
  const char* feedback_topic, const char* command_topic,
  ros::NodeHandle *nh
)
#if !(PLATFORM_IS_LINUX)
  : feedback_pub_(feedback_topic, &init_feedback_msg)
  , command_sub_(command_topic, &RosHandler::commandCallback, this)
{
  nh->advertise(feedback_pub_);
  nh->subscribe(command_sub_);
};
#else
{
  feedback_pub_ = nh->advertise<vesc_driver::Feedback>(feedback_topic, 1);
  command_sub_ = nh->subscribe(command_topic, 1, &RosHandler::commandCallback, this);
}
#endif

/**
 * Receive a commands callback, give it to the VESC.
 */
void RosHandler::commandCallback(const vesc_driver::Command::ConstPtr &msg)
{

#if PLATFORM_IS_LINUX

  ROS_WARN_STREAM("Received vesc_cmd message: " << *msg);
  uint8_t data = (msg->target_cmd);
  sendPacket(&data, 1);
#endif

}

/**
 * Format and publish a ROS message based on received values from the VESC.
 */
void RosHandler::publishFeedback()
{
  if (!feedbackMessagesPending)
    return;
  feedback_pub_.publish(msgs_to_publish[fbBufReadIndex]);
  fbBufReadIndex = (fbBufReadIndex + 1) % FEEDBACK_BUF_SIZE;
}

/**
 * Parse "values" and store the resulting Feedback message in our buffer.
 * Publish it in the main loop.
 */
void processFeedback(mc_values* values)
{
  vesc_driver::Feedback msg;
  msg.input_voltage    = values->v_in;
  msg.motor_current    = values->current_motor;
  msg.motor_rpm        = values->rpm;
  msg.tacho_counts     = values->tachometer;
  msg.tacho_counts_abs = values->tachometer_abs;

  msgs_to_publish[fbBufWriteIndex] = msg;
  fbBufWriteIndex = (fbBufWriteIndex + 1) % FEEDBACK_BUF_SIZE;
}

bool feedbackMessagesPending()
{
  return fbBufWriteIndex != fbBufReadIndex;
}

} // vesc