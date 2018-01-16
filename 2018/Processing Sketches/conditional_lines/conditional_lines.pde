void setup() {
  size(500, 500); // set the window size
  // background(); 

  // shape feature
  strokeWeight(2);
}
void draw() {
  stroke(#111111);
  for (int i = 50; i < (height -25); i+=25) {
    if (i > 150) {
      stroke(#ffffff);
    }
    line(50, i, 450, i);
  }
}