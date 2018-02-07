void setup() {
  size(250, 250);
  background(255);
  strokeWeight(10);
}
void draw() {
  for (int x = 0; x < 250; x += 10) {
    stroke(random(255), random(255), random(255));
    point(x, height/2);
  }
}