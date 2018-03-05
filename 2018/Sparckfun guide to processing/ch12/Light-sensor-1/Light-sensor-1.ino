
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600); // start serial commuication
}

void loop() {
  // put your main code here, to run repeatedly:
  int light = analogRead(A1); // read the light sensor

  Serial.println(light);
  delay(100); // wait 100 milisecons
}
