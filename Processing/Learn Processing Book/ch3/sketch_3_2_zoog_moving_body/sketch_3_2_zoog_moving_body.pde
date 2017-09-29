void setup() {
  size(200, 200); // settnig the size of the window
  println("Take me to your leader!");
}

void draw() {
  background(255); // draw a white background

  //set ellipse and rects mode to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);

  // draw zoog's body 
  stroke(0);
  fill(150);
  rect(mouseX, mouseY, 20, 100);

  // draw zoog's head
  fill(255);
  ellipse(mouseX, mouseY -30, 60, 60);

  // draw zoog's eyes
  fill(0);
  ellipse(81, 70, 16, 32);
  ellipse(119, 70, 16, 32);

  // draw zoog's legs
  stroke(0);
  line(90, 150, 80, 160);
  line(110, 150, 120, 160);
}