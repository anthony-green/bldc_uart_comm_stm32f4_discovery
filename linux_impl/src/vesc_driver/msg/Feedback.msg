float input_voltage
float motor_current
float motor_rpm
float tacho_counts
float tacho_counts_abs

uint8_t FAULT_CODE_NONE = 0
uint8_t FAULT_CODE_OVER_VOLTAGE = 1
uint8_t FAULT_CODE_UNDER_VOLTAGE = 2
uint8_t FAULT_CODE_DRV8302 = 3
uint8_t FAULT_CODE_ABS_OVER_CURRENT = 4
uint8_t FAULT_CODE_OVER_TEMP_FET = 5
uint8_t FAULT_CODE_OVER_TEMP_MOTOR = 6

uint8_t status_code