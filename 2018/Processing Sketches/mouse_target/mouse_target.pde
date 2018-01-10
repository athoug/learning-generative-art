// a program that would draw a target of the mouse cursor
void setup() {
  size(500,500); // canvas size
}
void draw() {
  background(211, 84, 0); // background color
  
  // set stroke style
  stroke(243, 156, 18); // stroke color
  strokeWeight(3);
  
  line(0, mouseY, width, mouseY); // horizontal line
  line(mouseX, 0, mouseX, height); // vertical line
  
}