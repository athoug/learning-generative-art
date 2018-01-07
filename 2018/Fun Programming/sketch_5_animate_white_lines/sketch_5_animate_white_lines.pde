// Animation
// white elines on black background
// The lines begin on the left border and move to the right

void draw() {
  background(10); // setting up the color of the background to be a black shade
  stroke(255); // setting up a white color for theline
  line(0, random(100), 99, random(100));
}