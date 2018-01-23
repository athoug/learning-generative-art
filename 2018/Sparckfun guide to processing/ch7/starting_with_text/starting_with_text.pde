String myOtherString = "Something cool";
String aString = "is going to happen, I promise!";
String myString = "";

void setup() {
  size(250,250);
  myString = myOtherString + " " + aString;
  print(myString);
}
void draw() {
  // draw the string on the canvas
  // it takes 3 parameters
  // 1. data t o display
  // 2. the x coordinate
  // 3. the y coordinate
  text(myString, 125, 125);
}