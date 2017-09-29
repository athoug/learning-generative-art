float mouseSpeed;

void setup() {
  size(800, 600);
  background(255);
}
void draw() {
  mouseSpeed = abs(mouseX - mouseY);

  strokeWeight(mouseSpeed);
  line(pmouseX, pmouseY, mouseX, mouseY);
}