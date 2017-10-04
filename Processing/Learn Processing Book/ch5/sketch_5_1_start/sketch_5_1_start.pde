void setup() {
size(800, 600);
}
void draw() {
  background(2);
  if(mouseX <width/2) {
    fill(255);
    rect(0,0, width/2, height);
  }
}