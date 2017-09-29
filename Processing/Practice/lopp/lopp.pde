float x;
float y;
float speed = 5;

// setup only gets run once
void setup() {
  size(800, 600);
}
void draw() {
  x = x+ speed;
  y = random(-5,6);
  
  if(x > width || x < 0) {
    speed *= -1;
  }
  noStroke();
  fill(random(255), 255, random(255));
  ellipse(x, 300 + y, 100, 100);
}