void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  rectMode(CENTER);
  ellipseMode(CENTER);

  translate(mouseX, mouseY); // all shapes drawn after translate will be relative to mouseX, and mouseY

  // draw Zoog's body
  stroke(0);
  fill(175);
  rect(0, 0, 20, 100);

  // draw zoogs head
  stroke(0);
  fill(255);
  ellipse(0, -30, 60, 60);
  // draw zoog's eye's
  stroke(0);
  fill(0);
  ellipse(-19, -30, 16, 32);
  ellipse(19,-30,16, 32);
  
  // draw zoog's legs
  stroke(0);
  line(-10,50,-20,60);
  line(10,50,20,60);
}