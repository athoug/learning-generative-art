boolean clicked = false;

int circleX = 0;
int circleY;
void setup() {
  size(400, 400);
  circleY = height/2;
}
void draw() {
  background(#27ae60);
  noStroke();
  fill(#2ecc71);
  ellipse(circleX, circleY, 50, 50);

  if (clicked) {
    circleX += 2;
  }
}

void mousePressed() {
  clicked = !clicked;
}

void keyPressed() {
  circleX = 0;
}