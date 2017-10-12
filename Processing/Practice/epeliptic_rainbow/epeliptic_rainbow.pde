int r = 10;

void setup() {
  size (1000, 1000);
  background (255);
  ellipseMode(CENTER);
  frameRate(10);
}


void draw ()
{

  noStroke();
  for (int y = 10; y < height; y+=12) {

    for (int x = 10; x < width; x += 12) {
      fill(random(255), random(255), random(255));
      ellipse (x, y, r, r);
    }
  }
}