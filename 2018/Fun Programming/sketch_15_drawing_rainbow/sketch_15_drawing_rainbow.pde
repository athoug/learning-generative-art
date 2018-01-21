float half_width;
float circle_height;
float circle_size;

void setup() {
  size(500, 500);
  background(#D7DEF0);
  noFill();

  // get variable values
  circle_height = height; // to move the circle down
  half_width = (width/2);
  circle_size = width;
}
void draw() {
  strokeWeight(random(3, 10));
  stroke(random(255), random(255), random(255)); // random stroke colors for the rainbow

  circle_size = random((width-100), (width-30)); // having random sizes for our rainbow in order to see diffrent strokes

  ellipse(half_width, circle_height+50, circle_size, circle_size);
}