float32 input_voltage
float32 motor_current
float32 motor_rpm
float32 tacho_counts
float32 tacho_counts_abs

uint8 FAULT_CODE_NONE = 0
uint8 FAULT_CODE_OVER_VOLTAGE = 1
uint8 FAULT_CODE_UNDER_VOLTAGE = 2
uint8 FAULT_CODE_DRV8302 = 3
uint8 FAULT_CODE_ABS_OVER_CURRENT = 4
uint8 FAULT_CODE_OVER_TEMP_FET = 5
uint8 FAULT_CODE_OVER_TEMP_MOTOR = 6

uint8 status_code