int x = 0;
int y = 0; 
int speed = 5;
int size = 50;
int state = 0;

void setup() {
  size(400, 400);
}
void draw() {
  background(#9b59b6);

  // display the square
  noStroke();
  fill(#8e44ad);
  rect(x, y, size, size);

  // check the boxes state 
  if (state == 0) {
    x += speed;
    if (x > width - size) {
      x = width - size;
      state = 1;
    }
  } else if (state == 1) {
    y += speed;
    if (y > height - size) {
      y = height - size;
      state = 2;
    }
  } else if (state == 2) {
    x -= speed;
    if(x < 0) {
      x = 0;
      state = 3;
    }
  } else if (state == 3) {
    y -= speed;
    if (y < 0) {
      y = 0;
      state = 0;
    }
  }
}