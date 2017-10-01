float x = 400;
float y = 300;

float xSpeed = 15;
float ySpeed = 25;

void setup() {
  size(800, 600);
}
void draw() {
  
  x += xSpeed;
  y += ySpeed;
  
  // check for edges collision 
  if(x > width || x < 0) {
    xSpeed *= -1;
  }
  
  if(y > height || y < 0) {
    ySpeed *= -1;
  }
  
  noStroke();
  fill(random(255), random(255), random(255));
  ellipse(x, y, 50, 50);
}