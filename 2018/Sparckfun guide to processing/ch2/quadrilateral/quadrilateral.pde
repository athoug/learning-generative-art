void setup() {
  size(250,250);
  background(150);
  frameRate(4);
}
void draw() {
  fill(random(250), 0, 0);
  quad(25,25,150,50,100,175,25,200);
}