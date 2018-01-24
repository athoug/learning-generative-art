float x = 0;

void setup() {
  size(500, 500);
  background(255);
  stroke(255);
}

void change_line_color() {
  stroke(241, 196, 15);
  line(x, 200, x, 300);
  // now we decide if to use black or white
  if (random(100) > 50) {
    stroke(0);
  } else {
    stroke(255);
  }
}

void draw() {
  // draw a black or white line
  line(x, 200, x, 300);

  // sometimes we decide to change the line color
  if (random(100) > 80) {
    change_line_color();
  }

  // move the lines
  x += 1;

  // check borders
  if (x > width) {
    x = 0;
  }
}