float line1Xpoint1 = 100;
float line1Ypoint1 = 0;
float line1Xpoint2 = 100;
float line1Ypoint2 = 100;

float line2Xpoint1 = 100;
float line2Ypoint1 = 100;
float line2Xpoint2 = 0;
float line2Ypoint2 = 200;

float line3Xpoint1 = 100;
float line3Ypoint1 = 100;
float line3Xpoint2 = 200;
float line3Ypoint2 = 200;

color backgroundColor = #2c3e50;
color lineColor = #34495e;
void setup() {
size(200,200);
}

void draw() {
background(backgroundColor);
strokeWeight(4);
stroke(lineColor);
line(line1Xpoint1, line1Ypoint1, line1Xpoint2, line1Ypoint2);
line(line2Xpoint1,line2Ypoint1, line2Xpoint2, line2Ypoint2);
line(line3Xpoint1, line3Ypoint1, line3Xpoint2, line3Ypoint2);
}