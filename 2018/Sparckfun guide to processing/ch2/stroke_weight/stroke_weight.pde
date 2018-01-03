void setup() {
  size(250, 250);
  background(150);
}
void draw() {
  stroke(255,0,0);
  strokeWeight(5);
  line(0,0,250,250);
  
  stroke(0,255,0);
  strokeWeight(15);
  line(50,0,250,200);
  
  stroke(0,0,255);
  strokeWeight(30);
  line(100,0,250,150);
}