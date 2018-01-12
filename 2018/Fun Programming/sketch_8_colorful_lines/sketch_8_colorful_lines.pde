// colored lines on light background
// lines begin on the top border and end on the bottom
// lines must be vertical
float distance_left;

void setup() {
  size(200,200);
}
void draw() {
  stroke(random(200,256), random(200,256), random(200,256));
  
  distance_left = random(width);
  
  line(distance_left, 0, distance_left, height);
}