import processing.video.*;

Capture cam;

void setup() {
  String[] cameras = Capture.list();
  println("Available cameras:");

  for (int i = 0; i < cameras.length; i++) {
    println(cameras[i]);
  }

  size(640, 360);
  background(255);

  // load and play video
  cam = new Capture(this, cameras[0]);
  cam.start();
  frameRate(120);
}
void draw() {
  if (cam.available() == true) {
    cam.read();
  }

  image(cam, 0, 0, width, height);
  strokeWeight(4);
  noFill();
  ellipse(random(width), random(height), 20, 20);
}