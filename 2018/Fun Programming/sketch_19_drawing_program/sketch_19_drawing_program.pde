int count_drawing = 1;

void setup() {
  size(500, 500); // set canvas size 
  background(#6c5ce7); // purple background
  stroke(#a29bfe); // light purple stroke color
  strokeWeight(5); // increase the size of the point
}
void draw() {
  if (mousePressed) {
    point(mouseX, mouseY);
  }
}
void keyPressed() {
  save("my-drawing-"+count_drawing+".png");
  count_drawing++;
}