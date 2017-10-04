int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup() {
  size(200, 200);
}
void draw() {
  background(#9b59b6);
  stroke(#2c3e50);
  strokeWeight(5);
  if (mouseX >= x && mouseY >= y && mouseX <= x + w && mouseY <= y + h) {
    fill(#34495e);
  } else {
    fill(#9b59b6);
  }
  rect(x, y, w, h);
}