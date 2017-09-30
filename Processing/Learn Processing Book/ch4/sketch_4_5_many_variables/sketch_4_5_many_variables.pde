float circleX = 0;
float circleY = 0;
float circleW = 50;
float circleH = 100;
float circleStroke = 255;
float circleFill = 0;
float backgroundColor = 255;
float change = 0.5;

//your basic setup
void setup() {
  size(200, 200);
}

void draw() {
  // draw the background and ellipse
  background(backgroundColor);
  stroke(circleStroke);
  fill(circleFill);
  ellipse(circleX, circleY, circleW, circleH);
  
 //change the values for all variables
 circleX += change;
 circleY += change;
 circleW += change;
 circleH -= change;
 circleStroke -= change;
 circleFill += change;
 
}