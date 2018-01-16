PImage img;

void setup() {
  size(700,700);
  img = loadImage("athoug.png");
  imageMode(CENTER);
  image(img, width/2, height/2);
}