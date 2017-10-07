boolean button = false;

int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup() {
  size(200, 200);
}
void draw() {
  
  noStroke();


  if (button) {
    background(#f1c40f);
  } else {
    background(#2c3e50);
  }
  
  fill(#7f8c8d);
  rect(x, y, w, h);
}

void mousePressed() {
  if (mouseX >= x && mouseY >= y && mouseX <= x + w && mouseY <= y + h) {
    button = !button;
  }
}