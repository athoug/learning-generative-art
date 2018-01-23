void setup() {
  size(250,250);
  background(#F08888);
  smooth();
}
void draw() {
  background(#F08888);
  String myString = "I love strings even when they're in knots";
  // text modefires
  textAlign(CENTER);
  textSize(20);
  fill(255,255,255);
  // the last two perameters are the dimentions size of the string box to wrap aroound
  text(myString, 10, height/4, 180, 200);
}