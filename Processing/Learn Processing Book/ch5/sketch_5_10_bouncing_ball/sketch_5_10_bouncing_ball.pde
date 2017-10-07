int x = 50;
int speed = 5;
int size = 50;

void setup() {
  size(400, 400);
}
void draw() {
  background(#d35400);
  x += speed;

  if (x > width - size/2 || x <size/2) {
    speed *= -1;
  }

  noStroke();
  fill(#f39c12);
  ellipse(x, height/2, 50, 50);
}