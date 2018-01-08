// Animation
// white elines on black background
// The lines begin on the left border and move to the right
// the lines must be horizontal

// exersize: try to add a vertical line

float y;
float x;

void draw() {
  background(10); // setting up the color of the background to be a black shade
  stroke(255); // setting up a white color for theline
  y = random(100); // generate a random value for y
  line(0, y, 99, y);
  
  x = random(100);
  line(x, 0, x, 99);
}