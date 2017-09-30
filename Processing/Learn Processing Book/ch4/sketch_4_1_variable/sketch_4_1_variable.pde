int circleX = 0;
int circleY = 100;

void setup() {
  size(200,200);
}
void draw() {
  background(255);
  stroke(0);
  fill(175);
  ellipse(circleX, circleY, 50,50);
  
  circleX += 1;
}