float x;
float y;

// setup only gets run once
void setup() {
  size(800, 600);
  frameRate(10);
}
void draw() {
  background(200);
  x = random(width);
  y = random(-5,6);
  noStroke();
  fill(random(255), 255, random(255));
  ellipse(x, 300 + y, 100, 100);
}