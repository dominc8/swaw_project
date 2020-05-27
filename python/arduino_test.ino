#include <SoftwareSerial.h>
SoftwareSerial BT(1, 0); 
// creates a "virtual" serial port/UART
// connect BT module TX to 0
// connect BT module RX to 1
// connect BT Vcc to 5V, GND to GND
void setup()  
{
  pinMode(13, OUTPUT);
  BT.begin(9600);
}
void loop() 
{
  int rand1 = random(-1000,1000);
  int rand2 = random(-1000,1000);
  BT.write(rand1);
  BT.write(rand2);
  delay(100);
}
