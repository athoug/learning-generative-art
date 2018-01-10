void setup() {
  size(500,500); // setup the size of the wondow
  background(192, 57, 43); // set up the background color
}
void draw() {
  // draw a ling from the center and have it randomly change the end point
  stroke(241, 196, 15); // setup the stroke color
  line(width/2, height/2, random(width), random(height));
}