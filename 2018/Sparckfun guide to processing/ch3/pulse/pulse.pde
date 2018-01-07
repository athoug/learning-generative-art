int sizeOfCircle = 10; // the size of the circle
int growth = 5; // the amout at which it will pulse

void setup() {
  size(500, 500);
}
void draw() {
  background(231, 76, 60);
  // draw the ellipse
  fill(192, 57, 43); // set the color of the ellipse
  noStroke(); // remove the black border around the shape
  ellipse(width/2, height/2, sizeOfCircle, sizeOfCircle); // draw circle

  // give it an animated pulse
  sizeOfCircle += growth;

  // make sure the pulse doesn't excced a cirtain limit
  if (sizeOfCircle > 200) {
    growth = 1; // if it's growing, increase the size by 5
  }

  if (sizeOfCircle < 10) {
    growth *= 5;  // if it's shrinking, slow it down by changing the growth value
  }

  if (sizeOfCircle < 10 || sizeOfCircle > 200) {
    growth *= -1; // flip direction
  }
  
  println("growth: " + growth); // for debuging
}