void setup() {
  size(250,250);
  background(150);
  frameRate(4);
}
void draw() {
  fill(0, 0, random(250));
  triangle(25,25,150,50,25,200);
}