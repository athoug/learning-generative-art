import ddf.minim.*;

Minim minim;
AudioPlayer song;

void setup() {
  size(500, 500);
  minim = new Minim(this);
  song = minim.loadFile("song.mp3");

  song.play();
}

void draw() {
  ; // nothing in draw
}

void keyPressed() {
  if (key == 's') {
    song.pause(); // if 's' is pressed, pause the song
  }

  if ( key == 'p') {
    song.play(); // if 'p' is pressed, play the song 
  }
}