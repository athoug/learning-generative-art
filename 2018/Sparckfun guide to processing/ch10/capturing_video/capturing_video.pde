import processing.video.*;

Movie movie;
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
  movie = new Movie(this, "waves.mp4");
  cam = new Capture(this, cameras[0]);
  movie.loop();
  cam.start();
  frameRate(120);
}
void draw() {
  if ((movie.available() == true) && (cam.available() == true)) {
    movie.read();
    cam.read();
  }
  image(cam, width/2, height/4, width/2, height/2);
  
  image(movie, 0, height/4, width/2, height/2);
}