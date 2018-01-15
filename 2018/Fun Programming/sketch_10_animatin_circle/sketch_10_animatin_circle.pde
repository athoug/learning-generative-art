int circle_x = 1;
int growth = 5;

void setup() {
  size(400, 400);
  background(#F57E7E);
  noStroke(); // remove the black border
  fill(#CE4141); // chnage shape fill colors
}
void draw() {
  background(#F57E7E);
  // ellipse
  // random x position
  // ellipse(random(width), 50, 50, 50); 
  // random y position
  // ellipse(50, random(height), 50, 50);
  // random x and y positions
  // ellipse(random(width), random(height), 50, 50);
  
  // move a circle from left to right
  ellipse(circle_x, 50, 50, 50); 
  circle_x += growth;
}