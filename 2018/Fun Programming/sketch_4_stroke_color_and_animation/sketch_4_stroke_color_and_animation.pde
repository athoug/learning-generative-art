void setup() {
  size(200, 200);
  background(240);
}
void draw() {
  stroke(random(255), 0, 0); // RGB colors
  line(width/2, height/2, random(width), random(height));
}