var x = 0; // declaring the x variable that holds the startig position
var movment = 3; // the variable that holds the increase of the x position

function setup() {
  createCanvas(600, 400); // set up the canvas
}

function draw() {
  background(10); // background
  
  // shape properties
  stroke(250);
  strokeWeight(4);
  noFill();
  ellipse(x, 200, 100, 100); // draw the ellipse
  
  // bounce the ball
  if(x > (width - 50)) {
    movment *= -1;
    print("off the screen");
  }
  
  x += movment; // move the circle
}