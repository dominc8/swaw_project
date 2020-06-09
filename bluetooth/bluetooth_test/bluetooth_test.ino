#include <SoftwareSerial.h>
SoftwareSerial BT(1, 0); 
// creates a "virtual" serial port/UART
// connect BT module TX to 0
// connect BT module RX to 1
// connect BT Vcc to 5V, GND to GND
static int32_t out_data[2];

void setup()  
{  
  pinMode(13, OUTPUT);
  BT.begin(9600);
}
void loop() 
{
  out_data[0] = random(-10000,10000);
  out_data[1] = random(-10000,10000);
  BT.write(255);
  BT.write((byte*)&out_data[0], 8);
  //BT.write((byte*)&out_data[1], 8);
  //BT.write(buf, 8);
  //BT.write((out_data+1), 8);
  delay(100);
}
