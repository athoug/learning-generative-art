PImage img;

void setup() {
  size(800, 800);
  
  img = loadImage("athoug.png");
}

void draw() {
  background(250);
  imageMode(CENTER);
  image(img, mouseX, mouseY);
}