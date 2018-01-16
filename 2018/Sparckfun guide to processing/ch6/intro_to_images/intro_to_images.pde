PImage img;

void setup() {
  size(800,800); // set window size
  img = loadImage("athoug.png");
}

void draw() {
  image(img, 100, 100);
}