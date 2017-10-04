void setup() {
  size(800, 600);
}

void draw() {
  if (mouseX < width/3) {
    background(#f39c12);
  } else if (mouseX < 2*width/3) {
    background(#d35400);
  } else {
    background(#c0392b);
  }
}