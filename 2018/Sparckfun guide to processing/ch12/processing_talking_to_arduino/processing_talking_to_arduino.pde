import processing.serial.*;

Serial myPort;

float temp = 0;
float light = 0;
float sound = 0;

void setup() {
  size(700, 400);

  for (int i=0; i < Serial.list().length; i++) {
    println(Serial.list()[i]);
  }
  //println(Serial.list());
  myPort = new Serial(this, Serial.list()[2], 9600);

  // generate new serial event at new line
  myPort.bufferUntil('\n');
}

void draw() {
  // print cerial data to console
  println(light + " , " + sound + " , " + temp);

  background(150);

  stroke(0); // base-level line color
  line(0, 300, width, 300); // base-level line

  noStroke(); // remove outline
  fill(0, 255, 0); // light rectangle
  rect(300, 300, 100, -light);

  fill(0, 0, 255); // sound rectangle
  rect(500, 300, 100, -sound);

  fill(255, 0, 0); // temp rectangle
  rect(100, 300, 100, -temp);
  
  fill(0); // black text
  textAlign(CENTER);
  text("light: " + light, 150, 325);
  text("sound: " + sound, 350, 325);
  text("temperature: " + temp, 550, 325);
  
}

void serialEvent(Serial myPort) {
  String inString = myPort.readStringUntil('\n');

  if (inString != null) {
    inString = trim(inString);
    float[] vals = float(split(inString, ","));

    if (vals.length >= 3) {
      light = map(vals[0], 0, 1023, 0, 200);
      sound = map(vals[1], 0, 1023, 0, 200);
      temp = map(vals[2], 0, 1023, 0, 200);
    }
  }
}