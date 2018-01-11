// create a matrix

void setup() {
  size(250, 250);
}

void draw() {
  // creating the matix 
  pushMatrix(); // starting a matrix
  translate(width/2, height/2); // follow the mouse
  scale(second()/3); // scale over time
  stroke(0, 0, 150);
  fill(0, 0, 200);
  ellipse(0, 0, 25, 25);
  ellipse(0, 25, 25, 25);
  ellipse(0, 50, 25, 25);
  popMatrix(); // closing the matrix
}