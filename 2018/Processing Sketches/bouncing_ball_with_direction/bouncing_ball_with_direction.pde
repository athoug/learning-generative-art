// Bouncing ball

// variables
int circleSize = 100; // size of the circle
float half_circle = circleSize/2; // variable to check the border boundries
// initial position of the circle
float circleX;
float circleY;
// variables used to move the circle
float moveX = 1;
float moveY = 1;
// variables for the direction of movment
int directionX = 1;
int directionY = 1;

void setup() {
  size(500, 500);
  stroke(153, 252, 217);
  strokeWeight(4);
  noFill();

  // assign initial values to the position of the circle
  circleX = (width/2);
  circleY = (height/2);
}
void draw() {
  background(22, 155, 107); // to remove shape trail we move background here
  ellipse(circleX, circleY, circleSize, circleSize);

  // move the shape by changing position 
  // move the x and y at a random range between -5 and 5
  moveX = random(5);
  moveY = random(5);

  // increment values
  circleX += (moveX * directionX);
  circleY += (moveY * directionY);

  if (circleX > (width - half_circle) || circleX < half_circle) {
    directionX *= -1;
  }
  
  if (circleY > (height - half_circle) || circleY < half_circle) {
    directionY *= -1;
  }
  
}