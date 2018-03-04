void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600); // start serial commuication
}

void loop() {
  // put your main code here, to run repeatedly:
  int light = analogRead(A1); // read the light sensor
  int sound = analogRead(A2); // read the sound sensor
  int temp = analogRead(A0); // read the temp sensor

  Serial.print(light);
  Serial.print(",");
  Serial.print(sound);
  Serial.print(",");
  Serial.println(temp); // print val over serial
  delay(100); // wait 100 milisecons
}
