PFont myFont;
String myString = "";

void setup() {
  size(800, 1100);
  background(255);
  myFont = loadFont("Lato.vlw");
}
void draw() {
  background(255);
  textFont(myFont);
  fill(10);
  text(myString, 10, 10, width, height);
}

void keyPressed() {
  myString += key;
}