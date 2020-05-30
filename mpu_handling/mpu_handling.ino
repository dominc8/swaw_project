#include "I2Cdev.h"

#define MPU6050_ADDR            0x68


#define MPU6050_CONFIG          0x1A
#define MPU6050_GYRO_CONFIG     0x1B
#define MPU6050_ACCEL_CONFIG    0x1C
#define MPU6050_ACCEL_XOUT_H    0x3B
#define MPU6050_ACCEL_XOUT_L    0x3C
#define MPU6050_ACCEL_YOUT_H    0x3D
#define MPU6050_ACCEL_YOUT_L    0x3E
#define MPU6050_ACCEL_ZOUT_H    0x3F
#define MPU6050_ACCEL_ZOUT_L    0x40
#define MPU6050_PWR_MGMT_1      0x6B
#define MPU6050_WHO_AM_I        0x75

#define MPU6050_ACCEL_BURST_READ_START  MPU6050_ACCEL_XOUT_H
#define MPU6050_ACCEL_BURST_READ_SIZE   (MPU6050_ACCEL_ZOUT_L - MPU6050_ACCEL_XOUT_H + 1)


struct ConfigMessage
{
    uint8_t address;
    uint8_t value;
};

const ConfigMessage config_sequence[] = 
{
    { MPU6050_PWR_MGMT_1,   0x01 },
    { MPU6050_CONFIG,       0x00 },
    { MPU6050_GYRO_CONFIG,  0x00 },
    { MPU6050_ACCEL_CONFIG, 0x00 },
};


void setup()
{
    uint8_t buffer = 0;
    Wire.begin();

    /* Initialize serial communication */
    Serial.begin(38400);

    /* Initialize device */
    Serial.println("Initializing I2C devices...");
    /* Power up and set ranges */
    for (uint8_t i = 0; i < sizeof(config_sequence) / sizeof(*config_sequence); ++i)
    {
        I2Cdev::writeByte(MPU6050_ADDR, config_sequence[i].address, config_sequence[i].value);
    }

    /* Verify connection */
    Serial.println("Verifying connection...");
    I2Cdev::readByte(MPU6050_ADDR, MPU6050_WHO_AM_I, &buffer);
    if (buffer != MPU6050_ADDR)
    {
        Serial.println("Error! Wrong device address!");
    }
}

void loop()
{
    uint8_t buffer[6];
    if (MPU6050_ACCEL_BURST_READ_SIZE == I2Cdev::readBytes(MPU6050_ADDR, MPU6050_ACCEL_BURST_READ_START, MPU6050_ACCEL_BURST_READ_SIZE, buffer))
    {
        /* Send data through bluetooth */
        
    }
}
