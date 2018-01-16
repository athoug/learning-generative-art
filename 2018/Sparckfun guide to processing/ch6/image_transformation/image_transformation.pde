PImage img;

void setup() {
  size(400, 400);
  img = loadImage("athoug.png");
}
void draw() {
  // moving an image use a matrix 
  background(200);
  imageMode(CENTER);
  pushMatrix();
  translate(width/2, height/2); // center the image in your sketch
  scale(map(mouseX, 0, width, .5, 2));
  image(img, 0, 0);
  popMatrix();
}