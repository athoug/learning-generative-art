float x;
float y = 0;
int size = 20;

float speed = 1;
float gravity = 0.2;

void setup() {
  size(400, 400);
  x = width/2;
}
void draw() {
  background(#3498db);

  // draw the ball
  noStroke();
  fill(#2980b9);
  ellipse(x, y, 20, 20);

  /*
    speed is the rate of change of location
   acceleration is the rate of change of speed
   */
  y += speed;
  speed += gravity;

  // bounce back up
  if (y > height) {
    speed *= -0.95; //this is a damping effect simulates the real world much accuratly 
    y = height;
  }
}