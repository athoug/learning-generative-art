float r = 0;
float g = 0;
float b = 0;

void setup() {
  size(800, 600);
}
void draw() {
  background(r, g, b);
  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);

  // condition vor variable colors based on momuse location
  if (mouseX > width/2) {
    r += 1;
  } else {
    r -= 1;
  }

  if (mouseY > height/2) {
    b += 1;
  } else {
    b -= 1;
  }
  
  if(mousePressed) {
    g += 1;
  } else {
    g -= 1;
  }

  // constrain colors
  r = constrain(r, 0, 255);
  g = constrain(g, 0, 255);
  b = constrain(b, 0, 255);
}