void setup() {
  size(400, 400);
  background(#231367);
}
void draw() {
  fill(#231367, 20);
  rect(0, 0, width, height);
}

void keyPressed() {
  // text
  fill(#9380E3);
  textSize(random(20, 200));
  text(key, random(width), random(100, height));
  print(key);
}