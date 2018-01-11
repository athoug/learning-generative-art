// create a matrix

void setup() {
  size(250, 250);
}

void draw() {
  stroke(150,0,0);
  // creating the matix 
  pushMatrix(); // starting a matrix
  translate(mouseX, mouseY); // moving the matrix
  fill(200, 0, 0);
  ellipse(0, 0, 25, 25);
  ellipse(0, 25, 25, 25);
  ellipse(0, 50, 25, 25);
  popMatrix(); // closing the matrix
}