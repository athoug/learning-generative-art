float distance_left;
float distance_top;

void setup() {
  size(500,500);
}
void draw() {
  background(22, 160, 133);
  stroke(46, 204, 113);
  strokeWeight(3);
  
  distance_left = random(width); // to hold a variable for the starting points for both line
  distance_top = random(height);
  
  // draw the line
  line(distance_left, 0, distance_left, height); // vertical line which has simillar distances from the left
  line(0, distance_top, width, distance_top); // horizontal line which has same distance from the top
}