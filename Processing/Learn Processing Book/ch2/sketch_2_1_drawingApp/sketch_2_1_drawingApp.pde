void setup() {
  fullScreen();
  background(100,100,200);
}

void draw() {
  stroke(255);
  strokeWeight(4);
  if(mousePressed == true) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}