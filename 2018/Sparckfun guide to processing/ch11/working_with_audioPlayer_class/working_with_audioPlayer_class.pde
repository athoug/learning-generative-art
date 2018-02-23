import ddf.minim.*;

Minim minim;
AudioPlayer song;

void setup() {
  minim = new Minim(this);
  song = minim.loadFile("song.mp3");
}
void draw() {
  song.play();
}