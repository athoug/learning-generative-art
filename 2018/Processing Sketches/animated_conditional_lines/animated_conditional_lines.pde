int line_y = 50;
int y_increments = 25;

void setup() {
  size(500, 500); // set the window size
  background(200, 200, 200); 

  // shape feature
  strokeWeight(2);

  // slow dow sthe drawing
  frameRate(10);
}
void draw() {
  if (line_y < (height -25)) {
    stroke(#111111);
    if (line_y > 150) {
      stroke(#ffffff);
    }
    line(50, line_y, 450, line_y);

    line_y += y_increments;
  } else {
    background(200, 200, 200); 
    line_y = 50;
  }
}