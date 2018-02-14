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
  noStroke();
  float pos = map(song.position(), 0, song.length(), 0, 300);
  
  textAlign(CENTER);
  fill(#8EF298);
  textSize(30);
  text( song.position()/1000 + " out of " + song.length()/1000, width/2, height/2);
  
  fill(#CEEDD1);
  rect(100,110,300,50);
  fill(#42BC4F);
  rect(100,110,pos, 50);
}

void keyPressed() {
  if (key == 's') {
    song.pause(); // if 's' is pressed, pause the song
  }

  if ( key == 'p') {
    song.play(); // if 'p' is pressed, play the song 
  }
}