int circleX = 400;
int circleY = 300;
int circleSize = 0;

void setup() {
size(800, 600);
}

void draw() {
  background(255);
  stroke(0);
  fill(3);
  circleSize = mouseX;
  ellipse(circleX, circleY, circleSize, circleSize);
}