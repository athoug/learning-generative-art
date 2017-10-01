float x = 400;
float y = 300;

float xSpeed = 5;
float ySpeed = 5;

int directionX = 1;
int directionY = 1;

int colorIndex = 0;

color[] ballColor = {
  color(155, 89, 182), 
  color(52, 73, 94), 
  color(26, 188, 156), 
  color(241, 196, 15), 
  color(231, 76, 60)};
  
  color[] bgColor = {
  color(52, 73, 94), 
  color(41, 128, 185), 
  color(39,174, 96), 
  color(211, 84, 0), 
  color(236, 240, 241)};

void setup() {
  size(800, 600);
}

void draw() {
  background(bgColor[colorIndex]);

  x += xSpeed * directionX;
  y += ySpeed * directionY;

  // check for edges collision 
  if (x > width || x < 0) {
    // randomize the speed
    xSpeed = random(1, 10);
    
    colorIndex = int(random(5));
    directionX *= -1;
  }

  if (y > height || y < 0) {
    // randomize the speed
    ySpeed = random(1, 10);
    
    colorIndex = int(random(5));
    directionY *= -1;
  }
  
  if((x > 0 || x < width) && (y <= 0)) {
    y += 1;
  }
  
  if((x > 0 || x < width) && (y >= height)) {
    y -= 1;
  }
  
  if((y > 0 || y < height) && (x >= width)) {
    x -= 1;
  }
  
   if((y > 0 || y < height) && (x <= 0)) {
    x += 1;
  }

  noStroke();
  fill(ballColor[colorIndex]);
  ellipse(x, y, 50, 50);
}