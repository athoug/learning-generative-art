void setup() {
  size(800, 600);
}
void draw() {
  if (mouseX < width/2) {
    background(#e74c3c);
  } else {
    background(#f1c40f);
  }
}