
int state = 0;
int data = 0;
int dataRdy = 0;

void setup() {
  Serial.begin(38400); // Default communication rate of the Bluetooth module
}
void loop() {
 if(Serial.available() > 0){ // Checks whether data is comming from the serial port
    state = Serial.read(); // Reads the data from the serial port
 }

 if (dataRdy == 1) {
   Serial.write(data); // Sends '1' to the master to turn on LED
 }
}
