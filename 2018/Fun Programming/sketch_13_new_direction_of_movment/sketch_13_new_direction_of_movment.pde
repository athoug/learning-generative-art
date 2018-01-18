// having objects move in diffrent directions
// not only to the right and left 

// variables
int circleSize = 100;
float circleX;
float circleY;

float moveX;
float moveY;

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
  // positive values for x makes it move right [straight]
  // negative values for x makes it move left  [straight]
  // positive values for y makes it move down  [straight]
  // negative values for y makes it move up    [straight]
  // to move diagonaily we need to move both x and y remember cartecian plain
  
  // move the x and y at a random range between -5 and 5
  moveX = random(-5, 5);
  moveY = random(-5, 5);
  
  // increment values
  circleX += moveX;
  circleY += moveY;
}