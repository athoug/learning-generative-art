// create a matrix

void setup() {
  size(250, 250);
}

void draw() {
  // the if statment checkes if you stopped moving the mouse
  if (mouseX >= pmouseX || mouseY >= pmouseY) {
    // creating the matix 
    pushMatrix(); // starting a matrix
    translate(mouseX, mouseY); // follow the mouse
    rotate(second()); // rotate over time
    stroke(150, 0, 0);
    fill(200, 0, 0);
    ellipse(0, 0, 25, 25);
    ellipse(0, 25, 25, 25);
    ellipse(0, 50, 25, 25);
    popMatrix(); // closing the matrix
  }
  
  stroke(0,0,150);
  fill(0, 0, 200);
  ellipse(0, 0, 25, 25);
  ellipse(0, 25, 25, 25);
  ellipse(0, 50, 25, 25);
}