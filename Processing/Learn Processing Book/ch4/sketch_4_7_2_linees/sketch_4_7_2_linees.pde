float line1Xpoint1 = 100;
float line1Ypoint1 = 0;

float line2Xpoint2 = 0;
float line2Ypoint2 = 200;

float line3Xpoint2 = 200;
float line3Ypoint2 = 200;

float center = 100;

int speed = 1;

color backgroundColor = #2c3e50;
color lineColor = #34495e;

void setup() {
  size(200, 200);
  frameRate(50);
}

void draw() {
  background(backgroundColor);
  strokeWeight(4);
  stroke(lineColor);
  line(line1Xpoint1, line1Ypoint1, center, center);
  line(center, center, line2Xpoint2, line2Ypoint2);
  line(center, center, line3Xpoint2, line3Ypoint2);

  // moving line 1
  if (line1Xpoint1 < width && line1Ypoint1 <= 0) {
    line1Xpoint1 += speed;
  }
  if (line1Xpoint1 <= 0) {
    line1Ypoint1 -= speed;
  } 
  if (line1Ypoint1 == height) {
    line1Xpoint1 -= speed;
  } 
  if (line1Xpoint1 == width) {
    line1Ypoint1 += speed;
  }

  // moving line 2
  if (line2Xpoint2 < width && line2Ypoint2 <= 0) {
    line2Xpoint2 += speed;
  }
  if (line2Xpoint2 <= 0) {
    line2Ypoint2 -= speed;
  } 
  if (line2Ypoint2 == height) {
    line2Xpoint2 -= speed;
  } 
  if (line2Xpoint2 == width) {
    line2Ypoint2 += speed;
  }
  
   // moving line 3
  if (line3Xpoint2 < width && line3Ypoint2 <= 0) {
    line3Xpoint2 += speed;
  }
  if (line3Xpoint2 <= 0) {
    line3Ypoint2 -= speed;
  } 
  if (line3Ypoint2 == height) {
    line3Xpoint2 -= speed;
  } 
  if (line3Xpoint2 == width) {
    line3Ypoint2 += speed;
  }
}