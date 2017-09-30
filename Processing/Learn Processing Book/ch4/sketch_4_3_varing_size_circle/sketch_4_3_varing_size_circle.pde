int circleX = 400;
int circleY = 300;
int circleSize = 0;
int growthSpeed = 1;

void setup() {
size(800, 600);
}

void draw() {
  background(255);
  stroke(0);
  fill(3);
  ellipse(mouseX, mouseY, circleSize, circleSize);
  circleSize += growthSpeed;
}

void mousePressed() {
  growthSpeed *= -1;
}