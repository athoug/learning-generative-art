int x = 400; // starting position for the ball
int grow = 5; // how fast the ball will move with time

void setup() {
  size(800, 800); // set the size of the window
  smooth();
}

void draw() {
  background(150); // set the background color for the stage
  fill(150, 0, 0); // set up a fill color for the ellipse
  ellipse(x, 400, 100, 100);
  x += grow; // change the position of the ellipse through every itteration by the groth varaible
  
  // make sure that it doesn't go off the screen (create walls)
  if( (x >= width - 50) || (x <= 50)) {
    grow *= -1; // if it goes off bount change the direction of growths
  }
}