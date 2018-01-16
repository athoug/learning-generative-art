PImage grin;
PImage scared;
PImage smile;
PImage stair;
PImage unempressed;
PImage zen;

void setup() {
  size(1000, 800); // set the window size

  // load the images
  grin = loadImage("grin.png");
  scared = loadImage("scared.png");
  smile = loadImage("smile.png");
  stair = loadImage("stair.png");
  unempressed = loadImage("unempressed.png");
  zen = loadImage("zen.png");
}
void draw() {
  pushMatrix();
  translate(20,20);
  image(grin, 0, 0);
  popMatrix();
  
  pushMatrix();
  translate(300,20);
  image(scared, 0, 0);
  popMatrix();
  
  pushMatrix();
  translate(300,400);
  image(smile, 0, 0);
  popMatrix();
  
  pushMatrix();
  translate(600,400);
  image(stair, 0, 0);
  popMatrix();
  
  pushMatrix();
  translate(600,20);
  image(unempressed, 0, 0);
  popMatrix();
  
  pushMatrix();
  translate(20,400);
  image(zen, 0, 0);
  popMatrix();
}