void setup() {
  size(800,600);
  background(255);
}
void draw() {
}
void mousePressed() {
  fill(random(255), random(255), random(255));
  noStroke();
  rectMode(CENTER);
  rect(mouseX, mouseY, 50,50);
}
void keyPressed() {
  background(255);
}