/**
 * Interface with the VESC via Linux USB -> FTDI Converter -> VESC
 */
#ifndef VESC_USB_H_
#define VESC_USB_H_

#include "inttypes.h"
#include "vesc_driver/datatypes.h"

namespace vesc
{

typedef void(*feedback_callback_t)(mc_values*);

/**
 * Send a packet over USB
 */
void sendPacket(uint8_t *data, unsigned int length);

/**
 * Initialize USB connection, call bldc_uart_init() with function pointer
 * for sending data.
 *
 * Negative return codes represent an error condition.
 */
int initComm(feedback_callback_t feedback_cb);

/**
 * Whenever a byte is received, call this function with that byte
 */
void byteReceived(uint8_t b);

/**
 * Call this function every millisecond to reset packet state machine in case
 * of potential timeouts.
 */
void onMillisTick();

/**
 * Process all newly received bytes. Return number of bytes processed.
 */
int processBytes();

} // vesc

#endif // VESC_USB_H_