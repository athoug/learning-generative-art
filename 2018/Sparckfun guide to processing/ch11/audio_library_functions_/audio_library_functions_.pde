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
  background(#9B73B4);
  fill(#8EF298);
  textSize(30);
  text(song.position() + " out of " + song.length(), width/2 - 150, height/2);
}

void keyPressed() {
  if (key == 's') {
    song.pause(); // if 's' is pressed, pause the song
  }

  if ( key == 'p') {
    song.play(); // if 'p' is pressed, play the song 
  }
}