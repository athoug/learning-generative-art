int circleX = 400;
int circleY = 300;
int circleSize = 0;
float growthSpeed = 1;

void setup() {
size(800, 600);
}

void draw() {
  background(255);
  stroke(0);
  fill(3);
  ellipse(mouseX, mouseY, circleSize, circleSize);
  circleSize += growthSpeed;
  println("growth value: " + growthSpeed);
  println("circleSize value: " + circleSize);
}

void mousePressed() {
  growthSpeed *= -1;
}

void keyPressed() {
  growthSpeed = random(-10.0, 10.0); 
  println("growth value after key pressed" + growthSpeed);
}