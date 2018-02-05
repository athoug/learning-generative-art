float r = 0; // rotattion variable
float circleSize;

void setup() {
  size(500, 500);
  background(#22a6b3);
  smooth(); // smoothes the edges when rotating
  noStroke();
}
void draw() {
  translate(width/2, height/2);
  fill(#7ed6df);
  rotate(r);
  circleSize = random(5, 15);
  ellipse(100 + r, 10, circleSize, circleSize);

  r += 0.2; // increment the rotation
}