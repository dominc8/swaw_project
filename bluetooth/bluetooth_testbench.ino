#define ledPin 7
#include <SoftwareSerial.h>
int state = 0;
int analogPin = 0;
int analogVal = 0;

SoftwareSerial BTSerial(10, 11); 

void setup() {
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, LOW);
  Serial.begin(38400);
  BTSerial.begin(38400);
}
void loop() {

  Serial.write('1');

  state = BTSerial.read();
  
  if (state == '1') {
    digitalWrite(ledPin, HIGH);
    delay(1000);
    digitalWrite(ledPin, LOW);
    state = 0;
  }
  else {
    delay(100);
  }
  delay(10);
  /*
  else if (state == '0') {
    digitalWrite(ledPin, LOW);
    state = 0;
  }
  */
}


/*
 * 
 * 
  analogVal = analogRead(analogPin);
  delay(100);
void readData(Serial blue_port) {

 Serial.println(Serial.read());
  //Serial.println(analogVal);
 if(Serial.available() > 0){ // Checks whether data is comming from the serial port
    state = Serial.read(); // Reads the data from the serial port
 }
 if (state <= 0) {
  digitalWrite(ledPin, LOW); // Turn LED OFF
  //Serial.println("LED: OFF"); // Send back, to the phone, the String "LED: ON"
  state = 0;
 }
 else if (state > 0) {
  digitalWrite(ledPin, HIGH);
  //Serial.println("LED: ON");;
  state = 0;
 } 
}
*/
