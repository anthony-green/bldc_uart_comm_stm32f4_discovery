#include "vesc_driver/vesc_usb.h"

#include "serial/serial.h"

extern "C"
{
  #include "vesc_driver/platform_flags.h"
  #include "vesc_driver/bldc_interface.h"
  #include "vesc_driver/packet.h"
}


namespace vesc
{

// Settings
#define PACKET_HANDLER      0
#define MAX_BYTES_PER_READ  5

#if PLATFORM_IS_LINUX
static serial::Serial ser;
#endif

static void serialSendPacket(uint8_t *data, unsigned int length)
{
  ser.write(data, (size_t)length);
}

/**
 * return -2 -> IOException
 * return -1 -> other error
 * return  0 -> all good
 */
static int initSerial()
{
#if PLATFORM_IS_LINUX
  // initialize USB port
  ser.setPort("/dev/ttyACM0");
  ser.setBaudrate(115200);

  try
  {
    ser.open();
  }
  catch (serial::IOException)
  {
    return -2;
  }

  if (!ser.isOpen()) return -1;
  return 0;
#endif
}

static size_t readBytes(uint8_t * dest, unsigned int max_bytes)
{
#if PLATFORM_IS_LINUX
  return ser.read(dest, max_bytes);
#endif
}

/**
 * Use the packet handler to send packets. This will ultimately end up calling
 * the function that is passed as the *sendFunc in the call to:
 *
 *    packet_init()
 *
 * below.
 */
void sendPacket(uint8_t *data, unsigned int length)
{
  packet_send_packet(data, length, PACKET_HANDLER);
}


int initComm(feedback_callback_t feedback_cb)
{
  initSerial();
  
  // pass function for sending whole packet as well as function
  // for receiving whole packet to the packet.h
  packet_init(serialSendPacket, bldc_interface_process_packet, PACKET_HANDLER);

  bldc_interface_init(sendPacket);
  bldc_interface_set_rx_value_func(feedback_cb);
}



void byteReceived(uint8_t b)
{
  packet_process_byte(b, PACKET_HANDLER);
}

void onMillisTick()
{
  packet_timerfunc();
}

int processBytes()
{
  uint8_t buf[MAX_BYTES_PER_READ];
  size_t bytes_read = readBytes(buf, MAX_BYTES_PER_READ);

  if (bytes_read > 0)
  {
    for (int i = 0; i < bytes_read; ++i)
      byteReceived(buf[i]);
  }
  return bytes_read;
}

} // vesc