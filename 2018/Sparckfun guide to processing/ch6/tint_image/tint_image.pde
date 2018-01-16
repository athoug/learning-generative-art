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
  background(150);
  
  pushMatrix();
  translate(500, 20);
  rotate(1.6);
  scale(1.5);
  // we used time variables as the argumnets for the tint function
  tint(second() *4, second() *4, second() *4); // add the tint function
  image(grin, 0, 0);
  popMatrix();

  pushMatrix();
  translate(200, 200);
  rotate(.5);
  // this makes all white but plays with the transparecy based on mouse y location
  tint(255, mouseY/4);
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
  // playing with the red and green value of the tint
  tint(mouseX/4, mouseY/4, 0);
  image(stair, 0, 0);
  popMatrix();

  pushMatrix();
  translate(800, 200);
  rotate(-1);
  // playing with transparency
  tint(255,255,255,mouseX/4);
  image(unempressed, 0, 0);
  popMatrix();

  pushMatrix();
  translate(500, 400);
  scale(.75);
  rotate(.2);
  image(zen, 0, 0);
  popMatrix();
}