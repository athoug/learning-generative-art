// import the video library to use video in your sketch
import processing.video.*;

Movie movie; // create a movie class

void setup() {
  size(640, 360);
  background(255);
  // load and play the video in a loop
  movie = new Movie(this, "sunset.mp4");
  // use the function loop to make sure the frames change
  movie.loop();
}
void draw() {
  if (movie.available() == true) {
    movie.read();
  }
  // adding filters and tints to the video
  noTint();
  image(movie, 0, 0, width/2, height/2);
  
  tint(100, 59, 200);
  image(movie, width/2, 0, width/2, height/2);
}