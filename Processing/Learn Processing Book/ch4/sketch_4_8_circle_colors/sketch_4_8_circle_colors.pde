float center = 100;
float rectSize = 170;
float circleSize = 80;

float rectRed = 192;
float circleRed = 231;

color backgroundColor = #ecf0f1;

float change = 0.5;
float circleChange = 0.5;

void setup() {
  size(200, 200);
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw() {
  background(backgroundColor);
  noStroke();
  fill(color(rectRed, 57, 43));
  rect(center, center, rectSize, rectSize);
  fill(color(circleRed, 76, 60));
  ellipse(center, center, circleSize, circleSize);
  
  rectRed += change;
  circleRed += circleChange;
  
  if(rectRed > 255 || rectRed < 0) {
    change *= -1;
  }
  
  if(circleRed > 255 || circleRed < 0) {
    circleChange *= -1;
  }
}