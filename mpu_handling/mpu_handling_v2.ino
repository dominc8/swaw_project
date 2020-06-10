#include "I2Cdev.h"

#define MPU6050_ADDR            0x68

//Diode for signaling the transfer
#define ledPin 7


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
#define MPU6050_ACCEL_BURST_READ_SIZE   (MPU6050_ACCEL_YOUT_L - MPU6050_ACCEL_XOUT_H + 1)


SoftwareSerial BT(1, 0); 
// creates a "virtual" serial port/UART
// connect BT module TX to 0
// connect BT module RX to 1
// connect BT Vcc to 5V, GND to GND

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
    { MPU6050_ACCEL_CONFIG, 0x08 }, /* 2b, 2g - 16g, 0x18 -> 16g*/
};


volatile uint8_t timer_flag = 0;

void setup()
{
    uint8_t buffer = 0;
    Wire.begin();
    
    /* Initialize bluetooth communication */
    pinMode(ledPin, OUTPUT);
    BT.begin(38400);

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

    /* Configure 1kHz timer */
    noInterrupts();
    TCCR1A = 0;
    TCCR1B = 0;
    TCNT1  = 0;
    OCR1A = 249;
    TCCR1A |= (1 << WGM12);
    TCCR1B |= (3 << CS10);
    TIMSK1 |= (1 << OCIE1A);
    interrupts();

}

void loop()
{
    static uint8_t buffer[MPU6050_ACCEL_BURST_READ_SIZE];
    static int32_t x_vel = 0, y_vel = 0;
    static int16_t x_dvel = 0, y_dvel = 0;
    static int32_t out_data[2];
    if (timer_flag == 1)
    {
        timer_flag = 0;
        if (MPU6050_ACCEL_BURST_READ_SIZE == I2Cdev::readBytes(MPU6050_ADDR, MPU6050_ACCEL_BURST_READ_START, MPU6050_ACCEL_BURST_READ_SIZE, buffer))
        {
            x_dvel = (int16_t)((((uint16_t)buffer[0]) << 8) + buffer[1]);
            y_dvel = (int16_t)((((uint16_t)buffer[2]) << 8) + buffer[3]);
            out_data[0] = x_vel + x_dvel/2;
            out_data[1] = y_vel + y_dvel/2;
            x_vel += x_dvel;
            y_vel += y_dvel;
            
            /* Send data through bluetooth */
            digitalWrite(ledPin, HIGH); // LED ON
            BT.write(255);
			BT.write((byte*)&out_data[0], 8);
            digitalWrite(ledPin, LOW); // LED Off
        }
    }
}


ISR(TIMER1_COMPA_vect)
{
    timer_flag = 1;
}
