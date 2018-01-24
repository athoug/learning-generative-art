// variables
int r = 10; // red value
int g = 10; // green value
int b = 10; // blue value
int penSize = 10; // pen size

void setup () {
  // setup code goes here
  size(850, 1100);
  background(255); // The background is white
}

void draw() {
  // color changing feedback box
  fill(r, g, b);
  noStroke();
  rect(0, 0, 100, 12);
  fill(255);
  text((r + "," + g + ","+ b), 10, 10);

  // change color values based on key input
  if (key == 'r') {
    r++;
    key = ' '; // clear the key variable to stop incramenting it
    if (r > 255) { // check if it reached max color capacity
      r = 0; // reset the color
    }
  } else if (key == 'g') {
    g++;
    key = ' '; // clear the key variable to stop incramenting it
    if (g > 255) { // check if it reached max color capacity
      g = 0; // reset the color
    }
  } else if (key == 'b') {
    b++;
    key = ' '; // clear the key variable to stop incramenting it
    if (b > 255) { // check if it reached max color capacity
      b = 0; // reset the color
    }
  } else if (key == '=') {
    penSize++;
    key = ' '; // clear the key variable to stop incramenting it
  } else if(key == '-') {
    penSize--;
    key = ' '; // clear the key variable to stop incramenting it
    if(penSize < 1) {
      penSize = 1;
    }
  }
}

// Draw lines based on previous mouse points and current 
// when user constantly pressed on the mouse button
void mouseDragged() {
  if (mouseButton == LEFT) {
    strokeWeight(penSize);
    stroke(r, g, b);
    // to make a drawing app we use the system variable mosue[s]
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

// reset the canvas by redrawing the background
void mousePressed() {
  if (mouseButton == RIGHT) {
    background(255);
  }
}