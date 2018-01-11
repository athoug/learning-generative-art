// create a matrix

void setup() {
  size(250, 250);
}

void draw() {
  stroke(150, 0, 0);
  
  // the if statment checkes if you stopped moving the mouse
  if (mouseX == pmouseX || mouseY == pmouseY) {
    // creating the matix 
    pushMatrix(); // starting a matrix
    translate(mouseX, mouseY); // follow the mouse
    rotate(second()); // rotate over time
    fill(200, 0, 0);
    ellipse(0, 0, 25, 25);
    ellipse(0, 25, 25, 25);
    ellipse(0, 50, 25, 25);
    popMatrix(); // closing the matrix
  }
}