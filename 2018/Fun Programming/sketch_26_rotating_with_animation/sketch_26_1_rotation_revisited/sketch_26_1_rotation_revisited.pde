float sizeRect, r = 0;

void setup() {
  size(500, 500);
  background(#5870CB);
  smooth();
  noFill();
  //strokeWeight(2);
  rectMode(CENTER);
}
void draw() {
  translate(width/2, height/2);
  
  stroke(255);
  sizeRect = random(5, 25);
  rotate(r);
  rect(100 + r, 10, sizeRect, sizeRect);
  r += 0.2;
}