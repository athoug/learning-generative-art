// setting up the variables
float r = 150;
float g = 0;
float b = 0;

void setup() {
  size(800, 600);
}
void draw() {
  background(r, g, b);
  stroke(255);
  line(width/2, 0, width/2, height);

  // conditional 
  if (mouseX > width/2) {
    r += 1;
  } else {
    r -= 1;
  }

  // reset r if it excesseds the threshold for the valuse
  if (r > 255) {
    r = 255;
  } else if (r < 0) {
    r = 0;
  }
}