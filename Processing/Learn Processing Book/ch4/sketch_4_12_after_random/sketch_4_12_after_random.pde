float r;
float g;
float b;
float a;

float diam;
float x;
float y;

void setup() {
size(1080,1080);
ellipseMode(CENTER);
background(255);
}

void draw(){
// variables to draw the ellipse
noStroke();
r = random(255);
g = random(255);
b = random(255);
a = random(255);

diam = random(20);
x = random(width);
y = random(height);

fill(r, g, b, a);
ellipse(x, y, diam, diam);
}