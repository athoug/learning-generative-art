float slow_circle_x = 0;
float fast_circle_x = 0;

float slow_circle_size;

void setup() {
  size(400,400);
  noStroke();
}
void draw() {
  background(#1BB1F5);
  
  slow_circle_size = 50; // set the size of the circle
  
  if(random(10) > 9) {
    slow_circle_size = 60;
  }
  
  fill(#C1FF3E);
  ellipse(slow_circle_x, 50, slow_circle_size, slow_circle_size);
  slow_circle_x += 1;
  
  fill(#FF4800);
  ellipse(fast_circle_x, 50, 50, 50);
  fast_circle_x += 5;
  
  if(slow_circle_x > (width + 25)) {
    slow_circle_x = 0;
  }
  
  if(fast_circle_x > (width + 25)) {
    fast_circle_x = 0;
  }

}