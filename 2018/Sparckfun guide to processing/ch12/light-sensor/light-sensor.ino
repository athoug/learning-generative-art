void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600); // start serial commuication
}

void loop() {
  // put your main code here, to run repeatedly:
  int val = analogRead(A1); // read the light sensor
  Serial.println(val); // print val over serial
  delay(100); // wait 100 milisecons
}
