// generating a barcode using probability
float x = 0; // for the virtical lines

void setup() {
  size(500, 500);
  background(255);
  stroke(255);
}
void draw() {
  line(x, 300, x, 200);

  x += 1;

  // control boundries
  if (x > width) {
    x = 0;
  }

  // use probability to change the stroke color to give an illution of a barcode
  // sometimes we decide to change the line color
  if (random(100) > 50) {
    // now we decide if to use black or white
    if(random(100) > 50) {
      stroke(0);
    } else {
      stroke(255);
    }
  }
}