boolean button = false;

void setup() {
  size(400, 400);
}
void draw() {
  if (button) {
    background(#16a085);
  } else {
    background(#1abc9c);
  }
  
  stroke(#16a085);
  line(width/2, 0, width/2, height); // draw the vertical line
  line(0, height/2, width, height/2); // draw the horizontal line

  noStroke();
  fill(#16a085);
  if (mouseX <= width/2 && mouseY <= height/2) {
    rect(0, 0, width/2, height/2);
  } else if (mouseX <= width && mouseY <= height/2) {
    rect(width/2, 0, width/2, height/2);
  } else if (mouseX <= width/2 && mouseY <= height) {
    rect(0, height/2, width/2, height/2);
  } else if (mouseX <= width && mouseY <= height) {
    rect(width/2, height/2, width/2, height/2);
  }
}

void mousePressed() {
  button = !button;
}