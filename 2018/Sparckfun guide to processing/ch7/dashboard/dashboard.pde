PFont font;
String myString = "";
String location = "";
String dispTime = "";

void setup() {
  size(800, 800);
  font = loadFont("Lato.vlw");
}

void draw() {
  background(52, 152, 219);
  
  // check which couadrant the mouse is in and update string accordiingly
  if (mouseX <= width/2 && mouseY <= height/2) {
    myString = "UPPER LEFT";
    fill(241, 196, 15);
  }
  
  if (mouseX >= width/2 && mouseY <= height/2) {
    myString = "UPPER RIGHT";
    fill(230, 126, 34);
  }
  
  if (mouseX <= width/2 && mouseY >= height/2) {
    myString = "LOWER LEFT";
    fill(243, 156, 18);
  }
  
  if (mouseX >= width/2 && mouseY >= height/2) {
    myString = "LOWER RIGHT";
    fill(211, 84, 0);
  }
  // draw the ellipse
  noStroke();
  ellipse(mouseX, mouseY, 200,200);
  // modify the text and display it
  fill(250);
  textFont(font);
  textAlign(CENTER);
  textSize(25);
  text(myString, mouseX, mouseY);
  // showing time and coordinate
  location = "Cursor Location: " + mouseX + " , " + mouseY;
  text(location, width/2, height/2);
  // time
  dispTime = hour() + ":" + minute() + ":" + second();
  text(dispTime, width/2, (height/2) + 45);
}