void setup () {
  // setup code goes here
  size(850, 1100);
  background(255); // The background is white
}

void draw() {
  // no code needed here
  // it needs to be here  even if it's empty 
  // reason: to constantly check for events in our 
  // program it's the mouse Drag and pressed events
}

// Draw lines based on previous mouse points and current 
// when user constantly pressed on the mouse button
void mouseDragged() {
  if (mouseButton == LEFT) {
    strokeWeight(50);
    stroke(random(255), random(255), random(255));
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