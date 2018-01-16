PImage athoug;
void setup() {
  athoug = loadImage("smile.png"); // load the image
  athoug.filter(THRESHOLD, .68); // add a filter to the image
  size(900, 900); // window size
}
void draw() {
  // first row of images
  // add a tint to the image
  tint(255, 0, 0);
  image(athoug, 0, 0, 300, 300); // draw the image

  // add a tint to the image
  tint(0, 0, 255);
  image(athoug, 300, 0, 300, 300); // draw the image
  
   // add a tint to the image
  tint(0, 255, 0);
  image(athoug, 600, 0, 300, 300); // draw the image
  
  // second row of images
  // add a tint to the image
  tint(255, 200, 0);
  image(athoug, 0, 300, 300, 300); // draw the image

  // add a tint to the image
  tint(200, 0, 255);
  image(athoug, 300, 300, 300, 300); // draw the image
  
   // add a tint to the image
  tint(0, 255, 200);
  image(athoug, 600, 300, 300, 300); // draw the image
  
  // third row of images
  // add a tint to the image
  tint(255, 0, 200);
  image(athoug, 0, 600, 300, 300); // draw the image

  // add a tint to the image
  tint(50, 200, 255);
  image(athoug, 300, 600, 300, 300); // draw the image
  
   // add a tint to the image
  tint(100, 255, 100);
  image(athoug, 600, 600, 300, 300); // draw the image
}