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

  // background color
  background(100, 0, 100);
  
  // change the image mode
  imageMode(CENTER);
}
void draw() {
  pushMatrix();
  translate(500, 20);
  rotate(1.6);
  scale(1.5);
  image(grin, 0, 0);
  popMatrix();

  pushMatrix();
  translate(200, 200);
  rotate(.5);
  image(scared, 0, 0);
  popMatrix();

  pushMatrix();
  translate(600, 600);
  rotate(1.3);
  scale(1.5);
  image(smile, 0, 0);
  popMatrix();

  pushMatrix();
  translate(150, 500);
  rotate(.15);
  image(stair, 0, 0);
  popMatrix();

  pushMatrix();
  translate(800, 200);
  rotate(-1);
  image(unempressed, 0, 0);
  popMatrix();

  pushMatrix();
  translate(500, 400);
  scale(.75);
  rotate(.2);
  image(zen, 0, 0);
  popMatrix();
}