float x, y, h, s, b;
int size = 50;

void setup() {
  size(600, 600);
  colorMode(HSB);

  x = width/2;
  y = height/2;

  h = random(255);
  s = random(255);
  b = random(255);
}

void draw() {
  background(h, s, b);
  fill(255);
  noStroke();
  ellipse(x, y, size, size);
}

void keyPressed() {
  if ((key == CODED) && (keyCode == UP)) {
    y -= 5;
  }

  if ((key == CODED) && (keyCode == DOWN)) {
    y += 5;
  }

  if ((key == CODED) && (keyCode == LEFT)) {
    x -= 5;
  }

  if ((key == CODED) && (keyCode == RIGHT)) {
    x += 5;
  }
}