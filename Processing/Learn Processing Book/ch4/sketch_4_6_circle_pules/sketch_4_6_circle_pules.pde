float circle1X = 50;
float circle1Y = 50;
int circle1Size = 50;

float circle2X = 150;
float circle2Y = 50;
int circle2Size = 50;

float circle3X = 50;
float circle3Y = 150;
int circle3Size = 50;

float circle4X = 150;
float circle4Y = 150;
int circle4Size = 50;

color backgroundColor = #ecf0f1;
color circle1Color = #f1c40f;
color circle2Color = #e67e22;
color circle3Color = #f39c12;
color circle4Color = #d35400;

int speed1 = 1;
int speed2 = 2;
int speed3 = 3;
int speed4 = 4;

void setup() {
size(200,200);
rectMode(CENTER);
frameRate(30);
}

void draw(){
background(backgroundColor);
noStroke();
fill(circle1Color);
ellipse(circle1X, circle1Y, circle1Size, circle1Size);
fill(circle2Color);
ellipse(circle2X, circle2Y, circle2Size, circle2Size);
fill(circle3Color);
ellipse(circle3X, circle3Y, circle3Size, circle3Size);
fill(circle4Color);
ellipse(circle4X, circle4Y, circle4Size, circle4Size);


if(circle1Size > 50 || circle1Size < 0) {
  speed1 *= -1;
}

if(circle2Size > 50 || circle2Size < 0) {
  speed3 *= -1;
}

if(circle3Size > 50 || circle3Size < 0) {
  speed2 *= -1;
}

if(circle4Size > 50 || circle4Size < 0) {
  speed4 *= -1;
}

circle1Size += speed1;
circle2Size -= speed3;
circle3Size -= speed2;
circle4Size += speed4;
}